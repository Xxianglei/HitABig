package com.hitabig.test;


import org.hibernate.cfg.Configuration;
import org.hibernate.tool.hbm2ddl.SchemaExport;

public class createTableTest {
	public static void main(String args[]){
		  new SchemaExport(new Configuration().configure()).create(false, true);
	   }
}
