//
//  ViewController.swift
//  firstSwift
//
//  Created by happymenu on 14-9-1.
//  Copyright (c) 2014年 happymenu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
                            
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.view.backgroundColor = UIColor.redColor()
     
        let label = UILabel(frame:CGRect(origin: CGPointMake(10.0, 50.0), size: CGSizeMake(150,50)))//let 是Swift 表示常量的关键字
        label.text = "This is a Label"
        label.backgroundColor = UIColor.greenColor()
        self.view.addSubview(label)

        // get demo
        var dl=HttpClient()
        var url="http://siwei.me:3855/interface/sprites/say_hi?name=mengli"
        dl.downloadFromGetUrl(url, completionHandler: {(data: NSData?, error: NSError?) -> Void in
            if error{
                println("error=\(error!.localizedDescription)")
            }else{
                var dict=NSJSONSerialization.JSONObjectWithData(data, options:.MutableContainers, error:nil) as? NSDictionary
                println("get_dict=\(dict)")
            }
            })
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

