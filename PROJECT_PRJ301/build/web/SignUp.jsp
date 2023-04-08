<%-- 
    Document   : SignUp
    Created on : Mar 13, 2023, 5:47:58 PM
    Author     : Acer
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%> 
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Signup Form</title>
	<style>
		body {
			font-family: Arial, sans-serif;
			background: #f0f0f0;
		}

		.container {
			margin: 50px auto;
			padding: 20px;
			background: #fff;
			border-radius: 5px;
			box-shadow: 0px 5px 10px rgba(0,0,0,0.1);
			max-width: 500px;
		}

		h2 {
			text-align: center;
			margin-bottom: 20px;
		}

		label {
			display: block;
			margin-bottom: 10px;
		}

		input[type="text"], input[type="email"], input[type="password"] {
			width: 100%;
			padding: 10px;
			border: none;
			border-radius: 5px;
			margin-bottom: 20px;
			box-sizing: border-box;
		}

		button {
			display: block;
			margin: 0 auto;
			padding: 10px 20px;
			background: #4CAF50;
			color: #fff;
			border: none;
			border-radius: 5px;
			cursor: pointer;
			font-size: 16px;
			font-weight: bold;
			box-shadow: 0px 5px 10px rgba(0,0,0,0.1);
			transition: background 0.3s;
		}

		button:hover {
			background: #3e8e41;
		}
	</style>
        <link href="zz.css" rel="stylesheet" type="text/css"/>
</head>
<body>
	<div class="container">
		<h2>Register</h2>
                <form action="signup" method="post">
                    <div class="alert alert-danger" style="color: green" role="alert"> ${messs} </div>
                    <div class="alert alert-danger" style="color: red" role="alert"> ${mess} </div>
			<label for="name">UserName:</label>
                        <input class="input is-medium" type="text"  name="user" placeholder="UserName" required>

			<label for="email">Email:</label>
                        <input class="input is-medium" type="email" name="email" placeholder="Email" required>

			<label for="password">Password:</label>
                        <input class="input is-medium" type="password"  name="pass" placeholder="Password" required>
			
                        <label for="password">Repeat Password:</label>
                        <input class="input is-medium" type="password"  name="repass" placeholder="RE_Password" required>
                        

			<button type="submit">Signup</button>
                        <a href="index.html">Click here to Login</a>
		</form>
	</div>
</body>
</html>


