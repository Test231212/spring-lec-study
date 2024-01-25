<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    response.setHeader("Content-Type", "text/html; charset=utf-8");


    String username = request.getParameter("username");
    String password = request.getParameter("password");
    String email = request.getParameter("email");

    System.out.println("username : "+username);
    System.out.println("password : "+password);
    System.out.println("email : "+email);

    // 2. 유효성 검사 (1000줄 됨)

    if(username.length() < 3 || username.length() > 10){

        response.getWriter().println("<h1>username 글자수가 3-10 사이여야 합니다.");
        return;
    }

    // 3. DB연결

    // 4. DAO의 insert 메서드를 호출

    // 5. 메인 페이지 그리기(비효율적)

    // 6. 리다이렉트
    //resp.sendRedirect("/main");
    response.setStatus(302);
    response.setHeader("Location", "/board/main.jsp");
    response.setHeader("clock", "/12pm");
%>