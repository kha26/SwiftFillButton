#
# Be sure to run `pod lib lint SwiftFillButton.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'SwiftFillButton'
  s.version          = '1.0.1'
  s.summary          = 'SwiftFillButton is a subclass of UIButton that fills up when clicked.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
SwiftFillButton is a subclass of UIButton. When the user clicks on the button, the background changes to the desired color. The button also zooms in and/or makes the text bold on a click event.
                       DESC

  s.homepage         = 'https://github.com/kha26/SwiftFillButton'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'kha26' => 'kha26@cornell.edu' }
  s.source           = { :git => 'https://github.com/kha26/SwiftFillButton.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '10.0'
  s.swift_version = '3.2'

  s.source_files = 'SwiftFillButton/Classes/**/*'
  
  # s.resource_bundles = {
  #   'SwiftFillButton' => ['SwiftFillButton/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
