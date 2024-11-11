//
//  AppModel.swift
//  SonhariumDreams
//
//  Created by Gilberto Neto on 06/11/24.
//

import SwiftUI

/// Maintains app-wide state
@MainActor
@Observable
class AppModel {
    let immersiveSpaceID = "ImmersiveSpace"
    enum ImmersiveSpaceState {
        case closed
        case inTransition
        case open
    }
    var immersiveSpaceState = ImmersiveSpaceState.closed
    enum Description: String {
        case dream01Desc = "Pesadelo: Sonhos que causam medo ou ansiedade. Eles podem ser muito vívidos e parecem reais."
        case dream02Desc = "Habitual: Sonhos comuns que ocorrem regularmente e são frequentemente esquecidos ao acordar."
        case dream03 = "Lucido: Sonhos em que a pessoa está consciente de que está sonhando e pode controlar o sonho."
        case dream04 = "Vivido: Sonhos muito claros e detalhados que podem ser lembrados com facilidade."
    }
    enum Dream: String {
        case dream01 = "Dream7Final"
        case dream02 = "Dream05Final"
        case dream03 = "Dream06Final"
        case dream04 = "Dream04Final"
        
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
    }
    var dream: Dream?
}
