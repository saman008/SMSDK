Pod::Spec.new do |spec|


  spec.name         = "SMSDK"
  spec.version      = "0.0.2"
  spec.summary      = "简短的SDK描述"

  spec.description  = <<-DESC
  这是对SDK的一段描述
                   DESC

  spec.homepage     = "https://github.com/saman008/SMSDK"

  spec.license      = "MIT (example)"
  spec.license      = { :type => "MIT", :file => "FILE_LICENSE" }

  spec.author       = { "saman008" => "1975566197@qq.com" }

  spec.platform     = :ios, "15.0"

  spec.source       = { :git => "https://github.com/saman008/SMSDK.git", :tag => "#{spec.version}" }


  spec.vendored_frameworks  = "SMSDK.xcframework"

 # spec.source_files = 'SMSDK.xcframework/ios-arm64/SMSDK.framework/*.{swift,h,m}'


  # 必须的框架
   spec.frameworks = 'UIKit', 'Foundation'
    # 静态框架
   spec.static_framework = true
   spec.ios.deployment_target = '15.0'
   spec.swift_version = ['5.0']
  #以下是你引用的第三方库 最好把三方库对应的版本加上
   spec.dependency "RxCocoa", "~> 6.6.0"
   spec.dependency "SnapKit"
   spec.dependency "RxSwift"
   spec.dependency "RxDataSources"
   spec.dependency "RxGesture"
   spec.dependency "Differentiator"
   spec.dependency "RxRelay"

end
