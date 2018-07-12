//
//  ViewController.swift
//  SwiftFillButton
//
//  Created by kha26 on 07/12/2018.
//  Copyright (c) 2018 kha26. All rights reserved.
//

import UIKit
import SwiftFillButton

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let buttonSize = CGSize(width: 100, height: 50)
        
        let button1 = FillButton()
        button1.frame.size = buttonSize
        button1.center = view.center
        button1.center.y -= buttonSize.height + 16
        button1.setTitle("Click Me", for: .normal)
        
        button1.highlightColor = UIColor.magenta
        button1.unhighlightColor = UIColor.white
        
        view.addSubview(button1)
        
        let button2 = FillButton()
        button2.frame.size = buttonSize
        button2.center = view.center
        button2.setTitle("Click Me 2", for: .normal)
        
        button2.highlightColor = UIColor.yellow
        button2.unhighlightColor = UIColor.black
        button2.isHighlightBold = true
        
        view.addSubview(button2)
        
        let button3 = FillButton()
        button3.frame.size = buttonSize
        button3.center = view.center
        button3.center.y += buttonSize.height + 16
        button3.setTitle("Click Me 3", for: .normal)
        
        button3.highlightColor = UIColor.purple
        button3.unhighlightColor = UIColor.cyan
        button3.isHighlightBold = true
        button3.doesZoom = true
        button3.zoomScale = 1.05
        
        view.addSubview(button3)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

