//
//  ImmersiveHabitualView.swift
//  SonhariumDreams
//
//  Created by Melissa Freire Guedes on 07/11/24.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct ImmersiveHabitualView: View {

    var body: some View {
        RealityView { content in
            if let immersiveContentEntity = try? await Entity(named: "dream04", in: realityKitContentBundle) {
                content.add(immersiveContentEntity)
            }
        }
    }
}

#Preview(immersionStyle: .full) {
    ImmersiveHabitualView()
        .environment(AppModel())
}
