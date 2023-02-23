#
# Be sure to run `pod lib lint RCSCheapCopyIM.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
    s.name            = 'RCSCheapCopyIM'
    s.version         = '0.1.0'
    s.summary         = "RongCloud IM SDK.(如果看不到最新版本，请使用 pod repo update 命令更新一下本地pod仓库，从 2.9.0 版本开始这里不再包含 CallKit 和 CallLib 类库的管理，音视频服务升级为融云自有音视频，2.9.0 版本之前用户请根据站内信提示更新)"
    
    
    s.description     = <<-DESC
    RongCloud IM SDK for iOS.
    
    
    * Think: Why did you write this? What is the focus? What does it do?
    * CocoaPods will be using this to generate tags, and improve search results.
    * Try to keep it short, snappy and to the point.
    * Finally, don't worry about the indent, CocoaPods strips it!
    DESC
    
    
    s.homepage     = "http://rongcloud.cn/"
    s.license      = { :type => "Copyright", :text => "Copyright 2014 Rong Cloud" }
    s.author             = { "a1252425" => "812143376@qq.com" }
    s.social_media_url   = "http://www.rongcloud.cn"
    s.platform     = :ios, "8.0"
    s.source       = { :http => "https://downloads.rongcloud.cn/Rong_Cloud_iOS_IM_SDK_v5_2_3_103_Dev.zip" }

    s.requires_arc = true
    
    s.pod_target_xcconfig = {
        'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'
    }
    s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
    
    s.subspec 'IMLibCore' do |core|
        core.vendored_frameworks = "RongCloudIM/RongIMLibCore.xcframework"
        core.resources = "RongCloudIM/RCConfig.plist"
        core.xcconfig = { 'OTHER_LDFLAGS' => '-ObjC' }
        core.source_files = 'RongCloudIM/RongIMLibCore.xcframework/ios-arm64_armv7/RongIMLibCore.framework/Headers/**.h'
        core.public_header_files = "RongCloudIM/RongIMLibCore.xcframework/ios-arm64_armv7/RongIMLibCore.framework/Headers/**.h"
    end
    
    s.subspec 'ChatRoom' do |cr|
        cr.vendored_frameworks = "RongCloudIM/RongChatRoom.xcframework"
        cr.dependency 'RCSCheapCopyIM/IMLibCore'
        cr.xcconfig = { 'OTHER_LDFLAGS' => '-ObjC' }
        cr.source_files = 'RongCloudIM/RongChatRoom.xcframework/ios-arm64_armv7/RongChatRoom.framework/Headers/**.h'
        cr.public_header_files = "RongCloudIM/RongChatRoom.xcframework/ios-arm64_armv7/RongChatRoom.framework/Headers/**.h"
    end

    s.subspec 'CustomerService' do |cs|
        cs.vendored_frameworks = "RongCloudIM/RongCustomerService.xcframework"
        cs.dependency 'RCSCheapCopyIM/IMLibCore'
        cs.xcconfig = { 'OTHER_LDFLAGS' => '-ObjC' }
        cs.source_files = 'RongCloudIM/RongCustomerService.xcframework/ios-arm64_armv7/RongCustomerService.framework/Headers/**.h'
        cs.public_header_files = "RongCloudIM/RongCustomerService.xcframework/ios-arm64_armv7/RongCustomerService.framework/Headers/**.h"
    end

    s.subspec 'Discussion' do |discussion|
        discussion.vendored_frameworks = "RongCloudIM/RongDiscussion.xcframework"
        discussion.dependency 'RCSCheapCopyIM/IMLibCore'
        discussion.xcconfig = { 'OTHER_LDFLAGS' => '-ObjC' }
        discussion.source_files = 'RongCloudIM/RongDiscussion.xcframework/ios-arm64_armv7/RongDiscussion.framework/Headers/**.h'
        discussion.public_header_files = "RongCloudIM/RongDiscussion.xcframework/ios-arm64_armv7/RongDiscussion.framework/Headers/**.h"
    end

    s.subspec 'PublicService' do |ps|
        ps.vendored_frameworks = "RongCloudIM/RongPublicService.xcframework"
        ps.dependency 'RCSCheapCopyIM/IMLibCore'
        ps.xcconfig = { 'OTHER_LDFLAGS' => '-ObjC' }
        ps.source_files = 'RongCloudIM/RongPublicService.xcframework/ios-arm64_armv7/RongPublicService.framework/Headers/**.h'
        ps.public_header_files = "RongCloudIM/RongPublicService.xcframework/ios-arm64_armv7/RongPublicService.framework/Headers/**.h"
    end

    s.subspec 'Location' do |rtl|
        rtl.vendored_frameworks = "RongCloudIM/RongLocation.xcframework"
        rtl.dependency 'RCSCheapCopyIM/IMLibCore'
        rtl.xcconfig = { 'OTHER_LDFLAGS' => '-ObjC' }
        rtl.source_files = 'RongCloudIM/RongLocation.xcframework/ios-arm64_armv7/RongLocation.framework/Headers/**.h'
        rtl.public_header_files = "RongCloudIM/RongLocation.xcframework/ios-arm64_armv7/RongLocation.framework/Headers/**.h"
    end

    s.subspec 'IMLib' do |lib|
        lib.vendored_frameworks = "RongCloudIM/RongIMLib.xcframework"
        lib.dependency 'RCSCheapCopyIM/IMLibCore'
        lib.dependency 'RCSCheapCopyIM/ChatRoom'
        lib.dependency 'RCSCheapCopyIM/Discussion'
        lib.dependency 'RCSCheapCopyIM/PublicService'
        lib.dependency 'RCSCheapCopyIM/CustomerService'
        lib.dependency 'RCSCheapCopyIM/Location'
        lib.xcconfig = { 'OTHER_LDFLAGS' => '-ObjC' }
        lib.source_files = 'RongCloudIM/RongIMLib.xcframework/ios-arm64_armv7/RongIMLib.framework/Headers/**.h'
        lib.public_header_files = "RongCloudIM/RongIMLib.xcframework/ios-arm64_armv7/RongIMLib.framework/Headers/**.h"
    end

    s.subspec 'IMKit' do |kit|
        kit.resources = "RongCloudIM/RongCloud.bundle", "RongCloudIM/en.lproj", "RongCloudIM/zh-Hans.lproj", "RongCloudIM/ar.lproj", "RongCloudIM/Emoji.plist", "RongCloudIM/RCColor.plist"
        kit.vendored_frameworks = "RongCloudIM/RongIMKit.xcframework"
        kit.dependency 'RCSCheapCopyIM/IMLib'
        kit.source_files = 'RongCloudIM/RongIMKit.xcframework/ios-arm64_armv7/RongIMKit.framework/Headers/**.h'
        kit.public_header_files = "RongCloudIM/RongIMKit.xcframework/ios-arm64_armv7/RongIMKit.framework/Headers/**.h"
        # kit.dependency 'RongCloudIM/ChatRoom'
        # kit.dependency 'RongCloudIM/CustomerService'
        # kit.dependency 'RongCloudIM/Discussion'
        # kit.dependency 'RongCloudIM/PublicService'
        # kit.dependency 'RongCloudIM/Location'
    end

    s.subspec 'RongSticker' do |rs|
        rs.resources = "RongCloudIM/RongSticker.bundle", "RongCloudIM/en.lproj", "RongCloudIM/zh-Hans.lproj", "RongCloudIM/ar.lproj"
        rs.vendored_frameworks = "RongCloudIM/RongSticker.xcframework"
        rs.dependency 'RCSCheapCopyIM/IMKit'
        rs.source_files = 'RongCloudIM/RongSticker.xcframework/ios-arm64_armv7/RongSticker.framework/Headers/**.h'
        rs.public_header_files = "RongCloudIM/RongSticker.xcframework/ios-arm64_armv7/RongSticker.framework/Headers/**.h"
    end

    s.subspec 'Sight' do |st|
        st.vendored_frameworks = "RongCloudIM/RongSight.xcframework"
        st.dependency 'RCSCheapCopyIM/IMKit'
        st.source_files = 'RongCloudIM/RongSight.xcframework/ios-arm64_armv7/RongSight.framework/Headers/**.h'
        st.public_header_files = "RongCloudIM/RongSight.xcframework/ios-arm64_armv7/RongSight.framework/Headers/**.h"
    end

    s.subspec 'ContactCard' do |ccd|
        ccd.vendored_frameworks = "RongCloudIM/RongContactCard.xcframework"
        ccd.dependency 'RCSCheapCopyIM/IMKit'
        ccd.source_files = 'RongCloudIM/RongContactCard.xcframework/ios-arm64_armv7/RongContactCard.framework/Headers/**.h'
        ccd.public_header_files = "RongCloudIM/RongContactCard.xcframework/ios-arm64_armv7/RongContactCard.framework/Headers/**.h"
    end
    
end
