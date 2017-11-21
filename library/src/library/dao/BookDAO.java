package library.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import library.enums.BookEnum;
import library.model.Book;
import library.util.ConnectionFactory;

public class BookDAO {
	
	public static boolean addBook(Book book) {
		Connection conn = null;
		PreparedStatement ps = null;
		
		try {
			conn = ConnectionFactory.getConnection();
			String sql = "insert into book (isbn, title, author, publisher, description) values (?, ?, ?, ?, ?)";
			ps = conn.prepareStatement(sql);
			ps.setInt(1, book.getIsbn());
			ps.setString(2, book.getTitle());
			ps.setString(3, book.getAuthor());
			ps.setString(4, book.getPublisher());
			ps.setString(5, book.getDescription());
			ps.executeUpdate();
			
			return true;
		} catch (SQLException e) {
			e.printStackTrace();			
			return false;
		} finally {
			if (conn != null) {
				ConnectionFactory.closeConnection(conn);
			}
		}
	}
	
	public static ArrayList<Book> getBooks() {
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		
		try {
			conn = ConnectionFactory.getConnection();
			ps = conn.prepareStatement("select * from book");
			rs = ps.executeQuery();
			ArrayList<Book> listBook = new ArrayList<Book>();
			while(rs.next()) {
				Book book = new Book();
				book.setIsbn(rs.getInt(BookEnum.ISBN.index()));
				book.setTitle(rs.getString(BookEnum.TITLE.index()));
				book.setAuthor(rs.getString(BookEnum.AUTHOR.index()));
				book.setPublisher(rs.getString(BookEnum.PUBLISHER.index()));
				book.setDescription(rs.getString(BookEnum.DESCRIPTION.index()));
				book.setImgUrl(rs.getString(BookEnum.IMG_URL.index()));
				listBook.add(book);
			}
			return listBook;
		}catch (Exception e) {
			e.printStackTrace();
			return null;
		} finally {
			if (conn != null) {
				ConnectionFactory.closeConnection(conn);
			}
		}
	}
	
	public static Book getBook(int isbn) {
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		
		try {
			conn = ConnectionFactory.getConnection();
			ps = conn.prepareStatement("select * from book where isbn = " + isbn);
			rs = ps.executeQuery();
			Book book = new Book();
			while(rs.next()) {				
				book.setIsbn(rs.getInt(BookEnum.ISBN.index()));
				book.setTitle(rs.getString(BookEnum.TITLE.index()));
				book.setAuthor(rs.getString(BookEnum.AUTHOR.index()));
				book.setPublisher(rs.getString(BookEnum.PUBLISHER.index()));
				book.setDescription(rs.getString(BookEnum.DESCRIPTION.index()));
				book.setImgUrl(rs.getString(BookEnum.IMG_URL.index()));
			}
			return book;
		}catch (Exception e) {
			e.printStackTrace();
			return null;
		} finally {
			if (conn != null) {
				ConnectionFactory.closeConnection(conn);
			}
		}
	}
	
	public static boolean updateBook(Book book) {
		Connection conn = null;
		PreparedStatement ps = null;
		
		try {
			conn = ConnectionFactory.getConnection();
			String sql = "update book set title=?, author=?, publisher=?, description=? where isbn = " + book.getIsbn();
			ps = conn.prepareStatement(sql);
			ps.setString(1, book.getTitle());
			ps.setString(2, book.getAuthor());
			ps.setString(3, book.getPublisher());
			ps.setString(4, book.getDescription());
			ps.executeUpdate();
			
			return true;
		} catch (SQLException e) {
			e.printStackTrace();			
			return false;
		} finally {
			if (conn != null) {
				ConnectionFactory.closeConnection(conn);
			}
		}
	}

}