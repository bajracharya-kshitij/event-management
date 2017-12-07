
<%@ page import="np.com.eventmanagement.Event" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'event.label', default: 'Event')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-event" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-event" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list event">
			
				<g:if test="${eventInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="event.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${eventInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${eventInstance?.fromDate}">
				<li class="fieldcontain">
					<span id="fromDate-label" class="property-label"><g:message code="event.fromDate.label" default="From Date" /></span>
					
						<span class="property-value" aria-labelledby="fromDate-label"><g:formatDate date="${eventInstance?.fromDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${eventInstance?.toDate}">
				<li class="fieldcontain">
					<span id="toDate-label" class="property-label"><g:message code="event.toDate.label" default="To Date" /></span>
					
						<span class="property-value" aria-labelledby="toDate-label"><g:formatDate date="${eventInstance?.toDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${eventInstance?.location}">
				<li class="fieldcontain">
					<span id="location-label" class="property-label"><g:message code="event.location.label" default="Location" /></span>
					
						<span class="property-value" aria-labelledby="location-label"><g:fieldValue bean="${eventInstance}" field="location"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${eventInstance?.dateCreated}">
				<li class="fieldcontain">
					<span id="dateCreated-label" class="property-label"><g:message code="event.dateCreated.label" default="Date Created" /></span>
					
						<span class="property-value" aria-labelledby="dateCreated-label"><g:formatDate date="${eventInstance?.dateCreated}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${eventInstance?.lastUpdated}">
				<li class="fieldcontain">
					<span id="lastUpdated-label" class="property-label"><g:message code="event.lastUpdated.label" default="Last Updated" /></span>
					
						<span class="property-value" aria-labelledby="lastUpdated-label"><g:formatDate date="${eventInstance?.lastUpdated}" /></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:eventInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${eventInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
