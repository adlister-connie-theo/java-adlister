package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "AdDetailsServlet", urlPatterns = "/ads/details")
public class AdDetailsServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        System.out.println(request.getParameter("ad_id"));
        int adID = Integer.parseInt( request.getParameter("ad_id"));
        request.setAttribute("ads", DaoFactory.getAdsDao().adsByID(adID));



        request.getRequestDispatcher("/WEB-INF/ads/ad-details.jsp").forward(request, response);
    }



    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
