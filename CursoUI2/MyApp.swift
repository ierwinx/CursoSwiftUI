import SwiftUI

@main struct MyApp: App {
    var body: some Scene {
        WindowGroup {
            TabView {
                ContentView()
                    .tabItem {
                        Label("Home", systemImage: "house.fill")
                    }
                SheetView()
                    .tabItem {
                        Label("Pantallas", systemImage: "scroll")
                    }
                
                AlertasView()
                    .tabItem {
                        Label("Alertas", systemImage: "bell.badge")
                    }
                
                GestosView()
                    .tabItem {
                        Label("Gestos", systemImage: "hand.tap")
                    }
            }
            .tint(.red)
        }
    }
}
