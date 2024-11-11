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
        NavigationSplitView {
            List {
                Spacer()
                Text("Sonharium").font(.system(size: 34, weight: .bold))
                    .foregroundStyle(.white)
                if (appModel.dream == nil || appModel.dream == .dream01) {
                    //NavigationLink(destination: DreamView(dream: .dream01)) {
                    ToggleImmersiveSpaceButton(dream: .dream01, title: "Pesadelo")
                    // }
                }
                if (appModel.dream == nil || appModel.dream == .dream02) {
                    //NavigationLink(destination: DreamView(dream: .dream02)) {
                    ToggleImmersiveSpaceButton(dream: .dream02, title: "Habitual")
                    //}
                }
                if (appModel.dream == nil || appModel.dream == .dream03) {
                    //NavigationLink(destination: DreamView(dream: .dream03)) {
                    ToggleImmersiveSpaceButton(dream: .dream03, title: "Lucido")
                    //  }
                }
                if (appModel.dream == nil || appModel.dream == .dream04) {
                    // NavigationLink(destination: DreamView(dream: .dream04)) {
                    ToggleImmersiveSpaceButton(dream: .dream04, title: "Vivido")
                    // }
                }
            }
            .padding()
        } detail: {
            if appModel.dream != nil {
                DreamView(dream: appModel.dream!)
            } else {
                Text("Placeholder!")
            }
        }
    }
}

struct DreamView: View {
    var dream: AppModel.Dream
    
    var body: some View {
        VStack {
            Text(dream.title)
                .font(.largeTitle)
                .padding()
            
            Text(dream.description)
                .font(.body)
                .padding()
        }
    }
}

enum DreamType: String, Identifiable {
    case dream01 = "Pesadelo"
    case dream02 = "Habitual"
    case dream03 = "Lucido"
    case dream04 = "Vivido"
    
    var id: String { self.rawValue }
    
    var description: String {
        switch self {
        case .dream01:
            return "Pesadelo: Sonhos que causam medo ou ansiedade. Eles podem ser muito vívidos e parecem reais."
        case .dream02:
            return "Habitual: Sonhos comuns que ocorrem regularmente e são frequentemente esquecidos ao acordar."
        case .dream03:
            return "Lucido: Sonhos em que a pessoa está consciente de que está sonhando e pode controlar o sonho."
        case .dream04:
            return "Vivido: Sonhos muito claros e detalhados que podem ser lembrados com facilidade."
        }
    }
    var title: String {
        switch self {
        case .dream01:
            return "Pesadelo"
        case .dream02:
            return "Habitual"
        case .dream03:
            return "Lucido"
        case .dream04:
            return "Vivido"
        }
    }
}

#Preview(windowStyle: .automatic) {
    ContentView()
        .environment(AppModel())
}
