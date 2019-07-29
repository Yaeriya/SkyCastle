package skc.member.service;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import skc.member.dao.MemberDAO;

@Service("joinService")
public class JoinServiceImpl implements JoinService
{
	@Resource(name="memberDAO")
	private MemberDAO memberDAO;
	
	@Override
	public List<Map<String, Object>> getMemberList(Map<String, Object> map) throws Exception
	{
		return memberDAO.getMemberList(map);
	}
	@Override
	public List<Map<String, Object>> getMemberInfo(Map<String, Object> map) throws Exception
	{
		return memberDAO.getMemberInfo(map);
	}
	@Override
	public void insertMember(Map<String, Object> map) throws Exception
	{
		memberDAO.insertMember(map);
	}
	@Override
	public void updateMember(Map<String, Object> map) throws Exception
	{
		memberDAO.updateMember(map);
	}
	@Override
	public void deleteMember(Map<String, Object> map) throws Exception
	{
		memberDAO.deleteMember(map);
	}
}