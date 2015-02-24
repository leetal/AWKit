Pod::Spec.new do |s|
  s.name             = "AWKit"
  s.version          = "0.1.0"
  s.summary          = "An Objective-C kit containing numerous categories and classes to make your life easier."
  s.description      = <<-DESC
AWKit is a Objective-C kit that contains categories for NSString, NSObject, NSBundle, UIAlertView, UIActionSheet, UIDevice, UIImage, UIScreen (as of now) which all contain methods you otherwise do manually anyways. Also, some of the categories add threading capabilities with completion block support and so forth. All for your convenience.
                       DESC
  s.homepage         = "https://github.com/leetal/AWKit"
  s.license          = 'MIT'
  s.author           = { "Alexander Widerberg" => "widerbergaren@gmail.com" }
  s.source           = { :git => "https://github.com/leetal/AWKit.git", :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/widerbergaren'
  s.platform     = :ios, '6.0'
  s.requires_arc = true
  s.source_files = 'Pod/Classes/**/*'
  s.resource_bundles = {
    'AWKit' => ['Pod/Assets/*.png']
  }
  s.frameworks = 'Foundation', 'CoreGraphics'
end
