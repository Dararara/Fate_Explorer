package com.example.fate_explorer.basic_op;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
public class HttpOp {
	
	
	public String getRequest(String Url) {
		HttpURLConnection connection = null;
		String JsonStr = null;
		try {
			URL url = new URL(Url); // url��ַ
			connection = (HttpURLConnection) url.openConnection();
			connection.setConnectTimeout(5*1000);
			connection.setReadTimeout(5*1000);
			connection.connect();
			try (BufferedReader reader = new BufferedReader(new InputStreamReader(connection.getInputStream()))) {
				String lines;
				StringBuffer sbf = new StringBuffer();
				while ((lines = reader.readLine()) != null) {
					lines = new String(lines.getBytes(), "utf-8");
					sbf.append(lines);
				}
				JsonStr = sbf.toString();
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return JsonStr;
	}
	
	
	//connect to server
	public HttpURLConnection connect(String Url) {
		HttpURLConnection connection = null;
		try {
			URL url = new URL(Url); // url��ַ
			connection = (HttpURLConnection) url.openConnection();
			connection.setConnectTimeout(5*1000);
			connection.setReadTimeout(5*1000);
			connection.setDoInput(true);
			connection.setDoOutput(true);
			connection.setRequestMethod("POST");
			connection.setUseCaches(false);
			connection.setInstanceFollowRedirects(true);
			connection.setRequestProperty("Content-Type", "application/json");
			connection.connect();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return connection;
	}
	
	//input a json string
	//output the json string that come from server
	public String readData(HttpURLConnection connection, String jsonInput) {
		String JsonStr = null;
		try {
			try (OutputStream os = connection.getOutputStream()) {
				os.write(jsonInput.getBytes("UTF-8"));
			}

			try (BufferedReader reader = new BufferedReader(new InputStreamReader(connection.getInputStream()))) {
				String lines;
				StringBuffer sbf = new StringBuffer();
				while ((lines = reader.readLine()) != null) {
					lines = new String(lines.getBytes(), "utf-8");
					sbf.append(lines);
				}
				JsonStr = sbf.toString();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return JsonStr;

	}
	
	
	
	//close connection
	public void closeConnect(HttpURLConnection connection) {
		connection.disconnect();
	}
	
	public String conn_and_get_respond(String jsonName,String url){
		HttpURLConnection conn=connect(url);
		String jsonRespond=readData(conn, jsonName);
		closeConnect(conn);
		return jsonRespond;
    }
	
	

}
