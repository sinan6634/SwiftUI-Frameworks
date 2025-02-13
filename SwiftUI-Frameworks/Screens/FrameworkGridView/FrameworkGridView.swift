//
//  FrameworkGridView.swift
//  SwiftUI-Frameworks
//
//  Created by Sinan Modi on 2/12/25.
//

import SwiftUI

struct FrameworkGridView: View {
    
    @StateObject var viewModel = FrameworkGridViewModel()
    
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVGrid(columns: viewModel.columns) {
                    ForEach(MockData.frameworks) { framework in
                        NavigationLink {
                            FrameworkDetailView(framework: framework)
                        } label: {
                            FrameworkTitleView(framework: framework)
                        }
                    }
                }
            }
            .navigationTitle("Apple Frameworks")
        }

        
    }
}

#Preview {
    FrameworkGridView()
        .preferredColorScheme(.dark)
}
