package cn.ren.service;

public interface ILoginService {
	/**
	 * �ж��û����������Ƿ���ȷ
	 * @param userName �û���
	 * @param userPwd ����
	 * @return ��¼�ɹ�ʧ��
	 */
	String login(String userName, String userPwd);
}
