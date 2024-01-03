package com.DAO;

import com.entty.BookDetails;

import java.util.List;


public interface BookDAO {

     boolean addBooks(BookDetails bookDetails);

    List<BookDetails> getAllBooks();

    BookDetails getBookById(int id);

    boolean updateEditBook(BookDetails bookDetails);

    boolean deleteBook(int id);

    List<BookDetails> getNewBook();
    List<BookDetails> getRecentBook();
    List<BookDetails> getOldBook();

    List<BookDetails> getAllRecentBooks();
    List<BookDetails> getAllNewBooks();
    List<BookDetails> getAllOldBooks();

}









