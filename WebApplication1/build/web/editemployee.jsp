
<jsp:useBean class="model.Employee" id="masud"/>
<%@page import="dao.EmpDao" %>
<jsp:setProperty name="masud" property="*"/>

<%
    
        int result =EmpDao.