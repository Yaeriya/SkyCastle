
$(document).ready(function(){
	$("#list").on("click", function(e){ 
		e.preventDefault(); fn_openBoardList(); 
	});	
	}); 
function fn_openBoardList(){
	var comSubmit = new ComSubmit(); 
	comSubmit.setUrl("<c:url value='/board/openBoardList.do' />"); 
	comSubmit.submit();
} 
