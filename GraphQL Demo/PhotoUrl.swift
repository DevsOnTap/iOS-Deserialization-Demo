//
//  PhotoUrl.swift
//  GraphQL Demo
//
//  Created by Kyle Miller on 9/5/16.
//  Copyright © 2016 Devs On Tap. All rights reserved.
//

import Foundation
import ObjectMapper

class PhotoUrl: Mappable {
    
    enum SizeCode: String {
        case Original = "original"
        case ThumbMedium = "thumb-medium"
        case Avatar = "avatar"
    }
    
    var sizeCode: SizeCode?
    var url: NSString?
    
    required init?(_ map: Map) {
    }
    
    func mapping(map: Map) {
        sizeCode    <- map["size_code"]
        url         <- map["url"]
    }
    
}
