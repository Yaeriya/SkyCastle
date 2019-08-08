package skc.cs.service;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import skc.cs.dao.CSDAO;

@Service("csService")
public class CSServiceImpl implements CSService
{
	@Resource(name="csDAO")
	private CSDAO csDAO;
	
	@Override
	public List<Map<String, Object>> selectQList(List<Map<String, Object>> list) throws Exception
	{
		return csDAO.selectQList(list);
	}
	@Override
	public List<Map<String, Object>> selectAList(List<Map<String, Object>> list) throws Exception
	{
		return csDAO.selectAList(list);
	}
	@Override
	public List<Map<String, Object>> selectQNAList(Map<String, Object> map) throws Exception
	{
		return csDAO.selectQNAList(map);
	}
	//확인
	@Override
	public List<Map<String, Object>> selectQNum(Map<String, Object> map) throws Exception
	{
		return csDAO.selectQNum(map);
	}
	@Override
	public void insertQ(Map<String, Object> map) throws Exception
	{
		csDAO.insertQ(map);
	}
	@Override
	public void insertA(Map<String, Object> map) throws Exception
	{
		csDAO.insertA(map);
	}
	
	@Override
	public Map<String, Object> selectQnaDetail(Map<String, Object> map) throws Exception
	{
		Map<String, Object> resultMap = csDAO.selectQnaDetail(map);
		return resultMap;
	}
	
	@Override
	public void deleteQ(Map<String, Object> map) throws Exception
	{
		csDAO.deleteQ(map);
	}
	@Override
	public void deleteA(Map<String, Object> map) throws Exception
	{
		csDAO.deleteA(map);
	}
}
