//
//  Character.swift
//  Studio Ghibli
//
//  Created by Doddy Tri Hutomo on 25/07/19.
//  Copyright © 2019 Doddy Tri Hutomo. All rights reserved.
//

import Foundation

struct Character: Decodable {
    let id: String
    let name: String
    let gender: String
    let age: String
}
