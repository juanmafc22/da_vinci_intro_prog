/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */
package ejerarrays5;

import java.util.Scanner;

public class EjerArrays5 {

    public final static Scanner input = new Scanner(System.in);
    public final static int NUM_ELEMENTOS = 10;
    
    public static void main(String[] args) {

        // Rellenar un array con 10 números al azar, entre 1 y 25, sin que se repitan.
        // Matrices
        
        int[] numeros = new int[NUM_ELEMENTOS];
        int contador = 0;
        
        while (contador < NUM_ELEMENTOS) {
            
            // genero el número aleatorio entre 1 y 25
            int numeroRandom = (int) (Math.random() * 25) + 1;
            boolean repetido = false;
            
            // verifico si el núumero está en el array
            // la primera vuelta no se verifica, se comienza el contador en 0 
            for (int i = 0; i < contador; i++) {
                // para todos los elementos del array numeros verifico si el numeroRandom
                // generado es igual al elemento en numero[i]
                if (numeros[i] == numeroRandom) {
                    // si son iguales convierto al boolean en true
                    repetido = true;
                    break;      // si es repetido, no lo agrego y vuelvo al while
                                // generando otro numeroRandom y verificando nuevamente
                }
                
            }
            
            // si repetido todavía es falso (verifiqué que el número no está repetido)
            if (!repetido) {
                numeros[contador] = numeroRandom;
                contador++;
            } 

        }
        
        System.out.println("Los 10 numeros aleatorios");
        for (int i = 0; i < NUM_ELEMENTOS; i++) {
            System.out.println((i + 1) + "\t" + numeros[i]);
        }
    
    }
}
