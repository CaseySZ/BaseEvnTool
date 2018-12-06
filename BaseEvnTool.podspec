#
#  Be sure to run `pod spec lint BaseEvnTool.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|



  s.name         = "BaseEvnTool"
  s.version      = "1.1.1"
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

  s.frameworks = "Foundation", "UIKit"
  s.dependency "AFNetworking"
  s.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SDKROOT)/usr/include/CommonCrypto" }
  
  s.requires_arc = true
  
  #s.source_files  = "Classes", "BaseEvnTool/Classes/**/*.{h,m}"
  #  s.public_header_files = "BaseEvnTool/BaseEvnTool.h"
#s.exclude_files = "Classes/Exclude"
  s.source_files  =  "BaseEvnTool/Classes/BaseEvnTool.h"
    #  s.public_header_files = "BaseEvnTool/Classes/BaseEvnTool.h"


    s.subspec 'CaseyAbsoluteLayout' do |ss|
        ss.source_files = 'BaseEvnTool/Classes/CaseyAbsoluteLayout/*.{h,m}'
        
    end
    
    s.subspec 'CaseyImageView' do |ss|
        ss.source_files = 'BaseEvnTool/Classes/CaseyImageView/*.{h,m}'
        ss.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SDKROOT)/usr/include/CommonCrypto" }
    end
    
    s.subspec 'CaseyRefresh' do |ss|
        ss.source_files = 'BaseEvnTool/Classes/CaseyRefresh/**/*.{h,m}'
    end
    
    # s.subspec 'CaseyNetWorking' do |ss|
    #     ss.source_files = 'BaseEvnTool/Classes/CaseyNetWorking/**/*.{h,m}'
    #     ss.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SDKROOT)/usr/include/CommonCrypto" }
        
        # end

    
    s.subspec 'CaseyNetWorking' do |ss|
        
        ss.source_files = 'BaseEvnTool/Classes/CaseyNetWorking/*.{h,m}'
        
        ss.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SDKROOT)/usr/include/CommonCrypto" }
        
        ss.subspec 'Cache' do |sss|
        
            sss.source_files = 'BaseEvnTool/Classes/CaseyNetWorking/Cache/*.{h,m}'
            
        end
        
        ss.subspec 'Update' do |sss|
            
            sss.source_files = 'BaseEvnTool/Classes/CaseyNetWorking/Update/*.{h,m}'
            
        end
        
        ss.subspec 'DownFile' do |sss|
            
            sss.source_files = 'BaseEvnTool/Classes/CaseyNetWorking/DownFile/*.{h,m}'
            # ss.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SDKROOT)/usr/include/CommonCrypto" }
            
        end
        
        ss.subspec 'ConvertObject' do |sss|
            
            sss.source_files = 'BaseEvnTool/Classes/CaseyNetWorking/ConvertObject/*.{h,m}'
            
        end
        
        ss.subspec 'Multiple Task' do |sss|
            
            sss.source_files = 'BaseEvnTool/Classes/CaseyNetWorking/MultipleTask/*.{h,m}'
            
        end
        
        
    end
    
    
    s.subspec 'RouteRoot' do |ss|
        ss.source_files = 'BaseEvnTool/Classes/RouteRoot/*.{h,m}'
        
        
    end
 

end
