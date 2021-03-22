//
//  ScrollViewReader.swift
//  SwiftUIViewPractice
//
//  Created by Matthew Garlington on 3/21/21.
//

import SwiftUI

struct ScrollViewReader_Intro: View {
    var body: some View {
        VStack(spacing: 20.0) {
            HeaderView("ScrollViewReader",
                       subtitle: "Introduction",
                       desc: "Use the ScrollViewReader to access the scrollTo function so you can programmatically scroll to a specific view.")
            
            ScrollViewReader { scrollViewProxy in
                Button("Scroll To Bottom") {
                    withAnimation {  scrollViewProxy.scrollTo(50)}
                }
                
                ScrollView {
                    ForEach(1..<51) { index in
                        getImage(for: index)
                            .font(.largeTitle)
                            .frame(height: 70)
                            .id(index)
                    }
                }
                
                Button("Scroll To Top") {
                    withAnimation {  scrollViewProxy.scrollTo(1)}
                }
            }
        }
        .font(.title)
    }
    
    func getImage(for index: Int) -> some View {
        if index == 1 || index == 50 {
            return Image(systemName: "\(index).square.fill")
                .foregroundColor(.red)
        }
        return Image(systemName: "\(index).square")
            .foregroundColor(.primary)
    }
}

struct ScrollViewReader_Intro_Previews: PreviewProvider {
    static var previews: some View {
        ScrollViewReader_Intro()
    }
}


import SwiftUI

struct HeaderView: View {
    var title = "Title"
    var subtitle = "Subtitle"
    var desc = "Use this to..."
    var back = Color.yellow
    var textColor = Color.black
    
    init(_ title: String, subtitle: String, desc: String, back: Color = Color.yellow, textColor: Color = Color.black) {
        self.title = title
        self.subtitle = subtitle
        self.desc = desc
        self.back = back
        self.textColor = textColor
    }
    
    var body: some View {
        VStack(spacing: 15) {
            Text(title)
                .font(.largeTitle)
            
            Text(subtitle)
                .foregroundColor(.gray)
            
            DescView(desc: desc, back: back, textColor: textColor)
        }
    }
}

//struct HeaderView_Previews: PreviewProvider {
//    static var previews: some View {
//        HeaderView("Title", subtitle: "Subtitle", desc: "What does what",
//                   back: .green, textColor: .white)
//    }
//}

struct DescView: View {
    var desc = "Use this to..."
    var back = Color.yellow
    var textColor = Color.black
    
    var body: some View {
        Text(desc)
            .frame(maxWidth: .infinity)
            .padding()
            .background(back)
            .foregroundColor(textColor)
    }
}



