package action;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mbti.MbtiDAO;
import mbti.MbtiDTO;
import total.TotalDAO;


public class resultAction extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String mbti ="";
	 	int ei = 0;
	 	int sn = 0;
	 	int tf = 0;
	 	int jp = 0;
	 	
	 	try{
	 		ei += Integer.parseInt(request.getParameter("ei1"));
	 	 	ei += Integer.parseInt(request.getParameter("ei2"));
	 	 	ei += Integer.parseInt(request.getParameter("ei3"));
	 	 	sn += Integer.parseInt(request.getParameter("sn1"));
	 	 	sn += Integer.parseInt(request.getParameter("sn2"));
	 	 	sn += Integer.parseInt(request.getParameter("sn3"));
	 	 	tf += Integer.parseInt(request.getParameter("tf1"));
	 	 	tf += Integer.parseInt(request.getParameter("tf2"));
	 	 	tf += Integer.parseInt(request.getParameter("tf3"));
	 	 	jp += Integer.parseInt(request.getParameter("jp1"));
	 	 	jp += Integer.parseInt(request.getParameter("jp2"));
	 	 	jp += Integer.parseInt(request.getParameter("jp3"));
	 	}catch(NumberFormatException e){
	 		PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert ('설문이 안된 항목이 있습니다.');");
			script.println("history.back()");
			script.println("</script>");
			script.close();
	 	}
	 	
		mbti += (ei > 1)? "E" : "I";
	 	mbti += (sn > 1)? "S" : "N";
	 	mbti += (tf > 1)? "T" : "F";
	 	mbti += (jp > 1)? "J" : "P";
	 	
	 	MbtiDAO md = new MbtiDAO(); 
	 	MbtiDTO mt = md.mbtiResult(mbti); 
	 	int people = mt.getPeople();
	 	md.updatePeople(people + 1, mbti); 
	 	TotalDAO td = new TotalDAO(); 
	 	int total = td.selectTotal();
	 	td.updateTotal(total+1); 
	 	double avg = (double)people / (double)total * 100;
	 	
	 	request.setAttribute("mbti", mbti);
		request.setAttribute("img", mt.getImgRoot());
		request.setAttribute("result", mt.getResult());
		request.setAttribute("explanation", mt.getExplanation());
		request.setAttribute("avg", (int)avg);
		
		request.getRequestDispatcher("result.jsp").forward(request, response);
	} 
}
