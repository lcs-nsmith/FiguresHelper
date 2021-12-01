//
//  ContentView.swift
//  FiguresHelper
//
//  Created by Nate S on 2021-12-01.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            VStack (alignment: .leading) {
                Text("Circle")
                    .font(.system(size: 55, weight: .semibold, design: .monospaced))
                    .padding(.top)
                          
                          Text("Radius")
                    .font(.system(size: 40, weight: .medium, design: .monospaced))
                    .padding(.top)
                HStack {
                    Spacer()
                          Text("25.0")
                        .font(.headline)
                        .fontWeight(.bold)
                        .padding(.top)
                    Spacer()
                }
                Slider(value: .constant(15.0),
                       in: 0.0...100.0,
                       label: {
                    Text("Radius")
                },
                       minimumValueLabel: {
                    Text("0.0")
                },
                       maximumValueLabel: {
                    Text("100.0")
                })

                Spacer()
                          }
                            .navigationTitle("Figures Helper")
                            .padding(.leading)
                          Spacer()
                          }
                          }
                          }
                          
                          struct ContentView_Previews: PreviewProvider {
                        static var previews: some View {
                            NavigationView {
                                ContentView()
                            }
                        }
                    }
