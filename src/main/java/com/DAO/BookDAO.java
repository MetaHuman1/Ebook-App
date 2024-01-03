package com.DAO;

import com.entty.BookDetails;

import java.util.List;


public interface BookDAO {

     boolean addBooks(BookDetails bookDetails);

    List<BookDetails> getAllBooks();
}
