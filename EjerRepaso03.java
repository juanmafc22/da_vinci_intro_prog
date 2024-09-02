/* 
Realizó un programa que permita ingresar dos números enteros e
indique cuál de ellos es el mayor.
*/

import java.util.Scanner;

public class EjerRepaso03 {

    public static Scanner input = new Scanner(System.in);

    public static void main (String[] args) {

        // declarar las variables;
        int numero1, numero2;

        // solicitar las variables
        System.out.print("Ingresar el numero 1: ");
        numero1 = input.nextInt();
        System.out.print("Ingresar el numero 2: ");
        numero2 = input.nextInt();

        if (numero1 > numero2) {
            System.out.println(numero1 + " > " + numero2);
        } else if (numero1 < numero2) {
            System.out.println(numero1 + " < " + numero2);
        } else {
            System.out.println(numero1 + " = " + numero2);
        }

    }
}