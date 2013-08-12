Pod::Spec.new do |s|
  s.name     = 'VWAdLibrary'
  s.version  = '1.3.1'
  s.license      = {
    :type => 'Commercial',
    :text => <<-LICENSE	
	See: www.vervemobile.com 
	LICENSE
  }
  s.summary  = 'Verve Ad SDK for iOS.'
  s.homepage = 'http://www.vervemobile.com'
  s.author   = { 'Verve Wireless, Inc.' => 'www.vervemobile.com' }
  s.source   = { :git => "https://github.com/VerveWireless/verve-ad-ios-sdk.git", :tag => "v1.3.1"}
  s.platform = :ios, '5.1'
  s.source_files = '*.h'
  s.preserve_paths = 'libVerveAd.a'
  s.library = 'VerveAd', 'xml2'
  s.framework =  'iAd', 'EventKit', 'MessageUI', 'CoreLocation', 'CoreFoundation', 'Security'
  s.weak_frameworks = 'AdSupport'
  s.xcconfig  =  { 'LIBRARY_SEARCH_PATHS' => '"$(PODS_ROOT)/VWAdLibrary"' }
end