//
//  FreshBitesBanner.swift
//  FreshBites
//
//  Created by Andrew Reyna on 5/13/26.
//

import SwiftUI

struct FreshBitesBanner: View {
    
    var body: some View {
        VStack {
            Image(systemName: "fork.knife.circle.fill")
                .resizable()
                .frame(width: 80, height: 80)
                .foregroundColor(.green)
            
            Text("FreshBites")
                .font(.title)
                .fontWeight(.bold)
        }
    }
}

#Preview {
    FreshBitesBanner()
}
