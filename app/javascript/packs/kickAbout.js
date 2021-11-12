export function myFunction() {
  var x = document.getElementById("myTopnav");
  if (x.className === "topnav") {
    x.className += " responsive";
  } else {
    x.className = "topnav";
  }
}

function openSignup(){
	const signUpForm = document.getElementById('sign_up_form')
	const loginForm = document.getElementById('login_form')
	if(signUpForm.style.display == "block"){
		signUpForm.style.display = "none"
	}else{
		loginForm.style.display = "none"
		signUpForm.style.display = "block"
	}
}
function openLogin(){
	const loginForm = document.getElementById('login_form')
	const signUpForm = document.getElementById('sign_up_form')
	if(loginForm.style.display == "block"){
		loginForm.style.display = "none"
	}else{
		loginForm.style.display = "block"
		signUpForm.style.display = "none"
	}
}

window.openLogin = openLogin
window.openSignup = openSignup



