import SwiftUI
import Playgrounds

struct ContentView: View {
    
    var body: some View {
        ZStack {
            Color(.fondo).ignoresSafeArea()
            NavigationStack {
                ScrollView(showsIndicators: false) {
                    VStack(alignment: .center, spacing: 20) {
                        
                        Login()
                        
                        Tarjeta.create()
                        
                        Text("Componentes Graficos")
                        
                        Textox()
                        
                        TextoxGrande()
                        
                        Pickercitos()
                        
                        Slidercitos()
                        
                        NavigationLink(destination: AlertasView()) {
                            Text("Vista de Alertas")
                                .frame(maxWidth: .infinity)
                                .frame(height: 55)
                                .background(.red)
                                .foregroundStyle(.white)
                                .padding()
                            
                        }
                        
                        NavigationLink(destination: SheetView()) {
                            Text("Vista de Sheets")
                                .frame(maxWidth: .infinity)
                                .frame(height: 55)
                                .background(.red)
                                .foregroundStyle(.white)
                                .padding()
                        }
                        
                        NavigationLink(destination: GestosView()) {
                            Text("Vista de Gestos")
                                .frame(maxWidth: .infinity)
                                .frame(height: 55)
                                .background(.red)
                                .foregroundStyle(.white)
                                .padding()
                        }
                        
                        NavigationLink(destination: ListaNotasView()) {
                            Text("Ejemplo MVVM")
                                .frame(maxWidth: .infinity)
                                .frame(height: 55)
                                .background(.red)
                                .foregroundStyle(.white)
                                .padding()
                        }
                        
                    }
                }
            }
        }
    }
    
}

#Preview {
    ContentView()
}
