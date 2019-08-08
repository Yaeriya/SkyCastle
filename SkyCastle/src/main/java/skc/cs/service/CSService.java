package skc.cs.service;

import java.util.List;
import java.util.Map;

public interface CSService {
	List<Map<String, Object>> selectQList(List<Map<String, Object>> list) throws Exception;
	List<Map<String, Object>> selectAList(List<Map<String, Object>> list) throws Exception;
	//chexk
	List<Map<String, Object>> selectQNAList(Map<String, Object> map) throws Exception;
	//확인
	List<Map<String, Object>> selectQNum(Map<String, Object> map) throws Exception;
	void insertQ(Map<String, Object> map) throws Exception;
	void insertA(Map<String, Object> map) throws Exception;
	Map<String, Object> selectQnaDetail(Map<String, Object> map) throws Exception;
	void deleteQ(Map<String, Object> map) throws Exception;
	void deleteA(Map<String, Object> map) throws Exception;
}
