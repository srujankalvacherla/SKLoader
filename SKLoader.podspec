Pod::Spec.new do |s|
  s.name         = "SKLoader"
  s.version      = "0.0.1"
  s.summary      = "Simple usage, Seamless functionality."
  s.description  = "SKLoader is inspired to create seamless loader with custom animations in the type of gif."

  s.homepage     = "https://github.com/srujankalvacherla/skloader"
#s.screenshots  = "https://user-images.githubusercontent.com/40866243/43359582-21dc18c8-92c2-11e8-858e-d440fbddd935.gif"

  s.license      = "MIT (example)"
  s.license      = { :type => "MIT", :file => "LICENSE" }

  s.author             = { "Srujan K" => "srujan.kal@gmail.com" }
  s.platform     = :ios
  s.platform     = :ios, "9.0"

  s.source       = { :git => "https://github.com/srujankalvacherla/SKLoader.git", :tag => "0.0.1" }
  s.source_files  = "SKLoader", "SKLoader/**/*.{h,m}"
  s.swift_version     = "4.0"
  #s.resources         = "Gifs/*.xib"
end
