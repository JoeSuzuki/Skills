//
//  File.swift
//  Skills
//
//  Created by Joe Suzuki on 4/6/18.
//  Copyright © 2018 Joe Suzuki. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let numViewPerRow = 15

    var cells = [String: UIView]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
       
        let width = view.frame.width / CGFloat(numViewPerRow)
        let height = view.frame.height / width

        for j in 0...Int(height){
            for i in 0...numViewPerRow {
                let cellView = UIView()
                cellView.backgroundColor = randomColor()
                cellView.frame = CGRect(x: CGFloat(i) * width, y: CGFloat(j) * width, width: width, height: width)
                cellView.layer.borderWidth = 0.5
                cellView.layer.borderColor = UIColor.black.cgColor
                view.addSubview(cellView)
                
                let key = "\(i)|\(j)"
                cells[key] = cellView
            }
        }
        view.addGestureRecognizer(UIPanGestureRecognizer(target: self, action: #selector(handlePan)))
    }
    
    @objc func handlePan(gesture: UIPanGestureRecognizer) {

        let width = view.frame.width / CGFloat(numViewPerRow)
        let location = gesture.location(in: view)
        print(location)

        let x = Int(location.x / width)
        let y = Int(location.y / width)

        let key = "\(x)|\(y)"
        let cellView = cells[key]
        cellView?.backgroundColor = .white
        
//        for subview in view.subviews {
//            if subview.frame.contains(location) {
//                subview.backgroundColor = .black
//            }
//        }
    }
    
    fileprivate func randomColor() -> UIColor {
        let red = CGFloat(drand48())
        let green = CGFloat(drand48())
        let blue = CGFloat(drand48())

        return UIColor(red: red, green: green, blue: blue, alpha: 1)
    }
}


