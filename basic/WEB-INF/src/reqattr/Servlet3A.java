package reqattr;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Servlet3A extends HttpServlet{

	public void doGet(HttpServletRequest request,
						HttpServletResponse response) throws IOException,ServletException{

		SampleBean bean = new SampleBean();
		bean.setMessage("そうでっか");
		request.setAttribute("bean", bean);

		RequestDispatcher dispatcher = request.getRequestDispatcher("/reqattr/result.jsp");

		dispatcher.forward(request, response);

	}

}
