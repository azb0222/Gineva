//
//  ContentView.swift
//  Gineva
//
//  Created by Asritha Bodepudi on 12/21/22.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var viewModel = LocationPermissionViewModel()
    @ObservedObject var locationManager = LocationManager.shared //this requires making the other methods public --> is this cool?

    var body: some View {
        Group {
            if locationManager.userLocation == nil {
                LocationRequestView() 
            } else {
                TabView {
                    ShopifyView()
                        .tabItem {
                            Label("Shopify", systemImage: "note.text")
                            Text("Shopify")
                        }
                    StoresListView()
                        .tabItem {
                            Label("Stores", systemImage: "note.text")
                            Text("Stores")
                        }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
