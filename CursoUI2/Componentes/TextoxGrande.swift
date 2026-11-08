import SwiftUI

struct TextoxGrande: View {

    @State var parrafo: String = ""
    @State var colorValidacion: Color = .gray.opacity(0.2)
    @State var contador: String = ""
    
    var body: some View {
        VStack(alignment: .leading) {
            
            ZStack(alignment: .topLeading) {
                if parrafo.isEmpty {
                    Text("Escribe tu comentario...")
                        .font(.headline)
                        .foregroundStyle(.gray.opacity(0.6))
                        .padding(.top, 24)
                        .padding(.leading, 19)
                }
                
                TextEditor(text: $parrafo)
                    .font(.headline)
                    .padding()
                    .foregroundStyle(.primary)
                    .scrollContentBackground(.hidden)
                    .frame(height: 200)
                    .background(.gray.opacity(0.2))
                    .clipShape(RoundedRectangle(cornerRadius: 8))
                    .overlay(RoundedRectangle(cornerRadius: 8).stroke(colorValidacion))
                    .onChange(of: parrafo) { oldValue, newValue in
                        print("parrafo" + newValue)
                        
                        let iMax = 45
                        
                        let valor = iMax - Int(newValue.count)
                        
                        contador = "Te quedan \(valor) caracteres"
                        
                        if newValue == "" {
                            colorValidacion = .gray.opacity(0.2)
                        } else {
                            colorValidacion = newValue.count > iMax ? .red : .green
                        }
                    }
                
            }
            .frame(height: 200)
            
            if colorValidacion != .gray.opacity(0.2) {
                Text(contador)
                    .font(.footnote)
                    .foregroundColor(colorValidacion)
            }
            
        }
        .padding(.horizontal, 20)
    }
    
}

#Preview {
    TextoxGrande()
}
