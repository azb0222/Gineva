//
//  LocationManager.swift
//  Gineva
//
//  Created by Asritha Bodepudi on 12/21/22.
//

import Foundation
import CoreLocation


public class LocationManager: NSObject, ObservableObject {
    private let manager = CLLocationManager()

    @Published var userLocation: CLLocation?
    @Published var isLocationPermissionEnabled: Bool = false

    public static let shared = LocationManager()

    override init() {
        super.init()
        manager.delegate = self
        manager.desiredAccuracy = kCLLocationAccuracyBest //???
        manager.startUpdatingLocation()
    }

    func requestLocation() {
        manager.requestWhenInUseAuthorization() //request authorization when the app is in use 
    }
}


extension LocationManager: CLLocationManagerDelegate {

    //is this depricated?
    //this is when authorization changed
    public func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
        switch status {
        case .notDetermined:
            print("not determined") //do something with the errors instead
        case .restricted:
            print("restricted")
            isLocationPermissionEnabled = false
        case .denied:
            print("denied")
        case .authorizedAlways:
            print("authorized always")
        case .authorizedWhenInUse:
            print("authorized in use")
        @unknown default:
            print("idk wtf this is")
        }
    }


    //this is when we recieve the location, then update the userLocation property
    public func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
         guard let location = locations.last else {
             return
         }
         self.userLocation = location
    }
}
