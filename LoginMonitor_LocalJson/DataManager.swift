//
//  DataManager.swift
//  LoginMonitor_LocalJson
//
//  Created by Ram on 08/08/21.
//

import Foundation
import UIKit
class DataManager: NSObject {
    static var shared = DataManager()
    var loginCheckData = [mainData]()
    var loginSucessData = [loginData]()
    var logoutSucessData = [logoutData]()
    private override init() {
        super.init()
//        fetchUserData(fileName: "Users")
//        fetchItemsData(fileName: "Items")
//        LoginCheck(fileName: "LoginCheck")
//        LoginSucess(fileName: "LoginSucess")
//        LogoutSucess(fileName: "LogoutSucess")
    }
    
    
    func LoginCheck(fileName:String)
    {
        let LCData = readLocalFile(forName: fileName)
        do{
            let jsonData = try JSONDecoder().decode([mainData].self, from: LCData!)
            loginCheckData = jsonData
        }catch{
            print("Error\(error.localizedDescription)")
        }
    }
    
    func LoginSucess(fileName:String)
    {
        let LSData = readLocalFile(forName: fileName)
        do{
            let jsonData = try JSONDecoder().decode([loginData].self, from: LSData!)
            loginSucessData = jsonData
        }catch{
            print("Error    :    \(error.localizedDescription)")
        }
    }
    func LogoutSucess(fileName:String)
    {
        let LSData = readLocalFile(forName: fileName)
        do{
            let jsonData = try JSONDecoder().decode([logoutData].self, from: LSData!)
            logoutSucessData = jsonData
        }catch{
            print("Error    :    \(error.localizedDescription)")
        }
    }
    
    
    func readLocalFile(forName name: String) -> Data? {
        do {
            if let bundlePath = Bundle.main.path(forResource: name,
                                                 ofType: "json"),
                let jsonData = try String(contentsOfFile: bundlePath).data(using: .utf8) {
                return jsonData
            }
        } catch {
            print(error)
        }

        return nil
    }
}
