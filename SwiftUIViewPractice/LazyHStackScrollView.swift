//
//  ContentView.swift
//  SwiftUIViewPractice
//
//  Created by Matthew Garlington on 3/19/21.
//

import SwiftUI

struct LazyHStackScrollView: View {
    var names = ["Ronda", "Melton", "Paula", "Ruiz", "Kelsey", "Thompson", "Violet", "Virginia"]
    
    var body: some View {
        VStack {
            VStack {
                Text("Lazy Horizontal Scroll View")
                    .font(.title)
                Text("With PinnedViews")
                    .font(.title)
            }
            Spacer()
            
            VStack {
                Text("This use case gives the ability for a horizontal scroll to be loaded lazily. This means the views will not be loaded when off the screen to improve performance. The pinnedViews Give the ability for the header to stick until the footer is shown.")
                    .font(.headline)
                    .padding()
            
            }
            
            ScrollView(.horizontal) {
                LazyHStack(spacing: 5, pinnedViews: [.sectionHeaders, .sectionFooters]) {
                        Section(header: TeamHeaderView(), footer: TeamFooterView()) {
                        ForEach(names, id: \.self) { name in
                        Image(name)
                            .resizable()
                            .scaledToFill()
                            .frame(width: 100, height: 100)
                            .cornerRadius(25)
                        }
                
                    }
                }
                .padding()
            }
        }
    }
}

struct LazyHStackScrollView_Previews: PreviewProvider {
    static var previews: some View {
        LazyHStackScrollView()
    }
}


struct TeamHeaderView: View {
   
    var body: some View {
        VStack(spacing: 8) {
            Text("People")
                .font(.title2)
            Image(systemName: "checkmark")
                .font(.system(size: 50))
            
        }
        .frame(width: 75, height: 100)
        .background(Rectangle().fill(Color.yellow).opacity(0.9))
        .cornerRadius(25)
        
    }}


struct TeamFooterView: View {
   
    var body: some View {
        VStack(spacing: 8) {
            Text("People")
                .font(.title2)
            Image(systemName: "checkmark")
                .font(.system(size: 50))
            
        }
        .frame(width: 75, height: 100)
        .background(Rectangle().fill(Color.yellow).opacity(0.9))
        .cornerRadius(25)
        
    }}
