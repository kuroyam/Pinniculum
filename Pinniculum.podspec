#
#  Be sure to run `pod spec lint Pinniculum.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|
  s.name         = "Pinniculum"
  s.version      = "0.1.0"
  s.summary      = "Simple NSAttributedString builder."
  s.homepage     = "https://github.com/kuroyam/Pinniculum"
  s.license      = "MIT"
  s.author       = { "Shun Kuroda" => "kuroyam1109@gmail.com" }
  s.source       = { :git => "https://github.com/kuroyam/Pinniculum.git", :tag => s.version }
  s.source_files = "Pinniculum/*.swift"
  s.requires_arc = true
end
