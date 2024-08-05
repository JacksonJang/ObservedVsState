//
//  ContentView.swift
//  ObservedVsState
//
//  Created by 장효원 on 8/5/24.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var viewModel = ContentViewModel()
    
    var body: some View {
        VStack {
            Text("Total length : \(viewModel.items.count)")
            ChildView(viewModel: viewModel)
            Button("ADD") {
                viewModel.add()
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
