Pod::Spec.new do |s|
  s.name             = 'ffmpeg-audio'
  s.version          = '4.4.LTS'
  s.summary          = 'FFmpeg audio frameworks'
  s.description      = 'iOS frameworks for FFmpeg audio'
  s.homepage         = 'https://github.com/weatherfish/mobile-ffmpeg'
  s.license          = { :type => 'LGPL-3.0' }
  s.author           = { 'weatherfish' => 'weatherfish2010@gmail.com' }
  s.platform         = :ios, '10.0'

  s.source           = { :http => 'https://github.com/weatherfish/mobile-ffmpeg/releases/download/v4.4.LTS/ffmpeg-audio.zip' }
  s.ios.vendored_frameworks = [
    "mobileffmpeg.framework",
    "libavcodec.framework",
    "libavdevice.framework",
    "libavfilter.framework",
    "libavformat.framework",
    "libavutil.framework",
    "libswresample.framework",
    "libswscale.framework",
    "lame.framework",
    "libilbc.framework",
    "libogg.framework",
    "libopencore-amrnb.framework",
    "libsndfile.framework",
    "libvorbis.framework",
    "libvorbisenc.framework",
    "libvorbisfile.framework",
    "opus.framework",
    "shine.framework",
    "soxr.framework",
    "speex.framework",
    "twolame.framework",
    "vo-amrwbenc.framework",
    "wavpack.framework"
  ]

  s.public_header_files = [
    'mobileffmpeg.framework/Headers/*.h',
    'libavcodec.framework/Headers/*.h',
    'libavdevice.framework/Headers/*.h',
    'libavfilter.framework/Headers/*.h',
    'libavformat.framework/Headers/*.h',
    'libavutil.framework/Headers/*.h',
    'libswresample.framework/Headers/*.h',
    'libswscale.framework/Headers/*.h',
  ]

  s.header_dir = 'mobileffmpeg'
  s.header_mappings_dir = '.'
  s.ios.frameworks   = 'AudioToolbox', 'CoreMedia', 'VideoToolbox'
  s.libraries        = 'z', 'bz2', 'c++', 'iconv'
  s.xcconfig = {'FRAMEWORK_SEARCH_PATHS' => '$(inherited) $(PODS_ROOT)/ffmpeg-audio/mobileffmpeg.framework'}
end