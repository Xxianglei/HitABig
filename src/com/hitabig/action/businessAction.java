package com.hitabig.action;

import java.util.List;

import com.hitabig.dao.hitabigDao;
import com.hitabig.impl.hitabigImpl;
import com.hitabig.model.TeamInfo;
import com.hitabig.util.DigitalCheckUitl;
import com.hitabig.util.SqlUtil;
import com.opensymphony.xwork2.ActionSupport;

public class businessAction extends ActionSupport{
   private String team_code;
   private String team_name;
   private String team_type;
   private String header;
   private String grade;
   private String result;
   private List<TeamInfo> list;
	private static final hitabigDao dao=new hitabigImpl();
	
	public String addTeamInfo(){
		if(team_code==null||team_code==""||"".equals(team_code)){
		    result="对不起，添加失败，赛队编号不能为空！";
			return SUCCESS;
		}
		TeamInfo info=new TeamInfo();
	   if(DigitalCheckUitl.isNumeric(team_code)){
		   
		   info.setTeam_Code(Integer.parseInt(team_code));
		   info.setTeam_Name(team_name);		   
		   info.setTeam_Type(team_type);
		   info.setGrade(0.0);
		   info.setHeader(header);
	   }else{
		   result="对不起，添加失败，赛队编号必须为数字！";
		   return SUCCESS;
	   }
	   if(dao.get(TeamInfo.class, Integer.parseInt(team_code))!=null){
		   result="对不起，添加失败，该赛队编号已经存在！";
	   }
	  dao.save(info);
		  result="恭喜你，信息录入成功！";
	 
		return SUCCESS;
	}
	public  String findAll(){
		 list=dao.findAll(SqlUtil.findAll());		
		return SUCCESS;
	}
	public String findGrowth(){
		String message="成长组";
		 list=dao.findAll(SqlUtil.findBy(message));
		return SUCCESS;
	}
	public String findStart(){
		String message="初创组";
	     list=dao.findAll(SqlUtil.findBy(message));
		return SUCCESS;
	}
	public String findCreative(){
		String message="创意组";
		 list=dao.findAll(SqlUtil.findBy(message));
		return SUCCESS;
	}
	
	public String addGrade(){
		if(team_code==null||team_code==""||"".equals(team_code)){
		    result="对不起，添加失败，赛队编号不能为空！";
			return SUCCESS;
		}
		if(DigitalCheckUitl.isNumeric(team_code)){
			
		}else{
			result="对不起，添加失败，请输入有效的字段！";
			return SUCCESS;
		}
	 TeamInfo team=	dao.get(TeamInfo.class, Integer.parseInt(team_code));
	 if(team==null){
		 result="该赛队编号不存在！";
		 return SUCCESS;
	 }
	 team.setGrade(Double.parseDouble(grade));
	 dao.update(team);
	 result="恭喜您，成绩添加成功！";
		return SUCCESS;
	}
	
	
	
	
	public String getTeam_name() {
		return team_name;
	}
	public void setTeam_name(String team_name) {
		this.team_name = team_name;
	}
	public String getTeam_type() {
		return team_type;
	}
	public void setTeam_type(String team_type) {
		this.team_type = team_type;
	}
	public String getResult() {
		return result;
	}
	public void setResult(String result) {
		this.result = result;
	}
	public String getTeam_code() {
		return team_code;
	}
	public void setTeam_code(String team_code) {
		this.team_code = team_code;
	}
	public List<TeamInfo> getList() {
		return list;
	}
	public void setList(List<TeamInfo> list) {
		this.list = list;
	}
	public String getGrade() {
		return grade;
	}
	public void setGrade(String grade) {
		this.grade = grade;
	}
	public String getHeader() {
		return header;
	}
	public void setHeader(String header) {
		this.header = header;
	}

	

}
