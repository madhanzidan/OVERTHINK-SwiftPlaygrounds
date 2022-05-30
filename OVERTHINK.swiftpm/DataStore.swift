//
//  DataStore.swift
//  OVERTHINK
//
//  Created by Zidan Ramadhan on 24/04/22.
//

import Foundation
import SwiftUI
import Combine

struct Think: Identifiable {
    var id = String()
    var thinkItem = String()
}

class ThinkStore: ObservableObject {
    @Published var thinks = [Think]()
}
