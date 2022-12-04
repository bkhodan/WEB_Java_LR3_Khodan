package khodan.servlets;


import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Map;


@WebServlet("/voitingServlet")
public class VoitingServlet extends HttpServlet {
    Map<String, Integer> res;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String strOfAllCandidates = getServletContext().getInitParameter("candidatesStr");

        String[] arrCandidates = strOfAllCandidates.split(",");

        res = new java.util.TreeMap<>();
        for (String i : arrCandidates) {
            res.put(i, 0);
        }
        request.setAttribute("candidates", res);

        String path = "/voiting_free.jsp";
        ServletContext servletContext = getServletContext();
        RequestDispatcher requestDispatcher = servletContext.getRequestDispatcher(path);
        requestDispatcher.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        try {
            for (Map.Entry<String, Integer> e : res.entrySet()) {
                int value = e.getValue();
                String nameLang = e.getKey();

                if (request.getParameter("vote").equals(nameLang)) {
                    res.put(nameLang, ++value);
                }
            }
        } catch (Exception e) {};

        request.setAttribute("results", res);
        String path = "/results.jsp";
        ServletContext servletContext = getServletContext();
        RequestDispatcher requestDispatcher = servletContext.getRequestDispatcher(path);
        requestDispatcher.forward(request, response);
    }
}
