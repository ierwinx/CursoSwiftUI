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
                        
                        NavigationLink(destination: Pickercitos()) {
                            Text("Vista de Pickercitos")
                                .frame(maxWidth: .infinity)
                                .frame(height: 55)
                                .background(.red)
                                .foregroundStyle(.white)
                                .padding()
                        }
                        
                        NavigationLink(destination: Slidercitos()) {
                            Text("Vista de Slidercitos")
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
                .navigationTitle("Curso Platzi")
                .navigationBarTitleDisplayMode(.large)
            }
        }
    }
    
}

#Preview {
    ContentView()
}
