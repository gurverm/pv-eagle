//
//  Copyright 2023 Picovoice Inc.
//  You may not use this file except in compliance with the license. A copy of the license is located in the "LICENSE"
//  file accompanying this source.
//  Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on
//  an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the
//  specific language governing permissions and limitations under the License.
//

import XCTest

import Eagle

class BaseTest: XCTestCase {

    let accessKey: String = "{TESTING_ACCESS_KEY_HERE}"

    internal func readPcmFromFile(testAudioURL: URL) throws -> [Int16] {
        var data = try Data(contentsOf: testAudioURL)
        data.removeFirst(44)

        var pcmBuffer = [Int16](repeating: 0, count: data.count / 2)
        _ = pcmBuffer.withUnsafeMutableBytes {
            data.copyBytes(to: $0)
        }

        return pcmBuffer
    }

    override func setUpWithError() throws {
        continueAfterFailure = true
    }

    override func tearDownWithError() throws {

    }
}
