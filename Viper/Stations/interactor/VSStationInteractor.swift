//
//  VSStationInteractor.swift
//  Spinner
//
//  Created by Md. Mamun-Ur-Rashid on 19/9/18.
//  Copyright © 2018 Scrupulous. All rights reserved.
//
import UIKit

class VSStationInteractor: PresenterToInteractorProtocol {
    
    var presenter: InteractorToPresenterProtocol?
    
    func fetchStations() {
        
        self.presenter?.stationFetchedSuccess(stationModelArray: [VSStation(),VSStation(),VSStation()])
       
        
      //  self.presenter?.stationFetchFailed()
    }
    

}
