import SwiftUI

struct GestosView: View {
    
    @State var color: Color = .green
    @State var posicion: CGSize = .zero
    
    @State var posicion2: CGSize = .zero
    @State private var posicionInicial: CGSize = .zero
    
    @State private var escala: CGFloat = 1.0
    @State private var escalaInicial: CGFloat = 1.0
    
    var body: some View {
        
        ScrollView(.vertical, showsIndicators: false) {
            
            VStack(spacing: 20) {
                
                Circle()
                    .frame(width: 200, height: 200)
                    .foregroundStyle(color)
                    .onTapGesture {
                        color = .red
                    }
                    .onLongPressGesture(minimumDuration: 2) {
                        color = .blue
                    }
                
                
                Circle()
                    .frame(width: 200, height: 200)
                    .foregroundStyle(.purple)
                    .contentShape(Circle())
                    .offset(posicion)
                    .highPriorityGesture(
                        DragGesture()
                            .onChanged { valor in
                                posicion = valor.translation
                            }
                    )
                
                Circle()
                    .frame(width: 200, height: 200)
                    .foregroundStyle(.orange)
                    .offset(posicion2)
                    //.gesture( // solo usar con vistas sin scrollview
                    .highPriorityGesture( // solo usar en una vista con scrollview
                        DragGesture()
                            .onChanged { valor in
                                posicion2 = valor.translation
                            }
                            .onEnded { _ in
                                withAnimation(.easeInOut(duration: 1.0)) {
                                    posicion2 = posicionInicial
                                }
                            }
                    )
                
                Circle()
                    .frame(width: 200, height: 200)
                    .foregroundStyle(.red)
                    .scaleEffect(escala)
                    //.gesture( // solo usar con vistas sin scrollview
                    .simultaneousGesture( // solo usar en una vista con scrollview
                        MagnificationGesture()
                            .onChanged { valor in
                                escala = escalaInicial * valor
                            }
                            .onEnded { _ in
                                withAnimation(.easeInOut(duration: 1.0)) {
                                    escala = escalaInicial
                                }
                            }
                    )
                
                
                Spacer()
                    .frame(height: 100)
                
                
            }
            .frame(maxWidth: .infinity)
        }
        
    }
    
}

#Preview {
    GestosView()
}
