//
//  Product.swift
//  StepperExample
//
//  Created by Fiona ZHOU on 2023-11-15.
//

import SwiftUI

struct ProductView: View {
    
    // MARK: Stored properties
    @State var base5: Int = 1
    @State var base6: Int = 1
    
    // MARK: Computed properties
    var product: Int {
        return base5 * base6
    }
    
    var body: some View {
        VStack {
            
            Spacer()
            
            HStack(alignment: .top) {
                Spacer()
                Text("\(base5)")
                    .font(.system(size: 60))
            }
            Stepper(value: $base5, label: {Text("select first number")})
            
            HStack(alignment: .top) {
                Image(systemName: "multiply")
                    .font(.system(size: 44))
                    .padding(.vertical)
                Spacer()
                Text("\(base6)")
                    .font(.system(size: 60))
            }
            Stepper(value: $base6, label: { Text("select second number")})
            
            HStack(alignment: .top) {
                Spacer()
                Text("\(product)")
                    .font(.system(size: 60))
            }
            Spacer()
        }
        .padding()
    }
}

#Preview {
    ProductView()
}
