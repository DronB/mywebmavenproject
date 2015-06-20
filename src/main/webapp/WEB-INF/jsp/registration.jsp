<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<tiles:insertDefinition name="defaultTemplate">
    <tiles:putAttribute name="body">
        <div class="container">
            <div class="row">
                <div class="text-center center-block" style="width: 300px">
                    <div >
                        <form action="<c:url value="/user/adduser" />" method="post" accept-charset="utf-8">
                            <div class="form-group">
                                <label for="name">Name: </label><input class="form-control" type="text" name="name" />
                            </div>
                            <div class="form-group">
                                <label for="email">Email: </label><input class="form-control" type="text" name="email" />
                            </div>
                            <div class="form-group">
                                <label for="password">Password: </label><input class="form-control" type="password" name="password" />
                            </div>
                            <input class="btn btn-success" type="submit" value="Согласен" />
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </tiles:putAttribute>
</tiles:insertDefinition>
