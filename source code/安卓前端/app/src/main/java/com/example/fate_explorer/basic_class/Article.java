package com.example.fate_explorer.basic_class;

public class Article {
    private int article_id;
    private String article_title;
    private String article_content;
    private String author;

    public Article(int article_id, String article_title, String article_content, String author) {
        this.article_id = article_id;
        this.article_title = article_title;
        this.article_content = article_content;
        this.author = author;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public Article() {
    }

    public int getArticle_id() {
        return article_id;
    }

    public void setArticle_id(int article_id) {
        this.article_id = article_id;
    }

    public String getArticle_title() {
        return article_title;
    }

    public void setArticle_title(String article_title) {
        this.article_title = article_title;
    }

    public String getArticle_content() {
        return article_content;
    }

    public void setArticle_content(String article_content) {
        this.article_content = article_content;
    }
}
