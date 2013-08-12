Pod::Spec.new do |s|
  s.name         = "VWAdLibrary"
  s.version      = "1.3.1"
  s.summary      = "Verve iOS Ad Library."
  s.homepage     = "http://www.vervemobile.com"
  s.license      = {
    :type => 'Commercial',
    :text => <<-LICENSE	
	See: www.vervemobile.com 
	LICENSE
  }
  s.author       = 'Verve Wireless, Inc.'
  s.source       = { :git => "https://github.com/VerveWireless/iOS_Ad.git", :tag => "v1.3.1", :branch => "IOSC-99"}
  s.platform     = :ios, '5.1'
  s.source_files = 'Classes', 'PublicHeaders'
  s.exclude_files = 'Classes/QSStrings.{h,m}'
  s.prefix_header_file = 'Prefix.pch'
  s. public_header_files = 'PublicHeaders'
  s.frameworks = 'iAd', 'EventKit', 'AdSupport', 'MessageUI', 'CoreLocation', 'CoreFoundation', 'Security'
  s.libraries = 'xml2'
  s.xcconfig     = { 'HEADER_SEARCH_PATHS' => '$(SDKROOT)/usr/include/libxml2' }
  s.resources    = "buildDistribution.sh", "mraid.js", "buildMraidJs", "Images", "Verve iOS Ad Library.mdown", "Verve iOS Ad Library.pdf", "Test Projects"
  s.requires_arc = true

  s.subspec 'no-arc' do |sp|
    sp.source_files = 'Classes/QSStrings.{h,m}'
    sp.requires_arc = false
  end

end