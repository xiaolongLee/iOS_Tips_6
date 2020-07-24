//
//  ViewController.swift
//  iOS_Tips_6
//
//  Created by yuanshi on 2020/7/24.
//  Copyright © 2020 yuanshi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        // iOS 抗锯齿的两种方法
        // 一：
        view.layer.allowsEdgeAntialiasing = true
        
        // 二：
        view.layer.borderColor =  UIColor.clear.cgColor
        view.layer.borderWidth = 1
        
        // iOS UIButton响应链
//        1、调用touchesBegan: withEvent:寻找nextResponder
//
//        2、一层一层地找，UIButton -> UIView -> UIViewController -> UIWindow -> UIApplication -> AppDelegate
//
//        3、找到AppDelegate后，使用hitTest一层一层找引发操作的UIView。
//
//        4、找到目标UIView，然后通过target-action触发动作。
        
        // iOS Pop与Core Animation对比
//        我们都知道处理动画时，会用到Pop或者Core Animation，那么他们的工作原理和优缺点各是什么呢?
//
//
//
//        Pop工作原理：
//
//        它本质上是基于定时器的动画库，使用 CADisplayLink 来开启一个 fps=60 的渲染工作。每当 CADisplayLink 回调触发时，更新一下动画的进度。由于 pop 必须在主线程上处理动画，所以 pop 动画很有可能发生卡顿。
//
//
//
//        Core Animation工作原理：
//
//        它在做相关动画时，你的应用完全不会参与动画的绘制，该进程完全独立于你的应用，应用只会拿到动画开始和结束的回调。主线程和 CoreAnimation 不会互相影响，也就是即使主线程阻塞了，CoreAnimation 依旧在执行。
//
//
//
//        综上所述：
//
//
//
//        Core Animation
//
//        优点为：
//
//        1、单独进程运行，不会阻塞主线程。
//        缺点为：
//
//        1、复杂动画效果要写冗长的代码
//
//        2、手势驱动动画比较复杂。
//
//
//
//        Pop
//
//        优点为：
//
//        1、丰富的 API
//
//        2、内置很多的动画
//
//        缺点为：
//
//        1、在主线程上执行
//
//        2、动画过程可能卡顿
        
        /*
         iOS几个基础的性能优化要点
         1、视图复用，经常复用的视图包括UITableViewCell和UICollectionViewCell，使用系统的视图复用，确保界面上的重复视图不会增加。行高不定的时候采用约束布局配合自动高度计算。弹幕的基本原理也是视图重用。



         2、图片缓存，图片缓存使用三级缓存模式。现在一般使用SDWebImage进行图片缓存。



         3、请求数据时放在子线程，数据返回呈现在视图的时候切换回主线程，确保主线程操作UI。切忌不要在主线程进行一些复杂的逻辑计算。



         4、全局UI变量的使用，最好都使用懒加载，在用到的时候才加载，确保内存合理开销。



         5、有重大开销、影响性能的对象记得缓存起来，反复利用。比如：NSDateFormatter。



         6、使用weak-strong  dance避免循环引用，用切片编程拦截控制器的释放方法，确保每个控制器在退出时得到释放，如果没有释放，多半是循环引用。



         7、定位是一种非常消耗电量的服务，确保用户只有在非常需要的时候才开启定位，不需要时关闭定位。切忌不要在后台频繁定位，虽然现在几乎所有的App都需要定位，因为App喜欢收集用户隐私。



         8、每个界面的视图达到一定的量级，就会卡顿，不要在一个界面上塞入过多的子视图。有些策划不懂，程序员应该劝策划减少视图量。



         9、分类文件太多、load函数放的东西太多，动态库太多，都会增加App启动时间，可以将分类文件合理地合并，减少动态库、减少load函数里的东西。



         10、从网络上请求下来的数据，如果每次都差不多，数据更新频率很慢的话，就直接缓存在本地，减少用户流量使用，加快展示速度。



         11、对于图片的圆角，预先使用CoreGraphics为图片裁剪圆角；对于视频的圆角，创建四个白色弧形的layer盖住四个角，从视觉上制造圆角的效果。



         总结：

         1、其实，能做到以上几点，App基本都不会怎么卡，至于网上说的将UIView换成CALayer，根本不需要，苹果公司创造UIView，就是希望你使用它。

         2、加上现在手机的性能越来越好，卡顿现象已经好多了，至于最辣鸡的王者营地App，用起来也不算很卡。


         */
        
        
        // Swift5.1 问号？与感叹号！
        let possibleString: String? = "An optional string."
        let forcedString: String = possibleString! // requires an exclamation mark
                 
        let assumedString: String! = "An implicitly unwrapped optional string."
        let implicitString: String = assumedString // no need for an exclamation mark
        
        //  Swift5.1 获取版本号等信息
        let infoDictionary = Bundle.main.infoDictionary!
        let appDisplayName = infoDictionary["CFBundleName"] as! String
        let majorVersion = infoDictionary["CFBundleShortVersionString"]
        let minorVersion = infoDictionary["CFBundleVersion"]
        print("程序名称：\(appDisplayName)")
        print("主程序版本号：\(majorVersion as! String)")
        print("构建版本号：" ,minorVersion as! String)
        

        UIImage.init(named: "back")?.withTintColor_ss(.red)
        
        // Swift5.1 UIButton代码块
//        var <#value#>:UIButton={
//
//            let button = UIButton(type:.custom)
//            button.setImage(UIImage.init(named: "<#value#>"), for: .normal)
//            button.setBackgroundImage(<#value#>, for: UIControl.State.normal)
//            button.setBackgroundImage(<#value#>, for: UIControl.State.disabled)
//            button.setTitle("<#value#>", for: .normal)
//            button.setTitleColor(<#value#>, for: .normal)
//            button.titleLabel?.font = UIFont.init(name: "<#value#>", size: <#value#>)
//            button.layer.cornerRadius = <#value#>
//            button.layer.masksToBounds = true
//
//            return button
//        }()
//
//
//        <#value#>.addTarget(self, action: #selector(<#value#>), for: .touchUpInside)
//        @objc func <#value#>() {
//
//        }
    }

    
    // Swift5.1不定长参数

    func mutiAddSubView(_ views: UIView...) {
            
        for view in views {
                
            self.view.addSubview(view)
        }
    }
    
    /// Swift5.1 设置UIImageRenderingMode

//    self.meNavi.tabBarItem.image = (UIImage.init(named: "icon")!).withRenderingMode(UIImage.RenderingMode.alwaysOriginal)
//    self.meNavi.tabBarItem.selectedImage = (UIImage.init(named: "icon_s")!).withRenderingMode(UIImage.RenderingMode.alwaysOriginal)

    // self.meNavi.tabBarItem.image = (UIImage.init(named: "icon")!).withRenderingMode(.alwaysOriginal)
    // self.meNavi.tabBarItem.selectedImage = (UIImage.init(named: "icon_s")!).withRenderingMode(.alwaysOriginal)
}


//
