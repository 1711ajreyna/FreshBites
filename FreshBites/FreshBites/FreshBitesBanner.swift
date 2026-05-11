//
//  FreshBitesBanner.swift
//  FreshBites
//
//  Created by Andrew Reyna on 5/11/26.
//

import SwiftUI

struct FreshBitesBanner: View {
    var body: some View {
        VStack(spacing : 6) {
            Image(systemName: ".fork.knife.circle.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 70, height: 70)
                .foregroundColor(.green)
            
            Text("FreshBites")
                .font(.largeTitle)
                .fontWeight(.bold)
            
            Text("Fresh • Healthy • Family Dining")
                .font(.caption)
                .foregroundColor(.secondary)
        }
        .padding()
        .frame(maxWidth: .infinity)
        .background(.white.opacity(0.45))
        .cornerRadius(20)
        .padding(.horizontal)
    }
}

#Preview {
    FreshBitesBanner()
}
