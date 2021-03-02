//
//  HomeViewController.swift
//  ViperFirstApp
//
//  Created by Михаил Задорожный on 01.03.2021.
//

import UIKit
import SnapKit

protocol HomeView: class {
    func updateTitle(title: String)
}

class HomeViewController: UIViewController {
    
    let helloLabel: UILabel = {
        let lbl = UILabel()
        return lbl
    }()
    
    var presenter: HomePresenter!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(helloLabel)
        
        helloLabel.textAlignment = .center
        helloLabel.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.centerY.equalToSuperview()
            make.height.equalTo(50)
            make.left.right.equalToSuperview()
        }
        
        view.backgroundColor = .white
        
        presenter.viewDidLoad()
      
    }
}

extension HomeViewController: HomeView {
    
    func updateTitle(title: String) {
        
        helloLabel.text = "Hello Viper"
    }
    
    
}

