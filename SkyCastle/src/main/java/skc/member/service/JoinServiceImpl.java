package skc.member.service;

import java.util.List;

import javax.annotation.Resource;

import skc.member.dao.MemberDAOImpl;
import skc.member.model.MemberDTO;
import skc.member.service.JoinService;

public class JoinServiceImpl implements JoinService
{
	@Resource
	private MemberDAOImpl memberDAO;
	
	@Override
	public List<MemberDTO> getMemberList() throws Exception
	{
		return memberDAO.getMemberList();
	}
	@Override
	public MemberDTO getMemberInfo(String Id) throws Exception
	{
		return memberDAO.getMemberInfo(Id);
	}
	@Override
	public void insertMember(MemberDTO memberDTO) throws Exception
	{
		memberDAO.insertMember(memberDTO);
	}
	@Override
	public void updateMember(MemberDTO memberDTO) throws Exception
	{
		memberDAO.updateMember(memberDTO);
	}
	@Override
	public void deleteMember(String Id) throws Exception
	{
		memberDAO.deleteMember(Id);
	}
}