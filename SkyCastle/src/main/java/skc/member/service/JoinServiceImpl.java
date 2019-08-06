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
	/* ---------- 공통부분 ---------- */
	@Resource(name="memberDAO")
	private MemberDAO memberDAO;

	@Override
	public List<Map<String, Object>> getMemberList(Map<String, Object> map) throws Exception
	{
		return memberDAO.getMemberList(map);
	}
	@Override
	public List<Map<String, Object>> getPartnerList(Map<String, Object> map) throws Exception
	{
		return memberDAO.getPartnerList(map);
	}
	@Override
	public List<Map<String, Object>> getPartnerQue(Map<String, Object> map) throws Exception
	{
		return memberDAO.getPartnerQue(map);
	}
	@Override
	public List<Map<String, Object>> getMemberBlock(Map<String, Object> map) throws Exception
	{
		return memberDAO.getMemberBlock(map);
	}
	@Override
	public List<Map<String, Object>> getPartnerBlock(Map<String, Object> map) throws Exception
	{
		return memberDAO.getPartnerBlock(map);
	}
	@Override
	public Map<String, Object> getMemberInfo(Map<String, Object> map) throws Exception
	{
		return memberDAO.getMemberInfo(map);
	}
	@Override
	public void deleteMember(Map<String, Object> map) throws Exception
	{
		memberDAO.deleteMember(map);
	}
	@Override
	public void updateLevel(Map<String, Object> map) throws Exception
	{
		memberDAO.updateLevel(map);
	}
	@Override
	public boolean loginCheck(Map<String, Object> map, HttpSession session) throws Exception
	{
		boolean result = memberDAO.loginCheck(map);

		if(result)
		{	//true일 경우 세션에 등록
			Map<String, Object> smap = (Map<String, Object>) memberDAO.getMemberInfo(map);
			//세션에 변수 등록
			session.setAttribute("userId", smap.get("MB_ID"));
			session.setAttribute("userNick", smap.get("MB_NICK"));
			session.setAttribute("userLevel", smap.get("MB_LEVEL"));
		}
		return result;
	}

	/* ---------- 일반회원 ---------- */
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

	/* ---------- 파트너회원 ---------- */
	@Override
	public void insertMember_P(Map<String, Object> map) throws Exception {
		memberDAO.insertMember_P(map);
	}
	@Override
	public void updateMember_P(Map<String, Object> map) throws Exception {
		memberDAO.updateMember_P(map);
	}
	
	/* ---- 아이디,닉네임 중복확인 ---- */
	@Override
	public int selectMemberId(Map<String, Object> map) throws Exception
	{
		return memberDAO.selectMemberId(map);
	}
	
	@Override
	public int selectMemberNick(Map<String, Object> map) throws Exception
	{
		return memberDAO.selectMemberNick(map);
	}
}