package skc.member.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import skc.common.dao.AbstractDAO;

@Repository("memberDAO") 
public class MemberDAO extends AbstractDAO
{
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> getMemberList(Map<String, Object> map) throws Exception
	{
		return (List<Map<String, Object>>) selectList("member.getMemberList", map);
	}
	@SuppressWarnings("unchecked")
	public Map<String, Object> getMemberInfo(Map<String, Object> map) throws Exception
	{
		return (Map<String, Object>) selectOne("member.getMemberInfo", map);
		//return pageMap;
		//List<Map<String, Object>> pageMap = (List<Map<String, Object>>) resultMap.get("result");
		//List<String> list = new ArrayList<String>(map.keySet());
		//List<String> list = new ArrayList<String>(map.values());
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
	public boolean loginCheck(Map<String, Object> map) throws Exception
	{
		Object name = selectOne("member.loginCheck", map);
		return (name == null) ? false : true;
	}
}