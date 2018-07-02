package com.hitabig.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import com.hitabig.dao.hitabigDao;
import com.hitabig.model.TeamInfo;
import com.hitabig.util.SessionAnnotationUtil;

public class hitabigImpl implements hitabigDao{
	@Override
	public boolean save(Object o) {
		Session session=SessionAnnotationUtil.getSession();		
		try {
	   		session.beginTransaction();
		   	 session.save(o);
		   	 session.flush();
		   	 session.getTransaction().commit();
		   	 SessionAnnotationUtil.closeSession();
		   	 return true;
		} catch (Exception e) {
			return false;
		}
	}
	

	@Override
	public <T> T get(Class<T> clazz, int id) {
		Session session=SessionAnnotationUtil.getSession();
		try {
			session.beginTransaction();
			 T t=(T) session.get(clazz, id);
		   	 session.flush();
		   	 session.getTransaction().commit();
		   	 SessionAnnotationUtil.closeSession();
		   	 return t;
		} catch (Exception e) {
			return null;
		}	
	}

	@Override
	public void update(Object obj) {
		Session session=SessionAnnotationUtil.getSession();
		session.beginTransaction();
		session.update(obj);
		 session.getTransaction().commit(); 
		 SessionAnnotationUtil.closeSession();	
		
	}

	@Override
	public <T> void delete(Class<T> clazz, String id) {
		Session session=SessionAnnotationUtil.getSession();
		session.beginTransaction();
		  delete(session.get(clazz, Integer.parseInt(id)));
		  session.getTransaction().commit();
		 SessionAnnotationUtil.closeSession();	
		
	}

	@Override
	public void delete(Object obj) {
		SessionAnnotationUtil.getSession().delete(obj);
		
	}


	@Override
	public List<TeamInfo> findAll(String sql) {
		Session session=SessionAnnotationUtil.getSession();
		session.beginTransaction();
		Query query=session.createQuery(sql);
		List list=query.list();
		if(!list.isEmpty()){
		session.getTransaction().commit();
		SessionAnnotationUtil.closeSession();
		return list;
		}
		SessionAnnotationUtil.closeSession();
		return null;
	}


}
