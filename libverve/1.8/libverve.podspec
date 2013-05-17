Pod::Spec.new do |s|
  s.name         = "libverve"
  s.version      = "1.8"
  s.summary      = "Verve Content API."
  s.homepage     = "http://www.vervemobile.com"
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.author       = 'Verve Wireless, Inc.'
  s.source       = { :git => "https://github.com/VerveWireless/libverve.git", :tag => "v1.8", :branch => "ARC"}
  s.platform     = :ios, '5.1'
  s.source_files = 'Classes', 'TouchXML', 'Models/UserPreferences.xcdatamodeld'
  s.exclude_files = 'Classes/SFHFKeychainUtils.{h,m}', 'TouchXML/Creation/CXMLDocument_CreationExtensions.{h,m}', 'TouchXML/Creation/CXMLNode_CreationExtensions.{h,m}', 'TouchXML/CXMLDocument.{h,m}', 'TouchXML/CXMLDocument_PrivateExtensions.{h,m}', 'TouchXML/CXMLElement.{h,m}', 'TouchXML/CXMLElement_CreationExtensions.{h,m}', 'TouchXML/CXMLElement_ElementTreeExtensions.{h,m}', 'TouchXML/CXMLNode.{h,m}', 'TouchXML/CXMLNode_PrivateExtensions.{h,m}', 'TouchXML/CXMLNode_XPathExtensions.{h,m}', 'Classes/VWAdParserOperation.{h,m}', 'Classes/VWAdView.{h,m}', 'Classes/VWAdHandler.{h,m}'
  s.prefix_header_file = 'Prefix.pch'
  s.frameworks = 'AudioToolbox', 'CoreData', 'CoreGraphics', 'CoreLocation', 'MediaPlayer', 'MessageUI', 'MobileCoreServices', 'QuartzCore', 'Security', 'SystemConfiguration'
  s.libraries = 'xml2', 'sqlite3.0'
  s.xcconfig     = { 'HEADER_SEARCH_PATHS' => '$(SDKROOT)/usr/include/libxml2'}
  s.requires_arc = true

  s.subspec 'no-arc' do |sp|
    sp.source_files = 'Classes/SFHFKeychainUtils.{h,m}', 'TouchXML/Creation/CXMLDocument_CreationExtensions.{h,m}', 'TouchXML/Creation/CXMLNode_CreationExtensions.{h,m}', 'TouchXML/CXMLDocument.{h,m}', 'TouchXML/CXMLDocument_PrivateExtensions.{h,m}', 'TouchXML/CXMLElement.{h,m}', 'TouchXML/CXMLElement_CreationExtensions.{h,m}', 'TouchXML/CXMLElement_ElementTreeExtensions.{h,m}', 'TouchXML/CXMLNode.{h,m}', 'TouchXML/CXMLNode_PrivateExtensions.{h,m}', 'TouchXML/CXMLNode_XPathExtensions.{h,m}', 'Classes/VWAdParserOperation.{h,m}'
    sp.requires_arc = false
  end

end