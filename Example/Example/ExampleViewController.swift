//
//  ExampleViewController.swift
//  Example
//
//  Created by Srujan k on 23/07/18.
//  Copyright © 2018 Srujan k. All rights reserved.
//

import UIKit
import SKLoader

class ExampleViewController: UITableViewController {
    
    // MARK: - Controller Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
        
    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 8
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath){
        switch indexPath.row {
        case 0:
            let loader = SKLoader()
            loader.gifName = "SimpleLoader"
            loader.animationSpeed = 0.01
            loader.showLoader()
            Timer.scheduledTimer(withTimeInterval: 3.0, repeats: false) { (boolean) in
                loader.hideLoader()
            }

            break
        case 1:
            let loader = SKLoader()
            loader.gifName = "Hello"
            loader.animationSpeed = 0.01
            loader.viewSize = CGSize(width: 250, height: 120)
            loader.showLoader()
            Timer.scheduledTimer(withTimeInterval: 3.0, repeats: false) { (boolean) in
                loader.hideLoader()
            }
            break
        case 2:
            let loader = SKLoader()
            loader.gifName = "earth"
            loader.animationSpeed = 0.01
            loader.viewContentMode = .scaleAspectFit
            loader.showLoader()
            Timer.scheduledTimer(withTimeInterval: 3.0, repeats: false) { (boolean) in
                loader.hideLoader()
            }
            break
        case 3:
            let loader = SKLoader()
            loader.gifName = "PageLoading"
            loader.animationSpeed = 0.01
            loader.viewBackgroundColor = UIColor.white
            loader.viewSize = CGSize(width: 200, height: 150)
            loader.showLoader()
            Timer.scheduledTimer(withTimeInterval: 3.0, repeats: false) { (boolean) in
                loader.hideLoader()
            }
            break
        case 4:
            let loader = SKLoader()
            loader.gifName = "Upload"
            loader.animationSpeed = 0.01
            loader.showLoader()
            Timer.scheduledTimer(withTimeInterval: 3.5, repeats: false) { (boolean) in
                loader.hideLoader()
            }
            break
        case 5:
            let loader = SKLoader()
            loader.gifName = "Quote"
            loader.animationSpeed = 0.01
            loader.viewSize = CGSize(width: UIScreen.main.bounds.width - 20.0, height: 150)
            loader.showLoader()
            Timer.scheduledTimer(withTimeInterval: 3.0, repeats: false) { (boolean) in
                loader.hideLoader()
            }
            break
        case 6:
            let loader = SKLoader()
            loader.gifName = "FoodLoading"
            loader.animationSpeed = 0.01
            loader.showLoader()
            Timer.scheduledTimer(withTimeInterval: 3.0, repeats: false) { (boolean) in
                loader.hideLoader()
            }
            break
        case 7:
           SKLoader.sharedInstance.showLoader()
            Timer.scheduledTimer(withTimeInterval: 3.0, repeats: false) { (boolean) in
                SKLoader.sharedInstance.hideLoader()
            }
            break
        default:
            break
        }

    }
    // MARK: - Action Methods
    @objc func closeLoader(){
        SKLoader.sharedInstance.hideLoader()
    }
}
