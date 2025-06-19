#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#
Pod::Spec.new do |s|
s.name = 'flutter_sound'
  s.version          = '8.5.0'
  s.summary          = 'Flutter plugin that relates to sound like audio and recorder.'
  s.description      = <<-DESC
Flutter plugin that relates to sound like audio and recorder.
                       DESC
  s.homepage         = 'https://github.com/dooboolab/flutter_sound/flutter_sound'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Dooboolab' => 'dooboolab@gmail.com' }
  s.source = { :git => "https://github.com/weatherfish/flutter_sound.git", :tag => "4.5" }
  s.license = { :type => "MIT", :file => "LICENSE" }
  s.description = "A complete flutter sound solution. (description should be longer and different from summary)"
#   s.source           = { :path => '.' }
  s.source_files = 'Classes/**/*'
  s.public_header_files = 'Classes/**/*.h'
  s.dependency 'Flutter'

  s.ios.deployment_target = '10.0'
  s.static_framework = true
  s.dependency 'flutter_sound_core', '8.5.0'
#   s.dependency 'ffmpeg-audio', '4.4.LTS'
#   s.dependency 'ffmpeg-kit-ios-full', '~> 4.4.LTS'
   s.dependency  'ffmpeg-audio'
end
