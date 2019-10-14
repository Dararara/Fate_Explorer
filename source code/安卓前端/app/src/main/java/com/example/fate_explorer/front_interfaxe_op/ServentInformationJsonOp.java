package com.example.fate_explorer.front_interfaxe_op;

import java.util.Map;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.TypeReference;
import com.example.fate_explorer.basic_class.Servent;
import com.example.fate_explorer.basic_op.BasicJsonOp;


public class ServentInformationJsonOp {
public void toResult(String jsonstr, Servent servent){
		
		Map<String, String> temp = JSON.parseObject(jsonstr, new TypeReference<Map<String, String>>() {
		});
		
		servent.setId(Integer.parseInt(temp.get("servent_id")));
		servent.setServent_name(temp.get("servent_name"));
		servent.setServent_name_jan(temp.get("servent_name_japanese"));
		servent.setServent_name_Eng(temp.get("servent_name_english"));
		servent.setHeight(Integer.parseInt(temp.get("height")));
		servent.setWeight(Integer.parseInt(temp.get("weight")));
		servent.setGender(temp.get("gender"));
		servent.setStrength(temp.get("strength"));
		servent.setEndurance(temp.get("endurance"));
		servent.setAgility(temp.get("agility"));
		servent.setMana(temp.get("mana"));
		servent.setLuck(temp.get("luck"));
		servent.setNoble_phantasm(temp.get("noble_phantasm"));
		servent.setServent_class(temp.get("class"));
		servent.setIllustrator(temp.get("illustrator"));
		servent.setAlignment(temp.get("alignment"));
		servent.setVoice_actor(temp.get("voice_actor"));
		servent.setRegion(temp.get("region"));
		servent.setOrigin(temp.get("origin"));
		servent.setPrototype(temp.get("prototype"));
		servent.setFull_picture(temp.get("full_picture"));
		servent.setCraft_name(temp.get("craft_name"));
		servent.setCraft_description(temp.get("craft_description"));
		servent.setCraft_src(temp.get("craft_src"));
		BasicJsonOp b= new BasicJsonOp();
		servent.setBonds(b.toArrayList(temp.get("bond_text")));
		
		
		
	}
}
