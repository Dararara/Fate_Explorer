package com.example.fate_explorer;

import android.support.design.widget.TabLayout;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentPagerAdapter;
import android.support.v4.view.ViewPager;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.support.v7.widget.Toolbar;
import java.util.ArrayList;

public class MainActivity extends AppCompatActivity {
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        ArrayList<String> array = new ArrayList<String>();
        array.add("自古枪兵幸运e");
        array.add("自古弓兵多挂b");
        array.add("混沌恶在此");
        SectionPagerAdapter pagerAdapter = new SectionPagerAdapter(getSupportFragmentManager());
        ViewPager pager = (ViewPager) findViewById(R.id.pager);
        pager.setAdapter(pagerAdapter);
        TabLayout tabLayout = (TabLayout) findViewById(R.id.tabs);
        tabLayout.setupWithViewPager(pager);
        Toolbar toolbar = (Toolbar) findViewById(R.id.toolbar);
        setSupportActionBar(toolbar);


    }
    private class SectionPagerAdapter extends FragmentPagerAdapter{
        public SectionPagerAdapter(FragmentManager fm){
            super(fm);
        }
        @Override
        public int getCount(){
            return 3;
        }
        @Override
        public Fragment getItem(int position){
            switch (position){
                case 0:
                    return new FragmentTop();
                case 1:
                    return new FragmentNameSearch();
                case 2:
                    return new FragmentCustomSearch();
            }
            return null;
        }
        @Override
        public CharSequence getPageTitle(int position){
            switch (position){
                case 0:
                    return getResources().getString(R.string.home);
                case 1:
                    return getResources().getString(R.string.nameSearch);
                case 2:
                    return getResources().getString(R.string.customSearch);
            }
            return "dararara";
        }
    }
}

