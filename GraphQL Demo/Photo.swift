//
//  Photo.swift
//  GraphQL Demo
//
//  Created by Kyle Miller on 9/5/16.
//  Copyright © 2016 Devs On Tap. All rights reserved.
//

import Foundation
import ObjectMapper

class Photo: Mappable {
    
    var guid: NSString?
    var urls: [PhotoUrl]?
    
    required init?(_ map: Map) {
    }
    
    func mapping(map: Map) {
        guid    <- map["id"]
        urls    <- map["urls"]
    }
}