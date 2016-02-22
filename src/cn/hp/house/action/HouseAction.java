package cn.hp.house.action;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;

import cn.hp.house.biz.HouseBIZ;
import cn.hp.house.entity.House;

public class HouseAction {
	
	private House house = new House();
	HouseBIZ houseBiz = new HouseBIZ();
	private List<House> houseList = new ArrayList<House>();
	
	private int id;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public List<House> getHouseList() {
		return houseList;
	}

	public void setHouseList(List<House> houseList) {
		this.houseList = houseList;
	}	

	public House getHouse() {
		return house;
	}

	public void setHouse(House house) {
		this.house = house;
	}

	public String getAllHouse() throws Exception {
		try {
			
			this.setHouseList(houseBiz.getAllHouse());
		}
		catch (Exception ex) 
		{
			throw new Exception(ex);
		}
		return "success";
	}
	
	public String show() throws Exception{
		try{
			for(House h : houseBiz.getAllHouse()){
				System.out.println("list house -------------------"+h.getId());
				if(h.getId() == getId()){
					house = h;
					break;
				}
			}
			System.out.println("hgouse id --------------------------"+getId());
		}catch(Exception ex){
			throw new Exception(ex);
		}
		return "show";
	}
}
