package cn.hp.house.biz;

import java.util.List;

import cn.hp.house.dao.HouseDAO;
import cn.hp.house.entity.House;

public class HouseBIZ {
	HouseDAO hd = new HouseDAO();

	public List<House> getAllHouse() throws Exception {
		List<House> houseList = null;
		try {
			houseList = hd.getAllHouse();
		} catch (Exception ex) {
			throw new Exception(ex);
		}
		return houseList;
	}
}
