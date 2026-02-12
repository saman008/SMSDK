//
//  SMSDK.swift
//  SMSDK
//
//  Created by youliaobf on 2026/2/9.
//

import UIKit


open class SMSDK: NSObject {
    
    public static func getBundleImage(target: UIViewController) {
        let img = UIImage.bundledImage(named: "icon-20")
        let img1 = UIImage.bundledImage(named: "icon-20.png")
        let img2 = UIImage.bundledImage(named: "icon-30")
        let img3 = UIImage.bundledImage(named: "icon-30.png")
        let img4 = UIImage.bundledImage(named: "icon-40")
        let img5 = UIImage.bundledImage(named: "icon-40.png")
        print(img)
        print(img1)
        print(img2)
        print(img3)
        print(img4)
        print(img5)
        if let image = UIImage.bundledImage(fileName: "icon-40.png"){
            print("✅ \(image) 加载成功: \(image.size)")
        } else {
            print("❌ 加载失败")
        }
        if let image = UIImage.bundledImage(fileName: "icon-20.png"){
            print("✅ \(image) 加载成功: \(image.size)")
        } else {
            print("❌ 加载失败")
        }
        let imageview1 = UIImageView(image: img)
        imageview1.frame = CGRect(x: 100, y: 100, width: 100, height: 100)
        let imageview2 = UIImageView(image: img2)
        imageview2.frame = CGRect(x: 100, y: 200, width: 100, height: 100)
        
        let imageview3 = UIImageView(image: img4)
        imageview1.frame = CGRect(x: 100, y: 300, width: 100, height: 100)
        
        target.view.addSubview(imageview1)
        target.view.addSubview(imageview2)
        target.view.addSubview(imageview3)
        
        if let img = UIImage(nameInBundle: "icon_blacklist"){
            print("UIImage(nameInBundle:图片成功\(img)")
        }else{
            print("UIImage(nameInBundle:图片加载失败")
        }
        if let img = UIImage(nameInBundle: "icon_chat_delete"){
            print("UIImage(nameInBundle:navi图片成功\(img)")
        }else{
            print("UIImage(nameInBundle:navi图片加载失败")
        }
        if let img = SMSDK.bundlePath(at: "icon_group"){
            print("bundlePathheaders图片成功\(img)")
        }else{
            print("bundlePathheaders图片加载失败")
        }
        
    }
    
    public static func bundlePath(at name: String) -> UIImage?{
        return UIImage(named: name, in: Bundle.init(path: LDIM.sdkBundle.bundlePath+"/headers"), compatibleWith: nil)
    }
}
