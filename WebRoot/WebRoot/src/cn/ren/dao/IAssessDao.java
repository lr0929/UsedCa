package cn.ren.dao;

import java.util.List;

import cn.ren.pojo.CarInfo;

/**
 * ����
 * @author 
 *
 */

public interface IAssessDao {
	int search(String brand, String car_license, String range, String area);
	
	List<CarInfo> chaCar(CarInfo car);

}
