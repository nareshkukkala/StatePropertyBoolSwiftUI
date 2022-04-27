//
//  ContentView.swift
//  StatePropertyBoolSwiftUI
//
//  Created by naresh kukkala on 28/04/22.
//

import SwiftUI

struct ContentView: View {
    @State private var isOn: Bool = false
    
    var body: some View {
        
        let _ = Self._printChanges()
        
        VStack(alignment: .trailing, spacing: 0.0) {
            
            Image(systemName: isOn ? "lightbulb.fill" : "lightbulb")
                .font(.system(size: 62))
                .foregroundColor(.yellow)
            
            Toggle(isOn: $isOn) {
                EmptyView()
            }
            
            
        }.frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
