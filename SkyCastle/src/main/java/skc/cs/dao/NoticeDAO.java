package skc.cs.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;
import skc.common.dao.AbstractDAO;

@Repository("noticeDAO")
public class NoticeDAO extends AbstractDAO{

	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> selectcsList(Map<String, Object> map) throws Exception{ 
		return (List<Map<String, Object>>)selectList("notice.selectcsList", map); 
	}
	
	public void insertNotice(Map<String,Object>map) throws Exception{
		insert("notice.insertNotice",map);
	}
	
	@SuppressWarnings("unchecked")
	public Map<String, Object> selectcsNoticeDetail(Map<String, Object> map) throws Exception{
		return (Map<String, Object>) selectOne("notice.selectcsNoticeDetail", map);
	}
	public void updateNotice(Map<String, Object> map) throws Exception{
		update("notice.updateNotice", map);
	}
	public void deleteNotice(Map<String, Object> map) throws Exception{
		delete("notice.deleteNotice", map);
	}
}