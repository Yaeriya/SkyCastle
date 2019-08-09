package skc.board.service;

import java.util.HashMap;
import java.util.List; 
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;

import skc.board.dao.FreeBoardDAO;
import skc.common.util.FileUtils;

@Service("boardFreeService") 
public class FreeBoardServiceImpl implements FreeBoardService{ 
	@Resource(name="boardFreeDAO")
	private FreeBoardDAO boardDAO;
	
	@Resource(name="fileUtils")
	private FileUtils fileUtils;
	
	@Override 
	public List<Map<String, Object>> selectBoardList(Map<String, Object> map) throws Exception { 
		return boardDAO.selectFreeBoardList(map); 
		}
	@Override
	public void insertBoard(Map<String, Object>map, HttpServletRequest request)throws Exception{
		boardDAO.insertFreeBoard(map);
		
		List<Map<String,Object>> list = fileUtils.parseFreeInsertFileInfo(map, request); 
		for(int i=0, size=list.size(); i<size; i++){ 
			boardDAO.insertFreeFile(list.get(i));
		}
	}
	@Override
	public Map<String, Object> selectBoardDetail(Map<String, Object>map) throws Exception{
		boardDAO.updateFreeHitCnt(map);
		Map<String, Object> resultMap = new HashMap<String,Object>();
		Map<String, Object> tempMap = boardDAO.selectFreeBoardDetail(map); 
		resultMap.put("map", tempMap); 
		List<Map<String,Object>> list = boardDAO.selectFreeFileList(map); 
		resultMap.put("list", list); 
		return resultMap;

	}
	@Override
	public void updateBoard(Map<String, Object> map) throws Exception{
		boardDAO.updateFreeBoard(map);
	}
	@Override 
	public void deleteBoard(Map<String, Object> map) throws Exception {
		boardDAO.deleteFreeFile(map);
		boardDAO.deleteFreeBoard(map); 		
		}

}
