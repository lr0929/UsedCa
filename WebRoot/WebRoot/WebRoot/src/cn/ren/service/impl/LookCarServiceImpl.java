package cn.ren.service.impl;

import cn.ren.dao.impl.LookCarDaoImpl;
import cn.ren.pojo.UserInfo;
import cn.ren.service.ILookCarService;

public class LookCarServiceImpl implements ILookCarService{

	@Override
	public String userInfo(UserInfo ui) {
		LookCarDaoImpl ldi = new LookCarDaoImpl();
		int userinfo = ldi.getUserInfo(ui);
		
		if(userinfo > 0){
			return "�û���Ϣ��ӳɹ�";
		}else{
			return "�û���Ϣ���ʧ��";
		}
	}
}
