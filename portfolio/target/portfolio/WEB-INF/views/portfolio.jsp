<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>My Portfolio</title>
    <style>
        <style>
    body {
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        margin: 0;
        padding: 40px;
        background-color: #121212;
        color: #e0e0e0;
        line-height: 1.6;
    }
    .header {
        text-align: center;
        margin-bottom: 40px;
    }
    h1 {
        color: #bb86fc;
        font-size: 2.5rem;
        margin-bottom: 10px;
    }
    h2 {
        color: #03dac6;
        border-bottom: 2px solid #03dac6;
        padding-bottom: 5px;
        margin-top: 30px;
    }
    .section {
        max-width: 800px;
        margin: 0 auto 30px;
        padding: 20px;
        background-color: #1e1e1e;
        border-radius: 8px;
        box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
    }
    .skill, .project {
        display: inline-block;
        margin: 5px;
        padding: 10px 20px;
        border-radius: 20px;
        font-weight: 500;
        transition: all 0.3s ease;
    }
    .skill {
        background-color: #3700b3;
        color: white;
    }
    .project {
        background-color: #018786;
        color: white;
    }
    .skill:hover, .project:hover {
        transform: translateY(-3px);
        box-shadow: 0 6px 12px rgba(0, 0, 0, 0.15);
    }
</style>
    </style>
</head>
<body>
    <div class="header">
	 <h1>Welcome to FAYAZ's Portfolio</h1>
    </div>
    
    <div class="section">
        <h2>Skills</h2>
        <c:forEach items="${skills}" var="skill">
            <span class="skill">${skill}</span>
        </c:forEach>
    </div>
    
    <div class="section">
        <h2>Projects</h2>
        <c:forEach items="${projects}" var="project">
            <span class="project">${project}</span>
        </c:forEach>
    </div>
    
    <div class="section">
        <p>This application is deployed on AWS Ubuntu with Tomcat using Git and Maven!</p>
    </div>
</body>
</html>
