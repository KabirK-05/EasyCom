//
//  TestPages.swift
//  EasyTalk
//
//  Created by Kabir Kumar on 2024-08-06.
//

import SwiftUI

struct SearchView: View {
    var body: some View {
        Text("Auto Gen View")
            .font(.largeTitle)
            .foregroundColor(.white)
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color.black.edgesIgnoringSafeArea(.all))
    }
}

struct ReelsView: View {
    var body: some View {
        Text("Instruments")
            .font(.largeTitle)
            .foregroundColor(.white)
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color.black.edgesIgnoringSafeArea(.all))
    }
}

struct ProfileView: View {
    var body: some View {
        Text("Route")
            .font(.largeTitle)
            .foregroundColor(.white)
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color.black.edgesIgnoringSafeArea(.all))
    }
}

#Preview {
    ProfileView()
}
