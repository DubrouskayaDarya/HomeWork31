//
//  ContentView.swift
//  HomeWork31
//
//  Created by Дарья Дубровская on 31.03.22.
//

import SwiftUI

struct ContentView: View {

    @State private var color1: Color = .gray
    @State private var color2: Color = .gray
    @State private var color3: Color = .gray

    enum СhangingTrafficLights {
        case red
        case redYellow
        case green
        case yellow
    }

    @State private var nextColor = СhangingTrafficLights.red

    var body: some View {
        VStack {
            ColorCircles(color: color1)
            ColorCircles(color: color2)
            ColorCircles(color: color3)
                .offset(x: -5, y: -5)
                .padding()

            Button {

                switch nextColor {
                case .red:
                    color1 = .red
                    color2 = .gray
                    nextColor = .redYellow
                case .redYellow:
                    color2 = .yellow
                    nextColor = .green
                case .green:
                    color1 = .gray
                    color2 = .gray
                    color3 = .green
                    nextColor = .yellow
                case .yellow:
                    color2 = .yellow
                    color3 = .gray
                    nextColor = .red
                }
            } label: {
                Text("Start")
                    .font(.title)
                    .padding()
                    .background(Color.purple)
                    .cornerRadius(40)
                    .foregroundColor(.white)
                    .padding(45)

            }.padding()
        }.padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
        }
    }
}
