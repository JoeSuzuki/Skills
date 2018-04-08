//
//  LeftBlockDisplayCell.swift
//  Skills
//
//  Created by Joe Suzuki on 4/8/18.
//  Copyright © 2018 Joe Suzuki. All rights reserved.
//

import UIKit

class LeftBlockDisplayCell: UICollectionViewCell {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
    }
    let backgroundColorView: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    func setupViews() {
        addSubview(backgroundColorView)
            
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
