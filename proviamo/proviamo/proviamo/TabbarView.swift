//
//  HomeView.swift
//  proviamo
//
//  Created by user218653 on 10/5/22.
//

import Foundation
import SwiftUI

struct TabbarView: View {
    var body: some View{
        
        
            TabView {
                    HomeView()
                        .tabItem {
                            Image(systemName: "house.fill")
                        }
                    CarrelloView()
                        .font(.system(size: 30, weight: .bold, design: .rounded))
                        .tabItem {
                            Image(systemName: "cart")
                        }
                
                    ProfiloView()
                    .tabItem{
                        Image(systemName: "person.crop.circle")
                    }
            }
        
            
    }
    
    
    
    
    
    
    
    
    // Only show custom hint text if there is no text entered
    
    
    
    
    struct TabbarView_Previews: PreviewProvider {
        static var previews: some View {
            TabbarView()
            
        }
    }
    
    
}
