//
//  AlbumMembership.swift
//  GraphQL Demo
//
//  Created by Kyle Miller on 9/2/16.
//  Copyright © 2016 Devs On Tap. All rights reserved.
//

import Foundation
import ObjectMapper

class AlbumMembership: Mappable {
    
    var guid: NSString?
    var album: Album?
    var matches: [AlbumMatch]?
    var canInvite: Bool?
    var coverPhotos: CoverPhotos?
    
    required init?(_ map: Map) {
    }
    
    func mapping(map: Map) {
        guid        <- map["id"]
        album       <- map["album"]
        matches     <- map["matches"]
        canInvite   <- map["can_invite"]
        coverPhotos <- map["coverPhotos"]
    }
    
}
