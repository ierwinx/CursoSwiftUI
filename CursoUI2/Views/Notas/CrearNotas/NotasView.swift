import SwiftUI
import Combine

struct NotasView: View {
    
    @State private var viewModel = NotasViewModel()
    @FocusState private var tecladoActivo: Bool
    @Environment(\.dismiss) private var dismiss
    @ObservedObject var infoBD: SimulaBD
    
    var body: some View {
        ZStack {
            Color.cyan.ignoresSafeArea()
            VStack(spacing: 20) {
                Text("Nota nueva")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                
                TextField("Titulo", text: $viewModel.titulo)
                    .font(.headline)
                    .padding(20)
                    .frame(height: 50)
                    .background(.fondo)
                    .clipShape(RoundedRectangle(cornerRadius: 25))
                
                TextEditor(text: $viewModel.contenido)
                    .font(.headline)
                    .padding(20)
                    .frame(maxHeight: .infinity)
                    .background(.fondo)
                    .clipShape(RoundedRectangle(cornerRadius: 25))
                    .foregroundStyle(.primary)
                    .scrollContentBackground(.hidden)
                
                
                Button {
                    infoBD.agregarNota(nota: viewModel.crearNota())
                    dismiss()
                } label: {
                    Text("Guardar nota")
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(.blue)
                        .foregroundStyle(.white)
                        .clipShape(RoundedRectangle(cornerRadius: 25))
                    
                }
                    
                
            }
            .padding(20)
            .frame(maxWidth: .infinity, alignment: .leading)
            .background(.tarjetas)
            .cornerRadius(16)
            .shadow(color: Color.sombras.opacity(0.12), radius: 8, x: 0, y: 4)
            .padding(20)
        }
        .onTapGesture {
            tecladoActivo = false
        }
    }
    
}

#Preview {
    NotasView(infoBD: SimulaBD())
}
