package session;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class SessionListServlet extends HttpServlet {

	public void doGet(HttpServletRequest request,
						HttpServletResponse response)throws IOException,ServletException{

		//入力パラメータ―の取得
		String keyParam = request.getParameter("key");
		String valueParam = request.getParameter("value");

		//セッションの取得
		HttpSession session = request.getSession();

		//セッションオブジェクトの格納
		if(keyParam != null) {
			session.setAttribute(keyParam, valueParam);
		}

		//フォームの出力
		response.setContentType("text/html; charset=Womdows-31J");

		PrintWriter out = response.getWriter();
		out.println("<html><body>");
		out.println("<form action=\"\">");
		out.println("key <input type=\"text\" name=\"key\">");
		out.println("value <input type=\"text\" name=\"value\">");
		out.println("<input type=\"submit\" value=\"登録\"><br>");
		out.println("</form>");

		//セッション属性のオブジェクト一覧を出力
		Enumeration<String> names = session.getAttributeNames();
		while(names.hasMoreElements()) {
			String key = names.nextElement();
			Object value = session.getAttribute(key);
			out.print(key + "=" + value + "<br>");

		}

		out.println("</body></html>");

	}
}
