package test;

import java.util.ArrayList;

import com.example.fate_explorer.basic_class.*;
import com.example.fate_explorer.basic_class.Servent;
import com.example.fate_explorer.basic_class.Servent_neat;
import com.example.fate_explorer.front_interfaxe.CharacteristicSearch;
import com.example.fate_explorer.front_interfaxe.ExplorerInfomation;
import com.example.fate_explorer.front_interfaxe.NameSearch;
import com.example.fate_explorer.front_interfaxe.OtherSearch;
import com.example.fate_explorer.front_interfaxe.ServentInformation;

public class Testing {
	public void test1() {
		ArrayList<Servent_neat> servents = new ArrayList<Servent_neat>();
		NameSearch s = new NameSearch();
		s.name_search("��ɪ", servents);
		System.out.println(servents.size());

	}

	public void test2() {
		ArrayList<Servent_neat> servents = new ArrayList<Servent_neat>();
		CharacteristicSearch s = new CharacteristicSearch();
		s.character_search("�й�","ʷʵ", "��������ӹ", "Rider", "-1", "-1", "-1", "-1", servents);
		System.out.println(servents.size());

	}
	
	public void test3() {
		Servent servent = new Servent();
		ServentInformation s = new ServentInformation();
		s.get_servent_information("19", servent);
		System.out.println(servent.getAlignment());

	}
	
	public void test4() {
		ArrayList<String> a = new ArrayList<String>();
		ArrayList<String> b = new ArrayList<String>();
		ArrayList<String> c = new ArrayList<String>();
		ArrayList<String> d = new ArrayList<String>();
		CharacteristicSearch s = new CharacteristicSearch();
		s.get_attribute(a,b,c,d);
		System.out.println(a.size());
		System.out.println(b.size());
		System.out.println(c.size());
		System.out.println(d.size());

	}
	
	public void test5() {
		ArrayList<Servent_neat> servents = new ArrayList<Servent_neat>();
		OtherSearch s = new OtherSearch();
		s.prototype_search("��»", servents);
		System.out.println(servents.size());

	}
	
	public void test6() {
		ArrayList<Servent_neat> servents = new ArrayList<Servent_neat>();
		OtherSearch s = new OtherSearch();
		s.region_search("��", servents);
		System.out.println(servents.size());

	}
	
	public void test7() {
		ArrayList<Servent_neat> servents = new ArrayList<Servent_neat>();
		OtherSearch s = new OtherSearch();
		s.origin_search("��", servents);
		System.out.println(servents.size());

	}
	
	public void test8() {
		ArrayList<String> a = new ArrayList<String>();
		ArrayList<Pedia> b = new ArrayList<Pedia>();
		ArrayList<Article> c = new ArrayList<Article>();
		ArrayList<Book> d = new ArrayList<Book>();
		ExplorerInfomation s = new ExplorerInfomation();
		s.get_servent_explore("160",a,b,c,d);
		System.out.println(a.size());
		System.out.println(b.size());
		System.out.println(c.size());
		System.out.println(d.size());

	}

	public static void main(String[] args) {
		Testing t = new Testing();
		t.test8();

	}

}
