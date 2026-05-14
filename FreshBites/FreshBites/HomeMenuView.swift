//
//  HomeMenuView.swift
//  FreshBites
//
//  Created by Andrew Reyna on 5/13/26.
//

import SwiftUI

struct HomeMenuView: View {
    var body: some View {
        NavigationStack {
            List{
                NavigationLink("MenuView"){
                    MenuView()
                    
                }
                NavigationLink("RservationForm"){
                    ReservationForm()
                }
                NavigationLink("Customer List"){
                    CustomerListView()
                }
            }
            .navigationTitle("FreshBites")
        }
    }
}

#Preview {
    HomeMenuView()
}
