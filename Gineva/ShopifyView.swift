//
//  ShopifyView.swift
//  Gineva
//
//  Created by Asritha Bodepudi on 12/21/22.
//

import SwiftUI

struct ShopifyView: View {
    @State private var shopifyLink: String = ""
    @State private var showingPopover = false

    var body: some View {
        VStack {
            Text("Enter the shopify link below")
            TextField("Enter Shopify Link", text: $shopifyLink)

            Button {
                //if shopifyLink is not == "", redirect to a popup screen
                showingPopover = true
            } label: {
                Text("View Gineva Storefront")
            }.popover(isPresented: $showingPopover) {
                StoreFrontView(viewModel: StoreFrontViewModel(shopifyLink: shopifyLink)) //is this correct? should this be passing it in? seprataion of concerns -> have a manager for this? protocl? idk 
            }

            //if its a valid shopify URL(implement check later, should take to next screen


//            let decoder = JSONDecoder()
//            let
        }
    }
}

struct ShopifyView_Previews: PreviewProvider {
    static var previews: some View {
        ShopifyView()
    }
}
