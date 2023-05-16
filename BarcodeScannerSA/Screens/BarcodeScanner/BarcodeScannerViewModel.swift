//
//  BarcodeScannerViewModel.swift
//  BarcodeScannerSA
//
//  Created by Mitch Andrade on 5/16/23.
//

import Foundation
import SwiftUI

final class BarcodeScannerViewModel: ObservableObject {
    
    // Broadcasting our changes
    @Published var scannedCode = ""
    @Published var alertItem: AlertItem?
    
    var statusText: String {
        scannedCode.isEmpty ? "Not Yet Scanned" : scannedCode
    }
    
    var statusTextColor: Color {
        scannedCode.isEmpty ? .red : .green
    }
}
