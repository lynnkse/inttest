<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>User Information</title>
</head>
<body>
<div>
    <div>
        <div>
            <h3>
                User Details
            </h3>
        </div>
        <div>
            <form:form id="userRegisterForm" modelAttribute="user" method="post" action="saveUser">

                <div>
                    <div> <form:label path="name" >Name</form:label> </div>
                    <div>
                        <form:hidden path="id" value="${userObject.id}"/>
                        <form:input path="name" value="${userObject.name}"/>
                    </div>
                </div>

                <div>
                    <form:label path="age">Age</form:label>
                    <div>
                        <form:input path="age" value="${userObject.age}"/>
                    </div>
                </div>

                <div>
                    <form:label path="isAdmin">isAdmin</form:label>
                    <div>
                        <form:input path="isAdmin" value="${userObject.isAdmin}"/>
                    </div>
                </div>

                <div>
                    <form:label path="createDate">CreateDate(Enter in dd/MM/yyyy format)</form:label>
                    <div>
                        <form:input path="createDate" value="${userObject.createDate}"/>
                    </div>
                </div>


                <div>
                    <div>
                        <div>
                        </div>
                        <div>
                            <input type="submit" id="saveUser" value="Save" onclick="return submitUserForm();"/>
                        </div>
                        <div>
                        </div>
                    </div>
                </div>

            </form:form>
        </div>
    </div>
</div>

<script type="text/javascript">
    function submitUserForm() {

// getting the user form values
        var name = $('#name').val().trim();
        var age = $('#age').val();
        var isAdmin = $('#isAdmin').val();
        var createDate = $('#createDate').val();

        return true;
    };
</script>
</body>
</html>