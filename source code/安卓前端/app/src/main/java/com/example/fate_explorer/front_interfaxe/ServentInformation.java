package com.example.fate_explorer.front_interfaxe;

import java.util.HashMap;
import java.util.Map;

import com.example.fate_explorer.basic_class.Servent;
import com.example.fate_explorer.basic_op.BasicJsonOp;
import com.example.fate_explorer.basic_op.HttpOp;
import com.example.fate_explorer.basic_op.UrlManager;
import com.example.fate_explorer.front_interfaxe_op.ServentInformationJsonOp;

public class ServentInformation {
	private HttpOp ho;
	private BasicJsonOp jo;
	private ServentInformationJsonOp sijo;

	public ServentInformation() {
		ho = new HttpOp();
		jo = new BasicJsonOp();
		sijo = new ServentInformationJsonOp();
	}

	public void get_servent_information(String servent_id, Servent servent) {
		//input servent_id
		//output servent object
		String jsonId=name_to_json(servent_id);
		System.out.println(jsonId);
		String jsonRespond=ho.conn_and_get_respond(jsonId,UrlManager.get_servent_infomation_url());
		System.out.println(jsonRespond);
		sijo.toResult(jsonRespond, servent);
	}
	
	private String name_to_json(String servent_id){
		Map<String, String> temp=new HashMap<String, String>();
		temp.put("servent_id",servent_id);
		return jo.obToString(temp);
    }
	
	
}
