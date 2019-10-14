package com.example.fate_explorer;


import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.EditText;
import android.widget.SeekBar;
import android.widget.Spinner;

import com.example.fate_explorer.powerful_interface.PowerfullConnect;

import java.util.ArrayList;


public class FragmentCustomSearch extends Fragment implements View.OnClickListener, SeekBar.OnSeekBarChangeListener {

    static ArrayList<String> region_array;
    static ArrayList<String> origin_array;
    static ArrayList<String> class_array;
    static ArrayList<String> alignment_array;
    public FragmentCustomSearch() {
        // Required empty public constructor
    }


    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container,
                             Bundle savedInstanceState) {
        // Inflate the layout for this fragment
        View view = inflater.inflate(R.layout.fragment_fragment_custom_search, container, false);
        Spinner spinner = (Spinner) view.findViewById(R.id.region_select);

        region_array = new ArrayList<>();
        origin_array = new ArrayList<>();
        class_array = new ArrayList<>();
        alignment_array = new ArrayList<>();

        region_array.add("null");

        origin_array.add("null");

        class_array.add("null");

        alignment_array.add("null");
        PowerfullConnect pc = new PowerfullConnect();
        Thread t=new Thread(new Runnable() {
            @Override
            public void run() {
                PowerfullConnect.get_attribute(region_array, origin_array,alignment_array, class_array);
            }
        });
        t.start();
        try{
            t.join();
        }catch (Exception e){
            e.printStackTrace();
        }

        ArrayAdapter<String> adapter = new ArrayAdapter<>(getContext(), android.R.layout.simple_spinner_item, region_array);
        adapter.setDropDownViewResource(android.R.layout.simple_spinner_dropdown_item);
        spinner.setAdapter(adapter);

        spinner = (Spinner) view.findViewById(R.id.origin_select);

        adapter = new ArrayAdapter<>(getContext(), android.R.layout.simple_spinner_item, origin_array);
        adapter.setDropDownViewResource(android.R.layout.simple_spinner_dropdown_item);
        spinner.setAdapter(adapter);

        spinner = (Spinner) view.findViewById(R.id.class_select);

        adapter = new ArrayAdapter<>(getContext(), android.R.layout.simple_spinner_item, class_array);
        adapter.setDropDownViewResource(android.R.layout.simple_spinner_dropdown_item);
        spinner.setAdapter(adapter);

        spinner = (Spinner) view.findViewById(R.id.alignment_select);

        adapter = new ArrayAdapter<>(getContext(), android.R.layout.simple_spinner_item, alignment_array);
        adapter.setDropDownViewResource(android.R.layout.simple_spinner_dropdown_item);
        spinner.setAdapter(adapter);


        Spinner region_select = (Spinner) view.findViewById(R.id.region_select);
        Spinner origin_select = (Spinner) view.findViewById(R.id.origin_select);
        Spinner class_select = (Spinner) view.findViewById(R.id.class_select);
        Spinner alignment_select = (Spinner) view.findViewById(R.id.alignment_select);
        SeekBar height_max = view.findViewById(R.id.max_height_select);
        SeekBar height_min = view.findViewById(R.id.min_height_select);
        SeekBar weight_max = view.findViewById(R.id.max_weight_select);
        SeekBar weight_min = view.findViewById(R.id.min_weight_select);
        height_max.setOnSeekBarChangeListener(this);
        height_min.setOnSeekBarChangeListener(this);
        weight_max.setOnSeekBarChangeListener(this);
        weight_min.setOnSeekBarChangeListener(this);

        Button button = view.findViewById(R.id.custom_search_button);
        button.setOnClickListener(this);


        return view;
    }

    @Override
    public void onClick(View v) {
        switch (v.getId()){
            case R.id.custom_search_button:
                Intent intent = new Intent(getContext(), SearchResult.class);
                intent.putExtra("search_type", "character_search");
                View view = getView();
                Spinner region_select = (Spinner) view.findViewById(R.id.region_select);
                Spinner origin_select = (Spinner) view.findViewById(R.id.origin_select);
                Spinner class_select = (Spinner) view.findViewById(R.id.class_select);
                Spinner alignment_select = (Spinner) view.findViewById(R.id.alignment_select);
                SeekBar height_max = view.findViewById(R.id.max_height_select);
                SeekBar height_min = view.findViewById(R.id.min_height_select);
                SeekBar weight_max = view.findViewById(R.id.max_weight_select);
                SeekBar weight_min = view.findViewById(R.id.min_weight_select);
                String temp = origin_select.getSelectedItem().toString();
                intent.putExtra("origin", temp);
                temp = region_select.getSelectedItem().toString();
                intent.putExtra("region", temp);
                temp = class_select.getSelectedItem().toString();
                intent.putExtra("class", temp);
                temp = alignment_select.getSelectedItem().toString();
                intent.putExtra("alignment", temp);
                temp = String.valueOf(weight_min.getProgress());
                intent.putExtra("weight_min",temp);
                temp = String.valueOf(weight_max.getProgress());
                intent.putExtra("weight_max", temp);
                temp = String.valueOf(height_min.getProgress());
                intent.putExtra("height_min",temp);
                temp = String.valueOf(height_max.getProgress());
                intent.putExtra("height_max", temp);
                startActivity(intent);
        }
    }

    @Override
    public void onProgressChanged(SeekBar seekBar, int progress, boolean fromUser) {
        View view = getView();
        SeekBar max_height = view.findViewById(R.id.max_height_select);
        SeekBar min_height = view.findViewById(R.id.min_height_select);
        SeekBar max_weight = view.findViewById(R.id.max_weight_select);
        SeekBar min_weight = view.findViewById(R.id.min_weight_select);
        EditText max_height_text = view.findViewById(R.id.max_height_text);
        EditText min_height_text = view.findViewById(R.id.min_height_text);
        EditText max_weight_text = view.findViewById(R.id.max_weight_text);
        EditText min_weight_text = view.findViewById(R.id.min_weight_text);
        switch (seekBar.getId()){
            case R.id.max_height_select:
                if(min_height.getProgress() > max_height.getProgress()){
                    min_height.setProgress(max_height.getProgress());

                }
                max_height_text.setText(String.valueOf(max_height.getProgress())+"cm");
            case R.id.min_height_select:
                if(min_height.getProgress() > max_height.getProgress()){
                    max_height.setProgress(min_height.getProgress());
                }
                min_height_text.setText(String.valueOf(min_height.getProgress())+"cm");
            case R.id.max_weight_select:
                if(min_weight.getProgress() > max_weight.getProgress()){
                    min_weight.setProgress(max_weight.getProgress());
                }
                max_weight_text.setText(String.valueOf(max_weight.getProgress()) + "kg");
            case R.id.min_weight_select:
                if(min_weight.getProgress() > max_weight.getProgress()){
                    max_weight.setProgress(min_weight.getProgress());
                }
                min_weight_text.setText(String.valueOf(min_weight.getProgress() + "kg"));
        }
    }

    @Override
    public void onStartTrackingTouch(SeekBar seekBar) {

    }

    @Override
    public void onStopTrackingTouch(SeekBar seekBar) {

    }


}
