//
//  VSStationPresenter.swift
//  Spinner
//
//  Created by Md. Mamun-Ur-Rashid on 19/9/18.
//  Copyright © 2018 Scrupulous. All rights reserved.
//

import UIKit

class VSStationPresenter: ViewToPresenterProtocol {
    
    var view: PresenterToViewProtocol?
    var interactor: PresenterToInteractorProtocol?
    var router: PresenterToRouterProtocol?
    
    func startFetchingStationList() {
        self.interactor?.fetchStations()
    }
    
    func showPlayerController(navigationController: UINavigationController) {
        router?.pushToPlayerScreen(navigationConroller: navigationController)
    }
    
}

extension VSStationPresenter: InteractorToPresenterProtocol {
    
    func stationFetchedSuccess(stationModelArray: Array<VSStation>) {
        view?.showStation(list: stationModelArray)
    }
    
    func stationFetchFailed() {
        view?.showError()
    }
    
}
