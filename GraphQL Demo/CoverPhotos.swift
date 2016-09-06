//
//  CoverPhotos.swift
//  GraphQL Demo
//
//  Created by Kyle Miller on 9/5/16.
//  Copyright © 2016 Devs On Tap. All rights reserved.
//

import Foundation
import ObjectMapper

class CoverPhotos: Mappable {
    
    var total: NSNumber?
    var records: [Photo]?
    
    required init?(_ map: Map) {
    }
    
    func mapping(map: Map) {
        total    <- map["total"]
        records  <- map["records"]
    }
    
}