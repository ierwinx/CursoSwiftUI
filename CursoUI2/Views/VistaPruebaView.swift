import SwiftUI

struct VistaPruebaView: View {
    
    @Environment(\.dismiss) private var dismiss
    
    var vistaCompleta: Bool = false // esto no es necesario solo se uso para poder cerrar la vista en pantalla completa o si la UI lo reuiere
    
    var body: some View {
        ZStack {

            Color.red.ignoresSafeArea()

            Text("Estas en una segunda vista de pruebas")
                .font(.largeTitle)
                .foregroundStyle(.white)

        }
        .overlay(alignment: .topTrailing) {
            if vistaCompleta {
                Button {
                    dismiss()
                } label : {
                    Image(systemName: "xmark")
                }
                .padding(.trailing, 40)
                .font(.system(size: 22, weight: .semibold))
                .foregroundStyle(.white)
            }
        }
        
    }
}

#Preview {
    VistaPruebaView(vistaCompleta: true)
}
