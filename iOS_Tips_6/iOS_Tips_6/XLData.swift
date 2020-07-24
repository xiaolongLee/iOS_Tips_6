//
//  XLData.swift
//  iOS_Tips_6
//
//  Created by yuanshi on 2020/7/24.
//  Copyright © 2020 yuanshi. All rights reserved.
//

import UIKit

class XLData: NSObject {
//
//    class func setUserDefaultObjectValue(obj:AnyObject, key:String) {
//
//           let defaults = UserDefaults.standard
//           defaults.set(obj, forKey: key)
//
//           defaults.synchronize()
//       }
//
//       class func userDefalutObjectValue(key:String) -> Any? {
//
//           let defaults = UserDefaults.standard
//
//           return defaults.object(forKey: key)
//       }
    
    ///obj的参数类型改为Any!
       class func setUserDefaultObjectValue(obj:Any!, key:String) {
           
           let defaults = UserDefaults.standard
           defaults.set(obj, forKey: key)
           
           defaults.synchronize()
       }
       
       class func userDefalutObjectValue(key:String) -> Any? {
           
           let defaults = UserDefaults.standard
           
           return defaults.object(forKey: key)
       }
}
