#
# Be sure to run `pod lib lint DDTAssertLog.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# Any lines starting with a # are optional, but encouraged
#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "DDTAssertLog"
  s.version          = "0.1.0"
  s.summary          = "Release logging of assertions."
  s.description      = <<-DESC
                       Find what assertions are firing with your release code.
			           DESC
  s.homepage         = "https://github.com/<GITHUB_USERNAME>/DDTAssertLog"
  # s.screenshots     = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'MIT'
  s.author           = { "mcBontempi" => "mcbontempi@gmail.com" }
  s.source           = { :git => "https://github.com/TheAppCoach/DDTAssertLog.git", :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes/**/*'
  s.resource_bundles = {
    'DDTAssertLog' => ['Pod/Assets/*.png']
  }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  s.dependency 'Parse'
  s.xcconfig     = { 'HEADER_SEARCH_PATHS' => '"$(PODS_ROOT)/Parse/Parse.framework/Headers"' }

end
