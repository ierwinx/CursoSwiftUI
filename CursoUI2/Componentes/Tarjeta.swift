import SwiftUI

struct Tarjeta: View {
    
    var hotel: Hotel?
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Image("\(hotel?.imagen ?? "")")
                .resizable()
                .frame(maxWidth: .infinity, maxHeight: 250)
                .scaledToFill()
            
            VStack(alignment: .leading, spacing: 10) {
                Text("Super casa playera")
                    .font(.title)
                    .fontWeight(.bold)
                    .padding(.leading, 20)
                
                HStack {
                    Text("#playa")
                        .font(.caption)
                        .foregroundStyle(.gray)
                        .cornerRadius(10)
                        .fontWeight(.bold)
                    
                    Text("#reposo")
                        .font(.caption)
                        .foregroundStyle(.gray)
                        .fontWeight(.bold)
                        
                }
                .padding(.leading, 20)
                .offset(y: -5)
                
                Text("Esta casa se encuentra en la parte mas exclusiva de playa del carmen con acceso a una playa privada")
                    .font(.default)
                    .fontWeight(.medium)
                    .lineLimit(2)
                    .padding(.horizontal, 20)
                
                Text("Ver")
                    .font(.title3)
                    .fontWeight(.medium)
                    .foregroundStyle(.white)
                    .padding(20)
                    .frame(maxWidth: .infinity, maxHeight: 50)
                    .background(.green)
                    .cornerRadius(35)
                    .padding()
            }
            
            
        }
        .frame(maxWidth: 350, alignment: .leading)
        .background(.white)
        .cornerRadius(16)
        .shadow(color: .black.opacity(0.12), radius: 8, x: 0, y: 4)
        
    }
    
    
    @ViewBuilder
    static func create() -> some View {
        
        let hoteles: [Hotel] = [
            Hotel(imagen: "1"),
            Hotel(imagen: "2"),
            Hotel(imagen: "3"),
            Hotel(imagen: "4"),
        ]
        
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 20) {
                /*ForEach(hoteles.indices, id: \.self) { i in
                 Tarjeta(hotel: hoteles[i])
                 }*/
                ForEach(hoteles) { i in
                    Tarjeta(hotel: i)
                }
            }
            .frame(maxWidth: .infinity, maxHeight: 500)
            .padding(.leading, 20)
            .padding(.bottom, 20)
            .padding(.trailing, 20)
        }
    }
    
}

#Preview {
    Tarjeta(hotel: Hotel(imagen: "1"))
}
