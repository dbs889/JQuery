<%@page import="kr.or.ddit.ibatis.config.BulidSqlMapClient"%>
<%@page import="kr.or.ddit.lprod.vo.LprodVO"%>
<%@page import="java.util.List"%>
<%@page import="com.ibatis.sqlmap.client.SqlMapClient"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
    [
<%


//Ŭ���̾�Ʈ ��û�� ���۵Ǵ� �����͸� �޴´�

	//DBó���Ѵ� - crud  -- sqlMapClient��ü�� ������
	
	SqlMapClient smc = BulidSqlMapClient.getSqlMapClient();

		

	
  //mapper���� - sql�� ����
	
  List<LprodVO> list = smc.queryForList("Lprod.LprodAllList");
  
	
	//ó���� ����� ��� ��� ���䵥���͸� �����Ѵ�  --jsonobject
	
	for(int i = 0; i<list.size();i++){
		LprodVO vo = list.get(i);
		if(i>0) out.print(",");
		
		
	
%>

{

"Lprod_ID" : "<%= vo.getLPROD_ID() %>", 
"Lprod_GU" : "<%= vo.getLPROD_GU() %>",
"Lprod_NM" : "<%= vo.getLPROD_NM() %>"


}

<%

}


%>
]




