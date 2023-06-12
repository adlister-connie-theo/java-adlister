import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "HelloWorldServlet", urlPatterns = "/hello")


public class HelloWorldServlet extends HttpServlet {
    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws IOException {

        res.setContentType("text/html");
        PrintWriter out = res.getWriter();

        String firstname = req.getParameter("firstname");
        System.out.println(firstname);
        if (firstname == null) {
            out.println("<h1>Hello, World!</h1>");
        } else {
            out.println("<h1>Hello, " + firstname + "!</h1>");
        }

//        String ageAsString = req.getParameter("age");
//        if(ageAsString != null) {
//            int age = Integer.parseInt(req.getParameter("age"));
//            System.out.println(age);
//        } else {
//            System.out.println("you did not specify an age");
//        }

//        if(req.getParameter("outtahere") != null) {
//            res.sendRedirect("https://www.google.com");
//        }



    }
}
