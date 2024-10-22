package in.biswa.main;

import java.io.IOException;

import java.io.InputStream;
import java.io.Serializable;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import in.biswa.entity.Student;


@MultipartConfig
@WebServlet("/insert")
public class Insert extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String roll = request.getParameter("roll");
		String name = request.getParameter("name");
		String hostelName = request.getParameter("hostel_name");
		String room_no = request.getParameter("room_no");
		Part imagePart = request.getPart("imageInput");
		
		RequestDispatcher rd = null;
		
		byte[] imgArray = null;
        if (imagePart != null && imagePart.getSize() > 0) {
            try (InputStream inputStream = imagePart.getInputStream()) {
                imgArray = new byte[inputStream.available()];
                inputStream.read(imgArray);
                inputStream.close();
            }
        }
		
		SessionFactory sessionFactory = new Configuration().configure().addAnnotatedClass(Student.class).buildSessionFactory();
		Session session = sessionFactory.openSession();
		Transaction transaction = session.beginTransaction();
		
		Student st = new Student();
		st.setRollNo(Integer.parseInt(roll));
		st.setName(name);
		st.setHostelName(hostelName);
		st.setRoomNo(Integer.parseInt(room_no));
		st.setImg(imgArray);
		
		Serializable id = session.save(st);
		if(id != null) {
			rd = request.getRequestDispatcher("insertSuccess.jsp");
			request.setAttribute("key", id);
			rd.forward(request, response);
		}else {
			rd = request.getRequestDispatcher("insertFailure.jsp");
			rd.forward(request, response);
		}
		
		
		transaction.commit();
		session.close();
	}

}
