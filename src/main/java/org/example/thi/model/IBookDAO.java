package org.example.thi.model;

import java.sql.SQLException;
import java.util.List;

public interface IBookDAO {
    public List<Book> showAllBooks();
    public Book searchBookById(int id);
    public boolean borrowBook(Book book) throws SQLException;
}
