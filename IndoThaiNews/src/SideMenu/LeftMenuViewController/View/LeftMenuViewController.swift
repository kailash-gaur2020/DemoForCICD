//
//  LeftMenuViewController.swift
//  IndoThaiNews
//
//  Created by Kailash Gaur on 12/09/18.
//  Copyright © 2018 Kailash Gaur. All rights reserved.
//

import UIKit

class LeftMenuViewController: UIViewController {
    @IBOutlet weak var lblUsername: UILabel!
    @IBOutlet weak var lblEmailId : UILabel!
    @IBOutlet weak var menuOptionTableView : UITableView!
    @IBOutlet weak var closeButton : UIButton!

    
    private var menus : [Menu] = [Menu(WithTitle: "About", WithIcon: "dashboard_icon.png")]

    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func hanldeCloseButtonTap(_ sender:Any){
        
    }
    
    deinit {
        print("Deinit....")
    }
}

//MARK: - UITableViewDelegate and DataSource method
extension LeftMenuViewController : UITableViewDataSource{
    
    func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return menus.count
    }
    
    
     func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
         let cell = tableView.dequeueReusableCell(withIdentifier: "MenuCell", for: indexPath) as! MenuCell
         
         // Configure the cell...
        let menu = menus[indexPath.row]
         cell.populateContent(WithMenu: menu)
         return cell
     }
 
}

extension LeftMenuViewController : UITableViewDelegate{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let mainViewController = sideMenuController!
//        switch indexPath.row {
//        case 0:
//            router.route(to: Route.DashboardView.rawValue, from: mainViewController, parameters: nil)
//            break
//        case 1:
//            router.route(to: Route.AboutUsView.rawValue, from: mainViewController, parameters: nil)
//            break
//        case 2:
//            router.route(to: Route.RecipesView.rawValue, from: mainViewController, parameters: nil)
//            break
//        case 3:
//            router.route(to: Route.WorkoutsView.rawValue, from: mainViewController, parameters: nil)
//            break
//        case 4:
//            router.route(to: Route.BlogView.rawValue, from: mainViewController, parameters: nil)
//            break
//        case 5:
//            router.route(to: Route.ContactUsView.rawValue, from: mainViewController, parameters: nil)
//            break
//        case 6:
//            router.route(to: Route.ProfileView.rawValue, from: mainViewController, parameters: nil)
//            break
//        case 7:
//            delegate.loggedInUser = nil
//            UserDefaults.standard.resetDefault()
//            router.route(to: Route.Logout.rawValue, from: mainViewController, parameters: nil)
//            break
//        default:
//            break
//        }
    }
}

