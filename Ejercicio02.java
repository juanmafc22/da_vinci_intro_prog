// Realizar un programa que permita ingresar el ancho y el largo de un terreno en metros, ademas ingresar el valor del metro cuadrado.
// Mostrar: Cantidad total de la supercicie.
// Mostar: Valor total

// Importo el scanner util
import java.util.Scanner;

public class Ejercicio02 {

  public static Scanner input = new Scanner(System.in);

  public static void main(String[] args) {

    // Declaro las variables
    int largo;
    int ancho;
    int valorMetro;
    int superficieTotal;
    int valorTotal;

    // Le pido al usuario los valores de largo y ancho
    // también verifico que no hayan ingresaro valores igual o menor a cero
    // de largo y ancho para validar
    System.out.print("Ingresar el largo del terreno: ");
    largo = input.nextInt();

    while ( largo <=0 ) {
      System.out.print("Error. Ingresar un largo mayor a cero: ");
      largo = input.nextInt();
    } 

    System.out.print("Ingresar el ancho del terreno: ");
    ancho = input.nextInt();
    while ( ancho <= 0) {
      System.out.print("Error. Ingresar un ancho mayor a cero: ");
      ancho = input.nextInt();
    }

    System.out.print("Ingresar el valor del metro cuadrado: ");
    valorMetro = input.nextInt();
    while ( valorMetro <= 0) {
      System.out.print("Error. Ingresar un valor de metro mayor a cero: ");
      valorMetro = input.nextInt();
    }
    // Realizo los calculos
    superficieTotal = largo * ancho;
    valorTotal = valorMetro * superficieTotal;

    System.out.println("La superficie total del terreno es de " + superficieTotal + " metros cuadrados");
    System.out.println("El valor total del terreno es de $" + valorTotal);

  }
}
