//
//  ImmersiveView.swift
//  SonhariumDreams
//
//  Created by Gilberto Neto on 06/11/24.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct ImmersiveView: View {
    @Environment(AppModel.self) private var appModel

    var body: some View {
        RealityView { content in
            if let immersiveContentEntity = try? await Entity(named: appModel.dream!.rawValue, in: realityKitContentBundle) {
                content.add(immersiveContentEntity)
            }
        }
        .id(appModel.dream)
        .onDisappear {
            appModel.dream = nil
        }
    }
}

#Preview(immersionStyle: .full) {
    ImmersiveView()
        .environment(AppModel())
}
