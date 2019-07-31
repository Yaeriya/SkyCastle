package skc.member.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import skc.common.common.CommandMap;
import skc.common.dao.AbstractDAO;

@Repository("memberDAO") 
public class MemberDAO extends AbstractDAO
{
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> getMemberList(CommandMap commandMap) throws Exception
	{
		return (List<Map<String, Object>>)selectList("member.getMemberList", commandMap);
	}
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> getMemberInfo(Map<String, Object> map) throws Exception
	{
		return (List<Map<String, Object>>)selectOne("member.getMemebrInfo", map);
	}
	public void insertMember(Map<String, Object> map) throws Exception
	{
		insert("member.insertMember", map);
	}
	public void updateMember(Map<String, Object> map) throws Exception
	{
		update("member.updateMember", map);
	}
	public void deleteMember(Map<String, Object> map) throws Exception
	{
		delete("member.deleteMember", map);
	}
}