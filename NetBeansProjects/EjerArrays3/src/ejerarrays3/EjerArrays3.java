/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */
package ejerarrays3;

import java.util.Scanner;

public class EjerArrays3 {

    public final static Scanner input = new Scanner(System.in);
    public final static int NUM_PARTICIPANTES = 5;
    
    public static void main(String[] args) {
        
        // Realizar un programa que lea los tiempos en los que de 10 corredores han acabado una
        // carrera. El programa debe determinar qué corredores tienen el primer, segundo y último
        // puesto, así como cuál es el tiempo medio en que se ha corrido la carrera.
        // Arrays paralelos
        
        String[] nombres = new String[NUM_PARTICIPANTES];
        int[] tiempos = new int[NUM_PARTICIPANTES];
        int masLento = Integer.MIN_VALUE;
        int masRapido = Integer.MAX_VALUE;
        int segMasRapido = Integer.MAX_VALUE;
        int terMasRapido = Integer.MAX_VALUE;
        int iMasLento = -1;
        int iMasRapido = -1;
        int iMasRapido2 = -1;
        int iMasRapido3 = -1;
        
        // Cargo la info         
        for (int i = 0; i < NUM_PARTICIPANTES; i++) {
            System.out.print("Ingresar nombre del corredor " + (i + 1) + ": ");
            nombres[i] = input.nextLine();
            System.out.print("Ingresar tiempo del corredor " + (i + 1) + ": ");
            tiempos[i] = Integer.parseInt(input.nextLine());
        }
        
        // Veo los resultados
        for (int i = 0; i < NUM_PARTICIPANTES; i++) {
            // iterar y buscar el más lento
            if (tiempos[i] > masLento) {
                masLento = tiempos[i];
                iMasLento = i;
            }
            
            // iterar y buscar el más rápido y el 2do más rapido
            if (tiempos[i] < masRapido ) {
                iMasRapido = i;
                masRapido = tiempos[i];
            } else if (i != iMasRapido && tiempos[i] < segMasRapido) {
                iMasRapido2 = i;
                segMasRapido = tiempos[i];
            } else if ((i != iMasRapido && i != iMasRapido2) && (tiempos[i] < terMasRapido)) {
                iMasRapido3 = i;
                terMasRapido = tiempos[i];
            }
        }
        
        System.out.println("El 1ro: " + nombres[iMasRapido]);
        System.out.println("El 2do: " + nombres[iMasRapido2]);
        System.out.println("El 3ro: " + nombres[iMasRapido3]);
        System.out.println("El ultimo: " + nombres[iMasLento]);
    
    }
}
