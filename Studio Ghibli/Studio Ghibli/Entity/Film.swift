//
//  Film.swift
//  Studio Ghibli
//
//  Created by Doddy Tri Hutomo on 25/07/19.
//  Copyright © 2019 Doddy Tri Hutomo. All rights reserved.
//

import Foundation

struct Film: Decodable {
    let id: String
    let title: String
    let director: String
    let producer: String
}
