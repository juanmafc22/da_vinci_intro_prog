
import java.util.Scanner;

public class App {

    public final static Scanner input = new Scanner(System.in);
    public final static int CANT_ALUMNOS = 5;

    public static void main(String[] args) throws Exception {

        int[] notasA = new int[CANT_ALUMNOS];
        int[] notasB = new int[CANT_ALUMNOS];

        imprimirTitulo("A");
        

    }

    static void imprimirTitulo(String mensaje) {
        System.out.println("Cargar las notas del curso " + mensaje);
    }
}
