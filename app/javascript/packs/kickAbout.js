


function openLogin(){
	const loginForm = document.getElementById('login_form')
	if(loginForm.style.display = "block"){
		loginForm.style.display == "none"
	}else{
		loginForm.style.display == "block"
	}
}
function openSignup(){
	const signUpForm = document.getElementById('sign_up_form')
	if(signUpForm.style.display == "none"){
		signUpForm.style.display == "block"
	}else{
		signUpForm.style.display == "none"
	}
}

window.openLogin = openLogin
window.openSignup = openSignup

