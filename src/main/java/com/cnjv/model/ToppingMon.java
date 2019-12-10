package com.cnjv.model;

public class ToppingMon {
	private int idToppingMon;
    private Topping topping;

    public ToppingMon(){}

    public ToppingMon(int idToppingMon, Topping topping) {
        this.idToppingMon = idToppingMon;
        this.topping = topping;
    }

    public int getIdToppingMon() {
        return idToppingMon;
    }

    public void setIdToppingMon(int idToppingMon) {
        this.idToppingMon = idToppingMon;
    }

    public Topping getTopping() {
        return topping;
    }

    public void setTopping(Topping topping) {
        this.topping = topping;
    }
}
