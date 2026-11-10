import SwiftUI

struct VerNotaView: View {

    @State private var viewModel = VerNotaViewModel()

    var nota: Nota

    var body: some View {
        VStack {
            Text(nota.titulo)
                .font(.title)
                .padding(.bottom, 20)
                .multilineTextAlignment(.center)
            Text(nota.contenido)
                .frame(maxHeight: .infinity)
                .multilineTextAlignment(.leading)
        }
        .padding()
        .onAppear {
            viewModel.imprmir(nota: nota)
        }
    }
    
}

#Preview {
    VerNotaView(nota: Nota(titulo: "prueba", contenido: "Contenido"))
}
