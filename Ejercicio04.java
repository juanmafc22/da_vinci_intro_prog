// 4_ Debe crear un programa que permita ingresar una edad (entre 1 y 99 años) y un género (‘F’, ‘M’, ‘X’).
// En caso de ingrsar valores erróneos (edad fuera de rango, o generos inexistentes), informar de esa
// situación mostrando un mensaje y terminar el programa. Si todos los datos fueron bien ingresados, el
// programa debe ser capaz de indicar, sabiendo que las mujeres se jubilan a los 60 años o mas, los hombres
// con 65 años o mas, para los no binarios establecemos un promedio de ambas edades.


// Importo el Scanner util
import java.util.Scanner;

// public - se puede acceder a esta clase desde cualquier otra clase en el programa
// class - es el keyword para declarar una clase en Java. Una "clase" es el blueprint 
// para crear objetos. Los objetos son instancias de objetos
public class Ejercicio04 {

  public static Scanner input = new Scanner(System.in);


  // sirve para definir el punto de entrada principal del programa en Java
  // public - se accede a él desde cualquier lugar en el programa
  // static - ?
  // void - no retorna ningún valore
  // main - el nombre del método
  // String[] - parámetros que se le pasan a main, un array de objetos String
  public static void main(String[] args) {

    int edad, promedioEdad;
    String genero, generoUpperCase;
    String felicitacion = "Felicitaciones!!!! Puede jubilarse!";
    String felicitacionNoBinaria = "Felicitaciones!!!! Puedx jubilarsx!";
    boolean edadVerificada = false;
    boolean generoVerificado = false;
    promedioEdad = (65 + 60) / 2;

    System.out.print("Ingrese su edad: ");
    edad = input.nextInt();

    if (edad >=1 && edad <= 99) {
      edadVerificada = true;
      input.nextLine();
    }     

    System.out.print("Ingrese su genero. Ingresar solo 'M', 'F' o 'X': ");
    genero = input.nextLine();
    // convertir en Uppercase
    generoUpperCase = genero.toUpperCase();

    /* 
    if (generoUpperCase == "M" || generoUpperCase == "F" || generoUpperCase == "X") {
      generoVerificado = true;
      input.nextLine();
    }
    */

    if (generoUpperCase.equals("M") || generoUpperCase.equals("F") || generoUpperCase.equals("X")) {
      generoVerificado = true;
      input.nextLine();
    }

    System.out.println("La edad: " + edad);
    System.out.println("La edad verificada: " + edadVerificada);
    System.out.println("El genero: " + generoUpperCase);
    System.out.println("El genero verificado: " + generoVerificado);

    if (edadVerificada == true && generoVerificado == true) {
      if (generoUpperCase.equals("M")) {
        if (edad < 65) {
          System.out.println("Estimado. No puede jubilarse, le faltan " + (65 - edad) + " años para jubilarse") ;
        } else {
          System.out.println(felicitacion);
        }
      } else if (generoUpperCase.equals("F")) {
        if (edad < 60) {
          System.out.println("Estimada. No puede jubilarse, le faltan " + (60 - edad) + " años para jubilarse");
        } else {
          System.out.println(felicitacion);
        }
      } else {
        if (edad < promedioEdad) {
          System.out.println("Estimadx. No puedx jubilarsx, lx faltan " + (promedioEdad - edad) + " años para jubilarsx");
        } else {
          System.out.println(felicitacionNoBinaria);
        }
      }
    } else {
      System.out.println("No se pudo ingresar. Edad y género NO validados");
    }




  }


}

