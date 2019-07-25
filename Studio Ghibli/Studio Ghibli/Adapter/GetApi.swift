//
//  GetFilmsApi.swift
//  Studio Ghibli
//
//  Created by Doddy Tri Hutomo on 25/07/19.
//  Copyright © 2019 Doddy Tri Hutomo. All rights reserved.
//

import Foundation

enum GhibliApiError: Error {
    case invalidRequest
    case invalidData
}

enum EndpointType: String {
    case films
    case people
}

struct GetApi {
    
    private let urlSession = ApiURLSession()
    
    func data(type: EndpointType, completion: @escaping (Data?, Error?) -> Void) {
        guard let request = GhibliApiURLRequest.get(endpoint: GetApi.endpoint(type: type))
            else {
                completion(nil, GhibliApiError.invalidRequest)
                return
        }
        
        urlSession.dataTask(request: request) { (data, _, error) in
            completion(data, error)
        }
    }
    
    private static func endpoint(type: EndpointType) -> GhibliApiURL.Endpoint {
        return GhibliApiURL.Endpoint(path: type.rawValue)
    }
}
