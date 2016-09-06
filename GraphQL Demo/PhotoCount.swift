//
//  PhotoCount.swift
//  GraphQL Demo
//
//  Created by Kyle Miller on 9/5/16.
//  Copyright © 2016 Devs On Tap. All rights reserved.
//

import Foundation
import ObjectMapper

class PhotoCount: Mappable {
    
    var count: NSNumber?
    
    required init?(_ map: Map) {
    }
    
    func mapping(map: Map) {
        count    <- map["count"]
    }
    
}
