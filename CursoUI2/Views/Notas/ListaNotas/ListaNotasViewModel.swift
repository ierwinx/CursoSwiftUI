import Observation

@Observable
final class ListaNotasViewModel {

    // MARK: - State
    var bMostrarCrear = false

    func abrirCrearNota() {
        bMostrarCrear = true
    }
    
    func cerrarCrearNota() {
        bMostrarCrear = false
    }
    
}
