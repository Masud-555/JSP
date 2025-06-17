
<%@page import="model.Employee" %>
<%@page import="dao.EmpDao" %>


<%
    String id=request.getParameter("id");
    Employee e = EmpDao.getById(Integer.parseInt(id));
    
%>



<%@include file="header.jsp" %>

<div class="container my-3">
    <div class="bg-warning text-center">
        <h1 class="jumborton">Update Employee</h1>
    </div>
    <!--    start form-->
    <form action="editemployee.jsp"  method="post">
        <input type="hidden" name="id" value="<%=e.getId()%>" />
        <div class="row">
            <div class="col-md-6">
                <label for="exampleInputEmail1" class="form-label">Name</label>
                <input type="text" class="form-control" id="name" name="name" value="<%=e.getName()%>" placeholder="Full Name">
            </div>

<!--            <div class="col-md-6">
                <label for="exampleInputEmail1" class="form-label">Email</label>
                <input type="text" class="form-control" id="email" name="email" value="<%=e.getEmail()%>" placeholder="example@gmail.com">
            </div>        -->
        </div>
        <!-- start 2nd row-->
        <div class="row mt-3">
            <div class="col-md-6">
                <label  class="form-label">Designation</label>
                <select class="form-select" name="designation" aria-label="Default select example">
                    <option disabled=" ">Select One</option>
                    <option value="Manager" <%= "Manager".equals(e.getDesignation()) ? "selected" : ""%>>Manager</option>
                    <option value="Programmer" <%= "Programmer".equals(e.getDesignation()) ? "selected" : ""%>>Programmer</option>
                    <option value="Cashier" <%= "Cashier".equals(e.getDesignation()) ? "selected" : ""%>>Cashier</option>
                    <option value="User" <%= "User".equals(e.getDesignation()) ? "selected" : ""%>>User</option>                    
                </select>
            </div>

        </div>

        <div class="row">
            <div class="col-md-6">
                <label for="exampleInputEmail1" class="form-label">Salary</label>
                <input type="text" class="form-control" id="contactNo" name="salary" value="<%=e.getSalary()%>">
            </div>

        </div>

        <div class="row mt-3 text-center">
            <div class="col-md-6">
                <button type="submit" class="btn btn-success text-center" >Update</button>

            </div>

            <div class="col-md-6">
                <button type="reset" class="btn btn-warning text-center" >Reset</button>

            </div>
        </div>
    </form>

    <!--end form    -->
</div>


<%@include file="footer.jsp" %>
