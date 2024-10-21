/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */
package ejerarrays4;

import java.util.Scanner;

public class EjerArrays4 {

    final public static Scanner input = new Scanner(System.in);
    final public static int NUM_PERSONAS = 5;
    final public static int COLUMNAS = 2;
    
    public static void main(String[] args) {

//  Desarrollar un programa que permita cargar 5 nombres de personas y sus edades
//  respectivas. Luego de realizar la carga por teclado de todos los datos imprimir los nombres de
//  las personas mayores de edad (mayores o iguales a 18 años).

    String[][] personas = new String[NUM_PERSONAS][COLUMNAS];
    
        for (int i = 0; i < NUM_PERSONAS; i++) {
            System.out.print("Ingresar el nombre de persona " + (i + 1) + ": ");
            String nombre = input.nextLine();
            personas[i][0] = nombre;
            System.out.print("Ingresar la edad" + (i + 1) + ": ");
            String edad = input.nextLine();
            personas[i][1] = edad;
        }
        
        for (int i = 0; i < NUM_PERSONAS; i++) {
            if ( Integer.parseInt(personas[i][1]) >= 18 ) {
                System.out.println(personas[i][0] + " es mayor de edad");
            } else {
                System.out.println(personas[i][0] + " es menor de edad");
                
            }
        }

    }
    
}
