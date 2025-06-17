
<jsp:useBean class="model.Employee" id="masud"/>
<%@page import="dao.EmpDao" %>
<jsp:setProperty name="masud" property="*"/>

<%
    
        int result =EmpDao.updateEmployee(masud);
        if(result > 0){
            response.sendRedirect("index.jsp");
    
        }
        else{
             response.sendRedirect("error.jsp");
    
    }
    
%>