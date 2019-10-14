package com.example.fate_explorer.powerful_interface;

import java.util.ArrayList;

import com.example.fate_explorer.basic_class.Article;
import com.example.fate_explorer.basic_class.Book;
import com.example.fate_explorer.basic_class.Pedia;
import com.example.fate_explorer.basic_class.Servent;
import com.example.fate_explorer.basic_class.Servent_neat;
import com.example.fate_explorer.front_interfaxe.*;

public class PowerfullConnect {
	static NameSearch ns;
	static CharacteristicSearch cs;
	static ServentInformation si;
	static OtherSearch os;
	static ExplorerInfomation ei;
	public static void name_search(String name, ArrayList<Servent_neat> servents) {
		// input name
		// output servents
		ns = new NameSearch();
		ns.name_search(name, servents);
	}

	public static void character_search(String region, String origin, String alignment, String servent_class,
			String height_max, String height_min, String weight_max, String weight_min,
			ArrayList<Servent_neat> servents) {
		// input first four
		// output servents
		cs = new CharacteristicSearch();
		cs.character_search(region, origin, alignment, servent_class, height_max, height_min, weight_max, weight_min,
				servents);
	}

	public static void get_attribute(ArrayList<String> region, ArrayList<String> origin, ArrayList<String> alignment,
			ArrayList<String> servent_class

	) {
		
		// return all four
		cs = new CharacteristicSearch();
		cs.get_attribute(region, origin, alignment, servent_class);
	}

	public static void get_servent_information(String servent_id, Servent servent) {
		// input servent_id
		// output servent object
		si=new ServentInformation();
		si.get_servent_information(servent_id, servent);
		
	}

	

	public static void prototype_search(String prototype, ArrayList<Servent_neat> servents) {
		os=new OtherSearch();
		os.prototype_search(prototype, servents);

	}

	public static void region_search(String region, ArrayList<Servent_neat> servents) {
		os=new OtherSearch();
		os.region_search(region, servents);
	}

	public static void origin_search(String origin, ArrayList<Servent_neat> servents) {
		os=new OtherSearch();
		os.origin_search(origin, servents);
	}

	public static void get_servent_explore(String servent_id, ArrayList<String> something, ArrayList<Pedia> pedias,
			ArrayList<Article> articles, ArrayList<Book> books) {
		// something[0] = prototype
		// something[1] = region
		// something[2] = origin
		ei=new ExplorerInfomation();
		ei.get_servent_explore(servent_id, something, pedias, articles, books);
	}

}
