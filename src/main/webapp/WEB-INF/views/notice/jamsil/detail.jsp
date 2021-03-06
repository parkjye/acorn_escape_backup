<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>     
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/views/notice/detail.jsp</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css?v=<%=System.currentTimeMillis() %>" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css?v=<%=System.currentTimeMillis() %>"/>
<script src="${pageContext.request.contextPath}/resources/js/jquery.min.js" ></script>
<script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"/></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery-3.5.1.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery.form.min.js"></script>
</head>
<body>
<jsp:include page="../../templates/nav.jsp"></jsp:include>
<div class="container border-left border-right border-secondary">
	<!-- 자세히보기 -->
	<div class="row my-2">
		<c:if test="${not empty keyword }">
			<p class="alert alert-info">
				<strong>${keyword }</strong> 라는 키워드로 검색한 결과에 대한 
				자세히 보기 입니다.
			</p>
		</c:if>
	</div>
	<!-- 타이틀 -->
	<div class="row my-5 px-4">
		<h4>${dto.title }</h4>
	</div>
	
	<!-- 서브타이틀 -->
	<div class="row px-4 d-flex justify-content-between align-items-center"> 
		<div>
			작성자 : <strong><span>${dto.writer }</span></strong>
			<strong><span>&emsp;${dto.regdate }&emsp;</span></strong>
			조회수 <strong><span>${dto.viewCount }</span></strong>
		</div>
		<div>
			<button class="btnList btn btn-outline-primary"><a href="list.do">목록 보기</a></button>
		</div>	
	</div>
	<hr class="w-100 solid">
	<!-- 컨텐츠 -->
	<div class="row px-4">
		<div class="contents">${dto.content }</div>
	</div>
	
	<!-- modify,delete 버튼 -->
	<div class="row px-4 pb-3">
		<c:if test="${dto.writer eq aid }">
			<a class="btn btn-outline-warning btn-sm mr-2" href="updateform.do?num=${dto.num }">
				<svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-pencil-square" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
	  				<path d="M15.502 1.94a.5.5 0 0 1 0 .706L14.459 3.69l-2-2L13.502.646a.5.5 0 0 1 .707 0l1.293 1.293zm-1.75 2.456l-2-2L4.939 9.21a.5.5 0 0 0-.121.196l-.805 2.414a.25.25 0 0 0 .316.316l2.414-.805a.5.5 0 0 0 .196-.12l6.813-6.814z"/>
	  				<path fill-rule="evenodd" d="M1 13.5A1.5 1.5 0 0 0 2.5 15h11a1.5 1.5 0 0 0 1.5-1.5v-6a.5.5 0 0 0-1 0v6a.5.5 0 0 1-.5.5h-11a.5.5 0 0 1-.5-.5v-11a.5.5 0 0 1 .5-.5H9a.5.5 0 0 0 0-1H2.5A1.5 1.5 0 0 0 1 2.5v11z"/>
				</svg>
				수정
			</a>
			<a class="btn btn-outline-danger btn-sm mr-2" href="javascript:deleteConfirm();">
				<svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-trash-fill" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
	  				<path fill-rule="evenodd" d="M2.5 1a1 1 0 0 0-1 1v1a1 1 0 0 0 1 1H3v9a2 2 0 0 0 2 2h6a2 2 0 0 0 2-2V4h.5a1 1 0 0 0 1-1V2a1 1 0 0 0-1-1H10a1 1 0 0 0-1-1H7a1 1 0 0 0-1 1H2.5zm3 4a.5.5 0 0 1 .5.5v7a.5.5 0 0 1-1 0v-7a.5.5 0 0 1 .5-.5zM8 5a.5.5 0 0 1 .5.5v7a.5.5 0 0 1-1 0v-7A.5.5 0 0 1 8 5zm3 .5a.5.5 0 0 0-1 0v7a.5.5 0 0 0 1 0v-7z"/>
				</svg>
				삭제
			</a>		
		</c:if>
	</div>
</div>
 
<script>
function deleteConfirm(){
	var isDelete=confirm("이 글을 삭제 하시겠습니까?");
	if(isDelete){
		location.href="delete.do?num=${dto.num}";
	}
}
</script>
<jsp:include page="../../templates/footer.jsp"></jsp:include>
</body>
</html>





