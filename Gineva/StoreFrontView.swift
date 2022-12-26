//
//  StoreFrontView.swift
//  Gineva
//
//  Created by Asritha Bodepudi on 12/23/22.
//

import SwiftUI

struct StoreFrontView: View {
    var items: [GridItem] = Array(repeating: .init(.fixed(120)), count: 2)

    @ObservedObject var viewModel: StoreFrontViewModel //have a protocol for all viewModels?
    //should this be @StateObject or @ObservedObject 

    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            //fix it so that its not force unwrapping
            ForEach(viewModel.mockDressArray!, id: \.self) { dress in
                LazyVGrid(columns: items, spacing: 10) {
                    VStack(alignment: .leading, spacing: 10) {
                        Text(dress.url ?? "url not existant")
                        Text(dress.color ?? "color not existant")
                        Text(dress.size ?? "size not existant")
                        Text(dress.display_name ?? "displayname not existant")
                        Text(dress.title ?? "title not existant")

                    }
                    .background(Color(K.Colors.backgroundBoxGray))
                    .padding(20)
                }
                .padding(.horizontal)
            }
        }
    }
}

struct StoreFrontView_Previews: PreviewProvider {
    static var previews: some View {
        StoreFrontView(viewModel: StoreFrontViewModel(shopifyLink: "testLink"))
    }
}


