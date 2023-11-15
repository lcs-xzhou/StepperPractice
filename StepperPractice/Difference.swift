//
//  Difference.swift
//  StepperExample
//
//  Created by Fiona ZHOU on 2023-11-15.
//

import SwiftUI

struct DifferenceView: View {
    
    // MARK: Stored properties
    @State var base3: Int = 1
    @State var base4: Int = 1
    
    // MARK: Computed properties
    var difference: Int {
        return base3 - base4
    }
    
    var body: some View {
        VStack {
            
            Spacer()
            
            HStack(alignment: .top) {
                Spacer()
                Text("\(base3)")
                    .font(.system(size: 60))
            }
            Stepper(value: $base3, label: {Text("select first number")})
            
            HStack(alignment: .top) {
                Image(systemName: "minus")
                    .font(.system(size: 44))
                    .padding()
                Spacer()
                Text("\(base4)")
                    .font(.system(size: 60))
            }
            Stepper(value: $base4, label: { Text("select second number")})
            
            HStack(alignment: .top) {
                Spacer()
                Text("\(difference)")
                    .font(.system(size: 60))
            }
            Spacer()
        }
        .padding()
    }
}

#Preview {
    DifferenceView()
}
