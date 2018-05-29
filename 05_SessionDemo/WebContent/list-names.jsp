<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>


<c:choose>
	<c:when test="${fn:length(sessionScope.friendNames)>0}">
		<h3>Here are your friend...</h3>
		<ol type="A">
			<c:forEach items="${sessionScope.friendNames}" var="fname">
				<li>${fname}</li>
			</c:forEach>
		</ol>
	</c:when>
	<c:otherwise>
	<h3>No friend names yet.</h3>
	</c:otherwise>
</c:choose>