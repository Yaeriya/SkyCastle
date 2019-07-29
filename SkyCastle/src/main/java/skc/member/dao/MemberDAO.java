package skc.member.dao;

import java.util.List;

import skc.member.model.MemberDTO;

public interface MemberDAO {

	public List<MemberDTO> getMemberList() throws Exception;
	public MemberDTO getMemberInfo(String member) throws Exception;
	public int insertMember(MemberDTO member) throws Exception;
	public int updateMember(MemberDTO member) throws Exception;
	public int deleteMember(String member) throws Exception;
}
