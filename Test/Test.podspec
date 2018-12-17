
Pod::Spec.new do |s|

  s.name         = "Test"
  s.version      = "0.0.1"
  s.summary      = "Test for iOS"

  s.description  = <<-DESC
                   DESC

  s.homepage     = "http://EXAMPLE/Test"
  s.license      = "MIT (example)"
  s.author             = { "李凯" => "likai.new@gmail.com" }

  s.platform     = :ios, "9.0"

  s.source       = { :git => "http://EXAMPLE/Test.git", :tag => "#{s.version}" }
  s.source_files  = "Classes", "Classes/**/*.{h,m}"
  s.exclude_files = "Classes/Exclude"

  s.require_arc  = true

  s.frameworks   = 'UIKit', 'Foundation'

  s.dependency "Masonry"



end
