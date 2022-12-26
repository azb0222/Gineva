//
//  ShopifyDataStructure.swift
//  Gineva
//
//  Created by Asritha Bodepudi on 12/23/22.
//

import Foundation


//do we need an error response? 
public struct ShopifyDataStructure: Identifiable, Hashable, Decodable {
    public var id = UUID().uuidString //get the ID from JSON data?? nah but then wont be unique

    public var url: String?
    public var color: String?
    public var size: String?
    public var material: String?

    public var display_name: String?
    public var title: String?

    public var description: String?
    public var availbility: String? //does this differ across shopify stores
    public var price: Double?
    public var currency: String?
    public var product_type: String?

    public var images_urls: [String?] //is this the correct way to do this
    public var brand: String?
    public var video_urls: [String?]

    public init(id: UUID = UUID(), url: String? = nil, color: String? = nil, size: String? = nil, material: String? = nil, display_name: String? = nil, title: String? = nil, description: String? = nil, availbility: String? = nil, price: Double? = nil, currency: String? = nil, product_type: String? = nil, images_urls: [String?], brand: String? = nil, video_urls: [String?]) {
        self.url = url
        self.color = color
        self.size = size
        self.material = material
        self.display_name = display_name
        self.title = title
        self.description = description
        self.availbility = availbility
        self.price = price
        self.currency = currency
        self.product_type = product_type
        self.images_urls = images_urls
        self.brand = brand
        self.video_urls = video_urls
    }

    enum CodingKeys: String, CodingKey {
        case id
        case url
        case color
        case size
        case material
        case display_name
        case title
        case description
        case availbility
        case price
        case currency
        case product_type
        case images_urls
        case brand
        case video_urls
    }

//    init(from decoder: Decoder) throws {
//        let container = try decoder.container(keyedBy: CodingKeys.self)
//        self.id
//
//    }
}
