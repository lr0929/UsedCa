package cn.ren.dao;
import cn.ren.pojo.Login;

/**
 * ��¼
 * @author ����
 *
 */
public interface ILoginDao {
	/**
	 * ��¼
	 * @param userName �û���
	 * @param verificationCode  
	 * @return �û�����
	 */
	Login login (String userName, String userPwd);
	
}
