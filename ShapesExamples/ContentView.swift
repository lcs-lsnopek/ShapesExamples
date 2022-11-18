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

struct Dimond: Shape {
    func path(in rect: CGRect) -> Path {
        
        var path = Path()
        
        path.move(to: CGPoint(x: rect.minX, y: rect.midY))
        path.addLine(to: CGPoint(x: rect.midX, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.midY))
        path.addLine(to: CGPoint(x: rect.midX, y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.minX, y: rect.midY))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.midY))
        path.move(to: CGPoint(x: rect.midX, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.midX, y: rect.maxY))
        
        return path
    }
}

struct USAFlag: Shape {
    func path(in rect: CGRect) -> Path {
        
        var path = Path()
        
        path.move(to: CGPoint(x: rect.minX, y: rect.midY))
        path.addLine(to: CGPoint(x: rect.midX, y: rect.midY))
        path.addLine(to: CGPoint(x: rect.midX, y: rect.minY))
        path.move(to: CGPoint(x: rect.maxX, y: rect.midY))
        path.addLine(to: CGPoint(x: rect.midX, y: rect.midY))
        
        path.move(to: CGPoint(x: rect.maxX, y: rect.midY*1/7))
        path.addLine(to: CGPoint(x: rect.midX, y: rect.midY*1/7))
        path.move(to: CGPoint(x: rect.maxX, y: rect.midY*2/7))
        path.addLine(to: CGPoint(x: rect.midX, y: rect.midY*2/7))
        path.move(to: CGPoint(x: rect.maxX, y: rect.midY*3/7))
        path.addLine(to: CGPoint(x: rect.midX, y: rect.midY*3/7))
        path.move(to: CGPoint(x: rect.maxX, y: rect.midY*4/7))
        path.addLine(to: CGPoint(x: rect.midX, y: rect.midY*4/7))
        path.move(to: CGPoint(x: rect.maxX, y: rect.midY*5/7))
        path.addLine(to: CGPoint(x: rect.midX, y: rect.midY*5/7))
        path.move(to: CGPoint(x: rect.maxX, y: rect.midY*6/7))
        path.addLine(to: CGPoint(x: rect.midX, y: rect.midY*6/7))
        
        path.move(to: CGPoint(x: rect.maxX, y: rect.midY*1.2))
        path.addLine(to: CGPoint(x: rect.minX, y: rect.midY*1.2))
        path.move(to: CGPoint(x: rect.maxX, y: rect.midY*1.4))
        path.addLine(to: CGPoint(x: rect.minX, y: rect.midY*1.4))
        path.move(to: CGPoint(x: rect.maxX, y: rect.midY*1.6))
        path.addLine(to: CGPoint(x: rect.minX, y: rect.midY*1.6))
        path.move(to: CGPoint(x: rect.maxX, y: rect.midY*1.8))
        path.addLine(to: CGPoint(x: rect.minX, y: rect.midY*1.8))
        path.move(to: CGPoint(x: rect.maxX, y: rect.midY*2))
        path.addLine(to: CGPoint(x: rect.minX, y: rect.midY*2))

        
       return path
    }
}
struct ContentView: View {
    var body: some View {

          USAFlag()
            .stroke()
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
