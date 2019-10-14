package com.example.fate_explorer;

import android.content.Intent;
import android.support.v7.app.ActionBar;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.support.v7.widget.CardView;
import android.support.v7.widget.Toolbar;
import android.view.Gravity;
import android.view.View;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;

import com.example.fate_explorer.basic_class.Article;
import com.example.fate_explorer.basic_class.Book;
import com.example.fate_explorer.basic_class.Pedia;
import com.example.fate_explorer.powerful_interface.PowerfullConnect;



import java.util.ArrayList;

public class ExploreActivity extends AppCompatActivity implements View.OnClickListener {
    static String region, origin, prototype;
    static ArrayList<Article> articles = new ArrayList<>();
    static ArrayList<Book> books = new ArrayList<>();
    static ArrayList<Pedia> pedias = new ArrayList<>();
    static String id;
    static ArrayList<String> something = new ArrayList<>();
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_explore);
        Toolbar toolbar = (Toolbar) findViewById(R.id.toolbar_explore);
        setSupportActionBar(toolbar);
        ActionBar actionBar = getSupportActionBar();
        actionBar.setDisplayHomeAsUpEnabled(true);
        id = getIntent().getStringExtra("id");
        if(id == null){
        }else{
            something.clear();
            pedias.clear();
            articles.clear();
            books.clear();
            Thread t=new Thread(new Runnable() {
                @Override
                public void run() {
                    PowerfullConnect.get_servent_explore(id, something,pedias,articles,books);
                }
            });
            t.start();
            try{
                t.join();
            }catch (Exception e){
                e.printStackTrace();
            }
        }


        prototype = something.get(0);
        region = something.get(1);
        origin = something.get(2);
        //关联搜索按键初始化
        Button region_relative = findViewById(R.id.region_relative);
        Button origin_relative = findViewById(R.id.origin_relative);
        Button prototype_relative = findViewById(R.id.prototype_relative);
        region_relative.setText(region);
        origin_relative.setText(origin);
        prototype_relative.setText(prototype);

        pedia_initialize();
        article_initialize();
        book_initialize();
    }


    public void article_initialize(){
        //articles.add(new Article(1, "拔剑四顾心茫然", "千金散尽还复来\n\n\n\n何当共剪西窗烛\n却话巴山夜雨时", "李白"));
        //articles.add(new Article(2, "长风破浪会有时", "直挂云帆济沧海", "李白"));
        if(articles == null) return;
        for(int i = 0; i < articles.size(); i++){
            TextView title = new TextView(this);
            final Article article = articles.get(i);
            title.setText(article.getArticle_title());
            title.setGravity(Gravity.CENTER);

            TextView author = new TextView(this);
            author.setText(article.getAuthor());
            author.setGravity(Gravity.CENTER);


            TextView content = new TextView(this);
            content.setText(article.getArticle_content());
            content.setGravity(Gravity.CENTER);
            System.out.println(article.getArticle_content());
            System.out.println(article.getArticle_title());
            System.out.println(article.getAuthor());
            System.out.println(article.getArticle_id());
            content.setMaxLines(3);

            LinearLayout linearLayout = new LinearLayout(this);
            linearLayout.setOrientation(LinearLayout.VERTICAL);
            linearLayout.addView(title);
            linearLayout.addView(author);
            linearLayout.addView(content);

            CardView cardView = new CardView(this);
            cardView.addView(linearLayout);
            cardView.setPadding(32 ,32,32,32);
            cardView.setContentPadding(16,16,16,16);
            cardView.setCardBackgroundColor(0x808080);
            cardView.setRadius(10);
            cardView.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View v) {
                    Intent intent = new Intent(getApplicationContext(), ArticleActivity.class);
                    intent.putExtra("title", article.getArticle_title());
                    intent.putExtra("content", article.getArticle_content());
                    intent.putExtra("author", article.getAuthor());
                    startActivity(intent);
                }
            });
            LinearLayout layout = findViewById(R.id.article_overview);
            layout.addView(cardView);
        }



    }
    public void book_initialize(){

        if(books == null) return;
        for(int i = 0; i < books.size(); i++) {
            TextView title = new TextView(this);
            title.setText(books.get(i).getBook_title());
            title.setGravity(Gravity.CENTER);

            TextView isbn_code = new TextView(this);
            isbn_code.setText(books.get(i).getIsbn_code());
            isbn_code.setGravity(Gravity.CENTER);

            TextView writer = new TextView(this);
            writer.setText(books.get(i).getBook_writer());
            writer.setGravity(Gravity.CENTER);

            LinearLayout linearLayout = new LinearLayout(this);
            linearLayout.setOrientation(LinearLayout.VERTICAL);
            linearLayout.addView(title);
            linearLayout.addView(isbn_code);
            linearLayout.addView(writer);

            CardView cardView = new CardView(this);
            cardView.addView(linearLayout);
            cardView.setCardElevation(10);
            cardView.setPadding(32 ,32,32,32);
            cardView.setContentPadding(16,16,16,16);
            cardView.setCardBackgroundColor(0x808080);
            cardView.setRadius(10);

            LinearLayout layout = findViewById(R.id.book_overview);
            layout.addView(cardView);

        }
    }
    public void pedia_initialize(){
/*
        pedias.add(new Pedia(1, "百度百科",
                "https://baike.baidu.com/item/%E5%BA%93%C2%B7%E4%B8%98%E6%9E%97/71314?fromtitle=%E5%BA%93%E4%B8%98%E6%9E%97&fromid=8098338"));
        pedias.add(new Pedia(2, "搜狗百科",
                "https://baike.sogou.com/v4536053.htm;jsessionid=560838E1A7D2A052B02DAFAFEFDA21C3"));
        pedias.add(new Pedia(3,"互动百科",
                "http://www.baike.com/wiki/%E5%BA%93%E4%B8%98%E6%9E%97&prd=button_doc_entry"));
/*
        pedias.add(new Pedia(3,"互动百科",
                "http://www.baike.com/wiki/%E5%BA%93%E4%B8%98%E6%9E%97&prd=button_doc_entry"));
        pedias.add(new Pedia(3,"互动百科",
                "http://www.baike.com/wiki/%E5%BA%93%E4%B8%98%E6%9E%97&prd=button_doc_entry"));
        pedias.add(new Pedia(3,"互动百科",
                "http://www.baike.com/wiki/%E5%BA%93%E4%B8%98%E6%9E%97&prd=button_doc_entry"));
*/
        //百科链接初始化
        LinearLayout pedia_layout = findViewById(R.id.pedia_layout);
        for(int i = 0; i < pedias.size(); i++){
            Pedia temp = pedias.get(i);
            System.out.println(temp.getPedia_url());
            Button button = new Button(this);
            button.setText(temp.getPedia_name());
            button.setHint(temp.getPedia_url());
            button.setMaxWidth(20);
            button.setMaxHeight(20);
            button.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View v) {
                    Intent intent = new Intent(getApplicationContext(), Webpage.class);
                    Button image = (Button)v;

                    intent.putExtra("url", image.getHint());
                    startActivity(intent);
                }
            });
            pedia_layout.addView(button);


        }
    }
    @Override
    public void onClick(View v) {
        Intent intent = new Intent(this, SearchResult.class);
        switch (v.getId()){
            case R.id.prototype_relative:
                intent.putExtra("search_type", "prototype_search");
                intent.putExtra("prototype", prototype);
                startActivity(intent);
                break;
            case R.id.region_relative:
                intent.putExtra("search_type", "region_search");
                intent.putExtra("region", region);
                startActivity(intent);
                break;
            case R.id.origin_relative:
                intent.putExtra("search_type", "origin_search");
                intent.putExtra("origin", origin);
                startActivity(intent);
        }
    }
}
