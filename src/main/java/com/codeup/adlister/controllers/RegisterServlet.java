package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.dao.MySQLUsersDao;
import com.codeup.adlister.models.User;
import com.codeup.adlister.util.Password;
import org.mindrot.jbcrypt.BCrypt;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "controllers.RegisterServlet", urlPatterns = "/register")
public class RegisterServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/WEB-INF/register.jsp").forward(request, response);
        request.getSession().invalidate();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String username = request.getParameter("username");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String passwordConfirmation = request.getParameter("confirm_password");
        HttpSession session = request.getSession();

        // validate input
        boolean inputHasErrors = username.isEmpty()
                || email.isEmpty()
                || password.isEmpty()
                || (!password.equals(passwordConfirmation))
                || DaoFactory.getUsersDao().findByUsername(username) != null;

        // Check if the username already exists
//        if (DaoFactory.getUsersDao().findByUsername(username) != null) {
//            session.setAttribute("usernameIsEmpty", false);
//            return;
//        }


        session.setAttribute("usernameIsEmpty", username.isEmpty());
        session.setAttribute("emailIsEmpty", email.isEmpty());
        session.setAttribute("passwordIsEmpty", password.isEmpty());
        session.setAttribute("passwordDoesntMatch", (!password.equals(passwordConfirmation)));
        session.setAttribute("usernameExists", DaoFactory.getUsersDao().findByUsername(username) != null);


        if (inputHasErrors) {
            response.sendRedirect("/register");
            return;
        }



        // create and save a new user
        User user = new User(username, email, password);

        // hash the password

        String hash = Password.hash(user.getPassword());

        user.setPassword(hash);

        DaoFactory.getUsersDao().insert(user);
        response.sendRedirect("/login");
    }
}
