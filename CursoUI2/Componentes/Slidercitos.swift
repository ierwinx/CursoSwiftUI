import SwiftUI

struct Slidercitos: View {
    
    @State var volumen: Double = 30.0
    @State var bAlto: Bool = false
    
    var body: some View {
        VStack(spacing: 20) {
            
            Text("Volumen: \(Int(volumen))")
            Slider(value: $volumen, in: 0...100, step: 1)
                .tint(.purple)
                .onChange(of: volumen) { oldValue, newValue in
                    bAlto = Int(volumen) > 50
                }
            
            Toggle("Esta muy alto?", isOn: $bAlto)
                .onChange(of: bAlto) { oldValue, newValue in
                    print(newValue)
                }
            
        }
        .padding()
    }
}

#Preview {
    Slidercitos()
}
