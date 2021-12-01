//
//  ContentView.swift
//  FiguresHelper
//
//  Created by Nate S on 2021-12-01.
//

import SwiftUI

struct ContentView: View {
    
    @State var a: Double = 50
    @State var b: Double = 50
    @State var h: Double = 50
    
    var trapezoidArea: Double {
        return ((a+b)*h)/2
    }
    
    var body: some View {
        HStack {
            VStack (alignment: .leading) {
                Text("Trapezoid")
                    .font(.system(size: 45, weight: .semibold, design: .monospaced))
                    .padding(.top)
                Group {
                    Text("Legnth Of Top:")
                        .font(.system(size: 20, weight: .medium, design: .monospaced))
                    HStack {
                        Spacer()
                        Text("\(a)")
                            .font(.title2)
                            .fontWeight(.bold)
                            .padding(.top)
                        Spacer()
                    }
                    Slider(value: ($a),
                           in: 0.0...100.0,
                           step: 0.5,
                           label: {
                        Text("Legnth Of Top")
                    },
                           minimumValueLabel: {
                        Text("0.0")
                    },
                           maximumValueLabel: {
                        Text("100.0")
                    })
                }
                Group {
                    Text("Legnth Of Base:")
                        .font(.system(size: 20, weight: .medium, design: .monospaced))
                    HStack {
                        Spacer()
                        Text("\(b)")
                            .font(.title2)
                            .fontWeight(.bold)
                            .padding(.top)
                        Spacer()
                    }
                    Slider(value: ($b),
                           in: 0.0...100.0,
                           step: 0.5,
                           label: {
                        Text("Legnth Of Base")
                    },
                           minimumValueLabel: {
                        Text("0.0")
                    },
                           maximumValueLabel: {
                        Text("100.0")
                    })
                }
                Group {
                    Text("Height:")
                        .font(.system(size: 20, weight: .medium, design: .monospaced))
                    HStack {
                        Spacer()
                        Text("\(h)")
                            .font(.title2)
                            .fontWeight(.bold)
                            .padding(.top)
                        Spacer()
                    }
                    Slider(value: ($h),
                           in: 0.0...100.0,
                           step: 0.5,
                           label: {
                        Text("Height")
                    },
                           minimumValueLabel: {
                        Text("0.0")
                    },
                           maximumValueLabel: {
                        Text("100.0")
                    })
                }
                Text("Area: \(trapezoidArea)")
                    .font(.system(size: 40, weight: .medium, design: .monospaced))
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
