package com.example.fate_explorer.front_interfaxe;


import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;


import com.example.fate_explorer.basic_class.Servent_neat;
import com.example.fate_explorer.basic_op.*;
import com.example.fate_explorer.front_interfaxe_op.NameSearchJsonOp;

public class NameSearch {
	private HttpOp ho;
	private BasicJsonOp jo;
	private NameSearchJsonOp nsjo;
	public NameSearch() {
		ho=new HttpOp();
		jo=new BasicJsonOp();
		nsjo=new NameSearchJsonOp();
	}
	
	public void name_search(String name, ArrayList<Servent_neat> servents){
        //input name
        //output servents
		String jsonName=name_to_json(name);
		System.out.println(jsonName);
		String jsonRespond=ho.conn_and_get_respond(jsonName,UrlManager.get_name_search_url());
		System.out.println(jsonRespond);
		nsjo.toResult(jsonRespond, servents);
		
    }
	
	private String name_to_json(String name){
		Map<String, String> temp=new HashMap<String, String>();
		temp.put("name",name);
		return jo.obToString(temp);
    }

}
