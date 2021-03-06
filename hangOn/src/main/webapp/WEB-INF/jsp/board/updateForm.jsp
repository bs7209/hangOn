<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
    <title>고객센터</title>
    <link href="${pageContext.request.contextPath}/resources/css/board/updateForm.css" rel="stylesheet">
    <script src="${pageContext.request.contextPath}/resources/js/board/updateForm.js"></script>
</head>

<body class="fixed-nav sticky-footer" id="page-top">

<!-- 고객센터 게시판 -->

	<div class="card mb-3" id="table-body">
		<div class="card-header">
	          &nbsp;&nbsp;&nbsp;&nbsp;<i class="fa fa-check"></i>&nbsp;&nbsp;<strong>고객센터</strong>
	    </div>
	    <div class="card-body">
	        <div class="table-responsive">
				<form action="${pageContext.request.contextPath}/board/update.do" id="form">
				        카테고리 : <select name="boardCategory" id="category">
								<option value="">선택</option>
								<option value="회원정보">회원정보</option>
								<option value="화상회의">화상회의</option>
								<option value="채팅">채팅</option>
								<option value="기타">기타</option>
							</select><br>
				        제목 : <input type="text" id="title" size="50" name="boardTitle" value="${board.boardTitle}"><br>
				        내용 : <textarea rows="2" cols="2" id="content" name="boardContent" >${board.boardContent}</textarea>
				    <input type="hidden" name="boardNo" value="${board.boardNo}" />
				    <button type="submit" id="btn">글수정</button>
				</form>
	    	</div>
		</div>
	</div>

<script>

$("#btn").click(function (e) {
	e.preventDefault();
	
	if( $("#category").val() == "") {
		alert("카테고리를 설정해주세요")
		return false;
	}
	else if ( $("#title").val() == "") {
		alert("제목을 써주세요")
		return false;
	}
	else if ( $("#content").val() == "") {
		alert("내용을 써주세요")
		return false;
	}
	else {
		$("#form").submit();
		return true;
	}
});

</script>

</body>
</html>