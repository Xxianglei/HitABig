package com.hitabig.dao;

import java.util.List;

import com.hitabig.model.TeamInfo;

public interface hitabigDao {
	public boolean save(Object o);
	public <T> T get(Class<T> clazz, int id);
	public void update(Object obj);
	public <T> void delete(Class<T> clazz, String id);
	public void delete(Object obj);
	public List<TeamInfo> findAll(String sql);

}
