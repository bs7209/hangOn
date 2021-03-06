		
	$(document).ready( function () {
		modalMaker();
	});
	
	function modalUp(modalId, modalBody){
		var modalWrapper = document.querySelector("#loginModalWrapper");
		var modal = '<div class="modal fade" id="'+modalId+'" tabindex="-1" role="dialog" aria-labelledby="'+modalId+'Label" aria-hidden="true">\
				      <div class="modal-dialog" role="document">\
					      <div class="modal-content">\
					        <div class="modal-header">\
					          <h5 class="modal-title" id="exampleModalLabel"><strong>알림</strong></h5>\
					          <button class="close" type="button" data-dismiss="modal" aria-label="Close">\
					            <span aria-hidden="true">×</span>\
					          </button>\
					        </div>\
					        <div class="modal-body">'+modalBody+'</div>\
					        <div class="modal-footer">'
					 modal += '<a class="btn btn-primary" href="#" data-dismiss="modal" aria-label="Close">확인</a>';
					 modal +='</div>\
					      </div>\
					    </div>\
					  </div>\
					  <button style ="display : none;" id="'+modalId+'Btn" data-toggle="modal" data-target="#'+modalId+'"></button>';
		 modalWrapper.innerHTML += modal;
	}
	
	/*필요한 모달 추가 함수*/
	function modalMaker(){
		modalUp("categoryModal", "카테고리를 선택하세요");
		modalUp("titleModal", "제목을 써주세요");
		modalUp("contentModal", "내용을 써주세요");
	}