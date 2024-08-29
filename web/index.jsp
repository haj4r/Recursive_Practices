<%-- 
    Document   : index.jsp
    Created on : 18 Jun 2024, 01:41:25
    Author     : hajarismail and sarahyasmin
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Recursive Descent Parser</title>
        <style>
            body {
                font-family: Arial, sans-serif;
                padding-top: 50px;
            }
            .container {
                width: 50%;
                margin: 0 auto;
                padding: 20px;
                border: 1px solid #ccc;
                border-radius: 5px;
                box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
                position: relative;
            }
            .close-btn {
                position: absolute;
                top: 10px;
                right: 10px;
                font-size: 20px;
                cursor: pointer;
                color: #888;
            }
            .close-btn:hover {
                color: #000;
            }
            .input-section, .output-section {
                margin-bottom: 20px;
            }
            .output-section {
                background-color: #f9f9f9;
                padding: 10px;
                border-radius: 5px;
            }
            .error {
                color: red;
            }
            input[type="submit"] {
                background-color: #7DA2EB;
                color: white;
                padding: 5px 15px;
                border: none;
                border-radius: 5px;
                cursor: pointer;
                font-size: 12px;
            }

            input[type="submit"]:hover {
                background-color: #7DA2EB;
            }
        </style>
        <script>
            function closeContainer() {
                document.querySelector('.container').style.display = 'none';
            }
        </script>
    </head>
    <body>
        <div class="container">
            <span class="close-btn" onclick="closeContainer()">×</span>
            <h2>Parser Project</h2>
            <div class="input-section">
                <form action="ParserServlet" method="post">
                    <label for="input">Enter:</label>
                    <input type="text" id="input" name="input" required>
                    <input type="submit" value="Parse">
                </form>
            </div>
            <div class="output-section">
                <h3>Result:</h3>
                <p><%= request.getAttribute("result") != null ? request.getAttribute("result") : "" %></p>
                <p class="error"><%= request.getAttribute("error") != null ? request.getAttribute("error") : "" %></p>
            </div>
        </div>
    </body>
</html>
