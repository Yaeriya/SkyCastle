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

import skc.board.dao.AcademyBoardDAO;
import skc.common.util.FileUtils;

@Service("boardAcademyService") 
public class AcademyBoardServiceImpl implements AcademyBoardService{ 
	@Resource(name="boardAcademyDAO")
	private AcademyBoardDAO boardDAO;
	
	@Resource(name="fileUtils")
	private FileUtils fileUtils;
	
	@Override 
	public List<Map<String, Object>> selectBoardList(Map<String, Object> map) throws Exception { 
		return boardDAO.selectAcademyBoardList(map); 
		}
	@Override
	public void insertBoard(Map<String, Object>map, HttpServletRequest request)throws Exception{
		boardDAO.insertAcademyBoard(map);
		
		List<Map<String,Object>> list = fileUtils.parseAcademyInsertFileInfo(map, request); 
		for(int i=0, size=list.size(); i<size; i++){ 
			boardDAO.insertAcademyFile(list.get(i));
		}
	}
	@Override
	public Map<String, Object> selectBoardDetail(Map<String, Object>map) throws Exception{
		boardDAO.updateAcademyHitCnt(map);
		Map<String, Object> resultMap = new HashMap<String,Object>();
		Map<String, Object> tempMap = boardDAO.selectAcademyBoardDetail(map); 
		resultMap.put("map", tempMap); 
		List<Map<String,Object>> list = boardDAO.selectAcademyFileList(map); 
		resultMap.put("list", list); 
		return resultMap;

	}
	@Override
	public void updateBoard(Map<String, Object> map) throws Exception{
		boardDAO.updateAcademyBoard(map);
	}
	@Override 
	public void deleteBoard(Map<String, Object> map) throws Exception {
		boardDAO.deleteAcademyFile(map);
		boardDAO.deleteAcademyBoard(map); 		
		}

}
