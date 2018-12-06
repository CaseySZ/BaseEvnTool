#
#  Be sure to run `pod spec lint BaseEvnTool.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|



  s.name         = "BaseEvnTool"
  s.version      = "1.1.0"
  s.summary      = "base tool for developer."
  s.description  = <<-DESC
            base tool for developer project
                   DESC

  s.homepage     = "https://github.com/sunyong445/BaseEvnTool"


   s.license      = { :type => "MIT", :file => "LICENSE" }



   s.author             = { "sunyong445" => "87281923@qq.com" }
  

   s.platform     = :ios


   s.ios.deployment_target = "8.0"



  s.source       = { :git => "https://github.com/sunyong445/BaseEvnTool.git", :tag => "#{s.version}" }


  #s.source_files  = "Classes", "BaseEvnTool/Classes/**/*.{h,m}"
#s.exclude_files = "Classes/Exclude"
    s.source_files  = "BaseEvnTool/Classes/BaseEvnTool.h"
    #  s.public_header_files = "BaseEvnTool/Classes/BaseEvnTool.h"

   s.frameworks = "Foundation", "UIKit"

   s.requires_arc = true

  # s.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SDKROOT)/usr/include/libxml2" }
   s.dependency "AFNetworking"
   
   s.subspec 'CaseyAbsoluteLayout' do |ss|
       ss.source_files = 'BaseEvnTool/Classes/CaseyAbsoluteLayout.{h,m}'
       ss.public_header_files = 'BaseEvnTool/Classes/CaseyAbsoluteLayout/CaseyAbsoluteLayout.h'
   end
   
   s.subspec 'CaseyImageView' do |ss|
       ss.source_files = 'BaseEvnTool/Classes/CaseyImageView.{h,m}'
       ss.public_header_files = 'BaseEvnTool/Classes/CaseyImageView/UIImageView+AsyLoad.h'
   end
   
   s.subspec 'CaseyRefresh' do |ss|
       ss.source_files = 'BaseEvnTool/Classes/CaseyRefresh.{h,m}'
       ss.public_header_files = 'BaseEvnTool/Classes/CaseyRefresh/CaseyRefresh.h'
   end
   
   s.subspec 'CaseyNetWorking' do |ss|
       ss.source_files = 'BaseEvnTool/Classes/CaseyNetWorking.{h,m}'
       ss.public_header_files = 'BaseEvnTool/Classes/CaseyNetWorking/CaseyNetWorking.h'
   end
   

end
