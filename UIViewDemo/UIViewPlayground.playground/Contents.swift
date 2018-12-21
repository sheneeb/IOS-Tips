//:# UIView Playground
//:
//:  For iPad Playgrounds: In finder, copy the playground to your iCloud Playgrounds folder.
//: Also check the main project for a completed version for launch on devices.
//:
//:  An exercise file for iOS Development Tips Weekly
//:  by Steven Lipton (C)2018, All rights reserved
//:  For videos go to http://bit.ly/TipsLinkedInLearning
//:  For code go to http://bit.ly/AppPieGithub


import UIKit
import PlaygroundSupport
let rect1 = CGRect(x: 200, y: 200, width: 200, height: 150)
let rect2 = CGRect(x: 10, y: 10, width: 300, height: 200)
let backgroundImage = UIImage(named: "gradient.jpg")


class MyView: UIView{
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    //the above has to be there
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        let imageView = UIImageView(image: backgroundImage)
        addSubview(imageView)
    }
    //these two are needed for UIView
}

let view = MyView(frame: UIScreen.main.bounds)
PlaygroundPage.current.liveView = view
view.backgroundColor = .yellow

