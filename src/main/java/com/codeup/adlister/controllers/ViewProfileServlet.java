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

@WebServlet(name = "controllers.ViewProfileServlet", urlPatterns = "/profile")
public class ViewProfileServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        User loggedInUser = (User) request.getSession().getAttribute("user");
        if (loggedInUser == null) {
            response.sendRedirect("/login");
            return;
        }
        request.setAttribute("ads", DaoFactory.getAdsDao().adsByUsername(loggedInUser.getUsername()));
        //Delete works, just need to get dynamic id from click, and pass this to the jsp
//        DaoFactory.getAdsDao().deleteAd(32);
//        Ad ad = new Ad(30, 6, "Cats for Sale!", "Litter of cats please take one!");
//        DaoFactory.getAdsDao().update(ad);
        request.getRequestDispatcher("/WEB-INF/profile.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int adID = Integer.parseInt(request.getParameter("ad_id"));
        DaoFactory.getAdsDao().deleteAd(adID);
        response.sendRedirect("/profile");
    }


}
