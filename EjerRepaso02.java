/* 
Realiza un programa que permita ingresar el monto total de las
ventas realizadas para un vendedor durante el mes, de quien se
sabe que gana un sueldo fijo de 340000 pesos más el 16 por
ciento del monto total vendido. Con tales datos debes calcular y
mostrar el importe a cobrar por el vendedor.
*/
import java.util.Scanner;

public class EjerRepaso02 {

    public static Scanner input = new Scanner(System.in);


    public static void main(String[] args) {

        int sueldoFijo = 340000;
        int ventasTotales;
        int sueldoVariable;
        int sueldoTotal;

        // Preguntar el monto de las ventas totales
        System.out.print("Ingresar monto de ventas totales: $");
        ventasTotales = input.nextInt();

        // calcular el sueldo variable
        sueldoVariable = ventasTotales * 16/100;

        // calcular el sueldo total
        sueldoTotal = sueldoFijo + sueldoVariable;

        System.out.println("El monto total a cobrar: " + sueldoFijo + " + " + sueldoVariable + " = " + " $" + sueldoTotal);

        
        


    }




}