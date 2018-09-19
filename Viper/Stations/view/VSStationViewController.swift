//
//  VSStationViewController.swift
//  Spinner
//
//  Created by Md. Mamun-Ur-Rashid on 19/9/18.
//  Copyright © 2018 Scrupulous. All rights reserved.
//

import UIKit

class VSStationViewController: UIViewController {

    @IBOutlet weak var uiTableView: UITableView!
    
    var presentor:ViewToPresenterProtocol?
    var stationList:Array<VSStation> = Array()
    
    override func viewDidLoad() {
        super.viewDidLoad()
     
        self.uiTableView.register(UINib(nibName: "VSStationCell", bundle:nil), forCellReuseIdentifier: "VSStationCell");
        presentor?.startFetchingStationList()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
  
}

extension VSStationViewController: PresenterToViewProtocol {
    
    func showStation(list stations: Array<VSStation>) {
        self.stationList = stations
        self.uiTableView.reloadData()
    }
    
    func showError() {
        let alert = UIAlertController(title: "Alert", message: "Problem Fetching Stations", preferredStyle: UIAlertControllerStyle.alert)
        alert.addAction(UIAlertAction(title: "Okay", style: UIAlertActionStyle.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
    
}

extension VSStationViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return stationList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "VSStationCell", for: indexPath) as! VSStationCell
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        presentor?.showPlayerController(navigationController: self.navigationController!)
        
    }
    
    
}

