package input;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class GuessServlet extends HttpServlet{


	private int hit = new Random().nextInt(10);

	public void doGet(HttpServletRequest request,
						HttpServletResponse response) throws ServletException, IOException{

		request.setCharacterEncoding("Windows-31J");

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

		response.setContentType("text/plain; charset=Windows-31J");
		PrintWriter out = response.getWriter();

		if(error != null) {
			out.println(error);
		}else {

			out.println("数字:" + numberStr );
			out.println("正:" + hit);

			if(number == hit) {

				out.println("当たり！");

			}else {

				out.println("はずれ");

			}

		}







	}

}
