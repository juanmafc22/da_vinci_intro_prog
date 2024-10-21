/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */
package doblearray;

import java.util.Scanner;

public class DobleArray {

    public final static Scanner input = new Scanner(System.in);
    public final static int COLUMNAS = 2;

    public static void main(String[] args) {
        
        
        System.out.print("Ingresar la cantidad de personas: ");
        int cantPersonas = Integer.parseInt(input.nextLine());
        
        String[][] personas = new String[cantPersonas][COLUMNAS];
        
        for (int i = 0; i < cantPersonas; i++) {
            System.out.print("Ingresar el nombre: ");
            String nombre = input.nextLine().toLowerCase();
            personas[i][0] = nombre;
            System.out.print("Ingresar la edad: ");
            String edad = input.nextLine();
            personas[i][1] = edad;
        }
        
        // System.out.println("Nombre: \t\tEdad:" );
        for (int i = 0; i < cantPersonas; i++) {
            if (
                    (personas[i][0].startsWith("a") ||
                    personas[i][0].startsWith("e") ||
                    personas[i][0].startsWith("i") ||
                    personas[i][0].startsWith("o") ||
                    personas[i][0].startsWith("u")) &&
                    (Integer.parseInt(personas[i][1]) > 25 )) {
                System.out.println("Nombre: " + personas[i][0] + "\t\tEdad: " + personas[i][1]);
            }
                
        }
        
        
    }
    
}
