import Foundation

@Observable
class NotasViewModel {
    
    var titulo = ""
    var contenido = ""
    
    func crearNota() -> Nota {
        let nota = Nota(titulo: titulo, contenido: contenido)
        return nota
    }
    
}
