package skc.board.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;
import skc.common.dao.AbstractDAO;

@Repository("boardStudentDAO") 
public class StudentBoardDAO extends AbstractDAO{ 
	
	@SuppressWarnings("unchecked") 
	public List<Map<String, Object>> 
	selectStudentBoardList(Map<String, Object> map) throws Exception{ 
		return (List<Map<String, Object>>)selectList("studentboard.selectStudentBoardList", map); 
	}
	
	public void insertStudentFile(Map<String, Object> map) throws Exception{
		insert("studentboard.insertStudentFile",map);
	}
	
	public void insertStudentBoard(Map<String,Object>map) throws Exception{
		insert("studentboard.insertStudentBoard",map);
	}
	public void updateStudentHitCnt(Map<String, Object>map) throws Exception{
		update("studentboard.updateStudentHitCnt",map);
	}
	@SuppressWarnings("unchecked")
	public Map<String, Object> selectStudentBoardDetail(Map<String, Object> map) throws Exception{
		return (Map<String, Object>) selectOne("studentboard.selectStudentBoardDetail",map);
	}
	public void updateStudentBoard(Map<String, Object> map) throws Exception{
		update("studentboard.updateStudentBoard", map);
	}
	public void deleteStudentBoard(Map<String,Object>map) throws Exception{
		delete("studentboard.deleteStudentBoard",map);		
	}
	public void deleteStudentFile(Map<String, Object>map) throws Exception{
		delete("studentboard.deleteStudentFile",map);
	}
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> selectStudentFileList(Map<String, Object> map) throws Exception{
		return (List<Map<String, Object>>)selectList("studentboard.selectStudentFileList", map); }
}
