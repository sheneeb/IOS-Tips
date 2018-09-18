//
//  ViewController.swift
//  UIViewDemo
//
//  Created by Steven Lipton on 9/18/18.
//  Copyright © 2018 Steven Lipton. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //Projects do a better job of defining the view than Playgrounds, so view.bounds works here instrad of using UIScreen. 
        let myView = MyView(frame: view.bounds)
        view.addSubview(myView)
        myView.backgroundColor = .yellow
    }


}

