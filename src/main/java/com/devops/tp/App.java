package com.devops.tp;

public class App {
    public static void main(String[] args) {
        Calculator calc = new Calculator();
        System.out.println("=== Calculator App ===");
        System.out.println("5 + 3 = " + calc.add(5, 3));
        System.out.println("5 - 3 = " + calc.subtract(5, 3));
        System.out.println("5 * 3 = " + calc.multiply(5, 3));
        System.out.println("5 / 3 = " + calc.divide(5, 3));
        System.out.println("Calcul termine avec succes.");
    }
}
