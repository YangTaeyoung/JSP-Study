

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class MultiParamServlet
 */
@WebServlet("/MultiParamServlet")
public class MultiParamServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MultiParamServlet() {
        super();
        // TODO Auto-generated constructor stubf
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		String[] hobby = request.getParameterValues("hobby");
		out.println("<html>");
		out.println("<head>");
		out.println("<title>Loop Servlet</title>");
		out.println("</head>");
		out.println("<body>");
		out.println("결과 <hr/>");
		if(hobby == null)
		{
			out.println("<p>선택한 항목이 없습니다.</p>");
		}
		else
		{
			
			out.println("<table border=\"1\"");
			for (int i = 0; i < hobby.length; i++)
			{
			out.println("<tr>");
			out.println( "<td width =\"80\" align=\"center\">");
			out.println(hobby[i]);
			out.println("</td></tr>");
			}
			out.println("</table>");
		}
		out.println("</body>");
		out.println("</html>");
		
	}

}
