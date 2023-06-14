import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Random;



@WebServlet(name = "GuessServlet", urlPatterns = "/guess")
public class GuessServlet extends HttpServlet {


    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        request.getRequestDispatcher("guess.jsp").forward(request, response);

    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        int input = Integer.parseInt(request.getParameter("number"));
        int min = 1;
        int max = 3;
        int random_int = (int)Math.floor(Math.random() * (max - min + 1) + min);

        System.out.println(input);
        System.out.println(random_int);
        if(input == random_int) {
            response.sendRedirect("/correct");
        } else {
            response.sendRedirect("/incorrect");

        }




    }
}
