package com.example.fate_explorer.front_interfaxe_op;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.TypeReference;

import com.example.fate_explorer.basic_class.Article;
import com.example.fate_explorer.basic_class.Book;
import com.example.fate_explorer.basic_class.Pedia;

public class ExplorerInfomationJsonOp {
	public void toResult(String jsonstr, ArrayList<String> something, ArrayList<Pedia> pedias,
			ArrayList<Article> articles, ArrayList<Book> books) {

		Map<String, String> temp = JSON.parseObject(jsonstr, new TypeReference<Map<String, String>>() {
		});
		something.add(temp.get("prototype"));
		something.add(temp.get("region"));
		something.add(temp.get("origin"));
		
		List<Map<String, String>> temp2 = JSON.parseObject(temp.get("pedias"), new TypeReference<List<Map<String, String>>>() {
		});
		for (Map<String, String> map : temp2) {
			pedias.add(new Pedia(Integer.parseInt(map.get("pedia_id")), map.get("pedia_name"),map.get("pedia_url")));
			//int pedia_id, String pedia_name, String pedia_url
		}
		
		List<Map<String, String>> temp3 = JSON.parseObject(temp.get("articles"), new TypeReference<List<Map<String, String>>>() {
		});
		for (Map<String, String> map : temp3) {
			articles.add(new Article(Integer.parseInt(map.get("article_id")), map.get("article_title"), map.get("article_content"),map.get("author")));
			//int article_id, String article_title, String article_content, String author
		}
		
		List<Map<String, String>> temp4 = JSON.parseObject(temp.get("books"), new TypeReference<List<Map<String, String>>>() {
		});
		for (Map<String, String> map : temp4) {
			books.add(new Book(map.get("book_title"), map.get("isbn_code"), map.get("book_writer")));
			//String book_title, String isbn_code, String book_writer
		}
	}
}
