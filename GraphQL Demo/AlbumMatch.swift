//
//  AlbumMatch.swift
//  GraphQL Demo
//
//  Created by Kyle Miller on 9/5/16.
//  Copyright © 2016 Devs On Tap. All rights reserved.
//

import Foundation
import ObjectMapper

class AlbumMatch: Mappable {
    
    var account: Account?
    var photoCount: PhotoCount?
    
    required init?(_ map: Map) {
    }
    
    func mapping(map: Map) {
        account        <- map["account"]
        photoCount     <- map["photos"]
    }
    
}
