package skc.member.service;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

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
	@Override
	@SuppressWarnings("unchecked")
	public boolean loginCheck(Map<String, Object> map, HttpSession session) throws Exception
	{
		boolean result = memberDAO.loginCheck(map);
		if(result)
		{	//true일 경우 세션에 등록
			Map<String, Object> map2 = (Map<String, Object>) memberDAO.getMemberInfo(map);
			//세션에 변수 등록
			session.setAttribute("userId", map2.get("MB_ID"));
			session.setAttribute("userNick", map2.get("MB_NICK"));
			session.setAttribute("userLevel", map2.get("MB_LEVEL"));
		}
		return result;
	}
}