import SwiftUI

struct VerNotaView: View {

    @State private var viewModel = VerNotaViewModel()

    var nota: Nota

    var body: some View {
        VStack(alignment: .leading) {
            Text(nota.titulo)
                .font(.title)

            Text(nota.contenido)
        }
        .padding()
    }
}

#Preview {
    VerNotaView(nota: Nota(titulo: "prueba", contenido: "Contenido"))
}
