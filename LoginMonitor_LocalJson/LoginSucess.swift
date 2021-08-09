//
//  LoginSucess.swift
//  LoginMonitor_LocalJson
//
//  Created by Ram on 08/08/21.
//

import Foundation
struct loginData:Codable {
    let status:Bool?
    let msg:String?
    let data:[logindetails]?
}
struct logindetails:Codable {
    let login_id:String?
    let checkin:String?
}
