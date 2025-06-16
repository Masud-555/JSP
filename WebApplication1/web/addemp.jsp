<jsp:useBean class="model.Employee" id="e"/>
<%@page import="dao.EmpDao" %>
<jsp:setProperty name="e" property="*" />

<%
    int result = EmpDao.saveAllEmployee(e);
    if(result > 0){
        response.sendRedirect("index.jsp");
    
    }
    else{
    response.sendRedirect("error.jsp");
    
    }
    
    %>
