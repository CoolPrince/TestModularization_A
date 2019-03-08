#
# Be sure to run `pod lib lint TestModularization_A.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'TestModularization_A'
  s.version          = '0.1.7'
  s.summary          = 'Project TestModularization_A.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  # s.homepage         = 'https://github.com/cuchch@163.com/TestModularization_A'
  s.homepage         = 'https://github.com/CoolPrince/'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'ccc' => 'cuchch@163.com' }
  # s.source           = { :git => 'https://github.com/cuchch@163.com/TestModularization_A.git', :tag => s.version.to_s }
  s.source           = { :git => 'https://github.com/CoolPrince/TestModularization_A.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'TestModularization_A/Classes/**/*'
  # s.source_files = 'TestModularization_A/Example for TestModularization_A/**/*'
  s.swift_version = '4.2'
  s.requires_arc  = true
  
  # s.resource_bundles = {
  #   'TestModularization_A' => ['TestModularization_A/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
