package cn.ren.dao;

import java.util.List;

import cn.ren.pojo.CarInfo;
/**
 * Dao���򳵽ӿ�
 * @author ������
 *
 */
public interface IBuyCarDao {
	/**
	 * �򳵣�ɾ�����ݿ��е�һ̨��
	 * @param car  ������Ϣ
	 * @return ɾ��������
	 */
	int delCar(String carinfo_carid);
}
