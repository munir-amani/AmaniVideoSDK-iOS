#
#  Be sure to run `pod spec lint Amani.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|


  s.name         = "AmaniVideoSDK"
  s.version      = "2.0.6"
  s.summary      = "AmaniVideoSDK"
  s.description  = "The Amani Software Development kit (SDK) provides you complete steps to perform video call ."
  s.homepage     = "https://documentation.amani.ai/documents/ios-video/"
  s.license      = "Copyright"
  s.author       = "Amani"
  s.platform     = :ios, "13.0"
  s.static_framework = true
  s.source       = { :http => 'file:' + __dir__ + '/Binaries/AmaniVideoSDK.xcframework.zip'  }
  s.dependency 'WebRTC-lib', '>=127.0.0'
  # s.dependency 'Starscream','4.0.8'
  s.ios.deployment_target = '13.0'
  s.vendored_frameworks = 'AmaniVideoSDK.xcframework'


end
