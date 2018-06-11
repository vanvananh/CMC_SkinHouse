package controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.SanPham;
import dao.NhanVienDao;
import dao.SanPhamDao;

/**
 * Servlet implementation class AddItemServlet
 */
@WebServlet("/AddItemServlet")
public class AddItemServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddItemServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		RequestDispatcher rDispatcher;
		rDispatcher = request.getRequestDispatcher("additem.jsp");
		rDispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		 int id,soluong;
		 double gia;
		 String ten,hang,loai,label;
		 id = Integer.parseInt(request.getParameter("id"));
		 ten = request.getParameter("ten");
		 hang = request.getParameter("hang");
		 loai = request.getParameter("loai");
		 gia = Double.parseDouble(request.getParameter("gia"));
		 label = request.getParameter("label");
		 soluong = Integer.parseInt(request.getParameter("soluong"));
		 RequestDispatcher rDispatcher;
		 String mota;
		 mota = request.getParameter("mota");
		 SanPhamDao nvdao = new SanPhamDao();
		 SanPham sp = new SanPham(id,ten,hang,loai,soluong,label,gia,mota);
		 if (nvdao.addItem(sp)){
			 List<SanPham> list;
			try {
				list = nvdao.getAllItem();
				request.setAttribute("sp", list);
				 rDispatcher = request.getRequestDispatcher("sanpham.jsp");
				 rDispatcher.forward(request, response);
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				rDispatcher = request.getRequestDispatcher("additem.jsp");
				 rDispatcher.forward(request, response);
				e.printStackTrace();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				rDispatcher = request.getRequestDispatcher("additem.jsp");
				 rDispatcher.forward(request, response);
				e.printStackTrace();
			}
			 
		 } else {
			 rDispatcher = request.getRequestDispatcher("additem.jsp");
			 rDispatcher.forward(request, response);
		 }
	}

}
