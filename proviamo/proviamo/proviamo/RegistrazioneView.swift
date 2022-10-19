//
//  ContentView.swift
//  proviamo
//
//  Created by user218653 on 9/26/22.
//

import SwiftUI

struct RegistrazioneView: View {
    @State var Login: Bool=false
    @State var reset: Bool=false
    @State private var username = ""
    @State private var password = ""
    @State private var nome = ""
    @State private var cognome = ""
    @State private var eta = 18.0
    @State private var via = ""
    @State private var città = ""
    @State private var selectedDate = Date()
    @State private var selectedState = ""
    var stati = ["Afghanistan","Albania","Algeria","Andorra","Angola","Anguilla","Antigua &amp; Barbuda","Argentina","Armenia","Aruba","Australia","Austria","Azerbaijan","Bahamas","Bahrain","Bangladesh","Barbados","Belarus","Belgium","Belize","Benin","Bermuda","Bhutan","Bolivia","Bosnia &amp; Herzegovina","Botswana","Brazil","British Virgin Islands","Brunei","Bulgaria","Burkina Faso","Burundi","Cambodia","Cameroon","Cape Verde","Cayman Islands","Chad","Chile","China","Colombia","Congo","Cook Islands","Costa Rica","Cote D Ivoire","Croatia","Cruise Ship","Cuba","Cyprus","Czech Republic","Denmark","Djibouti","Dominica","Dominican Republic","Ecuador","Egypt","El Salvador","Equatorial Guinea","Estonia","Ethiopia","Falkland Islands","Faroe Islands","Fiji","Finland","France","French Polynesia","French West Indies","Gabon","Gambia","Georgia","Germany","Ghana","Gibraltar","Greece","Greenland","Grenada","Guam","Guatemala","Guernsey","Guinea","Guinea Bissau","Guyana","Haiti","Honduras","Hong Kong","Hungary","Iceland","India","Indonesia","Iran","Iraq","Ireland","Isle of Man","Israel","Italy","Jamaica","Japan","Jersey","Jordan","Kazakhstan","Kenya","Kuwait","Kyrgyz Republic","Laos","Latvia","Lebanon","Lesotho","Liberia","Libya","Liechtenstein","Lithuania","Luxembourg","Macau","Macedonia","Madagascar","Malawi","Malaysia","Maldives","Mali","Malta","Mauritania","Mauritius","Mexico","Moldova","Monaco","Mongolia","Montenegro","Montserrat","Morocco","Mozambique","Namibia","Nepal","Netherlands","Netherlands Antilles","New Caledonia","New Zealand","Nicaragua","Niger","Nigeria","Norway","Oman","Pakistan","Palestine","Panama","Papua New Guinea","Paraguay","Peru","Philippines","Poland","Portugal","Puerto Rico","Qatar","Reunion","Romania","Russia","Rwanda","Saint Pierre &amp; Miquelon","Samoa","San Marino","Satellite","Saudi Arabia","Senegal","Serbia","Seychelles","Sierra Leone","Singapore","Slovakia","Slovenia","South Africa","South Korea","Spain","Sri Lanka","St Kitts &amp; Nevis","St Lucia","St Vincent","St. Lucia","Sudan","Suriname","Swaziland","Sweden","Switzerland","Syria","Taiwan","Tajikistan","Tanzania","Thailand","Timor L'Este","Togo","Tonga","Trinidad &amp; Tobago","Tunisia","Turkey","Turkmenistan","Turks &amp; Caicos","Uganda","Ukraine","United Arab Emirates","United Kingdom","Uruguay","Uzbekistan","Venezuela","Vietnam","Virgin Islands (US)","Yemen","Zambia","Zimbabwe"]
    @State private var searchText = ""
    let ageFormatter: NumberFormatter = {
        let numFormatter = NumberFormatter()
        numFormatter.numberStyle = .spellOut
        return numFormatter}()
    var body: some View{
        NavigationView{
            VStack(spacing: 20) {
                Image("sneakers")
                    .resizable()
                    .frame(width: 125, height: 150, alignment: .center)
                Text("SIGN UP").font(.largeTitle)
                
                Group {
                    VStack{
                        TextField("nome", text: $nome)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                        TextField("cognome", text: $cognome)
                            .textFieldStyle(RoundedBorderTextFieldStyle()).italic().bold()
                        
                        TextField("User name", text: $username)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                        SecureField("Password", text: $password)
                            .textFieldStyle    (RoundedBorderTextFieldStyle())
                        HStack {
                            Picker(selection: $selectedState, label: Text("stato")) {
                                            ForEach(stati, id: \.self) {
                                                Text($0)
                                            }
                                        }
                            TextField("città", text: $città)
                                .textFieldStyle(RoundedBorderTextFieldStyle())
                        }
                        TextField("via", text: $via)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                        HStack {
                            Text("Seleziona data di nascita").layoutPriority(1)
                            DatePicker("", selection: $selectedDate, displayedComponents: .date)
                        }.padding()
                    }.italic().bold()
                    
                    HStack{
                        if password.isEmpty || username.isEmpty||nome.isEmpty||cognome.isEmpty {
                            
                            StateButton(state: $Login, Testo: "LOGIN").disabled(true)
                        }
                        else{
                            StateButton(state: $Login, Testo: "LOGIN").disabled(false)
                        }
                        Button(action:{
                            username = ""
                            password = ""
                            nome = ""
                            cognome = ""
                            eta = 18.0
                            
                        }){
                            
                            Text("RESET")
                        }.disabled(username.isEmpty && password.isEmpty&&nome.isEmpty&&cognome.isEmpty)
                    }
                    
                    
                }.padding(.horizontal)
            
                HStack{
                    Text("Sei già registrato?")
                    NavigationLink(destination: ContentView()){
                        Text("Accedi")
                    }
                }
                
            }
        }
    }
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
            RegistrazioneView()
        }
    }
}
