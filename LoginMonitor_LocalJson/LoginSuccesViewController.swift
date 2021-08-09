//
//  LoginSuccesViewController.swift
//  LoginMonitor_LocalJson
//
//  Created by Ram on 08/08/21.
//

import UIKit

class LoginSuccesViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        DataManager.shared.LoginSucess(fileName: "LoginSucess")
        DataManager.shared.LogoutSucess(fileName: "LogoutSucess")

        // Do any additional setup after loading the view.
    }
    
    @IBAction func checkInBtnClick(_ sender: UIButton) {
        print(DataManager.shared.loginSucessData[0].data![0].checkin!)
        //DataManager.shared.loginSucessData[0].data[0].checkin
    }
    
    @IBAction func ckeckOutBtnClick(_ sender: UIButton) {
        print(DataManager.shared.logoutSucessData[0].data![0].checkout!)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
