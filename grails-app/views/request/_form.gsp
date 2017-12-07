<%@ page import="np.com.eventmanagement.Request" %>

<div class="fieldcontain ${hasErrors(bean: requestInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="request.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${requestInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: requestInstance, field: 'event', 'error')} required">
	<label for="event">
		<g:message code="request.event.label" default="Event" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="event" name="event.id" from="${np.com.eventmanagement.Event.list()}" optionKey="id"
			  optionValue="name" required="" value="${requestInstance?.event?.id}" class="many-to-one"/>

</div>

