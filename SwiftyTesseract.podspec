
Pod::Spec.new do |s|

  s.name                     = "SwiftyTesseract"
  s.version                  = "4.1.1"
  s.summary                  = "A Swift wrapper around Tesseract for use in iOS applications."

  s.swift_versions           = "5.3"

  s.description              = <<-DESC
                                SwiftyTesseract is a library used to perform optical character recognition
                                in your iOS projects. SwiftyTesseract only implements the functionality of
                                Tesseract and provides no additional image processing. If you would like an
                                out-of-the-box solution that performs live OCR, please check out
                                SwiftyTesseractRTE.
                              DESC

  s.homepage                 = "https://github.com/SwiftyTesseract/SwiftyTesseract"

  s.license                  = { :type => "MIT", :file => "LICENSE.md" }

  s.author                   = { "Steven Sherry" => "steven.sherry@affinityforapps.com" }
  s.social_media_url         = "http://twitter.com/steven_0351"

  s.platform                 = :ios

  s.source                   = { :git => "https://github.com/idpay-ru/SwiftyTesseract.git", :tag => "#{s.version}" }
  s.source_files             = "Sources/SwiftyTesseract/*.swift"

  s.frameworks               = "UIKit"

  s.ios.deployment_target    = "11.0"
  s.ios.vendored_framework    = "Frameworks/libtesseract.xcframework"
  s.pod_target_xcconfig      = { 
                                  "OTHER_LDFLAGS" => "-lstdc++ -lz",
                                  "SWIFT_VERSION" => "5.3",
                                  "CLANG_CXX_LIBRARY" => "compiler-default" }

end