<%@page import="kr.or.ddit.buyer.vo.BuyerVO"%>
<%@page import="java.util.List"%>
<%@page import="kr.or.ddit.ibatis.config.BulidSqlMapClient"%>
<%@page import="com.ibatis.sqlmap.client.SqlMapClient"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

    
    <%
    
    //Ŭ���̾�Ʈ ��û �� ���۵Ǵ� ����Ÿ�� �޴´�
    
    String buyer_id = request.getParameter("id");	//getParameter�޼��� �ȿ� ������ ��ġ�ؾ��Ѵ� ��������!!
    
    SqlMapClient smc = BulidSqlMapClient.getSqlMapClient();
    
    BuyerVO vo = (BuyerVO)smc.queryForObject("buyer.selectDetail",buyer_id);
    
  
    //ó���� ����� ��� ��� ���� �����͸� �����Ѵ� 
    
    
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
    
  