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

import skc.board.dao.StudentBoardDAO;
import skc.common.util.FileUtils;

@Service("boardStudentService") 
public class StudentBoardServiceImpl implements StudentBoardService{ 
	@Resource(name="boardStudentDAO")
	private StudentBoardDAO boardDAO;
	
	@Resource(name="fileUtils")
	private FileUtils fileUtils;
	
	@Override 
	public List<Map<String, Object>> selectBoardList(Map<String, Object> map) throws Exception { 
		return boardDAO.selectStudentBoardList(map); 
		}
	@Override
	public void insertBoard(Map<String, Object>map, HttpServletRequest request)throws Exception{
		boardDAO.insertStudentBoard(map);
		
		List<Map<String,Object>> list = fileUtils.parseStudentInsertFileInfo(map, request); 
		for(int i=0, size=list.size(); i<size; i++){ 
			boardDAO.insertStudentFile(list.get(i));
		}
	}
	@Override
	public Map<String, Object> selectBoardDetail(Map<String, Object>map) throws Exception{
		boardDAO.updateStudentHitCnt(map);
		Map<String, Object> resultMap = new HashMap<String,Object>();
		Map<String, Object> tempMap = boardDAO.selectStudentBoardDetail(map); 
		resultMap.put("map", tempMap); 
		List<Map<String,Object>> list = boardDAO.selectStudentFileList(map); 
		resultMap.put("list", list); 
		return resultMap;

	}
	@Override
	public void updateBoard(Map<String, Object> map) throws Exception{
		boardDAO.updateStudentBoard(map);
	}
	@Override 
	public void deleteBoard(Map<String, Object> map) throws Exception {
		boardDAO.deleteStudentFile(map);
		boardDAO.deleteStudentBoard(map); 		
		}

}
