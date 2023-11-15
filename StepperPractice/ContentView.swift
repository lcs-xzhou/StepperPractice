//
//  SumCalculator.swift
//  StepperExample
//
//  Created by Fiona ZHOU on 2023-11-15.
//

import SwiftUI

struct ContentView: View {
    
    // MARK: Stored properties
    @State var base1: Int = 1
    @State var base2: Int = 1
    
    // MARK: Computed properties
    var sum: Int {
        return base1 + base2
    }
    
    var body: some View {
        VStack {
            
            Spacer()
            
            HStack(alignment: .top) {
                Spacer()
                Text("\(base1)")
                    .font(.system(size: 60))
            }
            Stepper(value: $base1, label: {Text("select first number")})
            
            HStack(alignment: .top) {
                Image(systemName: "plus")
                    .font(.system(size: 44))
                    .padding(.vertical)
                Spacer()
                Text("\(base2)")
                    .font(.system(size: 60))
            }
            Stepper(value: $base2, label: { Text("select second number")})
            
            HStack(alignment: .top) {
                Spacer()
                Text("\(sum)")
                    .font(.system(size: 60))
            }
            Spacer()
        }
        .padding()
    }
}

#Preview {
    
    TabView(selection: Binding.constant(4)) {
        
        ContentView()
            .tabItem {
                Image(systemName: "plus")
                Text("Plus")
            }
        
        DifferenceView()
            .tabItem {
                Image(systemName: "minus")
                Text("Minus")
            }
        
        ProductView()
            .tabItem {
                Image(systemName: "multiply")
                Text("Multiply")
            }
        
        QuotientsView()
            .tabItem {
                Image(systemName: "divide")
                Text("Divide")
            }
        
    }
    .accentColor(.purple)
}
