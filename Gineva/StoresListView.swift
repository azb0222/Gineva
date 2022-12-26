//
//  StoresListView.swift
//  Gineva
//
//  Created by Asritha Bodepudi on 12/21/22.
//

import SwiftUI
import UIKit

struct StoresListView: View {
    @ObservedObject var locationManager = LocationManager.shared //this requires making the other methods public --> is this cool?

    var body: some View {
        VStack{
            Text("This is the list of stores near you:")
            Text("\(locationManager.userLocation!)")
        }
    }


    func makeURLRequest() -> String {
        let url = URL(string: "https://maps.googleapis.com/maps/api/place/nearbysearch/json?location=42.418570,-71.219490&radius=1500000&type=department_store&key=AIzaSyDh6lFiPJzWTUpvNb8rSpmEb1r-IIaqCec")!
        

        return "asdf"
    }
}

struct StoresListView_Previews: PreviewProvider {
    static var previews: some View {
        StoresListView()
    }
}
