//
//  ContentView.swift
//  TodosConTodos
//
//  Created by Javier Fuentes on 23-01-24.
//
// Este es un ejercicio que dejé inacabado el año pasado y ahora me propongo finalizar
// el algoritmo en lenguaje Swift para practicar su sintaxis.
// El problema es el siguiente:
// Existe un curso de x alumnos, donde el profesor pretende realizar una actividad en la
// cual los alumnos se organizarán en parejas. A lo largo de la actividad, los alumnos
// deben alternarse y trabajar en parejas diferentes, de modo que todos trabajen con todos.
// Desarrollar una app en iOS que permita realizar la actividad, para lo cual se ingresará
// el total de alumnos, en base a esto se calculará la cantidad de parejas posibles, y estas
// se ordenarán en las rondas necesarias para que todos los alumnos trabajen con cada uno
// de sus compañeros. Además, se debe considerar el tiempo que tardará en llevarse a cabo
// el ejercicio.

import SwiftUI

struct ContentView: View {
    @State private var numeroDeAlumnos = "" // Almacena la entrada del usuario
    @State private var procesarDatos = false // Maneja el estado de procesamiento

    var body: some View {
        VStack {
            TextField("Número de Alumnos", text: $numeroDeAlumnos)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()

            Button("Procesar Datos") {
                self.procesarDatosDeAlumnos()
            }
            .padding()

            // Aquí puedes agregar más lógica o vistas que dependan del estado `procesarDatos`
            if procesarDatos {
                // Mostrar resultados o continuar con la lógica de la app
            }
        }
    }

    func procesarDatosDeAlumnos() {
        if let numeroAlumnos = Int(numeroDeAlumnos) {
            // Lógica para procesar el número de alumnos
            print("Número de alumnos: \(numeroAlumnos)")
            procesarNumeroDeAlumnos(numeroAlumnos)
        } else {
            // Manejar el caso en que la entrada no es un número válido
            print("Por favor, ingrese un número válido.")
        }
    }

    func procesarNumeroDeAlumnos(_ numero: Int) {
        // Aquí se implementaría la lógica para organizar las parejas y calcular las rondas
        // ...
    }
}

// Vista previa de ContentView
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


