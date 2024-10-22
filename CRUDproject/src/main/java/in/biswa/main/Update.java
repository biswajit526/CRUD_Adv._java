package in.biswa.main;

import java.io.IOException;

import java.io.InputStream;


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
@WebServlet("/update")
public class Update extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private static SessionFactory sessionFactory;

	@Override
	public void init() throws ServletException {
		// Initialize the SessionFactory only once
		sessionFactory = new Configuration().configure().addAnnotatedClass(Student.class).buildSessionFactory();
	}

	@Override
	public void destroy() {
		// Close SessionFactory when the servlet is destroyed
		sessionFactory.close();
	}

	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		// Set response type
		response.setContentType("text/html");


		// Fetch the form parameters
		String roll = request.getParameter("roll");
		String name = request.getParameter("name");
		String hostel = request.getParameter("hostel_name");
		String room = request.getParameter("room_no");
		Part imagePart = request.getPart("imageInput");
		
		RequestDispatcher rd = request.getRequestDispatcher("/update.jsp");
		
		 // Validate the roll number (required field)
        if (roll == null || roll.isEmpty()) {
            request.setAttribute("message", "Error: Roll number is required.");
            rd.forward(request, response);
            return;
        }

		// Image processing
		byte[] imgArray = null;
		if (imagePart != null && imagePart.getSize() > 0) {
			try (InputStream inputStream = imagePart.getInputStream()) {
				imgArray = new byte[inputStream.available()];
				inputStream.read(imgArray);
			} catch (IOException e) {
				request.setAttribute("message", "Error reading image file.");
	            rd.forward(request, response);
	            
				e.printStackTrace();
			}
		}

		Session session = sessionFactory.openSession();
		Transaction transaction = null;

		try {
			// Begin transaction
			transaction = session.beginTransaction();

			// Fetch the student by roll number
			Student st = null;
			if (roll != null) {
				st = session.get(Student.class, Integer.parseInt(roll));

			}

			if (st != null) {
				// Update student details

				if (name != null && !name.isEmpty()) {
					st.setName(name);
				}
				if (hostel != null && !hostel.isEmpty()) {
					st.setHostelName(hostel);
				}
				if (room != null && !room.isEmpty()) {
					st.setRoomNo(Integer.parseInt(room));
				}
				if (imgArray != null) {
					st.setImg(imgArray);
				}

				// Save updates
				session.update(st);

				// Commit transaction
				transaction.commit();

				// Provide feedback to the user
				request.setAttribute("message", "Student details updated successfully!");
				rd.forward(request, response);
				return;

			} else {
//				out.println("<p>Student with roll number " + roll + " not found.</p>");
				request.setAttribute("message", "Error : Student with roll number " + roll + " not found.");
				rd.forward(request, response);
			}
		} catch (Exception e) {
			if (transaction != null) {
				transaction.rollback(); // Rollback on error
			}
			
			request.setAttribute("message", "Update operation failed: "+ e.getMessage() );
			rd.forward(request, response);

			e.printStackTrace();
		} finally {
			// Close the session in the finally block to ensure it's always closed
			session.close();
		}
	}

}
