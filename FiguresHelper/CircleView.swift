//
//  CircleView.swift
//  FiguresHelper
//
//  Created by Nate S on 2021-12-01.
//

import SwiftUI

struct CircleView: View {
    
    // MARK: Stored Properties
    // "Radius" is the name
    // "Double" is the data type
    // by adding = 15.00    we are just providing a default value
    // Input - we eed thi rom the user
    // We want Swiftui to upate the user interface based on what the user selects
    //To do this, we use a special piece of syntax called a "property wrapper"
    //
    // @State
    //
    // This marks the property as being one that swiftui should "watch" for changes
    @State var radius: Double = 15.00
    
    // MARK: Computed Properties
    var area: Double {
        return Double.pi * radius * radius
    }
    
    // User interface
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            
            // Input
            Text("Radius:")
                .bold()
            
            Group {
                
                // Show the selected radius value
                HStack {
                    Spacer()
//                    Text("\( String(format: "%.2f", 15.0) )")
                    Text("\(radius)")
                        .font(.title2)
                        .bold()
                    Spacer()
                }
                
                // The Syntax of $ says o use this property (radius) and BIND IT to this control
                // To "bind" means that when the control changes, th property's value changes
            
                Slider(value: ($radius),
                       in: 0.0...100.0,
                       step: 1.0,
                       label: {
                    Text("Radius")
                },
                       minimumValueLabel: {
                    Text("0.0")
                },
                       maximumValueLabel: {
                    Text("100.0")
                })

            }
            
                        
            // Output
            Text("Area:")
                .bold()
            
            Text("\(area)")
                .font(.title2)
            
            
            Spacer()
            
        }
        .padding()
        .navigationTitle("Circle")
    }
}

struct CircleView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            CircleView()
        }
    }
}
