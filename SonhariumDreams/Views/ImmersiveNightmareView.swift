//
//  ImmersiveNightmareView.swift
//  SonhariumDreams
//
//  Created by Melissa Freire Guedes on 08/11/24.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct ImmersiveNightmareView: View {

    var body: some View {
        RealityView { content in
            if let immersiveContentEntity = try? await Entity(named: "dream01", in: realityKitContentBundle) {
                content.add(immersiveContentEntity)
            }
        }
    }
}

#Preview(immersionStyle: .full) {
    ImmersiveNightmareView()
        .environment(AppModel())
}
