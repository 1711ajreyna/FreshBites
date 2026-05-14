//
//  MenuSectionHeaderView.swift
//  FreshBites
//
//  Created by Andrew Reyna on 5/13/26.
//

import SwiftUI

struct MenuSectionHeaderView: View {

    let itemCount: Int

    var body: some View {
        Text("Showing \(itemCount) items")
            .font(.headline)
    }
}

#Preview {
    MenuSectionHeaderView(itemCount: 6)
}
