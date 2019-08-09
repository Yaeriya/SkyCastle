package skc.common.service;

import java.util.Map;


import javax.annotation.Resource; 
import org.springframework.stereotype.Service;
import skc.common.dao.CommonDAO; 

@Service("commonService") 
public class CommonServiceImpl implements CommonService { 

	@Resource(name="commonDAO") 
	private CommonDAO commonDAO; 

	@Override 
	public Map<String, Object> selectFreeFileInfo(Map<String, Object> map) throws Exception { 
		return commonDAO.selectFreeFileInfo(map); 
	}

	public Map<String, Object> selectAcademyFileInfo(Map<String, Object> map) throws Exception{
		return commonDAO.selectAcademyFileInfo(map);
	}

	public Map<String, Object> selectParentFileInfo(Map<String, Object> map) throws Exception{
		return commonDAO.selectParentFileInfo(map);
	}

	public Map<String, Object> selectStudentFileInfo(Map<String, Object> map) throws Exception{
		return commonDAO.selectStudentFileInfo(map);
	}

}
