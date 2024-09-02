/*
Realiza un programa que permita ingresar la cantidad de
inscriptos a una conferencia y la cantidad de asientos disponibles
en el auditorio. Debes indicar si alcanzan los asientos, Si los
asientos no alcanzaran indicar cuántos faltan para que todos los
inscriptos puedan sentarse.
*/

import java.util.Scanner;

public class EjerRepaso04 {

    public static Scanner input = new Scanner(System.in);

    public static void main (String[] args) {

        // Declarar las variables
        int inscriptos, cantAsientos;

        // Pedir la cantidad de inscriptos
        System.out.print("Ingresar la cantidad de inscriptos: ");
        inscriptos = input.nextInt();
        // Pedir la cantidad de asientos en el auditorio
        System.out.print("Ingresar la cantidad de asientos en el auditorio: ");
        cantAsientos = input.nextInt();

        if (cantAsientos >= inscriptos) {
            System.out.println("Inscriptos: " + inscriptos + ". Asientos disponibles: " + cantAsientos + ". Los asientos alcanzan");
        } else {
            System.out.println("Faltan " + ((cantAsientos - inscriptos) * -1) + " asientos para la demanda de hoy");
        }
    }
}