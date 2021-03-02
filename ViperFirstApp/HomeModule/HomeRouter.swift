//
//  HomeRouter.swift
//  ViperFirstApp
//
//  Created by Михаил Задорожный on 01.03.2021.
//

import UIKit

protocol HomeRouting {
    
}

class HomeRouter {
    
    var viewController: UIViewController
    
    init(view: UIViewController) {
        self.viewController = view
    }
}

extension HomeRouter: HomeRouting {
    
}
