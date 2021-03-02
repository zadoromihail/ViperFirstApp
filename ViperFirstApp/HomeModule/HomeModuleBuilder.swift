//
//  HomeModuleBuilder.swift
//  ViperFirstApp
//
//  Created by Михаил Задорожный on 01.03.2021.
//

import UIKit

class HomeModuleBuilder {
    
    static func build() -> HomeViewController {
     //  let storyboard = UIStoryboard.init(name: "Main", bundle: nil)
        
       let view = HomeViewController()
    
        let interactor = HomeInteractor()
        let router = HomeRouter(view: view)
        let presenter = HomePresenter(view: view, interactor: interactor, router: router)

        view.presenter = presenter
        
        return view
    }
}
