<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.example.dao.BoardDAO"%>
<%@ page import="com.example.bean.BoardVO" %>
<%@ page import="com.example.common.FileUpload" %>

<% request.setCharacterEncoding("utf-8"); %>

<jsp:useBean id="u" class="com.example.bean.BoardVO" />
<jsp:setProperty property="*" name="u"/>

<%
	BoardDAO boardDAO = new BoardDAO();

	FileUpload upload = new FileUpload();
	BoardVO v = upload.uploadPhoto(request);
	int i=boardDAO.updateBoard(u);
	response.sendRedirect("posts.jsp");
%>