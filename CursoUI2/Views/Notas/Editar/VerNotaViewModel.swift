import Observation

@Observable
final class VerNotaViewModel {

    // MARK: - State
    var title = "VerNota"
    var counter = 0

    // MARK: - Actions
    func increment() {
        counter += 1
    }
}
