package skc.member.service;

import java.util.List;

import skc.member.model.MemberDTO;

public interface JoinService
{
	public List<MemberDTO> getMemberList() throws Exception;
	
	public MemberDTO getMemberInfo(String Id) throws Exception;
	
	public void insertMember(MemberDTO memberDTO) throws Exception;
	
	public void updateMember(MemberDTO memberDTO) throws Exception;
	
	public void deleteMember(String Id) throws Exception;
}