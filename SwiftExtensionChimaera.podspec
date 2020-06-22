Pod::Spec.new do |s|

  s.name         = "SwiftExtensionChimaera"
  s.version      = "0.0.1"
  s.summary      = "A pod of Swift Extension Chimaera."
  s.homepage     = "https://github.com/WataruSuzuki"
  s.license      = "MIT License"
  s.author       = { "WataruSuzuki" => "wataru0406@gmail.com" }
  s.source       = { :git => "https://github.com/WataruSuzuki/SwiftExtensionChimaera.git", :tag => "#{s.version}" }

  s.dependency 'PureLayout'

  s.platform     = :ios, "9.0"
  s.swift_version = '5.0'
  s.source_files = '**/*.{swift}'
end
