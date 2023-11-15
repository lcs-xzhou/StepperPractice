//
//  Quotients.swift
//  StepperPractice
//
//  Created by Fiona ZHOU on 2023-11-15.
//

import SwiftUI

struct QuotientsView: View {
    
    // MARK: Stored properties
    @State var base7: Int = 1
    @State var base8: Int = 1
    
    // MARK: Computed properties
    var quotients: Int {
        return base7 / base8
    }
    
    var body: some View {
        VStack {
            
            Spacer()
            
            HStack(alignment: .top) {
                Spacer()
                Text("\(base7)")
                    .font(.system(size: 60))
            }
            Stepper(value: $base7, label: {Text("select first number")})
            
            HStack(alignment: .top) {
                Image(systemName: "divide")
                    .font(.system(size: 44))
                    .padding(.vertical)
                Spacer()
                Text("\(base8)")
                    .font(.system(size: 60))
            }
            Stepper(value: $base8, label: { Text("select second number")})
            
            HStack(alignment: .top) {
                Spacer()
                Text("\(quotients)")
                    .font(.system(size: 60))
            }
            Spacer()
        }
        .padding()
    }
}
#Preview {
    QuotientsView()
}
