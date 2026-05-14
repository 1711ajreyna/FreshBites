//
//  PremiumBadge.swift
//  FreshBites
//
//  Created by Andrew Reyna on 5/13/26.
//

import SwiftUI

struct PremiumBadge: View {
    
    var body: some View {
        HStack {
            Image(systemName: "star.fill")
                .foregroundColor(.yellow)
            
            Text("Premium")
                .font(.caption)
        }
        .padding(6)
        .background(Color.orange.opacity(0.15))
        .cornerRadius(6)
    }
}

#Preview {
    PremiumBadge()
}
