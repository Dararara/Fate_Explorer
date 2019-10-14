package com.example.fate_explorer.front_interfaxe_op;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.TypeReference;
import com.example.fate_explorer.basic_class.Servent_neat;

public class CharacteristicsSearchJsonOp {
	public void toResult(String jsonstr, ArrayList<Servent_neat> result) {

		List<Map<String, String>> temp = JSON.parseObject(jsonstr, new TypeReference<List<Map<String, String>>>() {
		});
		for (Map<String, String> map : temp) {
			result.add(new Servent_neat(map.get("servent_name"), map.get("servent_profile_pic"),
					Integer.parseInt(map.get("id"))));
		}
	}
	
	public void getAttrToResult(String jsonstr,ArrayList<String> region, ArrayList<String> origin, ArrayList<String> alignment,
			ArrayList<String> servent_class) {

		Map<String, List<String>> temp = JSON.parseObject(jsonstr, new TypeReference<Map<String, List<String>>>() {
		});
		
		for (String i : temp.get("alignment")) {
			alignment.add(i);
		}
		
		for (String i : temp.get("origin")) {
			origin.add(i);
		}
		
		for (String i : temp.get("region")) {
			region.add(i);
		}
		
		for (String i : temp.get("servent_class")) {
			servent_class.add(i);
		}
	}
}
