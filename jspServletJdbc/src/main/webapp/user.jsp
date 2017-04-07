<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="com.zkbr.mystudy.jspservletjdbc.model.Sanatorium"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<% 
List<Sanatorium> sanatorium = (ArrayList<Sanatorium>)request.getAttribute("sanatorium");
String title = (String)request.getAttribute("title");
%>

<div class="row">
<div class="span6">
<h1><%=title %></h1>
</div>
</div>
<br />
<div class="row">
<div class="span8">
<table class="table table-bordered table-hover ">
	<thead>
		<tr>
			<th>#</th>
			<th>Shell 的名称</th>
			<th>底盘号码</th>
		</tr>
	</thead>
	<tbody>
		<%if(sanatorium != null) {
			for (Sanatorium housing : sanatorium) {%>
		<tr>
			<td><%=housing.getHousintId() %></td>
			<td><a href='?action=srp&id=<%=housing.getHousintId() %>'><%=housing.getCorpsName() %></a></td>
			<td>
			<% if(housing.getNumber()!=0) {%>
				<a href='?action=sn&number=<%=housing.getNumber() %>'><%=housing.getNumber() %></a>
			<%} %>
			</td>
		</tr>
		<%}}%>
	</tbody>
</table>
</div>
</div>