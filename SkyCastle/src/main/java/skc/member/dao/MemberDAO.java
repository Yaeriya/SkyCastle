package skc.member.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import skc.common.dao.AbstractDAO;

@Repository("memberDAO") 
public class MemberDAO extends AbstractDAO
{
	/* ---------- 공통부분 ---------- */
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> getMemberList(Map<String, Object> map) throws Exception
	{
		return (List<Map<String, Object>>) selectList("member.getMemberList", map);
	}
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> getPartnerList(Map<String, Object> map) throws Exception
	{
		return (List<Map<String, Object>>) selectList("member.getPartnerList", map);
	}
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> getPartnerQue(Map<String, Object> map) throws Exception
	{
		return (List<Map<String, Object>>) selectList("member.getPartnerQue", map);
	}

	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> getBlockList(Map<String, Object> map) throws Exception
	{
		return (List<Map<String, Object>>) selectList("member.getBlockList", map);
	}
	@SuppressWarnings("unchecked")
	public Map<String, Object> getMemberInfo(Map<String, Object> map) throws Exception
	{
		return (Map<String, Object>) selectOne("member.getMemberInfo", map);
	}
	
	public void deleteMember(Map<String, Object> map) throws Exception
	{
		delete("member.deleteMember", map);
	}
	
	public boolean loginCheck(Map<String, Object> map) throws Exception
	{
		Object name = selectOne("member.loginCheck", map);
		return (name == null) ? false : true;
	}
	
	public void memberLimit(Map<String, Object> map) throws Exception
	{
		update("member.memberLimit", map);
	}
	
	/* ---------- 일반회원 ---------- */
	public void insertMember(Map<String, Object> map) throws Exception
	{
		insert("member.insertMember", map);
	}
	
	public void updateMember(Map<String, Object> map) throws Exception
	{
		update("member.updateMember", map);
	}
	
	
	/* ---------- 파트너회원 ---------- */
	public void insertMember_P(Map<String, Object> map) {
		insert("member.insertMember_P", map);		
	}
	
	public void updateMember_P(Map<String, Object> map) throws Exception
	{
		update("member.updateMember_P", map);
	}
	
	/* - 아이디,닉네임 중복확인입니다 - */
	@SuppressWarnings("unchecked")
	public int selectMemberId(Map<String, Object> map) throws Exception
	{
		Map<String, Object> resultMap = (Map<String, Object>)selectOne("member.selectMemberId",map);
		
		int result = Integer.valueOf(String.valueOf(resultMap.get("RESULT")));
		
		return result;
	}
	
	@SuppressWarnings("unchecked")
	public int selectMemberNick(Map<String, Object> map) throws Exception
	{
		Map<String, Object> resultMap = (Map<String, Object>)selectOne("member.selectMemberNick",map);
		
		int result = Integer.valueOf(String.valueOf(resultMap.get("RESULT")));
		
		return result;
	}
}