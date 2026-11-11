import SwiftUI

struct ListaNotasView: View {

    @State private var viewModel = ListaNotasViewModel()
    @StateObject var infoBD = SimulaBD()

    var body: some View {
        List(infoBD.arrNotas) { nota in
            NavigationLink(destination: VerNotaView(nota: nota)) {
                CeldaNota(nota: nota)
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
        .navigationBarTitleDisplayMode(.inline)
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
