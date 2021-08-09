//
//  LoginCheck.swift
//  LoginMonitor_LocalJson
//
//  Created by Ram on 08/08/21.
//

import Foundation
struct mainData:Codable {
    let status:Bool?
    let msg:String?
    let data:[details]?
}
struct details:Codable {
    let login_id:String?
    let emp_code:String?
}
