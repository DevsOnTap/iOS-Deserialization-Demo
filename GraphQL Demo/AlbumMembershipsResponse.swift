//
//  AlbumMembershipsResponse.swift
//  GraphQL Demo
//
//  Created by Kyle Miller on 9/5/16.
//  Copyright © 2016 Devs On Tap. All rights reserved.
//

import Foundation
import ObjectMapper

class AlbumMembershipsResponse: Mappable {
    
    var albumMemberships: [AlbumMembership]?
    
    required init?(_ map: Map){
    }
    
    func mapping(map: Map) {
        albumMemberships <- map["album_memberships"]
    }
    
}