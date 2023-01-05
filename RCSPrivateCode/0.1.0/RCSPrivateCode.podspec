#
# Be sure to run `pod lib lint RCSPrivateCode.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'RCSPrivateCode'
  s.version          = '0.1.0'
  s.summary          = 'A private code.'

  s.description      = 'This is a private pod testing code.'

  s.homepage         = 'https://github.com/a1252425/RCSPrivateCode'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'shuai shao' => 'shaoshuai@rongcloud.cn' }
  s.source           = { :git => 'https://github.com/a1252425/RCSPrivateCode.git', :tag => s.version.to_s }

  s.ios.deployment_target = '11.0'

  s.source_files = 'RCSPrivateCode/Classes/**/*'
  
  s.resources = ['RCSPrivateCode/Assets/RongCloud.bundle']
  
  # s.resource_bundles = {
  #   'RCSPrivateCode' => ['RCSPrivateCode/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
