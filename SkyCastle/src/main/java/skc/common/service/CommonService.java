
package skc.common.service;

import java.util.Map;

public interface CommonService {
	Map<String, Object> selectFreeFileInfo(Map<String, Object> map) throws Exception;
	Map<String, Object> selectAcademyFileInfo(Map<String, Object> map) throws Exception;
	Map<String, Object> selectParentFileInfo(Map<String, Object> map) throws Exception;
	Map<String, Object> selectStudentFileInfo(Map<String, Object> map) throws Exception;
}