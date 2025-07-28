package com.yourportfolio;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/portfolio")
public class PortfolioServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        
        request.setAttribute("name", "Mohammad Fayaz");
        request.setAttribute("skills", new String[]{"Linux", "Git", "Maven", "AWS","networking"});
        request.setAttribute("projects", new String[]{"Git-maven project","vpc - project"});
        
        request.getRequestDispatcher("/WEB-INF/views/portfolio.jsp").forward(request, response);
    }
}
