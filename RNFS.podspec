require 'json'
pjson = JSON.parse(File.read('package.json'))

Pod::Spec.new do |s|

  s.name            = "RNFS"
  s.version         = pjson["version"]
  s.homepage        = "https://github.com/MattiasMansson/react-native-fs"
  s.summary         = pjson["description"]
  s.license         = pjson["license"]
  s.author          = { "Johannes Lumpe" => "johannes@lum.pe" }
  
  s.ios.deployment_target = '7.0'
  s.tvos.deployment_target = '9.2'

  s.source          = { :git => "https://github.com/MattiasMansson/react-native-fs", :tag => "v#{s.version}" }
  s.source_files    = '*.{h,m}'
  s.preserve_paths  = "**/*.js"

  s.dependency 'React'
end