package com.example.fate_explorer;

import android.content.Intent;
import android.support.v7.app.ActionBar;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.support.v7.widget.Toolbar;
import android.widget.TextView;

public class ArticleActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_article);
        Toolbar toolbar =  findViewById(R.id.toolbar_article);
        setSupportActionBar(toolbar);
        ActionBar actionBar = getSupportActionBar();
        actionBar.setDisplayHomeAsUpEnabled(true);
        Intent intent = getIntent();
        String title = intent.getStringExtra("title");
        String content = intent.getStringExtra("content");
        String author = intent.getStringExtra("author");
        TextView title_text = findViewById(R.id.article_title);
        TextView content_text = findViewById(R.id.article_content);
        TextView author_text = findViewById(R.id.article_author);
        title_text.setText(title);
        content_text.setText(content);
        author_text.setText(author);

    }
}
