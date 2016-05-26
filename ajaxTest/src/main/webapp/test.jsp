<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
   <head>
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <title>Insert title here</title>
      <script src="https://code.jquery.com/jquery-2.2.1.js"></script>
      <script>
      	$(function(){
      		<%-- //var contextpath = <%=request.getContextPath()%>; --%>
      		$('#ajax-btn').click(function(){
				console.log('하하ㅏ');
      			$.ajax({
      				type: "post",
      				url : "test.do",
      				dataType:"json",
      				success : function(data){
      					var output = "";
                        output += "<tr><th>id</th><th>pwd</th><th>name</th><th>email</th></tr>"
                       	$.each(data, function(index, memberlist){
                       		
                       		$.each(memberlist, function(index, member){
                       			
                                 output += "<tr>"
                                    output += "<td>" + member.id + "</td>";
                                    output += "<td>" + member.pw + "</td>";
                                    output += "<td>" + member.name + "</td>";
                                    output += "<td>" + member.email + "</td>";
                                 output += "</tr>"
                              
                       	});
                      }); 		
                        $('#membertable').html(output);
      				  
      				}
      				
      				
      			}); //ajax end
      		}); //click end
      	});//jquery end
      </script>
      
   </head>
   
   <body>
   
      <h2>Ajax Test (이거 풀면 퇴근)</h2>
      <hr>
      <input type="button" id="ajax-btn" value="회원리스트 출력">
    	<table border = "1" id = "membertable">
    	</table>  
   	
   </body>

</html>