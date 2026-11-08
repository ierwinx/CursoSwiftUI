import SwiftUI

struct Login: View {
    
    @State
    private var strUserName: String = ""
    @State
    private var strPassword: String = ""
    
    var body: some View {
        VStack {
            VStack(alignment: .center, spacing: 40) {
                
                HStack(alignment: .center) {
                    Text("Iniciar sesión")
                        .foregroundStyle(.blue)
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .fontDesign(.serif)
                }
                
                VStack(alignment: .leading, spacing: 50) {
                    
                    ZStack(alignment: .leading) {
                        
                        TextField("", text: $strUserName)
                            .padding(12)
                            .background(Color.white)
                            .overlay(
                                RoundedRectangle(cornerRadius: 8)
                                    .stroke(Color.gray.opacity(0.2), lineWidth: 1)
                            )
                            .shadow(color: Color.black.opacity(0.07), radius: 1, x: 0, y: 1)
                        
                        Text("Escribe tu usuario:")
                            .fontWeight(.bold)
                            .foregroundStyle(.blue)
                            .background(.white)
                            .offset(x: 8, y: -24)
                        
                    }
                    
                    ZStack(alignment: .leading) {
                        SecureField("", text: $strPassword)
                            .padding(12)
                            .background(Color.white)
                            .overlay(
                                RoundedRectangle(cornerRadius: 8)
                                    .stroke(Color.gray.opacity(0.2), lineWidth: 1)
                            )
                            .shadow(color: Color.black.opacity(0.07), radius: 1, x: 0, y: 1)
                        
                        NavigationLink(destination: Listas()) {
                            Text("Escribe tu contraseña:")
                                .fontWeight(.bold)
                                .foregroundStyle(.blue)
                                .background(.white)
                                .offset(x: 8, y: -24)
                        }
                        
                    }
                    
                    NavigationLink(destination: Listas()) {
                        Text("Login")
                            .font(.title3)
                            .fontWeight(.medium)
                            .foregroundStyle(.white)
                            .padding(20)
                            .frame(maxWidth: .infinity, maxHeight: 55)
                            .background(.green)
                            .clipShape(RoundedRectangle(cornerRadius: 15))
                            .offset(y:-10)
                    }
                    
                }
                
            }
            .padding(20)
            .frame(maxWidth: .infinity, alignment: .leading)
            .background(.white)
            .cornerRadius(16)
            .shadow(color: .black.opacity(0.12), radius: 8, x: 0, y: 4)
        }
        .padding(20)
    }
}

#Preview {
    Login()
}
