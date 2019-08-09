package skc.board.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;
import skc.common.dao.AbstractDAO;

@Repository("boardAcademyDAO") 
public class AcademyBoardDAO extends AbstractDAO { 

	@SuppressWarnings("unchecked") 
	public List<Map<String, Object>> 
	selectAcademyBoardList(Map<String, Object> map) throws Exception { 
		return (List<Map<String, Object>>)selectList("academyboard.selectAcademyBoardList", map); 
	}

	public void insertAcademyFile(Map<String, Object> map) throws Exception {
		insert("academyboard.insertAcademyFile",map);
	}

	public void insertAcademyBoard(Map<String,Object>map) throws Exception {
		insert("academyboard.insertAcademyBoard",map);
	}

	public void updateAcademyHitCnt(Map<String, Object>map) throws Exception {
		update("academyboard.updateAcademyHitCnt",map);
	}

	@SuppressWarnings("unchecked")
	public Map<String, Object> selectAcademyBoardDetail(Map<String, Object> map) throws Exception {
		return (Map<String, Object>) selectOne("academyboard.selectAcademyBoardDetail",map);
	}

	public void updateAcademyBoard(Map<String, Object> map) throws Exception {
		update("academyboard.updateAcademyBoard", map);
	}

	public void deleteAcademyBoard(Map<String,Object>map) throws Exception {
		delete("academyboard.deleteAcademyBoard",map);		
	}

	public void deleteAcademyFile(Map<String, Object>map) throws Exception {
		delete("academyboard.deleteAcademyFile",map);
	}

	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> selectAcademyFileList(Map<String, Object> map) throws Exception {
		return (List<Map<String, Object>>)selectList("academyboard.selectAcademyFileList", map); }
}
