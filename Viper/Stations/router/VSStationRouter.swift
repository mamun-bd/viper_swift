//
//  VSStationRouter.swift
//  Spinner
//
//  Created by Md. Mamun-Ur-Rashid on 19/9/18.
//  Copyright © 2018 Scrupulous. All rights reserved.
//

import UIKit

class VSStationRouter: PresenterToRouterProtocol {
    
    static func createModule() -> VSStationViewController {
        
//        let presenter: ViewToPresenterProtocol & InteractorToPresenterProtocol = VSStationPresenter()
//        let interactor: PresenterToInteractorProtocol = VSStationInteractor()
//        let router:PresenterToRouterProtocol = VSStationRouter()
        
        let presenter = VSStationPresenter()
        let interactor = VSStationInteractor()
        let router = VSStationRouter()
        
        
        let view = mainstoryboard.instantiateViewController(withIdentifier: "VSStationViewController") as! VSStationViewController
        view.presentor = presenter
        
        presenter.view = view
        presenter.router = router
        presenter.interactor = interactor
        
        interactor.presenter = presenter
        
        return view
        
    }
    
    static var mainstoryboard: UIStoryboard{
        return UIStoryboard(name:"Main",bundle: Bundle.main)
    }
    
    func pushToPlayerScreen(navigationConroller: UINavigationController) {
//        let movieModue = MovieRouter.createMovieModule()
//        navigationController.pushViewController(movieModue,animated: true)
    }
    
}
