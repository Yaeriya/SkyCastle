package skc.member.service;

import java.util.List;
import java.util.Map;

import skc.common.common.CommandMap;


public interface JoinService
{
	List<Map<String, Object>> getMemberList(CommandMap commandMap) throws Exception;
	List<Map<String, Object>> getMemberInfo(Map<String, Object> map) throws Exception;
	void insertMember(Map<String, Object> map) throws Exception;
	void updateMember(Map<String, Object> map) throws Exception;
	void deleteMember(Map<String, Object> map) throws Exception;
}