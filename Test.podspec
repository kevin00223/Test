
Pod::Spec.new do |s|

  s.name         = "Test"
  s.version      = "0.0.1"
  s.summary      = "Test for iOS"

  s.description  = "TestFramekwork for iOS"

  s.homepage     = "https://github.com/kevin00223/Test"
  s.license      = "MIT"
  s.author       = { "kevin00223" => "likai.new@gmail.com" }

  s.platform     = :ios, "9.0"

  s.source       = { :git => "https://github.com/kevin00223/Test.git", :tag => s.version }
  s.source_files  = "Test/*"

  s.frameworks   = "UIKit", "Foundation"

  s.dependency "Masonry"

  s.requires_arc = true



end
