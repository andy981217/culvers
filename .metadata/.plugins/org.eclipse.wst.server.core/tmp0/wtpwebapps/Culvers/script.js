function fn_submit(){
	var fn=document.frm;
	
	if(fn.name.value==""){
		alert("이름이 입력되지 않았습니다.")
		fn.name.focus();
		return false;
	}
	if(fn.phone.value==""){
		alert("번호가 입력되지 않았습니다.")
		fn.phone.focus();
		return false;
	}
	fn.submit();
}