//
//  GeometryReaderView.swift
//  SwiftUIViewPractice
//
//  Created by Matthew Garlington on 3/19/21.
//

import SwiftUI

struct GeometryReaderView: View {
    var body: some View {
        VStack {
                Text("Geometry Reader")
                    .font(.largeTitle)
                Text("Getting Size")
                    .bold()
                    .font(.title)
                
                Spacer()
      
            
            GeometryReader { geometryProxy in
                VStack(spacing: 10) {
                    
                    Text("Width: \(geometryProxy.size.width)")
                   
                    Text("Height: \(geometryProxy.size.height)")
                    
                    Text("The area in Pink is what the numbers represent from the geometry reader")
                    
                    // Using Position
                    
                    Text("Upper Left")
                        .bold()
                        .position(x: geometryProxy.size.width / 5, y: geometryProxy.size.height / 10)
                    Text("Bottom Right")
                        .bold()
                        .position(x: geometryProxy.size.width - 125, y: geometryProxy.size.height / 4 )
          
                }
                .foregroundColor(.white)
                .font(.title)
                .padding()
            }
            
            .background(Color.pink)
        }
    }
}

//struct GeometryReaderView_Previews: PreviewProvider {
//    static var previews: some View {
//        GeometryReaderView()
//    }
//}



struct GeometryReaderCoordinates: View {
    var body: some View {
        VStack {
                Text("Geometry Reader")
                    .font(.largeTitle)
                Text("Getting Coordinates")
                    .bold()
                    .font(.title)
                
                Spacer()
      
            GeometryReader { geometryProxy in
                VStack(spacing: 20) {
                Text("X: \(geometryProxy.frame(in: CoordinateSpace.global).origin.x)")
                    .bold()
                Text("Y: \(geometryProxy.frame(in: CoordinateSpace.global).origin.y)")
                    .bold()
                }
                .padding()
                .font(.title)
              
            }
            .background(Color.pink)
            
        }
    }
}

//struct GeometryReaderCoordinates_Previews: PreviewProvider {
//    static var previews: some View {
//        GeometryReaderCoordinates()
//    }
//}


struct GeometryReaderCoordinatesMinMidMax: View {
    var body: some View {
        VStack {
                Text("Geometry Reader")
                    .font(.largeTitle)
                Text("Getting Min, Mid, and Max Coordinates")
                    .bold()
                    .font(.title)
                
                Spacer()
      
            GeometryReader { geometryProxy in
                VStack(spacing: 20) {
                    Text("minY: \(geometryProxy.frame(in: CoordinateSpace.global).minY)")
                    .bold()
                    Text("midY: \(geometryProxy.frame(in: CoordinateSpace.global).midY)")
                    .bold()
                    Text("maxY: \(geometryProxy.frame(in: CoordinateSpace.global).maxY)")
                        .bold()
                }
                .padding()
                .font(.title)
              
            }
            .background(Color.pink)
            
        }
    }
}

struct GeometryReaderCoordinatesMinMidMax_Previews: PreviewProvider {
    static var previews: some View {
        GeometryReaderCoordinatesMinMidMax()
    }
}

