import Observation

@Observable
final class ListaNotasViewModel {

    // MARK: - State
    var bMostrarCrear = false
    var bMostrarDestalle = false

    func abrirCrearNota() {
        bMostrarCrear = true
    }
    
    func cerrarCrearNota() {
        bMostrarCrear = false
    }
    
}
