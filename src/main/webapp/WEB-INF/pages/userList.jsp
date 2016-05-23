<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>Users List</title>
</head>
<body>
<div>
    <div>
        <div>
            <h3>
                <div><b>Users List</b> </div>
                <div><a href="createUser">Add New User</a></div>
            </h3>
        </div>
        <div>
            <c:if test="${empty users}">
                There are no Users
            </c:if>
            <c:if test="${not empty users}">

                <form action="searchUser">
                    <div>
                        <div class="col-md-6"><div class="col-md-6">Search Users:</div><div class="col-md-6"> <input type="text" name="searchName" id="searchName"> </div></div>
                        <div class="col-md-4"><input class="btn btn-success" type='submit' value='Search'/></div>
                    </div>
                </form>
                <table>
                    <thead>
                    <tr>
                        <th>Id</th>
                        <th>Name</th>
                        <th>Age</th>
                        <th>isAdmin</th>
                        <th>CreateDate(dd/MM/yyyy)</th>
                        <th>Edit</th>
                        <th>Delete</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${users}" var="user">
                        <tr>
                            <th><c:out value="${user.id}"/></th>
                            <th><c:out value="${user.name}"/></th>
                            <th><c:out value="${user.age}"/></th>
                            <th><c:out value="${user.isAdmin}"/></th>
                            <th><c:out value="${user.createDate}"/></th>
                            <th><a href="editUser?id=<c:out value='${user.id}'/>">Edit</a></th>
                            <th><a href="deleteUser?id=<c:out value='${user.id}'/>">Delete</a></th>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </c:if>
            <div id="pagination">

                <c:url value="/getAllUsers" var="prev">
                    <c:param name="page" value="${page-1}"/>
                </c:url>
                <c:if test="${page > 1}">
                    <a href="<c:out value="${prev}" />">Prev</a>
                </c:if>

                <c:forEach begin="1" end="${maxPages}" step="1" varStatus="i">
                    <c:choose>
                        <c:when test="${page == i.index}">
                            <span>${i.index}</span>
                        </c:when>
                        <c:otherwise>
                            <c:url value="/getAllUsers" var="url">
                                <c:param name="page" value="${i.index}"/>
                            </c:url>
                            <a href='<c:out value="${url}" />'>${i.index}</a>
                        </c:otherwise>
                    </c:choose>
                </c:forEach>
                <c:url value="/getAllUsers" var="next">
                    <c:param name="page" value="${page + 1}"/>
                </c:url>
                <c:if test="${page + 1 <= maxPages}">
                    <a href='<c:out value="${next}" />'>Next</a>
                </c:if>
            </div>
        </div>
    </div>
</body>
</html>