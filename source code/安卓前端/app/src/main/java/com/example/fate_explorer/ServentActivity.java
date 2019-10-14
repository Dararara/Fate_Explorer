package com.example.fate_explorer;

import android.content.Intent;
import android.graphics.Color;
import android.support.v7.app.ActionBar;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.support.v7.widget.CardView;
import android.support.v7.widget.Toolbar;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;

import com.example.fate_explorer.basic_class.Servent;
import com.example.fate_explorer.powerful_interface.PowerfullConnect;
import com.squareup.picasso.Picasso;

import java.util.ArrayList;

public class ServentActivity extends AppCompatActivity {
    static Servent servent = new Servent();
    static String id;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_servent);
        Intent intent = getIntent();


        Toolbar toolbar = (Toolbar) findViewById(R.id.toolbar_s);
        setSupportActionBar(toolbar);
        ActionBar actionBar = getSupportActionBar();
        actionBar.setDisplayHomeAsUpEnabled(true);
        initial(intent);






    }
    private void initial(Intent intent){
        id = intent.getStringExtra("servent_id");

        if(id == null) {

        }else{
            servent = new Servent();
            Thread t=new Thread(new Runnable() {
                @Override
                public void run() {
                    PowerfullConnect.get_servent_information(id, servent);
                }
            });
            t.start();
            try{
                t.join();
            }catch (Exception e){
                e.printStackTrace();
            }
        }

        try {
            servent.setFull_picture(servent.getFull_picture());
            ImageView servent_image = (ImageView) findViewById(R.id.servent_pic);
            Picasso.get().load(servent.getFull_picture()).into(servent_image);

            TextView servent_class = findViewById(R.id.servent_class);
            servent_class.setText("职阶：" + servent.getServent_class());

            TextView servent_name = findViewById(R.id.servent_name);
            servent_name.setText("英灵姓名：" + servent.getServent_name());

            TextView servent_name_jap = findViewById(R.id.servent_name_jap);
            servent_name_jap.setText("英灵姓名（日）：" + servent.getServent_name_jan());

            TextView servent_name_eng = findViewById(R.id.servent_name_eng);
            servent_name_eng.setText("英灵姓名（英）：" + servent.getServent_name_Eng());

            TextView height = findViewById(R.id.height);
            height.setText("身高：" + servent.getHeight());

            TextView weight = findViewById(R.id.weight);
            weight.setText("体重：" + servent.getWeight());

            TextView gender = findViewById(R.id.gender);
            gender.setText("性别：" + servent.getGender());

            TextView strength = findViewById(R.id.strength);
            strength.setText("筋力：" + servent.getStrength());

            TextView endurance = findViewById(R.id.endurance);
            endurance.setText("耐久：" + servent.getEndurance());

            TextView agility = findViewById(R.id.agility);
            agility.setText("敏捷：" + servent.getAgility());

            TextView mana = findViewById(R.id.mana);
            mana.setText("魔力：" + servent.getMana());

            TextView luck = findViewById(R.id.luck);
            luck.setText("幸运：" + servent.getLuck());

            TextView noble_phantasm = findViewById(R.id.noble_phantasm);
            noble_phantasm.setText("宝具：" + servent.getNoble_phantasm());

            TextView alignment = findViewById(R.id.alignment);
            alignment.setText("阵营：" + servent.getAlignment());

            TextView illustrator = findViewById(R.id.illustrator);
            illustrator.setText("画师：" + servent.getIllustrator());

            TextView voice_actor = findViewById(R.id.voice_actor);
            voice_actor.setText("声优：" + servent.getVoice_actor());

            TextView region = findViewById(R.id.region);
            region.setText("地域：" + servent.getRegion());

            TextView origin = findViewById(R.id.origin);
            origin.setText("起源：" + servent.getOrigin());

            TextView prototype = findViewById(R.id.prototype);
            prototype.setText("原型：" + servent.getPrototype());

            TextView craft_name = findViewById(R.id.craft_name);
            craft_name.setText(servent.getCraft_name());

            ImageView craft_image = findViewById(R.id.craft_image);
            Picasso.get().load(servent.getCraft_src()).into(craft_image);

            TextView craft_description = findViewById(R.id.craft_description);
            craft_description.setText(servent.getCraft_description());


            ArrayList<String> bond_text = servent.getBonds();
            /*
            bond_text.add("我自横刀向天笑");库丘林
            bond_text.add("去留肝胆两昆仑");
            bond_text.add("回首向来萧瑟处");
            bond_text.add("也无风雨也无晴");*/
            for(int i = 0; i < bond_text.size(); i++){
                CardView card = new CardView(this);
                TextView title = new TextView(this);
                title.setText("羁绊故事" + i);
                title.setGravity(View.TEXT_ALIGNMENT_CENTER);

                TextView textView = new TextView(this);
                textView.setText(bond_text.get(i));

                LinearLayout container = new LinearLayout(this);
                container.addView(title);
                container.addView(textView);
                container.setBackgroundColor(Color.rgb(250,255,240));

                container.setOrientation(LinearLayout.VERTICAL);
                container.setPadding(16,16,16,16);
                card.setCardElevation(4);
                card.setContentPadding(4,4,4,4);
                card.setRadius(5);
                card.addView(container);
                LinearLayout page = findViewById(R.id.servent_content_container);
                page.addView(card);
            }





        }catch (Exception e){
            e.printStackTrace();
        }
    }

    public void onClickExplore(View view){
        Intent intent = new Intent(this, ExploreActivity.class);
        intent.putExtra("id", id);
        startActivity(intent);
    }

}
