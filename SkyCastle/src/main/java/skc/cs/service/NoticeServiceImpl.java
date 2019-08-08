package skc.cs.service;

import java.util.List;
import java.util.Map;
import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import skc.cs.dao.NoticeDAO;

@Service("noticeService")
public class NoticeServiceImpl implements NoticeService{
	
	@Resource(name="noticeDAO")
	private NoticeDAO noticeDAO;

	@Override
	public List<Map<String, Object>> selectcsList(Map<String, Object> map) throws Exception{
		return noticeDAO.selectcsList(map);
	}
	
	@Override
	public void insertNotice(Map<String,Object>map) throws Exception{
		noticeDAO.insertNotice(map);
	}
	
	@Override
	public Map<String, Object> selectcsNoticeDetail(Map<String, Object> map) throws Exception{
		Map<String, Object> resultMap = noticeDAO.selectcsNoticeDetail(map);
		return resultMap;
	}
	
	@Override
	public void updateNotice(Map<String,Object> map) throws Exception{
		noticeDAO.updateNotice(map);
	}
	
	public void deleteNotice(Map<String,Object> map) throws Exception{
		noticeDAO.deleteNotice(map);
	}
}
