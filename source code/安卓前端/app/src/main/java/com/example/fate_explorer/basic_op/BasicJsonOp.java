package com.example.fate_explorer.basic_op;

import java.util.ArrayList;
import java.util.HashMap;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.alibaba.fastjson.TypeReference;


public class BasicJsonOp {
	
	//HashMap json to HashMap 
	public HashMap<String,String> toHashMap(String jsonstr){
		HashMap<String,String> result = JSON.parseObject(jsonstr, new TypeReference<HashMap<String,String>>() {
		});
		return result;
	}
	
	//Arralist json to Arraylist 
	public ArrayList<String> toArrayList(String jsonstr){
		ArrayList<String> obj= (ArrayList<String>) JSONObject.parseArray(jsonstr, String.class);
		return obj;
	}
	
	//object to json string
	public<T> String obToString(T json){
		String query = JSON.toJSONString(json);
		return query;
		
	}

}
