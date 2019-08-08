package skc.board.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;
import skc.common.dao.AbstractDAO;

@Repository("boardParentDAO") 
public class ParentBoardDAO extends AbstractDAO{ 
	
	@SuppressWarnings("unchecked") 
	public List<Map<String, Object>> 
	selectParentBoardList(Map<String, Object> map) throws Exception{ 
		return (List<Map<String, Object>>)selectList("parentboard.selectParentBoardList", map); 
	}
	
	public void insertParentFile(Map<String, Object> map) throws Exception{
		insert("parentboard.insertParentFile",map);
	}
	
	public void insertParentBoard(Map<String,Object>map) throws Exception{
		insert("parentboard.insertParentBoard",map);
	}
	public void updateParentHitCnt(Map<String, Object>map) throws Exception{
		update("parentboard.updateParentHitCnt",map);
	}
	@SuppressWarnings("unchecked")
	public Map<String, Object> selectParentBoardDetail(Map<String, Object> map) throws Exception{
		return (Map<String, Object>) selectOne("parentboard.selectParentBoardDetail",map);
	}
	public void updateParentBoard(Map<String, Object> map) throws Exception{
		update("parentboard.updateParentBoard", map);
	}
	public void deleteParentBoard(Map<String,Object>map) throws Exception{
		delete("parentboard.deleteParentBoard",map);		
	}
	public void deleteParentFile(Map<String, Object>map) throws Exception{
		delete("parentboard.deleteParentFile",map);
	}
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> selectParentFileList(Map<String, Object> map) throws Exception{
		return (List<Map<String, Object>>)selectList("parentboard.selectParentFileList", map); }
}
