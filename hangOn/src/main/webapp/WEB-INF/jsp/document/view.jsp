<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div id="backGroundByDocument"></div>
<input type="hidden" id="documentUserNo" value="${param.userNo}">
<input type="hidden" id="documentRoomNo" value="${param.roomNo}">
<input type="hidden" id="documentRoomCode" value="${param.code}">
	<div id="documentArea">
	<div id="documentReadyScreen">
		<div>
			<img src="${pageContext.request.contextPath}/resources/image/loading.gif">
		</div>
		<form id="uploadFileForm" action="/hangOn/document/parser.json" enctype="multipart/form-data">
			<input type="file" name="file" id="documentFileUpload" accept=".pdf">
			<input id="documentRoomNoForm" type="hidden" name="roomNo" value="${param.roomNo}">
			<input type="hidden" name="userNo" value="${param.userNo}">
		</form>
	</div>

    <div class="row">
    
    
        <div id="documentList" class="col-sm-2">
        </div>
        
     
        
        
        <div id="documentShare" class="col-sm-6">
        	<div id="documentChange">
	        	<button class="document-util-btn btn btn-default" title="문서변경">
		        		<i class="material-icons">file_copy</i>
	        	</button>
        	</div>
        	
        	<div id="documentUtilBtns">
        	
        		<button value="mouse" class="document-util-btn btn btn-default" title="마우스">
	        		<i class="fa fa-mouse-pointer doc-util-btn-detail" aria-hidden="true"></i>
        		</button>
        		
        		<button value="pointer" class="document-util-btn btn btn-default" title="포인터">
	        		<i class="fa fa-dot-circle-o" aria-hidden="true"></i>
        		</button>
        		
        		<button value="pen" class="document-util-btn btn btn-default" title="펜">
	        		<i class="fa fa-pencil" aria-hidden="true"></i>
        		</button>
        		
        		<button value="eraser" class="document-util-btn btn btn-default" title="지우개">
	        		<i class="fa fa-eraser doc-util-btn-detail" aria-hidden="true"></i>
        		</button>
        		
        		
        		<button id="documentTextBtn" class="document-util-btn btn btn-default" title="텍스트">
	        		<i class="fa fa-font doc-util-btn-detail" aria-hidden="true"></i>
        		</button>
        		
        		<button id="documentColorBtn" class="document-util-btn btn btn-default" title="색변경">
	        		<i id="colorLens" class="material-icons doc-util-btn-detail-plus">
						color_lens
					</i>
        		</button>
        		<input type="color" id="documentColor">
        		
        		<button id="documentAllClear" class="document-util-btn btn btn-default" title="전체 지우기">
        			<i class="document-screen-clear">clear</i>
        		</button>
		
        	</div>

        	<div id="documentPageView">  		
        		<button id="doc-util-btn-left" class="document-util-btn btn btn-default document-order-btn">
        			<i class="fa fa-chevron-left " aria-hidden="true"></i>
        		</button>
        		<span>
        		  <input class="form-control" id="documentViewPageOrder"
        		  type="text" aria-describedby="idHelp" value="1"> <i>/&nbsp;&nbsp;<i id="documentMaxIndex">100</i></i>
        		</span>
        		
        		<button id="doc-util-btn-right" class="document-util-btn btn btn-default document-order-btn">
        			<i class="fa fa-chevron-right " aria-hidden="true"></i>
        		</button>        	
        	</div>
        	
        	
        	<div id="documentShareView">
        		<img id="documentViewImg" src="">
        		<div id="textInputViewArea"></div>
        	</div>
        	
        </div>
        
        
        
        
        
        <div id="documentView" class="col-sm-4">
        	<div id="documentViewArea"></div>
        </div>
        
        
    </div>

        
    </div>
</body>
</html>