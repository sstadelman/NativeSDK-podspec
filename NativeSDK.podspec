#
#  Be sure to run `pod spec lint iOSODataSDK.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  s.name         = "NativeSDK"
  s.version      = "3.0.5-SP01"
  s.summary      = "Native OData Framework"

  s.description  = <<-DESC
                   Native SDK component, of the SAP Mobile SDK, Version 3.0 Service Pack 5, Patch Level 01.  
                   DESC
    
  s.license     = { :type => 'SAP Product -- download externally through Service Marketplace', :file => "LICENSE"}
  s.platform     = :ios, '7.0'

  s.vendored_libraries =  ['ODataFramework/iOS/libraries/Debug-universal/libAfariaSLL.a', 'ODataFramework/iOS/libraries/Debug-universal/libCache.a', 'ODataFramework/iOS/libraries/Debug-universal/libClientLog.a', 'ODataFramework/iOS/libraries/Debug-universal/libConnectivity.a', 'ODataFramework/iOS/libraries/Debug-universal/libCoreServices.a', 'ODataFramework/iOS/libraries/Debug-universal/libE2ETrace.a', 'ODataFramework/iOS/libraries/Debug-universal/libE2ETrace2.a', 'ODataFramework/iOS/libraries/Debug-universal/libHttpConvAuthFlows.a', 'ODataFramework/iOS/libraries/Debug-universal/libHttpConversation.a', 'ODataFramework/iOS/libraries/Debug-universal/libLogger.a', 'ODataFramework/iOS/libraries/Debug-universal/libMAFFormatters.a', 'ODataFramework/iOS/libraries/Debug-universal/libMAFLogger.a', 'ODataFramework/iOS/libraries/Debug-universal/libMAFLogonManagerNG.a', 'ODataFramework/iOS/libraries/Debug-universal/libMAFLogonUING.a', 'ODataFramework/iOS/libraries/Debug-universal/libMAFUIHelper.a', 'ODataFramework/iOS/libraries/Debug-universal/libMAFZipHelper.a', 'ODataFramework/iOS/libraries/Debug-universal/libMobilePlace.a', 'ODataFramework/iOS/libraries/Debug-universal/libODataAPI.a', 'ODataFramework/iOS/libraries/Debug-universal/libODataOffline.a', 'ODataFramework/iOS/libraries/Debug-universal/libODataOnline.a', 'ODataFramework/iOS/libraries/Debug-universal/libParser.a', 'ODataFramework/iOS/libraries/Debug-universal/libPerformanceLib.a', 'ODataFramework/iOS/libraries/Debug-universal/libRequest.a', 'ODataFramework/iOS/libraries/Debug-universal/libSupportability.a', 'ODataFramework/iOS/libraries/Debug-universal/libUsage.a', 'ODataFramework/iOS/libraries/Debug-universal/libXScriptParser.a', 'ODataFramework/iOS/libraries/Debug-universal/libcrypto.a', 'ODataFramework/iOS/libraries/Debug-universal/libsqlcipher.a', 'ODataFramework/iOS/libraries/Debug-universal/libssl.a', 'ODataFramework/iOS/libraries/Debug-universal/libClientHubSLL.a', 'ODataFramework/iOS/libraries/Debug-universal/libDatavault.a', 'MAFReuse/iOS/libraries/Debug-universal/libMAFUIComponents.a', 'MAFReuse/iOS/libraries/Debug-universal/libMAFLogViewer.a']

  s.library      = 'stdc++.6.0.9', 'z', 'c++'
  s.framework   = 'CoreFoundation', 'Security', 'CFNetwork', 'MobileCoreServices', 'SystemConfiguration', 'MessageUI', 'CoreData'
  s.source_files = "MAFReuse/iOS/includes/public/MAFUIComponents/*.h", "MAFReuse/iOS/includes/public/MAFLogViewer/*.h", "ODataFramework/iOS/includes/public/**/*.h"

  s.resources = 'MAFReuse/iOS/includes/bundles/MAFUIComponents.bundle', 'ODataFramework/iOS/includes/bundles/*.bundle', 'ODataFramework/iOS/includes/bundles/*.bundle', 'ODataFramework/iOS/includes/bundles/MobilePlace.bundle/Base.lproj/MobilePlace_iPhone.storyboard'

  s.requires_arc = true



end
