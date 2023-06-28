package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.Ad;
import com.codeup.adlister.models.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "controllers.UpdateAdServlet", urlPatterns = "/ads/update")
public class UpdateAdServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //make sure user is logged in to view page
        User loggedInUser = (User) request.getSession().getAttribute("user");
        if (loggedInUser == null) {
            response.sendRedirect("/login");
            return;
        }
        int adId = Integer.parseInt(request.getParameter("adId"));
        request.setAttribute("ads", DaoFactory.getAdsDao().adsByID(adId));
        request.getRequestDispatcher("/WEB-INF/ads/update.jsp").forward(request, response);

    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        User loggedInUser = (User) request.getSession().getAttribute("user");
        Ad ad = new Ad(
                Long.parseLong(request.getParameter("adId")),
                loggedInUser.getId(),
                request.getParameter("title"),
                request.getParameter("description")
        );

        DaoFactory.getAdsDao().update(ad);
        response.sendRedirect("/profile");
    }
}
