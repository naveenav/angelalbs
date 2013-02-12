package co.angellabs.framework.dao;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;

import antlr.collections.List;

public  interface BaseDAO {
	
	   List readEntity(Object criteria);
	
	   int updateEntity(Object entity);
	   
	   int createEntity(Object entity);
	   
	   int deleteEntity(Object entity);
	
	}


