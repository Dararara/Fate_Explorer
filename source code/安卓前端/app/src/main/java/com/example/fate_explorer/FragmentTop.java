package com.example.fate_explorer;
import android.content.Context;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import com.squareup.picasso.Picasso;


public class FragmentTop extends Fragment implements View.OnClickListener {


    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container,
                             Bundle savedInstanceState) {
        // Inflate the layout for this fragment

        View view = inflater.inflate(R.layout.fragment_fragment_top, container, false);
        ImageView imageview =(ImageView) view.findViewById(R.id.top_pic);
        String url = "http://pic1.win4000.com/pic/3/dc/e1221172962.jpg";
        Context c = getActivity().getApplicationContext();
        Picasso.get().load(url).placeholder(R.drawable.gudago).into(imageview);

        Button button = (Button) view.findViewById(R.id.trick_button);
        button.setOnClickListener(this);


        return view;
    }


    @Override
    public void onClick(View v) {
        switch (v.getId()){
            case R.id.trick_button:
                Button button = (Button) v;
                if(button.getText().equals("别点我")) button.setText("都说了别点");
                else if(button.getText().equals("都说了别点")) button.setText("真的没用");
                else if(button.getText().equals("真的没用")) button.setText("再点我走了");
                else if(button.getText().equals("再点我走了")) button.setText("拜拜");
                else if(button.getText().equals("拜拜")) button.setVisibility(View.INVISIBLE);
                break;

        }
    }
}
