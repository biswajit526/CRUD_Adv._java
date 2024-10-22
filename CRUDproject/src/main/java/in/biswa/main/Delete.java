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
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import in.biswa.entity.Student;


@WebServlet("/delete")
public class Delete extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String roll = request.getParameter("roll");
		
		SessionFactory sessionFactory = new Configuration().configure().addAnnotatedClass(Student.class).buildSessionFactory();
		Session session = sessionFactory.openSession();
		
		RequestDispatcher rd = request.getRequestDispatcher("/delete.jsp");
		
		try {
			Student st = session.get(Student.class, Integer.parseInt(roll));
			
			if(st != null) {
				Transaction transaction = session.beginTransaction();
				
				session.delete(st);
				
				transaction.commit();
				
				request.setAttribute("message", "Success : Record of Student with roll number " + roll + " deleted successfully");
	            rd.forward(request, response);
	            return;
			}
			else {
				request.setAttribute("message", "Error : Student with roll number " + roll + " not found.");
				rd.forward(request, response);
				return;
			}
		} catch (Exception e) {
			request.setAttribute("message", "Error : Some Internal Error Occurd.");
            rd.forward(request, response);
            
			e.printStackTrace();
		}finally {
			session.close();
		}
	}

}
