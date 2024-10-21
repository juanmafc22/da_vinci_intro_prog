/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */
package ejerarraysdos;

import java.util.Scanner;

public class EjerArraysDos {

    public final static Scanner input = new Scanner(System.in);
    public final static int CANT_ALUMNOS = 5;

    public static void main(String[] args) {

        int[] notasA = new int[CANT_ALUMNOS];
        int[] notasB = new int[CANT_ALUMNOS];

        imprimirTitulo("A");
        notasA = obtenerNotas();
        
        imprimirTitulo("B");
        notasB = obtenerNotas();
        
        System.out.println("El promedio de A: " + calcularPromedio(notasA));
        System.out.println("El promedio de B: " + calcularPromedio(notasB));
        
        if (calcularPromedio(notasA) > calcularPromedio(notasB)) {
            System.out.println("El curso A obtuvo mejor promedio");
        } else {
            System.out.println("El curso B obtuvo mejor promedio");  
        }
        
        
        

    } // fin main

    static void imprimirTitulo(String mensaje) {
        System.out.println("Cargar las notas del curso " + mensaje);
    
    } // fin fx imprimirTitulo
    
    static int[] obtenerNotas() {
        
        int[] notas = new int[CANT_ALUMNOS];
        
        for (int i = 0; i < CANT_ALUMNOS; i++) {
            System.out.print("Ingresar nota alumno " + (i+1) + ": ");
            notas[i] = Integer.parseInt(input.nextLine());
        }
        return notas;
        
    } // fin fx obtenerNotas
    
    static int calcularPromedio(int[] lasNotas) {
        
        int sumaNotas = 0;
        double promedio;
        
        for (int i = 0; i < lasNotas.length; i++) { 
            sumaNotas += lasNotas[i];
        }
        promedio = sumaNotas / CANT_ALUMNOS;
        return ((int) promedio);
    }
        
        
    
    
}
