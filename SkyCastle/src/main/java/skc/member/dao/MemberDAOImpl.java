package skc.member.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.List;

import javax.annotation.Resource;

import org.apache.ibatis.session.SqlSession;

import skc.member.model.MemberDTO;

public class MemberDAOImpl implements MemberDAO{
	
	@Resource
	private SqlSession sqlSession;
	
	public List<MemberDTO> getMemberList() throws Exception{
		return sqlSession.selectList("skc.member.memberMapper.getMemberList");
	}
	
	public MemberDTO getMemberInfo(String member) throws Exception{
		return sqlSession.selectOne("skc.member.memberMapper.getMemberInfo");
		
	}
	
	public int insertMember(MemberDTO member) throws Exception{
		return sqlSession.insert("skc.member.memberMapper.insertMember");
	}
	
	public int updateMember(MemberDTO member) throws Exception{
		return sqlSession.update("skc.member.memberMapper.updateMember");
	
	}
	
	public int deleteMember(String member) throws Exception{
		return sqlSession.delete("skc.member.memberMapper.deleteMember");
	}
}
