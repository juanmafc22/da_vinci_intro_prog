/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */
package cuentabancaria;

import java.util.Scanner;

public class CuentaBancaria {


    public static void main(String[] args) {

        Scanner input = new Scanner(System.in);
        Cuentas miCuenta = new Cuentas();
        
        miCuenta.getInfo();
        
        miCuenta.establecerSaldoInicial(4000);
        miCuenta.acreditarSaldo(6000);
        
        double elSaldo = miCuenta.obtenerSaldo();
        
        System.out.println("El saldo: " + miCuenta.obtenerSaldo());
        System.out.println("Trate de debitar 33000");
        miCuenta.debitarSaldo(33000);
        System.out.println("El saldo post intento de debito de 33000: " + elSaldo);
        System.out.println("Ahora intento debitar 10000 para dejar todo en cero");
        miCuenta.debitarSaldo(9000);
        System.out.println("Saldo que debería quedar en 0: " + miCuenta.obtenerSaldo());
    }
    
}
