<%@page import="kr.or.ddit.buyer.vo.BuyerVO"%>
<%@page import="java.util.List"%>
<%@page import="kr.or.ddit.ibatis.config.BulidSqlMapClient"%>
<%@page import="com.ibatis.sqlmap.client.SqlMapClient"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

    
    <%
    
    //클라이언트 요청 시 전송되는 데이타를 받는다
    
    String buyer_id = request.getParameter("id");	//getParameter메서드 안에 내용일 일치해야한다 주의주의!!
    
    SqlMapClient smc = BulidSqlMapClient.getSqlMapClient();
    
    BuyerVO vo = (BuyerVO)smc.queryForObject("buyer.selectDetail",buyer_id);
    
  
    //처리한 결과를 출력 대신 응답 데이터를 생성한다 
    
    
    %>
    {
    

  		"id"  :"<%= vo.getBuyer_id() %>",
  		"lgu"  :"<%= vo.getBuyer_lgu() %>",
  		"name"  :"<%= vo.getBuyer_name() %>",
  		"bank"  :"<%= vo.getBuyer_bank() %>",
  		"bankname"  :"<%= vo.getBuyer_bankname() %>",
  		"bankno"  :"<%= vo.getBuyer_bankno() %>",
  		"comtel"  :"<%= vo.getBuyer_comtel() %>",
  		"addr"  :"<%= vo.getBuyer_add1() %> <%= vo.getBuyer_add2() %>",
  		"zip"  :"<%= vo.getBuyer_zip() %>"
    
    }
    
  