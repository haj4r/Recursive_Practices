<%-- 
    Document   : try
    Created on : 23 Jun 2024, 11:52:17
    Author     : hajarismail
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bulma/0.9.3/css/bulma.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <title>Login Page</title>
    <style>
        .login-container {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .login-box {
            background-color: white;
            border-radius: 8px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
            overflow: hidden;
        }
        .left-section {
            padding: 2rem;
        }
        .right-section {
            background: url('your-image-url') no-repeat center center;
            background-size: cover;
            width: 100%;
        }
        .left-section .title {
            font-size: 2rem;
            font-weight: bold;
            color: #4a4a4a;
        }
        .left-section .subtitle {
            font-size: 1.5rem;
            color: #4a4a4a;
        }
        .left-section .buttons {
            margin-top: 1rem;
        }
        .left-section .buttons .button {
            margin-right: 0.5rem;
        }
        .left-section .buttons .button.is-custom {
            background-color: #ff4081;
            border: none;
            color: white;
        }
        .left-section .buttons .button.is-custom:hover {
            background-color: #e03574;
        }
        .left-section .social-icons {
            margin-top: 1.5rem;
        }
        .left-section .social-icons i {
            margin-right: 0.5rem;
            color: #4a4a4a;
        }
    </style>
</head>
<body>
    <div class="login-container">
        <div class="columns is-gapless login-box">
            <div class="column is-half left-section">
                <div>
                    <h1 class="title">Hello, welcome!</h1>
                    <h2 class="subtitle">Sign in to continue</h2>
                    <form>
                        <div class="field">
                            <label class="label">Email address</label>
                            <div class="control">
                                <input class="input" type="email" placeholder="name@mail.com" required>
                            </div>
                        </div>
                        <div class="field">
                            <label class="label">Password</label>
                            <div class="control">
                                <input class="input" type="password" placeholder="Password" required>
                            </div>
                        </div>
                        <div class="field">
                            <label class="checkbox">
                                <input type="checkbox"> Remember me
                            </label>
                        </div>
                        <div class="field">
                            <a href="#" class="has-text-grey">Forgot password?</a>
                        </div>
                        <div class="buttons">
                            <button class="button is-custom">Login</button>
                            <button class="button is-light">Sign up</button>
                        </div>
                    </form>
                    <div class="social-icons">
                        <i class="fab fa-facebook-f"></i>
                        <i class="fab fa-twitter"></i>
                        <i class="fab fa-instagram"></i>
                    </div>
                </div>
            </div>
            <div class="column is-half right-section"></div>
        </div>
    </div>
</body>
</html>
