
<%@ page import="com.br.curso.Agricultor" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'agricultor.label2', default: 'Agricultor 2')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-agricultor" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		
		<div id="list-agricultor" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
						<tr>
							<g:sortableColumn property="id" title="${message(code: 'agricultor.id.label', default: 'Agricultor Id')}" />
							
							<g:sortableColumn property="agricultorEmail" title="${message(code: 'agricultor.agricultorEmail.label', default: 'Agricultor Email')}" />
						
							<g:sortableColumn property="cpf" title="${message(code: 'agricultor.cpf.label', default: 'Cpf')}" />
						
							<g:sortableColumn property="nome" title="${message(code: 'agricultor.nome.label', default: 'Nome')}" />
						
						</tr>
				</thead>
				<tbody>
				<g:each in="${agricultorInstanceList}" status="i" var="agricultorInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
						
						<td>
							<g:link action="show" id="${agricultorInstance.id}">
								${fieldValue(bean: agricultorInstance, field: "id")}
							</g:link>
						</td>
					
						<td>${agricultorInstance.agricultorEmail}</td>
					
						<td>${fieldValue(bean: agricultorInstance, field: "cpf")}</td>
					
						<td>${fieldValue(bean: agricultorInstance, field: "nome")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${agricultorInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
