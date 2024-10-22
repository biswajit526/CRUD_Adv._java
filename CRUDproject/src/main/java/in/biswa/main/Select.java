package in.biswa.main;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import in.biswa.entity.Student;


@WebServlet("/select")
public class Select extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String roll = request.getParameter("roll");
		RequestDispatcher rd = null;
		
		SessionFactory sessionFactory = new Configuration().configure().addAnnotatedClass(Student.class).buildSessionFactory();
		Session session = sessionFactory.openSession();
		
		Student student = session.get(Student.class, Integer.parseInt(roll));
		
		if(student != null) {
			request.setAttribute("Roll", student.getRollNo());
			request.setAttribute("Name", student.getName());
			request.setAttribute("Hostel_name", student.getHostelName());
			request.setAttribute("Room_no", student.getRoomNo());
			request.setAttribute("Image", student.getImg());
			
			rd = request.getRequestDispatcher("selectSuccess.jsp");
			rd.forward(request, response);
		}
		else {
			rd = request.getRequestDispatcher("selectFailure.jsp");
			request.setAttribute("roll", roll);
			rd.forward(request, response);
		}
		
		session.close();
	}

}
