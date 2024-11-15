
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/display.css">


</head>
<body>
<h2>payment details</h2>
<table>

<tr>

<th>iD</th>
<th>name</th>
<th>email</th>
<th>address</th>
<th>city</th>
<th>state</th>
<th>zipcode</th>
<th>cardname</th>
<th>cardnumber</th>
<th>expmonth</th>
<th>expyear</th>
<th>cvv</th>
<th>amount</th>
<th>Action</th>
</tr>

<c:forEach var="examcharge" items="${allcharges}">


<tr>
<td>${examcharge.id}</td>
<td>${examcharge.name}</td>
<td>${examcharge.email}</td>
<td>${examcharge.address}</td>
<td>${examcharge.city}</td>
<td>${examcharge.state}</td>
<td>${examcharge.zipcode}</td>
<td>${examcharge.cardname}</td>
<td>${examcharge.cardnumber}</td>
<td>${examcharge.expmonth}</td>
<td>${examcharge.expyear}</td>
<td>${examcharge.cvv}</td>
<td>${examcharge.amount}</td>

<td>

<a href="paymentupdate.jsp?id=${examcharge.id}&name=${examcharge.name}&email=${examcharge.email}&address=${examcharge.address}&city=${examcharge.city}&state=${examcharge.state}&zipcode=${examcharge.zipcode}&cardname=${examcharge.cardname}&cardnumber=${examcharge.cardnumber}&expmonth=${examcharge.expmonth}&expyear=${examcharge.expyear}&cvv=${examcharge.cvv}&amount=${examcharge.amount}">
<button>update</button>
</a>
<form action = "delete" method="post" style="display:inline">
        	
        		<input type="hidden" name="id" value="${examcharge.id}">
        		<button>Delete</button>
        	
  </form>


</td>
</tr>
</c:forEach>



</table>


</body>
</html>

