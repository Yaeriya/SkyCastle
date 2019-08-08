package skc.board.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;
import skc.common.dao.AbstractDAO;

@Repository("boardFreeDAO") 
public class FreeBoardDAO extends AbstractDAO{ 
	
	@SuppressWarnings("unchecked") 
	public List<Map<String, Object>> 
	selectFreeBoardList(Map<String, Object> map) throws Exception{ 
		return (List<Map<String, Object>>)selectList("freeboard.selectFreeBoardList", map); 
	}
	
	public void insertFreeFile(Map<String, Object> map) throws Exception{
		insert("freeboard.insertFreeFile",map);
	}
	
	public void insertFreeBoard(Map<String,Object>map) throws Exception{
		insert("freeboard.insertFreeBoard",map);
	}
	public void updateFreeHitCnt(Map<String, Object>map) throws Exception{
		update("freeboard.updateFreeHitCnt",map);
	}
	@SuppressWarnings("unchecked")
	public Map<String, Object> selectFreeBoardDetail(Map<String, Object> map) throws Exception{
		return (Map<String, Object>) selectOne("freeboard.selectFreeBoardDetail",map);
	}
	public void updateFreeBoard(Map<String, Object> map) throws Exception{
		update("freeboard.updateFreeBoard", map);
	}
	public void deleteFreeBoard(Map<String,Object>map) throws Exception{
		delete("freeboard.deleteFreeBoard",map);		
	}
	public void deleteFreeFile(Map<String, Object>map) throws Exception{
		delete("freeboard.deleteFreeFile",map);
	}
	@SuppressWarnings("unchecked") 
	public List<Map<String, Object>> selectFreeFileList(Map<String, Object> map) throws Exception{
		return (List<Map<String, Object>>)selectList("freeboard.selectFreeFileList", map); }

}
