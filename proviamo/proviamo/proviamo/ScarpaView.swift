//
//  HomeView.swift
//  proviamo
//
//  Created by user218653 on 10/5/22.
//

import Foundation
import SwiftUI

struct ScarpaView: View {
    
    @State private var ricerca = ""

    var body: some View{
        ScrollView(.vertical) {
            VStack {
                VStack {
                            Button(action: {}){
                                Image("jordan") .resizable()
                                .frame(width: 350, height: 350)
                                
                                .overlay(
                                    RoundedRectangle(cornerRadius: 15)
                                        .stroke(Color.cyan, lineWidth: 2)
                                    )
                            }.padding()
                    Text("nome della scarpa").font(.title).bold().foregroundColor(.gray)
                    Text("550€").font(.title).bold()
                    Text("descrizione scarpa") 

                    }
                    
                }
                
                
            }
        }
            
    }
    
    
    
    // Only show custom hint text if there is no text entered
    
    
    
    
    struct ScarpaView_Previews: PreviewProvider {
        static var previews: some View {
            ScarpaView()
            
        }
    }
    
    

