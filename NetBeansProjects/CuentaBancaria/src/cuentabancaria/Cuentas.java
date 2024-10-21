/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package cuentabancaria;

public class Cuentas {
    
    private String CBU;
    private String alias;
    private double saldo;
    
    public void getInfo() {
        System.out.println("El CBU: " + CBU);
        System.out.println("El alias: " + alias);
        System.out.println("El saldo: " + saldo);
    }
    
    public void establecerSaldoInicial(double monto) {
        if (saldo == 0.0) {
            saldo += monto;
        }
    }
    
    public double obtenerSaldo() {
        return saldo;
    }
    
    public void acreditarSaldo(double monto) {
        saldo += monto;
    }
    
    public void debitarSaldo(double monto) {
        if (monto <= saldo) {
            saldo -= monto;
        }
    }
    
    
}
 