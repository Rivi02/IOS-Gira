
import Foundation
import SwiftUI

struct CarrelloView: View {
    
    var body: some View {
        VStack{
            Text("il tuo ordine:").foregroundColor(.gray)
            List {
                HStack (spacing: 10){
                    Image("jordan") .resizable()
                        .frame(
                            width: 150,
                            height: 150
                        )
                    VStack(alignment: .leading) {
                        Text("Air Jordan 1 High ").foregroundColor(.gray)
                        Text("550€").bold().foregroundColor(.black)
                    }
                    Spacer()
                }
                HStack (spacing: 10){
                    Image("jordan") .resizable()
                        .frame(
                            width: 150,
                            height: 150
                        )
                    VStack(alignment: .leading) {
                        Text("Air Jordan 1 High ").foregroundColor(.gray)
                        Text("550€").bold().foregroundColor(.black)
                    }
                    Spacer()
                }
                HStack (spacing: 10){
                    Image("jordan") .resizable()
                        .frame(
                            width: 150,
                            height: 150
                        )
                    VStack(alignment: .leading) {
                        Text("Air Jordan 1 High ").foregroundColor(.gray)
                        Text("550€").bold().foregroundColor(.black)
                    }
                    Spacer()
                }
            }
            VStack {
                HStack {
                    Text("Totale: 1,650 $")
                    Button {
                    } label: {
                      Text("Pagamento")
                    }.buttonStyle(.borderedProminent)
                }
            }
        }

    }
    
}

struct CarelloView_Previews:
    PreviewProvider {
    static var previews: some View {
        CarrelloView()
        
    }
}
