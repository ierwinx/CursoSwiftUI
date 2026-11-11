import SwiftUI

struct CeldaNota: View {
    
    var nota: Nota
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(nota.titulo)
                .font(.title3)
                .padding(.bottom, 15)
            Text(nota.contenido)
                .font(.caption)
                .lineLimit(3)
        }
    }
}

#Preview {
    CeldaNota(nota: Nota(titulo: "", contenido: ""))
}
