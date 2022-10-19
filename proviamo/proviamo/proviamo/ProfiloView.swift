//
//  ProfiloView.swift
//  proviamo
//
//  Created by user218653 on 10/4/22.
//

//
//  ContentView.swift
//  proviamo
//
//  Created by user218653 on 9/26/22.
//
import Foundation
import SwiftUI

struct ProfiloView: View {
    
    
    var body: some View{
        NavigationView {
            
            VStack {
                Image("user")
                    .resizable()
                    .frame(width: 140, height: 150, alignment: .top).padding(.top, 10)
                Text("Username").padding(.bottom ,10)
                Form{
                    Section(
                        header: Text("Dati personali")) {
                        Text("nome")
                        Text("cognome")
                        Text("data di nascita")
                    }
                    
                    Section(
                        header: Text("Dati di spedizione")) {
                        Text("stato")
                        Text("città")
                        Text("via")
                    }
                    
                }
            }
        }
    }
}









// Only show custom hint text if there is no text entered




struct ProfiloView_Previews: PreviewProvider {
    static var previews: some View {
        ProfiloView()
        
    }
}




