
<%@ page import="com.br.curso.Agricultor" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'agricultor.label', default: 'Agricultor')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-agricultor" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-agricultor" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list agricultor">
			
				<g:if test="${agricultorInstance?.agricultorEmail}">
				<li class="fieldcontain">
					<span id="agricultorEmail-label" class="property-label"><g:message code="agricultor.agricultorEmail.label" default="Agricultor Email" /></span>
					
						<span class="property-value" aria-labelledby="agricultorEmail-label"><g:fieldValue bean="${agricultorInstance}" field="agricultorEmail"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${agricultorInstance?.cpf}">
				<li class="fieldcontain">
					<span id="cpf-label" class="property-label"><g:message code="agricultor.cpf.label" default="Cpf" /></span>
					
						<span class="property-value" aria-labelledby="cpf-label"><g:fieldValue bean="${agricultorInstance}" field="cpf"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${agricultorInstance?.nome}">
				<li class="fieldcontain">
					<span id="nome-label" class="property-label"><g:message code="agricultor.nome.label" default="Nome" /></span>
					
						<span class="property-value" aria-labelledby="nome-label"><g:fieldValue bean="${agricultorInstance}" field="nome"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${agricultorInstance?.propriedades}">
				<li class="fieldcontain">
					<span id="propriedades-label" class="property-label"><g:message code="agricultor.propriedades.label" default="Propriedades" /></span>
					
						<g:each in="${agricultorInstance.propriedades}" var="p">
						<span class="property-value" aria-labelledby="propriedades-label"><g:link controller="propriedade" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:agricultorInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${agricultorInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
