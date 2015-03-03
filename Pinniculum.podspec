Pod::Spec.new do |s|
  s.name         = "Pinniculum"
  s.version      = "0.1.0"
  s.summary      = "Simple NSAttributedString builder."
  s.homepage     = "https://github.com/kuroyam/Pinniculum"
  s.license      = "MIT"
  s.author       = { "Shun Kuroda" => "kuroyam1109@gmail.com" }
  s.source       = { :git => "https://github.com/kuroyam/Pinniculum.git", :tag => "v0.1.0" }
  s.ios.deployment_target = '7.0'
  s.source_files = "Pinniculum/*.swift"
  s.requires_arc = true
end
