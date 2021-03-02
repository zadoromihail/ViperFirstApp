//
//  HomePresenter.swift
//  ViperFirstApp
//
//  Created by Михаил Задорожный on 01.03.2021.
//

import Foundation


protocol HomePresentation {
    func viewDidLoad() -> Void
}


class HomePresenter {
    
    var interactor:HomeUseCase
    var router: HomeRouting
    weak var view: HomeView?
    
    init(view: HomeView, interactor: HomeUseCase, router: HomeRouting) {
        self.interactor = interactor
        self.router = router
        self.view = view
    }
}


extension HomePresenter: HomePresentation {
    
    func viewDidLoad() {
        let homeModel = self.interactor.getTitle()
        print("Home model value is \(homeModel)")
        view?.updateTitle(title: homeModel.title)
    }
    
    
}
