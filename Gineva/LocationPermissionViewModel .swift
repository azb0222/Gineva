//
//  LocationPermissionViewModel .swift
//  Gineva
//
//  Created by Asritha Bodepudi on 12/21/22.
//

import Foundation
import CoreLocation

//this needs to be implemented, so the view isnt doing business shit 

class LocationPermissionViewModel: NSObject, ObservableObject, CLLocationManagerDelegate {

//    var description: String

    @Published var locationPermissionRestricted = false 
    @Published private(set) var isoCountryCode: String?


    override init() {
        super.init()
        let locManager = CLLocationManager()
        locManager.delegate = self
    }


//    //TODO: does this function need to be internal, etc.?
//    func requestLocation() {
//        let locationManager = CLLocationManager()
//        locationManager.delegate = self
//        locationManager.requestLocation()
//
//    }
    
}


//
//protocol LocationManager {
//    var location: CLLocation? { get }
//    var authorizationStatus: CLAuthorizationStatus { get }
//}
