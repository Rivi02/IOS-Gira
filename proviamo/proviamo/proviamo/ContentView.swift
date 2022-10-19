//
//  ContentView.swift
//  proviamo
//
//  Created by user218653 on 9/26/22.
//

import SwiftUI

struct ContentView: View {
    
    @State var Login: Bool=false
    @State var Registrati: Bool=false
    @State var reset: Bool=false
    @State private var username = ""
    @State private var password = ""
    
    var body: some View{
                    NavigationView {
                        VStack(spacing: 20) {
                            Image("sneakers")
                                .resizable()
                                .frame(width: 125, height: 150, alignment: .center)
                            
                            Text("ACCEDI").font(.largeTitle)
                            Group {
                                TextField("User name", text: $username)
                                    .textFieldStyle(RoundedBorderTextFieldStyle())
                                SecureInputView("Password", text: $password)
                                    .textFieldStyle(RoundedBorderTextFieldStyle())
                                
                                HStack{
                                    Button(action:{
                                        username = ""
                                        password = ""
                                        
                                    }){
                                        
                                        Text("RESET")
                                    }.disabled(username.isEmpty && password.isEmpty)
                                        .padding()
                                    if password.isEmpty || username.isEmpty {
                                        
                                        StateButton(state: $Login, Testo: "ACCEDI").disabled(true)
                                    }
                                    else{
                                        StateButton(state: $Login, Testo: "ACCEDI").disabled(false)
                                    }
                                }
                                
                               
                            }.padding(.horizontal)

                        HStack{
                            Text("Non sei ancora registrato?")
                            NavigationLink(destination: RegistrazioneView()){
                                Text("Registrati")
                            }
                        }
                    }
                    
                }
                
        
        
        
        
        
        
        
        
        
    }
}

    
    struct SecureInputView: View {
        
        @Binding private var text: String
        @State private var isSecured: Bool = true
        private var title: String
        
        init(_ title: String, text: Binding<String>) {
            self.title = title
            self._text = text
        }
        
        var body: some View {
            ZStack(alignment: .trailing) {
                Group {
                    if isSecured {
                        SecureField(title, text: $text)
                    } else {
                        TextField(title, text: $text)
                    }
                }.padding(.trailing, 32)

                Button(action: {
                    isSecured.toggle()
                }) {
                    Image(systemName: self.isSecured ? "eye.slash" : "eye")
                        .accentColor(.gray)
                }
            }
        }
    }

    
    
                // Only show custom hint text if there is no text entered
                
                
                struct StateButton: View{
                    @Binding var state: Bool
                    var Testo: String
                    
                    
                    var body: some View{
                        Button(action: {state.toggle()}) {
                            Text(Testo)
                        }
                        .padding()
                        .background(Color.cyan)
                        .foregroundColor(Color.white)
                        .cornerRadius(10)
                    }
                    
                }
                
                struct ContentView_Previews: PreviewProvider {
                    static var previews: some View {
                        ContentView()
                        
                    }
                }
                

      
