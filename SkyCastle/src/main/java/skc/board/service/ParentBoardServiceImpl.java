package skc.board.service;

import java.util.HashMap;
import java.util.List; 
import java.util.Map;
import java.util.logging.Logger;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.swing.text.html.HTMLDocument.Iterator;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import skc.board.dao.ParentBoardDAO;
import skc.common.util.FileUtils;

@Service("boardParentService") 
public class ParentBoardServiceImpl implements ParentBoardService{ 
	@Resource(name="boardParentDAO")
	private ParentBoardDAO boardDAO;
	
	@Resource(name="fileUtils")
	private FileUtils fileUtils;
	
	@Override 
	public List<Map<String, Object>> selectBoardList(Map<String, Object> map) throws Exception { 
		return boardDAO.selectParentBoardList(map); 
		}
	@Override
	public void insertBoard(Map<String, Object>map, HttpServletRequest request)throws Exception{
		boardDAO.insertParentBoard(map);
		
		List<Map<String,Object>> list = fileUtils.parseParentInsertFileInfo(map, request); 
		for(int i=0, size=list.size(); i<size; i++){ 
			boardDAO.insertParentFile(list.get(i));
		}
	}
	@Override
	public Map<String, Object> selectBoardDetail(Map<String, Object>map) throws Exception{
		boardDAO.updateParentHitCnt(map);
		Map<String, Object> resultMap = new HashMap<String,Object>();
		Map<String, Object> tempMap = boardDAO.selectParentBoardDetail(map); 
		resultMap.put("map", tempMap); 
		List<Map<String,Object>> list = boardDAO.selectParentFileList(map); 
		resultMap.put("list", list); 
		return resultMap;

	}
	@Override
	public void updateBoard(Map<String, Object> map) throws Exception{
		boardDAO.updateParentBoard(map);
	}
	@Override 
	public void deleteBoard(Map<String, Object> map) throws Exception {
		boardDAO.deleteParentFile(map);
		boardDAO.deleteParentBoard(map); 		
		}

}
