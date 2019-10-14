package com.example.fate_explorer.front_interfaxe;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import com.example.fate_explorer.basic_class.Servent_neat;
import com.example.fate_explorer.basic_op.BasicJsonOp;
import com.example.fate_explorer.basic_op.HttpOp;
import com.example.fate_explorer.basic_op.UrlManager;
import com.example.fate_explorer.front_interfaxe_op.CharacteristicsSearchJsonOp;

public class CharacteristicSearch {
	private HttpOp ho;
	private BasicJsonOp jo;
	private CharacteristicsSearchJsonOp csjo;

	public CharacteristicSearch() {
		ho = new HttpOp();
		jo = new BasicJsonOp();
		csjo = new CharacteristicsSearchJsonOp();
	}

	public void character_search(String region, String origin, String alignment, String servent_class,
			String height_max, String height_min, String weight_max, String weight_min,
			ArrayList<Servent_neat> servents) {
		// input name
		// output servents
		String jsonName = name_to_json(region, origin, alignment, servent_class, height_max, height_min, weight_max,
				weight_min);
		System.out.println(jsonName);
		String jsonRespond = ho.conn_and_get_respond(jsonName, UrlManager.get_characteristics_search_url());
		System.out.println(jsonRespond);
		csjo.toResult(jsonRespond, servents);

	}

	public void get_attribute(ArrayList<String> region, ArrayList<String> origin, ArrayList<String> alignment,
			ArrayList<String> servent_class

	) {
		// return all four
		String jsonRespond = ho.getRequest(UrlManager.get_get_attribute_url());
		System.out.println(jsonRespond);
		csjo.getAttrToResult(jsonRespond, region, origin, alignment, servent_class);
		
	}

	private String name_to_json(String region, String origin, String alignment, String servent_class, String height_max,
			String height_min, String weight_max, String weight_min) {
		Map<String, String> temp = new HashMap<String, String>();
		temp.put("origin", origin);
		temp.put("region", region);
		temp.put("class", servent_class);
		temp.put("alignment", alignment);
		temp.put("weight_down", weight_min);
		temp.put("weight_up", weight_max);
		temp.put("height_down", height_min);
		temp.put("height_up", height_max);

		return jo.obToString(temp);
	}

}
