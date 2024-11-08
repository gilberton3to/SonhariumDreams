//
//  ContentView.swift
//  SonhariumDreams
//
//  Created by Gilberto Neto on 06/11/24.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct ContentView: View {

    @Environment(AppModel.self) private var appModel
    
    var body: some View {
        VStack {
            Text("Sonharium").font(.system(size: 40, weight: .bold))
                .foregroundStyle(.purple)
            
            ToggleImmersiveSpaceButton(dream: .dream01)
            ToggleImmersiveSpaceButton(dream: .dream02)
            ToggleImmersiveSpaceButton(dream: .dream03)
            ToggleImmersiveSpaceButton(dream: .dream04)
//            Button("Dream1")
//            {
//                appModel.dream = .dream01
//            }.onTapGesture {
//                appModel.immersiveSpaceState = .inTransition
//            }
//            Button("Dream2")
//            {
//                appModel.dream = .dream02
//            }
//            Button("Dream3")
//            {
//                appModel.dream = .dream03
//            }
//            Button("Dream4")
//            {
//                appModel.dream = .dream04
//            }
        }
        .padding()
    }
}

#Preview(windowStyle: .automatic) {
    ContentView()
        .environment(AppModel())
}
