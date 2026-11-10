import SwiftUI

struct AlertasView: View {
    
    @State var bAlerta1: Bool = false
    @State var bAlerta2: Bool = false
    @State var bAlerta3: Bool = false
    @State var bAlerta4: Bool = false
    @State var bAlerta5: Bool = false
    
    @State var nombre: String = ""
    
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
            
            Button {
                bAlerta3 = true
            } label: {
                Text("Alerta 3")
                    .frame(maxWidth: .infinity)
                    .frame(height: 55)
                    .foregroundStyle(.white)
                    .background(.green)
                    .clipShape(RoundedRectangle(cornerRadius: 27.5))
                    .contentShape(RoundedRectangle(cornerRadius: 27.5))
            }
            .buttonStyle(.plain)
            
            Button {
                bAlerta4 = true
            } label: {
                Text("Alerta 4")
                    .frame(maxWidth: .infinity)
                    .frame(height: 55)
                    .foregroundStyle(.white)
                    .background(.red)
                    .clipShape(RoundedRectangle(cornerRadius: 27.5))
                    .contentShape(RoundedRectangle(cornerRadius: 27.5))
            }
            .buttonStyle(.plain)
            .confirmationDialog("Selecciona una opción", isPresented: $bAlerta4, titleVisibility: .visible) {
                Button("Tomar fotografía") {
                    print("Cámara")
                }

                Button("Seleccionar imagen") {
                    print("Galería")
                }

                Button("Eliminar imagen", role: .destructive) {
                    print("Eliminar")
                }

                Button("Cancelar", role: .cancel) { }
            }
            
            Button {
                bAlerta1 = true
            } label: {
                Text("Alerta 1")
                    .frame(maxWidth: .infinity)
                    .frame(height: 55)
                    .foregroundStyle(.white)
                    .background(.orange)
                    .clipShape(RoundedRectangle(cornerRadius: 27.5))
                    .contentShape(RoundedRectangle(cornerRadius: 27.5))
            }
            .buttonStyle(.plain)
            
            
        }
        .padding()
        .alert("Este es un mensaje 1", isPresented: $bAlerta1) {
            Button("Aceptar", role: .confirm) {
                bAlerta1 = false
            }
        } message: {
            Text("Esto es el contenido de la alerta y cabe mucha información")
        }
        
        .alert("Este es un mensaje 2", isPresented: $bAlerta2) {
            Button("Eliminar", role: .destructive) {
                
            }
            Button("Guardar") {
                
            }
        }
        
        .alert("Cerrar sesión", isPresented: $bAlerta3) {
            Button("No", role: .cancel) { }

            Button("Sí, cerrar sesión") {
                print("Sesión cerrada")
            }
        } message: {
            Text("¿Estás seguro de que deseas salir?")
        }
        
        .alert("Nuevo usuario", isPresented: $bAlerta5) {
            TextField("Nombre", text: $nombre)

            Button("Cancelar", role: .cancel) { }

            Button("Guardar") {
                print(nombre)
            }
        } message: {
            Text("Escribe el nombre del usuario.")
        }
        
    }
    
}

#Preview {
    AlertasView()
}
