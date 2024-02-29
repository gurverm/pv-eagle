/*
    Copyright 2023 Picovoice Inc.

    You may not use this file except in compliance with the license. A copy of the license is
    located in the "LICENSE" file accompanying this source.

    Unless required by applicable law or agreed to in writing, software distributed under the
    License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
    express or implied. See the License for the specific language governing permissions and
    limitations under the License.
*/

package ai.picovoice.eagle;

public class EagleStopIterationException extends EagleException {
    public EagleStopIterationException(Throwable cause) {
        super(cause);
    }

    public EagleStopIterationException(String message) {
        super(message);
    }

    public EagleStopIterationException(String message, String[] messageStack) {
        super(message, messageStack);
    }
}
