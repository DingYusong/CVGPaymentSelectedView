#
# Be sure to run `pod lib lint CVGPaymentSelectedView.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'CVGPaymentSelectedView'
  s.version          = '0.1.0'
  s.summary          = '一个简单的支付方式选择控件'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
    "A short description of CVGPaymentSelectedView."
                       DESC

  s.homepage         = 'https://github.com/DingYusong/CVGPaymentSelectedView'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { '丁玉松' => 'dys90@qq.com' }
  s.source           = { :git => 'https://github.com/DingYusong/CVGPaymentSelectedView.git', :commit => '01e8883' }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'CVGPaymentSelectedView/Classes/**/*'
  
  # s.resource_bundles = {
  #   'CVGPaymentSelectedView' => ['CVGPaymentSelectedView/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
