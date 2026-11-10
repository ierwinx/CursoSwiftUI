import Combine
import Foundation

class SimulaBD: ObservableObject {
    
    @Published var arrNotas: [Nota] = [
        Nota(
            titulo: "El misterio de los agujeros negros",
            contenido: "Los agujeros negros son regiones del espacio donde la gravedad es tan intensa que nada, ni siquiera la luz, puede escapar. Algunos pueden tener una masa equivalente a millones o incluso miles de millones de soles."
        ),
        Nota(
            titulo: "La música y el cerebro",
            contenido: "Escuchar música activa diferentes regiones del cerebro relacionadas con la memoria, las emociones y el movimiento. Por eso una canción puede transportarnos instantáneamente a un momento específico de nuestra vida."
        ),
        Nota(
            titulo: "El origen de los videojuegos",
            contenido: "Aunque hoy tenemos consolas capaces de ejecutar mundos tridimensionales impresionantes, uno de los primeros videojuegos reconocidos fue Tennis for Two, creado en 1958 utilizando un osciloscopio."
        ),
        Nota(
            titulo: "Un océano bajo el hielo",
            contenido: "Europa, una de las lunas de Júpiter, podría albergar un enorme océano de agua líquida debajo de su superficie congelada. Los científicos consideran que podría tener condiciones interesantes para la existencia de vida."
        ),
        Nota(
            titulo: "La biblioteca de Alejandría",
            contenido: "La antigua Biblioteca de Alejandría fue uno de los centros de conocimiento más importantes del mundo antiguo. Su objetivo era reunir el conocimiento de diferentes civilizaciones en un solo lugar."
        ),
        Nota(
            titulo: "¿Por qué soñamos?",
            contenido: "Todavía no existe una explicación definitiva sobre por qué soñamos. Algunas teorías sugieren que los sueños ayudan a procesar emociones, consolidar recuerdos y simular situaciones que experimentamos durante el día."
        ),
        Nota(
            titulo: "El lenguaje de las abejas",
            contenido: "Las abejas utilizan una especie de danza para comunicar a sus compañeras dónde encontrar alimento. La dirección y duración de sus movimientos pueden indicar la ubicación y distancia de las flores."
        ),
        Nota(
            titulo: "Proyecto personal",
            contenido: "Investigar nuevas tecnologías para desarrollar aplicaciones multiplataforma. Evaluar rendimiento, consumo de memoria, experiencia de usuario y facilidad de mantenimiento."
        ),
        Nota(
            titulo: "La señal WOW!",
            contenido: "En 1977, un radiotelescopio detectó una señal de radio extremadamente intensa y peculiar proveniente del espacio. El astrónomo Jerry Ehman escribió WOW! junto al registro. Hasta hoy, su origen continúa siendo un misterio."
        ),
        Nota(
            titulo: "Pequeños hábitos",
            contenido: "Leer durante quince minutos, caminar diariamente y dedicar tiempo a aprender algo nuevo son pequeños hábitos que pueden producir cambios importantes a largo plazo."
        ),
        Nota(
            titulo: "La evolución de Swift",
            contenido: "Swift fue presentado por Apple en 2014 como un lenguaje moderno para desarrollar aplicaciones. Con el paso de los años incorporó características como concurrencia estructurada, macros y mejoras en su sistema de tipos."
        ),
        Nota(
            titulo: "Una nota muy corta",
            contenido: "Recordar comprar café."
        ),
        Nota(
            titulo: "Ideas para el futuro: una aplicación diferente",
            contenido: "Crear una aplicación que permita organizar colecciones personales de música, videojuegos y películas. Cada elemento podría tener fotografías, información detallada, etiquetas personalizadas y estadísticas. La prioridad sería mantener una interfaz sencilla, rápida y completamente local."
        ),
        Nota(
            titulo: "El planeta más caliente",
            contenido: "Venus es el planeta más caliente del sistema solar, aunque Mercurio está más cerca del Sol. Su densa atmósfera, compuesta principalmente por dióxido de carbono, provoca un efecto invernadero extremo que mantiene temperaturas cercanas a los 465 grados Celsius."
        ),
        Nota(
            titulo: "Nota sin terminar...",
            contenido: "Hoy tuve una idea interesante, pero todavía necesito investigar algunos detalles antes de convertirla en un proyecto real. Quizá mañana encuentre la solución."
        )
    ]
    
    func agregarNota(nota: Nota) {
        print("Se guardo la nota:")
        print(nota)
        arrNotas.append(nota)
    }
    
    func eliminaNota(id: UUID) {
        arrNotas.removeAll { i in
            if i.id == id {
                print("Se eliminara ")
                print(i)
                return true
            } else {
                return false
            }
        }
    }
    
}
