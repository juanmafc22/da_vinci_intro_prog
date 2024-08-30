// 3_ Realizar un programa que permita ingresar lo siguiente:
// Ingresar el nombre de tres personas y su aporte en valor decimal
// Calcular el valor total aportado
// Calcular el porcentaje aportado de cada persona (indicando nombre y porcentaje)

import java.util.Scanner;

public class Ejercicio03 {

  public static Scanner input = new Scanner(System.in);

  public static void main(String[] args) {

    // Crear las variables
    String persona1, persona2, persona3;
    Double importePersona1, importePersona2, importePersona3;
    Double importeTotal = 0.00;

    // Solicitar nombre persona1, obtener monto válido y sumar al total
    System.out.print("Ingresar nombre de persona 1: ");
    persona1 = input.nextLine();
    importePersona1 = obtenerMontoValido(persona1);
    importeTotal = importeTotal + importePersona1;

    // Solicitar nombre persona2, obtener monto válido y sumar al total
    System.out.print("Ingresar nombre de persona 2: ");
    persona2 = input.nextLine();
    importePersona2 = obtenerMontoValido(persona2);
    importeTotal = importeTotal + importePersona2;

    // Solicitar nombre persona3, obtener monto válido y sumar al total
    System.out.print("Ingresar nombre de persona 3: ");
    persona3 = input.nextLine();
    importePersona3 = obtenerMontoValido(persona3);
    importeTotal = importeTotal + importePersona3;

    // System.out.println(persona1 + " aportó $" + importePersona1);
    // System.out.println(persona2 + " aportó $" + importePersona2);
    // System.out.println(persona3 + " aportó $" + importePersona3);
    System.out.println("El importe total recaudado es $" + importeTotal);

    System.out.println(persona1 + " aportó " + calcularPorcentaje(importePersona1, importeTotal) + "%");
    System.out.println(persona2 + " aportó " + calcularPorcentaje(importePersona2, importeTotal) + "%");
    System.out.println(persona3 + " aportó " + calcularPorcentaje(importePersona3, importeTotal) + "%");

  }

  // Función para obtener un monto válido
  public static double obtenerMontoValido(String nombrePersona) {

    double importe;

    System.out.print("Monto que aportó " + nombrePersona + ": ");
    importe = input.nextDouble();

    while (importe<0) {
      System.out.print("Error. Monto debe ser mayor a cero: ");
      importe = input.nextDouble();
    }
    input.nextLine();

    return importe;
  }

  // Función para calcular el porcentaje aportado por cada persona
  public static double calcularPorcentaje(Double monto, Double total) {

    double porcentaje = monto / total * 100;

    return porcentaje;
  }
}


