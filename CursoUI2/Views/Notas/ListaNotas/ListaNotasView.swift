import SwiftUI

struct ListaNotasView: View {

    @State private var viewModel = ListaNotasViewModel()
    @StateObject var infoBD = SimulaBD()

    var body: some View {
        List(infoBD.arrNotas) { nota in
            NavigationLink {
                VerNotaView(nota: nota)
            } label: {
                VStack(alignment: .leading) {
                    Text(nota.titulo)
                        .font(.title3)
                        .padding(.bottom, 15)
                    Text(nota.contenido)
                        .font(.caption)
                        .lineLimit(3)
                }
            }
            .swipeActions(edge: .trailing) {
                Button {
                    print("Marcar como favorita")
                } label: {
                    Label("Favorito", systemImage: "star")
                }
                .tint(.orange)
            }
            .swipeActions(edge: .leading) {
                Button(role: .destructive) {
                    infoBD.eliminaNota(id: nota.id)
                } label: {
                    Label("Eliminar", systemImage: "trash")
                }
            }
        }
        .listStyle(.plain)
        .scrollIndicators(.hidden)
        .navigationTitle("Lista de notas")
        .toolbar {
            Button {
                viewModel.abrirCrearNota()
            } label: {
                Text("+")
                    .font(.title)
            }
        }
        .sheet(isPresented: $viewModel.bMostrarCrear) {
            NotasView(infoBD: infoBD)
                .presentationDetents([.large])
        }
        .environmentObject(infoBD)
    }
}

#Preview {
    NavigationStack {
        ListaNotasView()
    }
}
