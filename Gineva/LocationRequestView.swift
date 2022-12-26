//
//  LocationRequestView.swift
//  Gineva
//
//  Created by Asritha Bodepudi on 12/21/22.
//

import SwiftUI

struct LocationRequestView: View {
    var body: some View {
        VStack{
            Spacer()
            Text("Would you to explore merchandise near you?")
            Spacer()
            Text("Starting sharing your location with us")
            Spacer()
            Button {
                //allow location button has been clicked
                print("allow location clicked")
                LocationManager.shared.requestLocation()
            } label: {
                Text("Allow Location")
            }
            Button {
                //change location permissions property
                print("location perms denied!")
            } label: {
                Text("Maybe Later")
            }
            Spacer() 
        }
    }
}

struct LocationRequestView_Previews: PreviewProvider {
    static var previews: some View {
        LocationRequestView()
    }
}
