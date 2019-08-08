package skc.common.dao;

import java.util.Map;

import org.springframework.stereotype.Repository;
@Repository("commonDAO") 
public class CommonDAO extends AbstractDAO{ 
	@SuppressWarnings("unchecked") 
	public Map<String, Object> selectFreeFileInfo(Map<String, Object> map) throws Exception{ 
		return (Map<String, Object>)selectOne("common.selectFreeFileInfo", map); 
		}
	@SuppressWarnings("unchecked") 
	public Map<String, Object> selectAcademyFileInfo(Map<String, Object> map) throws Exception{ 
		return (Map<String, Object>)selectOne("common.selectAcademyFileInfo", map); 
		}
	@SuppressWarnings("unchecked") 
	public Map<String, Object> selectParentFileInfo(Map<String, Object> map) throws Exception{ 
		return (Map<String, Object>)selectOne("common.selectParentFileInfo", map); 
		}
	@SuppressWarnings("unchecked") 
	public Map<String, Object> selectStudentFileInfo(Map<String, Object> map) throws Exception{ 
		return (Map<String, Object>)selectOne("common.selectStudentFileInfo", map); 
		}
}
