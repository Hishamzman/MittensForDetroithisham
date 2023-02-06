//
//  ImputField.swift
//  MittensForDetroit
//
//  Created by MohamedSafaoui on 1/24/23.
//

import SwiftUI

struct ImputField: View {
    let imagename: String
    let placeholdertext: String
  
    @Binding var text: String
    var body: some View {
        VStack{
            HStack{
                Image(systemName: imagename)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 50, height: 35)
                    .foregroundColor(Color(.gray))
                    .opacity(0.75)
                    .padding()
                    .shadow(radius: 4)
                
                    TextField(placeholdertext, text: $text)
                    .padding()
                    .background((Color.gray.opacity(0.25)
                        .cornerRadius(20)))
                    .foregroundColor(.red)
                    .shadow(radius: 12)
                .font(.headline)
                }
            
            }
           
                
            
                
        }
    }


struct ImputField_Previews: PreviewProvider {
    static var previews: some View {
        ImputField(imagename: "envelope",
                   placeholdertext: "email",
                   text: .constant(""))
    }
}
