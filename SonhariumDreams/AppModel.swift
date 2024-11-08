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
    
    enum Dream: String {
        case dream01 = "Dream01Final"
        case dream02 = "Dream02Final"
        case dream03 = "Dream03Final"
        case dream04 = "Dream04Final"
    }
    var dream: Dream = .dream01
}
