package cn.ren.dao;

import java.util.List;

import cn.ren.pojo.CarInfo;

/**
 * Dao�㣺����
 * @author
 *
 */
public interface ISrearchDao {
	/**
	 * ��������������
	 * @return ����
	 */
	 int count();
	 /**
	  * ��ҳ
	  * @param index ��ǰҳ
	  * @param pagesize ÿҳ��ʾ����Ϣ��
	  * @param input �û�����
	  * @return ÿҳ��Ϣ�ļ���
	  */
	 List<CarInfo> getPageInfo(int index,int pagesize,String input);
	 
}
