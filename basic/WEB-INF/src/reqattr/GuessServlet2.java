package reqattr;

import java.io.IOException;
import java.util.Random;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class GuessServlet2 extends HttpServlet{

	private int hit = new Random().nextInt(10);

	public void doGet(HttpServletRequest request,
						HttpServletResponse response)throws IOException,ServletException{



		String numberStr = request.getParameter("number");

		String error = null;
		int number = -1;

		//必須チェック
		if(numberStr == null || numberStr.length() == 0 ) {
			error="何か入れてね";

		}



		if(error == null) {
			try {
				number = Integer.parseInt(numberStr);

				if(number < 0 || number > 9) {

					error = "0から9までの数字を入れてください。";

				}


			//型チェック
			}catch (NumberFormatException e) {
				error = "数字を入力してください。";
			}


		}

		RequestDispatcher dispatch = request.getRequestDispatcher("/reqattr/guess.jsp");
		response.setContentType("text/plain; charset=Windows-31J");


		if(error != null) {
			request.setAttribute("result", error);
		}else {

			if(number == hit) {

				request.setAttribute("result", "当たり。数字＝" + hit);
				dispatch = request.getRequestDispatcher("/reqattr/guess_hit.jsp");

			}else {

				request.setAttribute("result", "はずれ。数字＝" + hit);

			}

		}
		dispatch.forward(request, response);
	}


}
