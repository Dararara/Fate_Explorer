package com.example.fate_explorer.basic_class;

public class Book {
    private String book_title;
    private String isbn_code;
    private String book_writer;

    public String getIsbn_code() {
        return isbn_code;
    }

    public void setIsbn_code(String isbn_code) {
        this.isbn_code = isbn_code;
    }

    public String getBook_writer() {
        return book_writer;
    }

    public void setBook_writer(String book_writer) {
        this.book_writer = book_writer;
    }

    public String getBook_title() {
        return book_title;
    }

    public void setBook_title(String book_title) {
        this.book_title = book_title;
    }

    public Book(String book_title, String isbn_code, String book_writer) {
        this.book_title = book_title;
        this.isbn_code = isbn_code;
        this.book_writer = book_writer;
    }
}
