package cn.ren.dao;

import java.util.List;

import cn.ren.pojo.CarInfo;
/**
 * �ҳ�
 * @author ����
 *
 */
public interface IFindCarDao {
	int getCount();
	List<CarInfo> getCar(int index,int pageSize);
}
