import SwiftUI

struct Textox: View {
    
    @State var name: String = ""
    @State var colorValidacion: Color = .gray.opacity(0.2)
    
    var body: some View {
        VStack {
            TextField("Escribe tu correo", text: $name)
                .font(.headline)
                .padding()
                .background(.gray.opacity(0.2))
                .overlay(RoundedRectangle(cornerRadius: 8).stroke(colorValidacion))
                .cornerRadius(8)
                .keyboardType(.emailAddress)
                .textInputAutocapitalization(.never)
                .onChange(of: name) { oldValue, newValue in
                    print("oldValue: " + oldValue)
                    print("newValue: " + newValue)
                    if newValue == "" {
                        colorValidacion = .gray.opacity(0.2)
                    } else {
                        colorValidacion = newValue.wholeMatch(of: /^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/) != nil ? .green : .red
                    }
                }
            
            if colorValidacion == .red {
                Text(verbatim: "Correo electronico erroneo, ejemplo: andrea@gmail.com") //verbatim evita que aprieten el link
                    .font(.footnote)
                    .foregroundColor(.red) //color del texto normal
                    .tint(.red) // evita que el link se ponga azul
                    .padding(.leading, -20)
            }
        }
        .padding(.horizontal, 20)
    }
    
}

#Preview {
    Textox()
}
