//
//  MainScreenPresenter.swift
//  ShiftLabTest
//
//  Created by Григорий Ковалев on 24.09.2023.
//

import UIKit

protocol MainScreenPresenterProtocol: AnyObject {
    func getContest()
    func showModalScreen()
}

final class MainScreenPresenter {
    
    weak var viewController: MainScreenViewControllerProtocol?
    var coordinator: CoordinatorProtocol?
    var model: MainScreenModel?
    var networkService: NetworkServiceProtocol?
    
}

extension MainScreenPresenter: MainScreenPresenterProtocol {
    func showModalScreen() {
        self.coordinator?.showModalScreen()
    }
    
    func getContest() {
        self.networkService?.fetchContests(completion: { result in
            switch result {
            case .success(let contests):
                
                self.viewController?.refreshUICollectionView(data: contests)
                
            case .failure(let failure):
                print(failure)
            }
        })
    }
    
    
}
