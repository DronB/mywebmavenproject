<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<tiles:insertDefinition name="defaultTemplate">
    <tiles:putAttribute name="body">
        <div class="container">
            <div class="row">
                <div class="text-center center-block" style="width: 300px">
                    <div >
                        <form action="<c:url value="/j_spring_security_check" />" method="post" accept-charset="utf-8">
                            <div class="form-group">
                                <label for="j_username">Email: </label><input class="form-control" type="text" name="j_username" />
                            </div>
                            <div class="form-group">
                                <label for="j_password">Password: </label><input class="form-control" type="password" name="j_password" />
                            </div>
                            <input class="btn btn-success" type="submit" />
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </tiles:putAttribute>
</tiles:insertDefinition>