package skc.common.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;
import skc.common.dao.AbstractDAO;

@Repository("boardDAO") 
public class BoardDAO extends AbstractDAO{ 
	@SuppressWarnings("unchecked") 
	public List<Map<String, Object>> 
	selectBoardList(Map<String, Object> map) throws Exception{ 
		return (List<Map<String, Object>>)selectList("board.selectBoardList", map); 
	} 
}

