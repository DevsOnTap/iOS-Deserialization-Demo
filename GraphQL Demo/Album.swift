//
//  Album.swift
//  GraphQL Demo
//
//  Created by Kyle Miller on 9/5/16.
//  Copyright © 2016 Devs On Tap. All rights reserved.
//

import Foundation
import ObjectMapper

class Album: Mappable {
    
    var guid: NSString?
    var name: NSString?
    var hashcode: NSString?
    
    
    required init?(_ map: Map) {
        
    }
    
    func mapping(map: Map) {
        guid        <- map["id"]
        name        <- map["name"]
        hashcode    <- map["hashcode"]
    }
    
    
    
    
    
}