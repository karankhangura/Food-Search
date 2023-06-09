<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
    <!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link rel="preconnect" href="https://fonts.googleapis.com"> 
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin> 
    <link href="https://fonts.googleapis.com/css2?family=Dongle:wght@300;400&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="style.css">

    <title>HOME | ListenUp</title>

    <style>
        .container {
            text-align: center;
            margin: 50px auto;
            width: 70%;
        }
        #text {
            font-size: 36px;
            margin-bottom: 50px;
        }
        #recently-added p {
            font-size: 40px;
        }
        #album-imgs-div {
            display: flex;
            justify-content: center;
            margin-top: 50px;
        }
        .album-img {
            width: 300px;
            height: 300px;
            background-color: grey;
            margin: 0 1%;
        }
    </style>
</head>
<body>
	<% 
	
			Cookie[] cookies  = request.getCookies();
			String em = "";
			String red = "Login";
			String disp = "login.jsp";
			if(cookies!=null){	
				String temp ="";
				try{
					for(Cookie c : cookies){
						if(c.getName().equals("em")){ 
							em=c.getValue();
							temp = em.replaceAll("=", " ");
							em="Hi " + temp +"!";
							red = "Logout";
							disp = "LogoutDispatcher";
							break;
						}
					}
				}
				catch (Exception E){
				}
			}
	%>
    <div id="navbar">
        <div id="nav-left">
            <a id="listenup-name" href="home.jsp">ListenUp</a>
        </div>

        <div id="nav-right"> 
            <a class="nav-link" href="signup.jsp">Sign Up</a>
            <a class="nav-link" href="<%=disp%>"><%=red%></a>
            <a class="nav-link" href="search.html">Albums</a>
            <a class="nav-link" id="spotify-nav" href="">Connect with Spotify</a>
        </div>
    </div>

    <div class="container">
        <div id="text">
            <p>Track what albums you listen to.</p>
            <p>Share with your friends.</p>
        </div>

        <div id="recently-added">
            <p>Recently Added:</p>

            <div id="album-imgs-div">
                <div class="album-img"></div>
                <div class="album-img"></div>
                <div class="album-img"></div>
            </div>
        </div>
    </div>
</body>
</html>ml>