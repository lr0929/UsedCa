package cn.ren.service.impl;

import cn.ren.dao.impl.CollectDaoImpl;
import cn.ren.service.ICollectService;

public class CollectServiceImpl implements ICollectService{

	@Override
	public String collectCar(String carid) {
		CollectDaoImpl cdi = new CollectDaoImpl();
		int collectCar = cdi.collectCar(carid);
		if(collectCar > 0){
			return "�ղسɹ�";
		}else{
			return "�ղ�ʧ��";
		}
	}

	@Override
	public String cancel(String carid) {
		CollectDaoImpl cdi = new CollectDaoImpl();
		int cancel = cdi.cancel(carid);
		if(cancel > 0){
			return "ȡ���ղسɹ���";
		}else{
			return "ȡ���ղ�ʧ�ܣ�";
		}
	}
}
