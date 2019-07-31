package skc.detail.service;

import java.util.List;
import java.util.Map;

import skc.common.common.CommandMap;

public interface DetailService
{
	List<Map<String, Object>> getDetailList(CommandMap commandMap) throws Exception;
	List<Map<String, Object>> getDetailInfo(Map<String, Object> map) throws Exception;
	void insertDetail(Map<String, Object> map) throws Exception;
	void updateDetail(Map<String, Object> map) throws Exception;
	void deleteDetail(Map<String, Object> map) throws Exception;
}