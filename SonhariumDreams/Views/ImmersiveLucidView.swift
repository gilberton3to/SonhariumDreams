//
//  ImmersiveLucidView.swift
//  SonhariumDreams
//
//  Created by Melissa Freire Guedes on 07/11/24.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct ImmersiveLucidView: View {

    var body: some View {
        RealityView { content in
            if let immersiveContentEntity = try? await Entity(named: "dream03", in: realityKitContentBundle) {
                content.add(immersiveContentEntity)
            }
        }
    }
}
#Preview(immersionStyle: .full) {
    ImmersiveLucidView()
        .environment(AppModel())
}

