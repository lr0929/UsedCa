package cn.test;

import cn.ren.dao.BaseDao;
import cn.ren.service.impl.CollectServiceImpl;

public class CollectTest {
	public static void main(String[] args) {
		BaseDao.getConn();
//		System.out.println(1);
		CollectServiceImpl csi = new CollectServiceImpl();
		String collectCar = csi.collectCar("2");
		if(collectCar.equals("�ղسɹ�")){
			System.out.println("�ɹ�");
		}else{
			System.out.println("ʧ��");
		}
		
		
		String cancel = csi.cancel("1");
		if(cancel.equals("ȡ���ղسɹ���")){
			System.out.println("�ɹ�");
		}else{
			System.out.println("ʧ��");
		}
	}
}
