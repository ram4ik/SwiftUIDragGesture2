//
//  ContentView.swift
//  SwiftUIDragGesture
//
//  Created by ramil on 26.03.2020.
//  Copyright © 2020 com.ri. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var isDragging = false
    
    var drag: some Gesture {
        DragGesture()
            .onChanged { _ in self.isDragging = true }
            .onEnded { _ in self.isDragging = false }
    }
    
    var body: some View {
        Circle()
            .fill(isDragging ? Color.red : Color.green)
            .animation(.easeInOut(duration: 2))
            .frame(width: 200)
            .gesture(drag)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
