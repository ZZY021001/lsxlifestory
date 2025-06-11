<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>胜仙的人生</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <style>
        body {
            background: url('/pic/bg1.jpeg') no-repeat center center fixed;
            background-size: cover;
            min-height: 100vh;
            margin: 0;
            padding: 0;
            font-family: 'Microsoft YaHei', sans-serif;
            display: flex;
            align-items: center;
            justify-content: center;
            color: #fff;
            text-align: center;
        }

        .overlay {
            background: rgba(0, 0, 0, 0.5);
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            z-index: 0;
        }

        .content {
            position: relative;
            z-index: 1;
            max-width: 800px;
            padding: 2rem;
        }

        .main-title {
            font-size: 3rem;
            font-weight: bold;
            margin-bottom: 2rem;
            text-shadow: 0 0 10px rgba(0, 0, 0, 0.5);
        }

        .subtitle {
            font-size: 1.5rem;
            margin-bottom: 3rem;
            opacity: 0.9;
        }

        .start-btn {
            padding: 1rem 3rem;
            font-size: 1.5rem;
            border-radius: 50px;
            background: rgba(255, 255, 255, 0.2);
            border: 2px solid white;
            color: white;
            transition: all 0.3s;
            animation: pulse 2s infinite;
        }

        .start-btn:hover {
            background: rgba(255, 255, 255, 0.3);
            transform: scale(1.1);
        }

    </style>
</head>
<body>
<div class="overlay"></div>
<div class="content">
    <h1 class="main-title">胜仙的人生</h1>
    <p class="subtitle">一个平凡而伟大的人生故事</p>
    <a href="events.jsp" class="btn start-btn">开始浏览</a>
</div>
</body>
</html>