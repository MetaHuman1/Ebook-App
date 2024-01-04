package com.entty;

public class Cart {

    private int cid;
    private int bid;
    private int user_id;
    private String bookName;
    private String author;
    private Double price;
    private Double totalPrice;

    public Cart() {
    }

    public Cart(int cid, int id, int user_id, String bookName, String author, Double price, Double totalPrice) {
        this.cid = cid;
        this.bid = id;
        this.user_id = user_id;
        this.bookName = bookName;
        this.author = author;
        this.price = price;
        this.totalPrice = totalPrice;
    }

    public int getCid() {
        return cid;
    }

    public void setCid(int cid) {
        this.cid = cid;
    }

    public int getBid() {
        return bid;
    }

    public void setBid(int id) {
        this.bid = id;
    }

    public int getUser_id() {
        return user_id;
    }

    public void setUser_id(int user_id) {
        this.user_id = user_id;
    }

    public String getBookName() {
        return bookName;
    }

    public void setBookName(String bookName) {
        this.bookName = bookName;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public Double getPrice() {
        return price;
    }

    public void setPrice(Double price) {
        this.price = price;
    }

    public Double getTotalPrice() {
        return totalPrice;
    }

    public void setTotalPrice(Double totalPrice) {
        this.totalPrice = totalPrice;
    }

    @Override
    public String toString() {
        return "Cart{" +
                "cid=" + cid +
                ", id=" + bid +
                ", user_id=" + user_id +
                ", bookName='" + bookName + '\'' +
                ", author='" + author + '\'' +
                ", price=" + price +
                ", totalPrice=" + totalPrice +
                '}';
    }
}
