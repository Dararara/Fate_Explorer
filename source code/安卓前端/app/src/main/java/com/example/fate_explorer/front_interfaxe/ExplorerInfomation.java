package com.example.fate_explorer.front_interfaxe;


import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import com.example.fate_explorer.basic_class.Article;
import com.example.fate_explorer.basic_class.Book;
import com.example.fate_explorer.basic_class.Pedia;
import com.example.fate_explorer.basic_op.*;
import com.example.fate_explorer.front_interfaxe_op.ExplorerInfomationJsonOp;

public class ExplorerInfomation {
	private HttpOp ho;
	private BasicJsonOp jo;
	private ExplorerInfomationJsonOp eijo;
	public ExplorerInfomation() {
		ho=new HttpOp();
		jo=new BasicJsonOp();
		eijo=new ExplorerInfomationJsonOp();
	}
	
	public void get_servent_explore(String servent_id, ArrayList<String> something, ArrayList<Pedia> pedias,
			ArrayList<Article> articles, ArrayList<Book> books){
        //input name
        //output servents
		String jsonName=name_to_json(servent_id);
		System.out.println(jsonName);
		String jsonRespond=ho.conn_and_get_respond(jsonName,UrlManager.get_explorer_infomation_url());
		System.out.println(jsonRespond);
		eijo.toResult(jsonRespond,something,pedias,articles, books);
		
    }
	
	private String name_to_json(String servent_id){
		Map<String, String> temp=new HashMap<String, String>();
		temp.put("servent_id",servent_id);
		return jo.obToString(temp);
    }

}
