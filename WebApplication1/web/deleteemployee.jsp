
<jsp:useBean class="model.Employee" id="de" />
<%@page import="dao.EmpDao" %>
<jsp:setProperty  name="de" property="*" />

<%  

        EmpDao.deleteEmployee(de.getId());
        
        response.sendRedirect("index.jsp");
        

%>
