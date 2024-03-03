//
//  ContentView.swift
//  father_hit_task_2
//
//  Created by Антон Поникаровский on 03.03.2024.
//

import SwiftUI

struct ContentView: View {
    @State private var sliderValue = 300.0
    
    private var text: AttributedString {
        var text1 = AttributedString("Марафон ")
        var text2 = AttributedString("по SwiftUI ")
        var text3 = AttributedString("«Отцовский Пинок»")
        
        text1.font = .body
        text1.foregroundColor = .gray
        text2.font = .body
        text3.font = .title.bold()
        text3.foregroundColor = .blue
        
        return text1 + text2 + text3
    }

    var body: some View {
        VStack {
            Text(text)
                .font(.title)
                .multilineTextAlignment(.leading)
                .frame(width: sliderValue, height: 200)
                .border(.red)
            
            Slider(
                value: $sliderValue,
                in: 100...300
            )
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
