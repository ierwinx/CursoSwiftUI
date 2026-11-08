import SwiftUI

struct Pickercitos: View {
    
    @State var fecha = Date()
    @State var fecha2 = Date()
    
    @State var mascotaSelect = ""
    let arrMascotas = ["Perro", "Gato", "Pez", "Hamster", "Ajolote", "Ave"]
    
    @State var pestanaSelect = 2
    
    var body: some View {
        VStack(spacing: 20) {
            
            // FORMA 1
            DatePicker("Fecha:", selection: $fecha)
                .datePickerStyle(.compact)
                .environment(\.locale, Locale(identifier: "es_MX"))
                .onChange(of: fecha) { oldValue, newValue in
                    print(fecha.timeIntervalSince1970)
                }
            
            // FORMA 2
            DatePicker("Fecha2:", selection: $fecha2, displayedComponents: [.hourAndMinute])
                .datePickerStyle(.wheel)
                .environment(\.locale, Locale(identifier: "es_MX"))
                .onChange(of: fecha2) { oldValue, newValue in
                    print(fecha2)
                }
            
            // FORMA 3
            Menu {
                Picker("Mascotas", selection: $mascotaSelect) {
                    ForEach(arrMascotas, id: \.self) { mascota in
                        Text(mascota).tag(mascota)
                    }
                }
            } label: {
                HStack {
                    Text(mascotaSelect.isEmpty ? "Selecciona una mascota" : mascotaSelect)
                        .font(.headline)
                        .foregroundStyle(.gray.opacity(0.6))
                    
                    Spacer()
                    
                    Image(systemName: "chevron.down")
                        .foregroundStyle(.gray)
                }
                .padding()
                .background(.gray.opacity(0.2))
                .clipShape(RoundedRectangle(cornerRadius: 8))
            }
            
            // FORMA 4
            Picker("Mascotas 2", selection: $mascotaSelect) {
                ForEach(arrMascotas, id: \.self) { mascota in
                    Text(mascota).tag(mascota)
                }
            }
            .pickerStyle(.inline)
            
            // FORMA 5
            Picker("Mascotas 2", selection: $mascotaSelect) {
                ForEach(arrMascotas, id: \.self) { mascota in
                    Text(mascota).tag(mascota)
                }
            }
            .pickerStyle(.palette)
            
            // FORMA 6
            Picker("Mascotas 2", selection: $pestanaSelect) {
                Text("Pestaña 1").tag(1)
                Text("Pestaña 2").tag(2)
                Text("Pestaña 3").tag(3)
            }
            .pickerStyle(.segmented)
            .scaleEffect(x: 1, y: 1.2)
            .frame(height: 60)
            
            // FORMA 7
            Picker("Mascotas 2", selection: $pestanaSelect) {
                Label("Pestaña 1", systemImage: "dog").tag(1)
                Label("Pestaña 2", systemImage: "cat").tag(2)
                Label("Pestaña 3", systemImage: "pawprint").tag(3)
            }
            
            // FORMA 8
            Menu {
                Picker("Mascotas", selection: $mascotaSelect) {
                    Label("Perro", systemImage: "dog").tag("Perro")
                    Label("Gato", systemImage: "cat").tag("Gato")
                    Label("Pez", systemImage: "pawprint").tag("Pez")
                }
            } label: {
                HStack {
                    Text(mascotaSelect.isEmpty ? "Selecciona una mascota" : mascotaSelect)
                        .font(.headline)
                        .foregroundStyle(.gray.opacity(0.6))
                    
                    Spacer()
                    
                    Image(systemName: "chevron.down")
                        .foregroundStyle(.gray)
                }
                .padding()
                .background(.gray.opacity(0.2))
                .clipShape(RoundedRectangle(cornerRadius: 8))
            }
            
        }
        .padding(20)
    }
}

#Preview {
    Pickercitos()
}
