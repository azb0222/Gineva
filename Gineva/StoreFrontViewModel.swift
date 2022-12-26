//
//  StoreFrontViewModel.swift
//  Gineva
//
//  Created by Asritha Bodepudi on 12/23/22.
//

import Foundation

class StoreFrontViewModel: ObservableObject {
    @Published var mockDressArray: [ShopifyDataStructure]?
    var shopifyLink: String?

    init(shopifyLink: String) { //change it so it uses proper convention for intializing
        self.shopifyLink = shopifyLink
        self.mockDressArray = parsing()

    }


    //this all should be moved to a manager, this should return some sort of future, so that caller can wait for result, show loading screen while waiting
    func startActor() {
        
    }


    func parsing() -> [ShopifyDataStructure] {
        let data = readLocalFile(forName: "testData")
        do {
            let decodedData = try JSONDecoder().decode([ShopifyDataStructure].self, from: data!)
            return decodedData
        } catch {
            print ("error")
            print (error)
        }
        return []
    }

    //helper method to test
    private func readLocalFile(forName name: String) -> Data? {
        do {
            if let bundlePath = Bundle.main.path(forResource: name,
                                                 ofType: "json"),
                let jsonData = try String(contentsOfFile: bundlePath).data(using: .utf8) {
                return jsonData
            }
        } catch {
            print(error)
        }

        return nil
    }
}


//get rid of this later

//make it so that all parameters are required?
public struct mockDressModel: Identifiable {
    public var id = UUID().uuidString

    public var name: String
    public var store: String
    public var price: String
    public var locationInMiles: Double
    public var dressImage: String

    public init(name: String, store: String, price: String, locationInMiles: Double, dressImage: String) {
        self.name = name
        self.store = store
        self.price = price
        self.locationInMiles = locationInMiles
        self.dressImage = dressImage
    }
}
