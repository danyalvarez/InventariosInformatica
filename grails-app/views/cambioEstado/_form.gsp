<%@ page import="ii.CambioEstado" %>



<div class="fieldcontain ${hasErrors(bean: cambioEstadoInstance, field: 'item', 'error')} required">
	<label for="item">
		<g:message code="cambioEstado.item.label" default="Item" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="item" name="item.id" from="${ii.Activo.list()}" optionKey="id" required="" value="${cambioEstadoInstance?.item?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: cambioEstadoInstance, field: 'anterior', 'error')} required">
	<label for="anterior">
		<g:message code="cambioEstado.anterior.label" default="Anterior" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="anterior" name="anterior.id" from="${ii.EstadoActivo.list()}" optionKey="id" required="" value="${cambioEstadoInstance?.anterior?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: cambioEstadoInstance, field: 'actual', 'error')} required">
	<label for="actual">
		<g:message code="cambioEstado.actual.label" default="Actual" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="actual" name="actual.id" from="${ii.EstadoActivo.list()}" optionKey="id" required="" value="${cambioEstadoInstance?.actual?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: cambioEstadoInstance, field: 'descripcion', 'error')} ">
	<label for="descripcion">
		<g:message code="cambioEstado.descripcion.label" default="Descripcion" />
		
	</label>
	<g:textArea name="descripcion" cols="40" rows="5" maxlength="999999" value="${cambioEstadoInstance?.descripcion}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: cambioEstadoInstance, field: 'responsable', 'error')} ">
	<label for="responsable">
		<g:message code="cambioEstado.responsable.label" default="Responsable" />
		
	</label>
	<g:select id="responsable" name="responsable.id" from="${ii.Usuario.list()}" optionKey="id" value="${cambioEstadoInstance?.responsable?.id}" class="many-to-one" noSelection="['null': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: cambioEstadoInstance, field: 'fechaRegistro', 'error')} ">
	<label for="fechaRegistro">
		<g:message code="cambioEstado.fechaRegistro.label" default="Fecha Registro" />
		
	</label>
	<joda:dateTimePicker name="fechaRegistro" value="${cambioEstadoInstance?.fechaRegistro}" default="none" noSelection="['': '']"></joda:dateTimePicker>
</div>

