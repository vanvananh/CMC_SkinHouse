package controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Comment;
import model.GioHang;
import model.SanPham;
import dao.CommentDao;
import dao.SanPhamDao;

/**
 * Servlet implementation class DetailServlet
 */
@WebServlet("/DetailServlet")
public class DetailServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DetailServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	
		int id;
		id = Integer.parseInt(request.getParameter("id"));
		SanPhamDao spdao = new SanPhamDao();
		SanPham sp= spdao.getItemByName(id);
		CommentDao comdao = new CommentDao();
		List< Comment> listcom = new ArrayList<Comment>();
		listcom = comdao.getComment(id);
		request.setAttribute("sp", sp);
		request.setAttribute("comment", listcom);
		RequestDispatcher requestdispatcher;
		requestdispatcher = request.getRequestDispatcher("detail.jsp");
		requestdispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		int id;
		int soluong;
		id = Integer.parseInt(request.getParameter("id"));
		soluong = Integer.parseInt("soluong");
	    GioHang cart = new GioHang();
	    cart.additem(id, soluong);
	    RequestDispatcher rDispatcher;
	    HttpSession session = request.getSession();
		session.setAttribute("giohang",cart);
		rDispatcher = request.getRequestDispatcher("giohang.jsp");

}
}
