#
# Be sure to run `pod lib lint VisualnoteIosBle.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'VisualnoteIosBle'
  s.version          = '0.1.10'
  s.summary          = 'Visualnote SDK for iOS && macos.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
  Visualnote SDK for iOS.
  Copyright VisualNote.
                       DESC

  s.homepage         = 'https://www.visual-note.com'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license = { :type => 'Copyright', :text => <<-LICENSE
    Copyright (c) 2021 Visual Note SRL

    Authorized Users only.
    Fully protected copyright VisualNote SRL

    The above copyright notice and this permission notice shall be included in
    all copies or substantial portions of the Software.

    THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
    IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
    FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
    AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
    LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
    OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
    THE SOFTWARE.
                      LICENSE
                 }
  s.author           = { 'giona69' => 'giona.granata@gmail.com' }
  s.source           = { :git => 'https://github.com/Visual-Note/visualnote-ios-ble-dist.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '12.0'
  s.osx.deployment_target = '11.0'

  s.source_files = 'VisualnoteIosBle.framework/Headers/*.h'
  s.public_header_files = "VisualnoteIosBle.framework/Headers/*.h"
  s.vendored_frameworks = "VisualnoteIosBle.framework"
  s.platform = :ios, '12.0'
  
  s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }

  # s.resource_bundles = {
  #   'VisualnoteIosBle' => ['VisualnoteIosBle/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end

