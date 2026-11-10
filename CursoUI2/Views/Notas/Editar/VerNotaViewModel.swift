import Observation

@Observable
final class VerNotaViewModel {

    // MARK: - Actions
    func imprmir(nota: Nota) {
        print("Visualizar nota")
        print(nota)
    }
}
