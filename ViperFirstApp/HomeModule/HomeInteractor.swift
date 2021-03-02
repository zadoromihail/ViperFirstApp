//
//  HomeInteractor.swift
//  ViperFirstApp
//
//  Created by Михаил Задорожный on 01.03.2021.
//

import Foundation

protocol  HomeUseCase {
  func getTitle() -> HomeModel
}

class HomeInteractor { }

extension HomeInteractor: HomeUseCase {
    func getTitle() -> HomeModel {
        return HomeModel(title: "Home VIPER")
    }
    
    
}
