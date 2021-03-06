//
//  TestViewController.swift
//  LZLoopView+Collection
//
//  Created by Artron_LQQ on 2016/11/17.
//  Copyright © 2016年 Artup. All rights reserved.
//

import UIKit

class TestViewController: UIViewController {

    var runLoop: LZLoopView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.view.backgroundColor = UIColor.white

        let button = UIButton(type: .custom)
        button.frame = CGRect(x: 20, y: 40, width: 40, height: 40)
        button.setTitle("X", for: .normal)
        button.backgroundColor = UIColor.red
        button.addTarget(self, action: #selector(btnClick), for: .touchUpInside)
        self.view.addSubview(button)
        
        self.setScroll()
        
    }

    func btnClick() {
        
//        runLoop.stopTimer()

        self.dismiss(animated: true, completion: nil)
    }
    
    func setScroll()  {
        let arr = ["http://d.hiphotos.baidu.com/image/pic/item/0ff41bd5ad6eddc42223e3f13bdbb6fd536633f7.jpg",
                   "http://tupian.enterdesk.com/2012/1015/zyz/03/5.jpg",
                   "http://img.web07.cn/UpImg/Desk/201301/12/desk230393121053551.jpg",
                   "http://wallpaper.160.com/Wallpaper/Image/1280_960/1280_960_37227.jpg"]
        
        
        let img = ["findCar_topBanner01", "findCar_topBanner02", "findCar_topBanner03", "findCar_topBanner04"]
        let title = ["这是第一个视图的标题", "这是第二个视图的标题这是第二个视图的标题这是第二个视图的标题这是第二个视图的标题", "这是第三个标题", "这是第四个标题这是第四个标题这是第四个标题这是第四个标题这是第四个标题这是第四个标题这是第四个标题这是第四个标题这是第四个标题这是第四个标题这是第四个标题这是第四个标题这是第四个标题"]
        
        let loop = LZLoopView()
        loop.frame = CGRect(x: 0, y: 100, width: self.view.bounds.width, height: 200)
        loop.images = img
        loop.titles = title;
        self.view.addSubview(loop)
        runLoop = loop
        
        _ = LZLoopView.loopViewOn(self.view, frame: CGRect(x: 0, y: 310, width: self.view.bounds.width, height: 200), images: arr, didSelected: { index in
            
            print("selected at \(index)")
        })
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
