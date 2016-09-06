//
//  Account.swift
//  GraphQL Demo
//
//  Created by Kyle Miller on 9/5/16.
//  Copyright © 2016 Devs On Tap. All rights reserved.
//

import Foundation
import ObjectMapper

class Account: Mappable {
    
    var guid: NSString?
    var avatar: Photo?
    
    required init?(_ map: Map) {
    }
    
    func mapping(map: Map) {
        guid    <- map["id"]
        avatar  <- map["avatar"]
    }
    
}
