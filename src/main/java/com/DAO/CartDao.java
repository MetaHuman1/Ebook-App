package com.DAO;

import com.entty.BookDetails;
import com.entty.Cart;

import java.util.List;

public interface CartDao {
    boolean addCart(Cart cart);

    List<Cart> getBookByUser(int user_id);
}







