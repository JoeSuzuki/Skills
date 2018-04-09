//
//  LeftBlockDisplayCell.swift
//  Skills
//
//  Created by Joe Suzuki on 4/8/18.
//  Copyright © 2018 Joe Suzuki. All rights reserved.
//

import UIKit
import Kingfisher

class LeftBlockDisplayCell: UICollectionViewCell {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
    }
    let redView: UIView = {
        let view = UIView()
        view.backgroundColor = .red
        view.layer.borderWidth = 0.5
        view.layer.borderColor = UIColor.white.cgColor
        view.addBackground(imageName: "Michellesportrait", contentMode: .scaleToFill)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    let blueView: UIView = {
        let view = UIView()
        view.backgroundColor = .blue
        view.layer.borderWidth = 0.5
        view.layer.borderColor = UIColor.white.cgColor
        view.addBackground(imageName: "obamaportrait", contentMode: .scaleToFill)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    let greenView: UIView = {
        let view = UIView()
        view.backgroundColor = .green
        view.layer.borderWidth = 0.5
        view.layer.borderColor = UIColor.white.cgColor
        view.addBackground(imageName: "Michellesportrait", contentMode: .scaleToFill)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    let purpleView: UIView = {
        let view = UIView()
        view.backgroundColor = .purple
        view.layer.borderWidth = 0.5
        view.layer.borderColor = UIColor.white.cgColor
        view.addBackground(imageName: "obamaportrait", contentMode: .scaleToFill)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    let whiteView: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.layer.borderWidth = 0.5
        view.layer.borderColor = UIColor.white.cgColor
        view.addBackground(imageName: "Michellesportrait", contentMode: .scaleToFill)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    let yellowView: UIView = {
        let view = UIView()
        view.backgroundColor = .yellow
        view.layer.borderWidth = 0.5
        view.layer.borderColor = UIColor.white.cgColor
        view.addBackground(imageName: "obamaportrait", contentMode: .scaleToFill)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    let brownView: UIView = {
        let view = UIView()
        view.backgroundColor = .brown
        view.layer.borderWidth = 0.5
        view.layer.borderColor = UIColor.white.cgColor
        view.addBackground(imageName: "Michellesportrait", contentMode: .scaleToFill)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    let orangeView: UIView = {
        let view = UIView()
        view.backgroundColor = .orange
        view.layer.borderWidth = 0.5
        view.layer.borderColor = UIColor.white.cgColor
        view.addBackground(imageName: "obamaportrait", contentMode: .scaleToFill)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    let grayView: UIView = {
        let view = UIView()
        view.backgroundColor = .gray
        view.layer.borderWidth = 0.5
        view.layer.borderColor = UIColor.white.cgColor
        view.addBackground(imageName: "Michellesportrait", contentMode: .scaleToFill)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()

    func setupViews() {
        [redView, blueView, greenView, purpleView, whiteView, yellowView, brownView, orangeView, grayView].forEach {addSubview($0)}
        
        redView.anchor(top: self.safeAreaLayoutGuide.topAnchor, leading: nil, bottom: nil, trailing: self.safeAreaLayoutGuide.trailingAnchor, padding: .init(top: 0, left: 0, bottom: 0, right: 0), size: .init(width: self.layer.frame.width / 3, height: 0))
        redView.heightAnchor.constraint(equalTo: redView.widthAnchor).isActive = true
        
        blueView.anchor(top: redView.bottomAnchor, leading: nil, bottom: nil, trailing: redView.trailingAnchor, padding: .init(top: 0, left: 0, bottom: 0, right: 0))
        blueView.anchorSize(to: redView)
        
        greenView.anchor(top: redView.topAnchor, leading: self.safeAreaLayoutGuide.leadingAnchor, bottom: blueView.bottomAnchor, trailing: redView.leadingAnchor, padding: .init(top: 0, left: 0, bottom: 0, right: 0))
        
        purpleView.anchor(top: blueView.bottomAnchor, leading: nil, bottom: nil, trailing: blueView.trailingAnchor, padding: .init(top: 0, left: 0, bottom: 0, right: 0))
        purpleView.anchorSize(to: redView)
        
        whiteView.anchor(top: greenView.bottomAnchor, leading: nil, bottom: nil, trailing: greenView.trailingAnchor, padding: .init(top: 0, left: 0, bottom: 0, right: 0))
        whiteView.anchorSize(to: redView)
        
        yellowView.anchor(top: greenView.bottomAnchor, leading: greenView.leadingAnchor, bottom: nil, trailing: nil, padding: .init(top: 0, left: 0, bottom: 0, right: 0))
        yellowView.anchorSize(to: redView)
        
        brownView.anchor(top: purpleView.bottomAnchor, leading: purpleView.leadingAnchor, bottom: nil, trailing: nil, padding: .init(top: 0, left: 0, bottom: 0, right: 0))
        brownView.anchorSize(to: redView)

        orangeView.anchor(top: whiteView.bottomAnchor, leading: whiteView.leadingAnchor, bottom: nil, trailing: nil, padding: .init(top: 0, left: 0, bottom: 0, right: 0))
        orangeView.anchorSize(to: redView)

        grayView.anchor(top: yellowView.bottomAnchor, leading: yellowView.leadingAnchor, bottom: nil, trailing: nil, padding: .init(top: 0, left: 0, bottom: 0, right: 0))
        grayView.anchorSize(to: redView)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
