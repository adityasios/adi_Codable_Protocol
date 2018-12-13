//
//  ViewController.swift
//  CodableProtocol
//
//  Created by Rakhi on 13/12/18.
//  Copyright © 2018 Rakhi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let gitUrl = URL(string: "https://api.github.com/users/shashikant86") else {
            return
        }
        
        
        URLSession.shared.dataTask(with: gitUrl) { (data, response, error) in
            guard let dataGet = data else { return }
            do {
                let decoder = JSONDecoder()
                let gitData = try decoder.decode(MyGitHub.self, from: dataGet)
                if gitData.avatarUrl != nil {
                    print(gitData.avatarUrl!)
                }
                }catch{
                print("Err \(error)")
            }
        }.resume()
        
    }

    

}


