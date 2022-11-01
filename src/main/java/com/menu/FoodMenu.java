package com.menu;

public class FoodMenu {
	private int ID;
	private String ItemName;
	private float Price;
	
	
	public FoodMenu(int iD, String itemName, float price) {
		this.ID = iD;
		this.ItemName = itemName;
		this.Price = price;
	}


	public int getID() {
		return ID;
	}


	public String getItemName() {
		return ItemName;
	}


	public float getPrice() {
		return Price;
	}


	
	

}
