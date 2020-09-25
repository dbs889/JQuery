<%@page import="kr.or.ddit.ibatis.config.BulidSqlMapClient"%>
<%@page import="kr.or.ddit.lprod.vo.LprodVO"%>
<%@page import="java.util.List"%>
<%@page import="com.ibatis.sqlmap.client.SqlMapClient"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
    [
<%


//클라이언트 요청시 전송되는 데이터를 받는다

	//DB처리한다 - crud  -- sqlMapClient객체를 얻어오기
	
	SqlMapClient smc = BulidSqlMapClient.getSqlMapClient();

		

	
  //mapper수행 - sql문 실행
	
  List<LprodVO> list = smc.queryForList("Lprod.LprodAllList");
  
	
	//처리한 결과를 출력 대신 응답데이터를 생성한다  --jsonobject
	
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




