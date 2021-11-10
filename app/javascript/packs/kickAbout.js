


function openLogin(){
	const loginForm = document.getElementById('login_form')
	loginForm.style.display = "block"
}
function openSignup(){
	const signUpForm = document.getElementById('sign_up_form')
	signUpForm.style.display = "block"
}

console.log("Im here")
window.openLogin = openLogin
window.openSignup = openSignup

