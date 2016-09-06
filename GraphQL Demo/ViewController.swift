//
//  ViewController.swift
//  GraphQL Demo
//
//  Created by Kyle Miller on 9/2/16.
//  Copyright © 2016 Devs On Tap. All rights reserved.
//

import UIKit
import Alamofire
import AlamofireObjectMapper

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let URL = "http://core-graphql.dev.waldo.photos/gql"
        
        let params = ["query" : "query{me{album_memberships(access:CREATOR){id,album{id,hashcode,privacy,name,},matches{account{id,avatar{id,urls{size_code,url}}},photos{count}},can_invite,coverPhotos:photos(matches:ME,filter:{limit:3}){total,records{id,urls{url,size_code}}}}}}"]
        
        Alamofire.request(.GET, URL, parameters: params).responseObject(keyPath: "data.me") { (response: Response<AlbumMembershipsResponse, NSError>) in
            print(response.result.value?.albumMemberships?.count)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

