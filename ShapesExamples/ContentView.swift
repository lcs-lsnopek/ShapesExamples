//
//  ContentView.swift
//  ShapesExamples
//
//  Created by Logan Snopek on 2022-11-17.
//

import SwiftUI

struct Diagonal: Shape {
    func path(in rect: CGRect) -> Path {
        
        var path = Path()
        
        path.move(to: CGPoint(x: 0, y: 0))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))
        
        //send back (return) teh path that discribs the shape
        return path
        
    }
    
    
}

struct ContentView: View {
    var body: some View {

          Diagonal()
            .stroke()
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
