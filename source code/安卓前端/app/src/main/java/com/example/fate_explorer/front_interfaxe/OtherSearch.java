package com.example.fate_explorer.front_interfaxe;


import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;


import com.example.fate_explorer.basic_class.Servent_neat;
import com.example.fate_explorer.basic_op.*;
import com.example.fate_explorer.front_interfaxe_op.OtherSearchJsonOp;

public class OtherSearch {
	private HttpOp ho;
	private BasicJsonOp jo;
	private OtherSearchJsonOp osjo;
	public OtherSearch() {
		ho=new HttpOp();
		jo=new BasicJsonOp();
		osjo=new OtherSearchJsonOp();
	}
	
	public void prototype_search(String prototype, ArrayList<Servent_neat> servents){
        //input name
        //output servents
		String jsonName=name_to_prototype_json(prototype);
		System.out.println(jsonName);
		String jsonRespond=ho.conn_and_get_respond(jsonName,UrlManager.get_prototype_search_url());
		System.out.println(jsonRespond);
		osjo.toResult(jsonRespond, servents);
		
    }
	
	public void region_search(String region, ArrayList<Servent_neat> servents){
        //input name
        //output servents
		String jsonName=name_to_region_json(region);
		System.out.println(jsonName);
		String jsonRespond=ho.conn_and_get_respond(jsonName,UrlManager.get_region_search_url());
		System.out.println(jsonRespond);
		osjo.toResult(jsonRespond, servents);
		
    }
	
	public void origin_search(String origin, ArrayList<Servent_neat> servents){
        //input name
        //output servents
		String jsonName=name_to_origin_json(origin);
		System.out.println(jsonName);
		String jsonRespond=ho.conn_and_get_respond(jsonName,UrlManager.get_origin_search_url());
		System.out.println(jsonRespond);
		osjo.toResult(jsonRespond, servents);
		
    }
	
	private String name_to_prototype_json(String name){
		Map<String, String> temp=new HashMap<String, String>();
		temp.put("prototype",name);
		return jo.obToString(temp);
    }
	
	private String name_to_region_json(String name){
		Map<String, String> temp=new HashMap<String, String>();
		temp.put("region",name);
		return jo.obToString(temp);
    }
	
	private String name_to_origin_json(String name){
		Map<String, String> temp=new HashMap<String, String>();
		temp.put("origin",name);
		return jo.obToString(temp);
    }

}
