Pod::Spec.new do |s|
  s.name             = "jackson-core"
  s.version          = '2.9.3.J2ObjC2.1.1'
  s.author           = { "Ryan Salton" => "ryan.salton@laundrapp.com" }
  s.source           = { :git => "https://github.com/laundrapp/jackson-core.git", :tag => "2.9.3.J2ObjC2.1.1" }
  s.summary           = "Converted to Objective-C using J2ObjC."
  s.homepage         = "https://github.com/laundrapp/jackson-core.git"

  s.ios.deployment_target = '7.0'
  s.requires_arc = false

  s.source_files = 'src/main/gen/objc/**/*.{h,m}'
  s.public_header_files = 'src/main/gen/objc/**/*.h'
  s.header_mappings_dir = 'src/main/gen/objc'
  # s.resources =

end
