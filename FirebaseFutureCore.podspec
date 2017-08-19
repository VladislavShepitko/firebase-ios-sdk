# This podspec is not intended to be deployed. It is solely for the static
# library framework build process at
# https://github.com/firebase/firebase-ios-sdk/tree/master/BuildFrameworks

Pod::Spec.new do |s|
  s.name             = 'FirebaseFutureCore'
  s.version          = '0.0.2'
  s.summary          = 'Firebase Open Source Libraries for iOS.'

  s.description      = <<-DESC
Simplify your iOS development, grow your user base, and monetize more effectively with Firebase.
                       DESC

  s.homepage         = 'https://firebase.google.com'
  s.license          = { :type => 'Apache', :file => 'LICENSE' }
  s.authors          = 'Google, Inc.'

  s.source           = { :git => 'https://github.com/firebase/firebase-ios-sdk.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/Firebase'
  s.ios.deployment_target = '7.0'
  s.osx.deployment_target = '10.10'
  s.static_framework = true

  s.source_files = 'Firebase/Core/**/*.[mh]'
  s.public_header_files = 'Firebase/Core/Public/*.h','Firebase/Core/Private/*.h'
  s.private_header_files = 'Firebase/Core/Private/*.h'
  s.dependency 'GoogleToolboxForMac/NSData+zlib', '~> 2.1'
end