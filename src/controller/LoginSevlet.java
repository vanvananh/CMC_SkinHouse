package controller;



import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.NhanVienDao;
import model.NhanVien;
/**
 * Servlet implementation class LoginSevlet
 */
@WebServlet("/LoginSevlet")
public class LoginSevlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginSevlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		RequestDispatcher rDispatcher;
		rDispatcher = request.getRequestDispatcher("login.jsp");
		rDispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String email,password;
		 email = request.getParameter("email");
		 password = request.getParameter("password");
		 RequestDispatcher rDispatcher;
		 NhanVienDao nvdao = new NhanVienDao();
		 try {
			if(nvdao.Login(email, password)!=null)
			 {
				NhanVien nv = new NhanVien();
				nv = nvdao.Login(email, password);
				request.setAttribute("nhanvien", nv);
				rDispatcher = request.getRequestDispatcher("manage.jsp");
				rDispatcher.forward(request, response);
			 }
			 else {
				 rDispatcher = request.getRequestDispatcher("login.jsp");
				 rDispatcher.forward(request, response);
			}
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
