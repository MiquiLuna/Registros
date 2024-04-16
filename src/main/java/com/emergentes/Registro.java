package com.emergentes;

import java.util.Date;

public class Registro {
    private int id;
    private Date fecha;
    private String nombre;
    private String apellidos;
    private String turno;
    private String seminario;

    public Registro() {
        this.id = 0;
        this.fecha = new Date();
        this.nombre ="";
        this.apellidos ="";
        this.turno ="";
        this.seminario ="";
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Date getFecha() {
        return fecha;
    }

    public void setFecha(Date fecha) {
        this.fecha = fecha;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApellidos() {
        return apellidos;
    }

    public void setApellidos(String apellidos) {
        this.apellidos = apellidos;
    }

    public String getTurno() {
        return turno;
    }

    public void setTurno(String turno) {
        this.turno = turno;
    }

    public String getSeminario() {
        return seminario;
    }

    public void setSeminario(String seminario) {
        this.seminario = seminario;
    }

    @Override
    public String toString() {
        return "Seminario{" + "id=" + id + ", fecha=" + fecha + ", nombre=" + nombre + ", apellidos=" + apellidos + ", turno=" + turno + ", seminario=" + seminario + '}';
    } 
}
