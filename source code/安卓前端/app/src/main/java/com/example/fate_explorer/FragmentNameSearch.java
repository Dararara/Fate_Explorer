package com.example.fate_explorer;


import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;


public class FragmentNameSearch extends Fragment implements View.OnClickListener {


    public FragmentNameSearch() {
        // Required empty public constructor
    }


    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container,
                             Bundle savedInstanceState) {
        // Inflate the layout for this fragment

        View view = inflater.inflate(R.layout.fragment_fragment_name_search, container, false);
        Button button = view.findViewById(R.id.name_search_button);
        button.setOnClickListener(this);
        return view;
    }

    @Override
    public void onClick(View v) {
        switch (v.getId()){
            case R.id.name_search_button:
                Intent intent = new Intent(getContext(), SearchResult.class);
                intent.putExtra("search_type", "name_search");
                EditText editText = getView().findViewById(R.id.name_input);
                String s = editText.getText().toString();
                intent.putExtra("name", s);
                startActivity(intent);
        }
    }
}
