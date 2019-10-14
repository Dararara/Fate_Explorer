package com.example.fate_explorer;
import com.example.fate_explorer.basic_class.Servent_neat;
import com.example.fate_explorer.powerful_interface.PowerfullConnect;
import com.squareup.picasso.Picasso;
import android.content.Intent;
import android.graphics.Color;
import android.support.constraint.ConstraintLayout;
import android.support.v7.app.ActionBar;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.support.v7.widget.Toolbar;
import android.view.Gravity;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import java.util.ArrayList;

public class SearchResult extends AppCompatActivity implements View.OnClickListener {
    static ArrayList<Servent_neat> servents = new ArrayList<>();
    static int count = 0;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_search_result);
        Toolbar toolbar = (Toolbar) findViewById(R.id.toolbar_search_result);
        setSupportActionBar(toolbar);
        ActionBar actionBar = getSupportActionBar();
        actionBar.setDisplayHomeAsUpEnabled(true);
        Intent intent = getIntent();

        deal_intent(intent);
    }



    public void onClickMore(View v) {
        Servent_neat s;
        if(count >= servents.size()){
            ImageButton imageButton = findViewById(R.id.more_button);
            imageButton.setBackground(getResources().getDrawable(R.drawable.attila));

            TextView textView = findViewById(R.id.no_more_text);
            textView.setVisibility(View.VISIBLE);
            return;
        }
        for(int i = 0; i < 10; i++){

            try{
                s = servents.get(count);
                add_servent(s.getServent_name(), s.getUrl(), s.getId());
                count++;
            }catch (Exception e){

            }


        }
    }
    public void add_servent(String name, String url, int id){
        final int temp_id = id;
        LinearLayout linearLayout = findViewById(R.id.search_result_layout);
        RelativeLayout rl = new RelativeLayout(this);
        ImageButton image = new ImageButton(this);
        Picasso.get().load(url).into(image);
        image.setScaleType(ImageView.ScaleType.FIT_START);
        image.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent = new Intent(getApplicationContext(), ServentActivity.class);
                System.out.println(temp_id);
                intent.putExtra("servent_id", Integer.toString(temp_id));
                startActivity(intent);
            }
        });
        RelativeLayout.LayoutParams param1 = new RelativeLayout.LayoutParams(
                (int) RelativeLayout.LayoutParams.WRAP_CONTENT,
                (int) RelativeLayout.LayoutParams.WRAP_CONTENT);
        RelativeLayout.LayoutParams param2 = new RelativeLayout.LayoutParams(
                (int) RelativeLayout.LayoutParams.WRAP_CONTENT,
                (int) RelativeLayout.LayoutParams.WRAP_CONTENT);

        image.setScaleType(ImageView.ScaleType.CENTER_CROP);
        param1.addRule(RelativeLayout.ALIGN_PARENT_START);
        param1.addRule(RelativeLayout.CENTER_VERTICAL);
        image.setLayoutParams(param1);
        param2.addRule(RelativeLayout.CENTER_VERTICAL);
        param2.addRule(RelativeLayout.ALIGN_PARENT_RIGHT);


        rl.addView(image);
        TextView t = new TextView(this);
        t.setText(name);
        t.setGravity(Gravity.CENTER);
        t.setLayoutParams(param2);
        rl.addView(t);
        rl.setBackgroundColor(Color.rgb(250, 255, 240));
        rl.setPadding(16, 0,16, 0);
        t.setGravity(View.TEXT_ALIGNMENT_CENTER);
        linearLayout.addView(rl);
        image.requestLayout();
        image.getLayoutParams().height = 300;
        image.getLayoutParams().width = 300;
        rl.setPadding(16,16,16,16);
    }

    @Override
    public void onClick(View v) {

    }
    static String name, prototype;
    static String origin;
    static String region;
    static String servent_class;
    static String alignment;
    static String weight_min;
    static String weight_max;
    static String height_max;
    static String height_min;



    private void deal_intent(Intent intent){
        String type = intent.getStringExtra("search_type");
        count = 0;
        if(type == null){
            return;
        }

        else {
            servents.clear();
            if(type.equals("name_search")){

                name = intent.getStringExtra("name");
                Thread t=new Thread(new Runnable() {
                    @Override
                    public void run() {
                        PowerfullConnect.name_search(name, servents);
                    }
                });
                t.start();
                try{
                    t.join();
                }catch (Exception e){
                    e.printStackTrace();
                }



            }
            else if(type.equals("character_search")){

                origin = intent.getStringExtra("origin");
                region = intent.getStringExtra("region");
                servent_class = intent.getStringExtra("class");
                alignment = intent.getStringExtra("alignment");
                weight_min = intent.getStringExtra("weight_min");
                weight_max = intent.getStringExtra("weight_max");
                height_max = intent.getStringExtra("height_max");
                height_min = intent.getStringExtra("height_min");

                Thread t=new Thread(new Runnable() {
                    @Override
                    public void run() {
                        PowerfullConnect.character_search(region, origin, alignment,servent_class,
                                height_max,height_min,weight_max,weight_min,servents);
                    }
                });
                t.start();
                try{
                    t.join();
                }catch (Exception e){
                    e.printStackTrace();
                }

            }
            else if(type.equals("prototype_search")){

                prototype = intent.getStringExtra("prototype");
                Thread t=new Thread(new Runnable() {
                    @Override
                    public void run() {
                        PowerfullConnect.prototype_search(prototype, servents);
                    }
                });
                t.start();
                try{
                    t.join();
                }catch (Exception e){
                    e.printStackTrace();
                }
            }
            else if(type.equals("region_search")){

                region = intent.getStringExtra("region");
                Thread t=new Thread(new Runnable() {
                    @Override
                    public void run() {
                        PowerfullConnect.region_search(region, servents);
                    }
                });
                t.start();
                try{
                    t.join();
                }catch (Exception e){
                    e.printStackTrace();
                }
            }
            else if(type.equals("origin_search")){

                origin = intent.getStringExtra("origin");
                Thread t=new Thread(new Runnable() {
                    @Override
                    public void run() {
                        PowerfullConnect.origin_search(origin, servents);
                    }
                });
                t.start();
                try{
                    t.join();
                }catch (Exception e){
                    e.printStackTrace();
                }
            }
        }
    }


}
