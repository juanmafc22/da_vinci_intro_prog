/*
5_ Existen dos reglas que identifican dos conjuntos de valores:
(a) El numero es de un solo digito
(b) El numero es impar
A partir de estas reglas, realizá un programa que permita ingresar un numero entero. El programa deberá
asignar el valor a las siguientes variables booleanas
- esDeUnSoloDigito
- esImpar
- estaEnAmbosGrupos
- noEstaEnNingunGrupo
El valor es “Verdadero” o “Falso”, según corresponda. Al terminar el programa, notificar el numero
ingresado y el estado de las cuatro variables.
*/

import java.util.Scanner;

public class Ejercicio05 {

  public static Scanner input = new Scanner(System.in);

  public static void main(String[] args) {

    boolean esDeUnSoloDigito = false;
    boolean esImpar = false;
    boolean estaEnAmbosGrupos = false;
    boolean noEstaEnNingunGrupo = false;
    int numero;

    // solicitar que se ingrese el número
    System.out.print("Ingresar un numero entero: ");
    numero = input.nextInt();

    if (numero >=-9 && numero <= 9) {
      esDeUnSoloDigito = true;
    }

    if (numero %2 != 0) {
      esImpar = true;
    }

    if (esDeUnSoloDigito == true && esImpar == true) {
      estaEnAmbosGrupos = true;
    }

    if (esDeUnSoloDigito == false && esImpar == false) {
      noEstaEnNingunGrupo = true;
    }


    System.out.println("Es de un solo digito: " + esDeUnSoloDigito);
    System.out.println("Es impar: " + esImpar);
    System.out.println("Es de un solo digito y es impar: " + estaEnAmbosGrupos);
    System.out.println("No está en ningún grupo : " + noEstaEnNingunGrupo);

  }

}
