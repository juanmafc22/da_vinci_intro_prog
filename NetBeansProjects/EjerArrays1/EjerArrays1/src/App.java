import java.util.Scanner;

public class App {

    final static Scanner input = new Scanner(System.in);
    final static int CANT_NUMEROS = 8;
    public static void main(String[] args) throws Exception {
        

        int suma = 0;
        int contMayor50 = 0;
        int contNum36 = 0;
        int[] numeros = new int[CANT_NUMEROS];

        for (int i = 0; i < CANT_NUMEROS; i++) {
            double numero = Math.random();
            int entero = (int) (numero * 101);
            numeros[i] = entero;
            suma += numeros[i];
            if (numeros[i] > 50) {
                contMayor50++;
            }
            if (numeros[i] == 36) {
                contNum36++;
            }
        }

        System.out.println("Los numeros");
        for (int i = 0; i < numeros.length; i++) {
            System.out.println(numeros[i]);
            
        }
        System.out.println("La suma: " + suma);
        System.out.println("Los mayores a 50: " + contMayor50);
        System.out.println("Los iguales a 36: " + contNum36);








    }
}
