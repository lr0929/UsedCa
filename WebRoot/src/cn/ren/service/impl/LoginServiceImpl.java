package cn.ren.service.impl;

/**
 * ��¼
 * liu
 * 
 */
import cn.ren.dao.impl.LoginDaoImpl;
import cn.ren.pojo.Login;
import cn.ren.service.ILoginService;

public class LoginServiceImpl implements ILoginService {

	@Override
	public String login(String userName, String userPwd) {
		LoginDaoImpl ldi = new LoginDaoImpl();
		Login login = ldi.login(userName, userPwd);
		if(login != null){
			return "��¼�ɹ�";
		}else{
			return "��¼ʧ��";
		}
	}
}
