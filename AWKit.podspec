#
# Be sure to run `pod lib lint AWKit.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# Any lines starting with a # are optional, but encouraged
#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "AWKit"
  s.version          = "0.1.0"
  s.summary          = "An Objective-C kit containing numerous categories and classes to make your life easier."
  s.description      = <<-DESC
AWKit is a Objective-C kit that contains categories for NSString, NSObject, NSBundle, UIAlertView, UIActionSheet, UIDevice, UIImage, UIScreen (as of now) which all contain methods you otherwise do manually anyways. Also, some of the categories add threading capabilities with completion block support and so forth. All for your convenience.
                       DESC
  s.homepage         = "https://github.com/leetal/AWKit"
  # s.screenshots     = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'MIT'
  s.author           = { "Alexander Widerberg" => "alexander.widerberg@cloudme.com" }
  s.source           = { :git => "https://github.com/leetal/AWKit.git", :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/widerbergaren'

  s.platform     = :ios, '6.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes/**/*'
  s.resource_bundles = {
    'AWKit' => ['Pod/Assets/*.png']
  }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
