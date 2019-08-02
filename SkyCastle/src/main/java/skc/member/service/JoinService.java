package skc.member.service;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

public interface JoinService
{

	/* ---------- 공통부분 ---------- */
	Map<String, Object> getMemberInfo(Map<String, Object> map) throws Exception;
	List<Map<String, Object>> getMemberList(Map<String, Object> map) throws Exception;
	void deleteMember(Map<String, Object> map) throws Exception;
	boolean loginCheck(Map<String, Object> map, HttpSession session) throws Exception;


	/* ---------- 일반회원 ---------- */
	void insertMember(Map<String, Object> map) throws Exception;
	void updateMember(Map<String, Object> map) throws Exception;


	/* ---------- 파트너회원 ---------- */
	void insertMember_P(Map<String, Object> map) throws Exception;
	void updateMember_P(Map<String, Object> map) throws Exception;
}