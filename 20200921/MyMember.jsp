<%@page import="kr.or.ddit.mymember.vo.MyMemberVO"%>
<%@page import="java.util.List"%>
<%@page import="kr.or.ddit.ibatis.config.BulidSqlMapClient"%>
<%@page import="com.ibatis.sqlmap.client.SqlMapClient"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

    [
    <%
    
    	SqlMapClient smc = BulidSqlMapClient.getSqlMapClient();
    
    	List<MyMemberVO> list = smc.queryForList("MyMember.selectMyMember");
    	
    	for(int i =0; i<list.size(); i++){
    		MyMemberVO vo = list.get(i);
    		if(i>0) out.print(",");
    	
    
    %>
    
    {
    "id" : "<%= vo.getMEM_ID() %>",
    "name" : "<%=vo.getMEM_NAME() %>",
    "tel" : "<%= vo.getMEM_TEL() %>",
    "addr" : "<%= vo.getMEM_ADDR() %>"
    
    }
    
    <%
    	}
    %>
    
    ]