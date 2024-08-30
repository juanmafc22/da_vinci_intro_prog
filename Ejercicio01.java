// Crear un programa que permita ingresar dos numeros naturales. Mostar
// el resultado con las 4 operaciones matemáticas (+, -, *, /)

import java.util.Scanner;

public class Ejercicio01 {

  public static Scanner input = new Scanner(System.in);

  public static void main(String[] args) {

    // Creo las variables
    int numero1;
    int numero2;
    int operacion;
    int suma;
    int resta;
    int multiplicacion;
    double division;
    final String ERROR_CERO = "No se puede dividir por cero";
    

    // Pido al usuario que ingrese los números
    System.out.print("Ingrese el primer numero: ");
    numero1 = input.nextInt();

    System.out.print("Ingrese el segundo numero: ");
    numero2 = input.nextInt();

    System.out.print("Ingresar la operación a realizar: '1: +', '2: -', '3: *' ó '4: /': ");
    operacion = input.nextInt();

    // Me aseguro que solo ingrese 1, 2, 3 o 4
    while (operacion != 1 &&  operacion != 2 && operacion != 3 && operacion != 4) {
      System.out.print("Error. Solo ingresar 1, 2, 3 o 4: ");
      operacion = input.nextInt();
    }

    // Aplico las operaciones matematicas
    suma = numero1 + numero2;
    resta = numero1 - numero2;
    multiplicacion = numero1 * numero2;

    switch (operacion) {
      case 1:
        System.out.println(numero1 + " + " + numero2 + " = " + suma);
        break;
      case 2:
        System.out.println(numero1 + " - " + numero2 + " = " + resta);
        break;
      case 3:
        System.out.println(numero1 + " * " + numero2 + " = " + multiplicacion);
        break;
      case 4:
        if (numero2 != 0) {
          division = (double) numero1 / numero2;
          System.out.println(numero1 + " / " + numero2 + " = " + division);
        } else {
          System.out.println(ERROR_CERO);
        }
        break;
      default:
    }
  }
}



