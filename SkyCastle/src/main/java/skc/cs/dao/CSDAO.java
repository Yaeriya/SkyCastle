package skc.cs.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import skc.common.dao.AbstractDAO;

@Repository("csDAO")
public class CSDAO extends AbstractDAO
{
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> selectQList(List<Map<String, Object>> list) throws Exception
	{
		return (List<Map<String, Object>>)selectList("cs.selectQList", list);
	} 
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> selectAList(List<Map<String, Object>> list) throws Exception
	{
		return (List<Map<String, Object>>)selectList("cs.selectAList", list);
	}
	//chexk
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> selectQNAList(Map<String, Object> map) throws Exception
	{
		return (List<Map<String, Object>>)selectList("cs.selectQNAList", map);
	}
	//확인
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> selectQNum(Map<String, Object> map) throws Exception
	{
		return (List<Map<String, Object>>)selectList("cs.selectQNum", map);
	} 
	
	public void insertQ(Map<String, Object> map) throws Exception
	{
		insert("cs.insertQ", map);
	}
	public void insertA(Map<String, Object> map) throws Exception
	{
		insert("cs.insertA", map);
	}
	
	@SuppressWarnings("unchecked")
	public Map<String, Object> selectQnaDetail(Map<String, Object> map) throws Exception
	{
		return (Map<String, Object>) selectOne("cs.selectQnaDetail", map);
	}
	
	public void deleteQna(Map<String, Object> map) throws Exception
	{
		delete("cs.deleteQ", map);
		delete("cs.deleteA", map);
	}
}
