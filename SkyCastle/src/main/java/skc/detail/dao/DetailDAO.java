package skc.detail.dao;


import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import skc.common.common.CommandMap;
import skc.common.dao.AbstractDAO;

@Repository("detailDAO")
public class DetailDAO extends AbstractDAO
{
	
	 
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> selectDetail(Map<String, Object> map) throws Exception
	{
		return (List<Map<String, Object>>)selectOne("detail.selectDetail", map);
	}
	public void insertDetail(Map<String, Object> map) throws Exception
	{
		insert("detail.insertDetail", map);
	}
	/*
	 * public void updateDetail(Map<String, Object> map) throws Exception {
	 * update("detail.updateDetail", map); } public void deleteDetail(Map<String,
	 * Object> map) throws Exception { delete("detail.deleteDetial", map); }
	 */
	
}
