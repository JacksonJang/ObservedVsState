//
//  ChildView.swift
//  ObservedVsState
//
//  Created by 장효원 on 8/5/24.
//

import SwiftUI

struct ChildView: View {
    @ObservedObject var viewModel: ContentViewModel
    
    var body: some View {
        List(viewModel.items) { item in
            Text("Name : \(item.name), Age : \(item.age)")
        }
    }
}

#Preview {
    ChildView(viewModel: ContentViewModel())
}
