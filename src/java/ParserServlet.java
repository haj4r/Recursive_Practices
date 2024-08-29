/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
/**
 *
 * @author hajarismail and sarahyasmin
 */
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/ParserServlet")
public class ParserServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String input = request.getParameter("input");
        RecursiveDescentParser parser = new RecursiveDescentParser(input);
        boolean result = parser.parse();

        String resultMessage = result ? "Accepted" : "Rejected";
        request.setAttribute("result", resultMessage);
        request.getRequestDispatcher("/index.jsp").forward(request, response);
    }
}
