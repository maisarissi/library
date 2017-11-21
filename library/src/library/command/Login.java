package library.command;

import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import library.dao.BookDAO;
import library.dao.UserDAO;
import library.model.User;

public class Login implements Command {
	
	public String execute(HttpServletRequest request,
			HttpServletResponse response)
				throws Exception {
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		
		User user = new User();
		user.setEmail(email);
		user.setPassword(encrypt(email, password));
		UserDAO usuarioDAO = new UserDAO();
		System.out.println(usuarioDAO.checkUser(user));
		if(usuarioDAO.checkUser(user)) {
			request.setAttribute("books", BookDAO.getBooks());
			return "allBooks.jsp";
		}
		request.setAttribute("alert", "alert alert-danger");
		request.setAttribute("message", "Email ou senha incorretos!");
		return "index.jsp";
	}
	
	private String encrypt(String email, String password) {
		String concat = email + password;
		try {
			StringBuffer encrypted = new StringBuffer();			
			MessageDigest digest = MessageDigest.getInstance("SHA-256");
			byte[] hash = digest.digest(concat.getBytes(StandardCharsets.UTF_8));
			for(int i=0; i<hash.length; i++) {
				encrypted.append(hash[i]);
			}
			return encrypted.toString();
		}catch(Exception e) {
			e.printStackTrace();
		}
		return null;
	}

}