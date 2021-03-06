		
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
		modalUp("emptyEmailModal", "이메일을 입력하세요");
		modalUp("emptyPwModal", "비밀번호를 입력하세요");
		modalUp("emailSentModal", "등록된 이메일로 새로운 비밀번호가 발송되었습니다");
		modalUp("congratulationsModal", "가입을 축하합니다");
		modalUp("loginPlzModal", "로그인 이후 이용 가능한 서비스 입니다");
		modalUp("wrongPwModal", "비밀번호가 틀렸습니다");
		modalUp("wrongEmailModal", "등록되지 않은 이메일 입니다");
	}

	