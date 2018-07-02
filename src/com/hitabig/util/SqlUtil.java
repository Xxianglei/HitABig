package com.hitabig.util;

public class SqlUtil {
	public static String findAll(){
		String sql="from TeamInfo  order by grade desc,team_Code asc";
		return sql;
	}
   public static String findBy(String message){
	   String sql="from TeamInfo where Team_Type='"+message+"' order by grade desc,team_Code asc";
	   return sql;
   }
}
