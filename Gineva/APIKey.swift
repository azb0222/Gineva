//
//  APIKey.swift
//  Gineva
//
//  Created by Asritha Bodepudi on 12/21/22.
//

import Foundation

//idk if this is how you are supposed to do it, also encrypt within the app? 
class APIKey {
    static let shared = APIKey.self
    static let value = "AIzaSyDh6lFiPJzWTUpvNb8rSpmEb1r-IIaqCec"
    private init() {}
}
