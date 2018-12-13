//
//  MyGitHub.swift
//  CodableProtocol
//
//  Created by Rakhi on 13/12/18.
//  Copyright © 2018 Rakhi. All rights reserved.
//

import UIKit

struct MyGitHub : Codable{
   
    let name: String?
    let location: String?
    let followers: Int?
    let avatarUrl: URL?
    let repos: Int?
    
    
    private enum CodingKeys : String,CodingKey {
        case name
        case location
        case followers
        case repos = "public_repos"
        case avatarUrl = "avatar_url"
        
    }
}
