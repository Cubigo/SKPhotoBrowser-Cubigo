Pod::Spec.new do |s|
  s.name                = "SKPhotoBrowser-Cubigo"
  s.version             = "7.0.4"
  s.summary             = "Simple PhotoBrowser/Viewer iwritten by pure swift. inspired by facebook, twitter photo browsers."
  s.homepage            = "https://github.com/Cubigo/SKPhotoBrowser-Cubigo"
  s.license             = { :type => "MIT", :file => "LICENSE" }
  s.author              = { "cubigo" => "accounts.cubigo.com" }
  s.source              = { :git => "https://github.com/Cubigo/SKPhotoBrowser-Cubigo.git", :tag => s.version }
  s.platform            = :ios, "9.0"
  s.source_files        = "SKPhotoBrowser/**/*.{h,m,swift}"
  s.resources           = "SKPhotoBrowser/SKPhotoBrowser.bundle"
  s.requires_arc        = true
  s.frameworks          = "UIKit"
  s.pod_target_xcconfig = { 'SWIFT_VERSION' => '5.0' }
  s.swift_version = "5.4"
  s.swift_versions = ['4.0', '4.2', '5.0', '5.1', '5.2', '5.3', '5.4']
end
