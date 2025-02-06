package com.mycompany.ejercicio_11;

import com.mycompany.ejercicio_11.Interfaces.Icomer;
import com.mycompany.ejercicio_11.Interfaces.Iolfatear;

public class Gato extends Animal implements Icomer, Iolfatear {

    public Gato(String nombre, int edad) {
        super(nombre, edad);
    }
    @Override
    public void emitirSonido() {
        System.out.println("Miau, soy un gato");
    }

    @Override
    public int getEdad() {
        return super.getEdad();
    }

    @Override
    public String getNombre() {
        return super.getNombre();
    }

    @Override
    public void setEdad(int edad) {
        super.setEdad(edad);
    }

    @Override
    public void setNombre(String nombre) {
        super.setNombre(nombre);
    }
    @Override
    public String olfatear() {
        return ("Estoy olfateando a un pescado");
    }
    @Override
    public void comer() {
        System.out.println("Estoy comiendo pescados");
    }
    
}
