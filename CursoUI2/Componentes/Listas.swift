import SwiftUI

struct Listas: View {
    
    let hoteles: [Hotel] = [
        Hotel(imagen: "1"),
        Hotel(imagen: "2"),
        Hotel(imagen: "3"),
        Hotel(imagen: "4"),
    ]
    
    var body: some View {
        List(hoteles) { hotel in
            zelda()
                .listRowSeparator(.hidden)
        }
        .listStyle(.plain)
    }
    
    @ViewBuilder
    func zelda() -> some View {
        VStack(alignment: .leading) {
            HStack {
                Image("1")
                    .resizable()
                    .frame(width: 50, height: 50)
                Text("Juanito perez")
                    .padding(.leading, 10)
            }
            .padding(.leading, 20)
        }
    }
}

#Preview {
    Listas()
}
