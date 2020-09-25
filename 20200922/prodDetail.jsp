<%@page import="kr.or.ddit.prod.vo.ProdVO"%>
<%@page import="kr.or.ddit.ibatis.config.BulidSqlMapClient"%>
<%@page import="com.ibatis.sqlmap.client.SqlMapClient"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

    
    <%
    
    String id = request.getParameter("id");
    
    SqlMapClient smc = BulidSqlMapClient.getSqlMapClient();
    
    ProdVO vo = (ProdVO) smc.queryForObject("prod.ProdDetail",id);
    
    
    %>
    
    {
    "id" : "<%= vo.getPROD_ID() %>",
    "name" : "<%= vo.getPROD_NAME() %>",
    "lgu" : "<%= vo.getPROD_LGU() %>",
    "buyer" : "<%= vo.getPROD_BUYER() %>",
    "cost" : "<%= vo.getPROD_COST() %>",
    "price" : "<%= vo.getPROD_PRICE() %>",
    "sale" : "<%= vo.getPROD_SALE() %>",
    "outline" : "<%= vo.getPROD_OUTLINE() %>",
    "size" : "<%= vo.getPROD_SIZE() %>",
    "color" : "<%= vo.getPROD_COLOR() %>"
  
    
    }