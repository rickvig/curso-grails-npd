<%@ page import="com.br.curso.Agricultor" %>



<div class="fieldcontain ${hasErrors(bean: agricultorInstance, field: 'agricultorEmail', 'error')} required">
	<label for="agricultorEmail">
		<g:message code="agricultor.agricultorEmail.label" default="Agricultor Email" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="email" name="agricultorEmail" required="" value="${agricultorInstance?.agricultorEmail}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: agricultorInstance, field: 'cpf', 'error')} required">
	<label for="cpf">
		<g:message code="agricultor.cpf.label" default="Cpf" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="cpf" type="number" value="${agricultorInstance.cpf}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: agricultorInstance, field: 'nome', 'error')} required">
	<label for="nome">
		<g:message code="agricultor.nome.label" default="Nome" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nome" required="" value="${agricultorInstance?.nome}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: agricultorInstance, field: 'propriedades', 'error')} ">
	<label for="propriedades">
		<g:message code="agricultor.propriedades.label" default="Propriedades" />
		
	</label>
	<g:select name="propriedades" from="${com.br.curso.Propriedade.list()}" multiple="multiple" optionKey="id" size="5" value="${agricultorInstance?.propriedades*.id}" class="many-to-many"/>

</div>

