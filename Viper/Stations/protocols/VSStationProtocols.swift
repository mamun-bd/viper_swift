//
//  VSStationProtocols.swift
//  Spinner
//
//  Created by Md. Mamun-Ur-Rashid on 19/9/18.
//  Copyright © 2018 Scrupulous. All rights reserved.
//

import UIKit

protocol ViewToPresenterProtocol: class{
    
    var view: PresenterToViewProtocol? {get set}
    var interactor: PresenterToInteractorProtocol? {get set}
    var router: PresenterToRouterProtocol? {get set}
    func startFetchingStationList()
    func showPlayerController(navigationController:UINavigationController)
    
}

protocol PresenterToViewProtocol: class{
    func showStation(list stations:Array<VSStation>)
    func showError()
}




protocol PresenterToRouterProtocol: class {
    static func createModule()-> VSStationViewController
    func pushToPlayerScreen(navigationConroller:UINavigationController)
}



protocol PresenterToInteractorProtocol: class {
    var presenter:InteractorToPresenterProtocol? {get set}
    func fetchStations()
}

protocol InteractorToPresenterProtocol: class {
    func stationFetchedSuccess(stationModelArray:Array<VSStation>)
    func stationFetchFailed()
}
