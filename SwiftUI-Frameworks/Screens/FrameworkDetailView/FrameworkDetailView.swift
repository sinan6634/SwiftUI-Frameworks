//
//  FrameworkDetailView.swift
//  SwiftUI-Frameworks
//
//  Created by Sinan Modi on 2/12/25.
//

import SwiftUI

struct FrameworkDetailView: View {
    var framework: Framework
    @State private var isShowingSafariView = false
    
    var body: some View {
        VStack {
            FrameworkTitleView(framework: framework)
            
            Text(framework.description)
                .font(.body)
                .padding()
            
            Spacer()
            
            Button {
                isShowingSafariView = true
            } label: {
                AFButton(title: "Learn More")
            }
            
        }
        .sheet(isPresented: $isShowingSafariView) {
            SafariView(url: URL(string: framework.urlString) ?? URL(string: "https://www.apple.com")!)
        }
    }
}

#Preview {
    FrameworkDetailView(framework: MockData.sampleFramework)
}
