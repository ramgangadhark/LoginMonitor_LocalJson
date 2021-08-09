//
//  LogoutSucess.swift
//  LoginMonitor_LocalJson
//
//  Created by Ram on 08/08/21.
//

import Foundation
struct logoutData:Codable {
    let status:Bool?
    let msg:String?
    let data:[logoutdetails]?
}
struct logoutdetails:Codable {
    let login_id:String?
    let checkout:String?
}
