Pod::Spec.new do |s|
  s.name         = "VWAdLibrary"
  s.version      = "1.3.1"
  s.summary      = "Verve iOS Ad Library."
  s.homepage     = "http://www.vervemobile.com"
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.author       = 'Verve Wireless, Inc.'
  s.source       = { :git => "https://github.com/VerveWireless/iOS_Ad.git", :tag => "v1.3.1", :branch => "IOSC-99"}
  s.platform     = :ios, '5.1'
  s.source_files = '*.{h,m}'
  s.public_header_files = 'Public Headers'
  s.requires_arc = true
end