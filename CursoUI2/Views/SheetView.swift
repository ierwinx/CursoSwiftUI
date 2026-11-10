import SwiftUI

struct SheetView: View {
    
    @State var bAlerta1: Bool = false
    @State var bAlerta2: Bool = false
    @State var bAlerta3: Bool = false
    @State var bAlerta4: Bool = false
    
    @State var nombre: String = ""
    @State var correo: String = ""
    
    var body: some View {
        VStack(spacing: 20) {
            Button {
                bAlerta1 = true
            } label: {
                Text("Alerta 1")
                    .frame(maxWidth: .infinity)
                    .frame(height: 55)
                    .foregroundStyle(.white)
                    .background(.red)
                    .clipShape(RoundedRectangle(cornerRadius: 27.5))
                    .contentShape(RoundedRectangle(cornerRadius: 27.5))
            }
            .buttonStyle(.plain)
            .sheet(isPresented: $bAlerta1) {
                //Text("Hola desde el Sheet") //opcion 1
                VistaPruebaView()
            }
            
            Button {
                bAlerta2 = true
            } label: {
                Text("Alerta 2")
                    .frame(maxWidth: .infinity)
                    .frame(height: 55)
                    .foregroundStyle(.white)
                    .background(.blue)
                    .clipShape(RoundedRectangle(cornerRadius: 27.5))
                    .contentShape(RoundedRectangle(cornerRadius: 27.5))
            }
            .buttonStyle(.plain)
            .sheet(isPresented: $bAlerta2) {
                VistaPruebaView()
                    .presentationDetents([.medium, .large, .fraction(1/4)]) // hace que tenga 3 tamaños y arrastrandolo cambia
            }
            
            Button {
                bAlerta3 = true
            } label: {
                Text("Alerta 3")
                    .frame(maxWidth: .infinity)
                    .frame(height: 55)
                    .foregroundStyle(.white)
                    .background(.orange)
                    .clipShape(RoundedRectangle(cornerRadius: 27.5))
                    .contentShape(RoundedRectangle(cornerRadius: 27.5))
            }
            .buttonStyle(.plain)
            .fullScreenCover(isPresented: $bAlerta3)  {
                VistaPruebaView(vistaCompleta: true)
            }
            
            Button {
                bAlerta4 = true
            } label: {
                Text("Alerta 4")
                    .frame(maxWidth: .infinity)
                    .frame(height: 55)
                    .foregroundStyle(.white)
                    .background(.purple)
                    .clipShape(RoundedRectangle(cornerRadius: 27.5))
                    .contentShape(RoundedRectangle(cornerRadius: 27.5))
            }
            .buttonStyle(.plain)
            .sheet(isPresented: $bAlerta4) {
                NavigationStack {
                    Form {
                        TextField("Nombre", text: $nombre)
                        TextField("Correo", text: $correo)
                    }
                    .navigationTitle("Nuevo usuario")
                    .toolbar {
                        ToolbarItem(placement: .confirmationAction) {
                            Button("Guardar") {
                                bAlerta4 = false
                            }
                        }
                        ToolbarItem(placement: .cancellationAction) {
                            Button("Cancelar") {
                                bAlerta4 = false
                            }
                        }
                    }
                }
                .presentationDetents([.medium])
                .interactiveDismissDisabled() // evita el el usuario toque la pantalla y se oculte
                
            }
            
            
            
        }
        .padding()
    }
    
}

#Preview {
    SheetView()
}
