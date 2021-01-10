//
//  ViewController.swift
//  TinderClone
//
//  Created by Eugene Y on 10.01.2021.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        let topSubviews = [UIColor.gray, UIColor.darkGray, UIColor.black].map { (color) -> UIView in
            let view = UIView()
            view.backgroundColor = color
            return view
        }
        
        let topView = UIStackView(arrangedSubviews: topSubviews)
        topView.distribution = .fillEqually
        topView.snp.makeConstraints { (make) in
            make.height.equalTo(110)
        }
        
        let middleView = UIView()
        middleView.backgroundColor = .yellow
        
        let bottomView = UIView()
        bottomView.backgroundColor = .red
        bottomView.snp.makeConstraints { (make) in
            make.height.equalTo(120)
        }
        
        let mainStackView = UIStackView(arrangedSubviews: [topView, middleView, bottomView])
        mainStackView.axis = .vertical
        mainStackView.distribution = .fill
        
        view.addSubview(mainStackView)
        
        mainStackView.snp.makeConstraints { (make) in
            make.top.leading.bottom.trailing.equalToSuperview()
        }
        
        
    }
}
