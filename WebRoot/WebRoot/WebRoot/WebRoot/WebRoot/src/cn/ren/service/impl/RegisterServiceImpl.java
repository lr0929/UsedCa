package cn.ren.service.impl;

import cn.ren.dao.impl.RegisterDaoImpl;
import cn.ren.pojo.UserInfo;
import cn.ren.service.IRegisterService;

public class RegisterServiceImpl implements IRegisterService {
	
	@Override
	public String register(String userName, String userPwd) {
		String isuname = isusername(userName);
		if(isuname.equals("�Ѵ���")){
			RegisterDaoImpl rdi = new RegisterDaoImpl();
			int count = rdi.register(userName, userPwd);
			String a = null;
			if(count < 0){
				return "���û����ѱ�ע��";
			}
		}
		return "����ע��";
	}
	@Override
	public String isusername(String ui_userid) {
		RegisterDaoImpl rdi = new RegisterDaoImpl();
		String str = rdi.isUserInfo(ui_userid);
		if (str == null) {
			return "����ע��";
		}else{
			return "�Ѵ���";
		}
		
	}
}
