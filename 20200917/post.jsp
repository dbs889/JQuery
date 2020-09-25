<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%


	//post에서는 따로 UTF-8인코딩 방식을 설정해줘야 한다
	request.setCharacterEncoding("UTF-8");


	String name = request.getParameter("name2");
	String id = request.getParameter("id2");
	
	

%>
<%=name%><span>님 환영합니다</span><br>
<%=id %><span>님 즐거운 하루 되세요</span>

</body>
</html>