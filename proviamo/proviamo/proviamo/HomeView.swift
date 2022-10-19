//
//  HomeView.swift
//  proviamo
//
//  Created by user218653 on 10/5/22.
//

import Foundation
import SwiftUI

struct HomeView: View {
    
    @State private var ricerca = ""

    var body: some View{
        NavigationView{
            ScrollView(.vertical) {
                VStack {
                    
                    
                    VStack(){
                        HStack(){
                            Image(systemName:"magnifyingglass")
                            TextField("ricerca", text: $ricerca)
                        }.padding()
                        
                        HStack(){
                            Text("I più ricercati")
                            Spacer()
                            Image(systemName: "arrow.right")
                        }.padding()
                        ScrollView(.horizontal) {
                            HStack(spacing: 30) {
                                ForEach(0..<4) { _ in
                                    
                                        Button(action: {
                                           
                                        }){
                                            VStack{
                                                NavigationLink(destination:ScarpaView() )   {
                                                    VStack{
                                                        Image("jordan") .resizable()
                                                            .frame(width: 150, height: 150)
                                                        Text("Air Jordan 1 High ").foregroundColor(.gray)
                                                        Text("550€").bold().foregroundColor(.black)
                                                    }
                                                    
                                                }
                                                
                                            }
                                            .overlay(
                                                RoundedRectangle(cornerRadius: 15)
                                                    .stroke(Color.cyan, lineWidth: 2)
                                                
                                            )
                                        }
                                    
                                   
                                    
                                }
                            }.padding()
                        }
                        
                        
                        VStack {
                            HStack(){
                                Text("jordan")
                                Spacer()
                                Image(systemName: "arrow.right")
                            }.padding()
                            HStack{
                                Button(action: {}){
                                    NavigationLink(destination:ScarpaView() )   {
                                        VStack{
                                            Image("jordan") .resizable()
                                                .frame(width: 150, height: 150)
                                            Text("Air Jordan 1 High ").foregroundColor(.gray)
                                            Text("550€").bold().foregroundColor(.black)
                                        }
                                        
                                    }
                                        .overlay(
                                            RoundedRectangle(cornerRadius: 15)
                                                .stroke(Color.cyan, lineWidth: 2)
                                        )
                                }.padding()
                                
                                Button(action: {}){
                                    NavigationLink(destination:ScarpaView() )   {
                                        VStack{
                                            Image("jordan") .resizable()
                                                .frame(width: 150, height: 150)
                                            Text("Air Jordan 1 High ").foregroundColor(.gray)
                                            Text("550€").bold().foregroundColor(.black)
                                        }
                                        
                                    }
                                        .overlay(
                                            RoundedRectangle(cornerRadius: 15)
                                                .stroke(Color.cyan, lineWidth: 2)
                                        )
                                }.padding()
                            }
                            HStack{
                                Button(action: {}){
                                    NavigationLink(destination:ScarpaView() )   {
                                        VStack{
                                            Image("jordan") .resizable()
                                                .frame(width: 150, height: 150)
                                            Text("Air Jordan 1 High ").foregroundColor(.gray)
                                            Text("550€").bold().foregroundColor(.black)
                                        }
                                        
                                    }
                                        .overlay(
                                            RoundedRectangle(cornerRadius: 15)
                                                .stroke(Color.cyan, lineWidth: 2)
                                        )
                                }.padding()
                                
                                Button(action: {}){
                                    NavigationLink(destination:ScarpaView() )   {
                                        VStack{
                                            Image("jordan") .resizable()
                                                .frame(width: 150, height: 150)
                                            Text("Air Jordan 1 High ").foregroundColor(.gray)
                                            Text("550€").bold().foregroundColor(.black)
                                        }
                                        
                                    }
                                        .overlay(
                                            RoundedRectangle(cornerRadius: 15)
                                                .stroke(Color.cyan, lineWidth: 2)
                                        )
                                }.padding()
                            }
                           
                            }
                        }
                        
                    }
                    
                    
                }
            }
            
        }
    
    
    
    
    // Only show custom hint text if there is no text entered
    
    
    
    
    struct HomeView_Previews: PreviewProvider {
        static var previews: some View {
            HomeView()
            
        }
    }
    
    
}
