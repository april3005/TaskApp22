package com.geektech.lesson1android3.ui.onboard;

import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.Toolbar;
import androidx.viewpager.widget.ViewPager;

import android.os.Bundle;
import android.widget.Button;

import com.geektech.lesson1android3.R;
import com.geektech.lesson1android3.ui.base.BaseActivity;

import java.util.ArrayList;

public class OnBoardActivity extends BaseActivity {

    private ViewPager viewPager;
    private Toolbar toolbar;
    private Button btnNext;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_on_board);
        initViews();
        initOnBoardPagerAdapter();
    }

    private void initOnBoardPagerAdapter() {
        OnBoardPagerAdapter adapter = new OnBoardPagerAdapter();
        viewPager.setAdapter(adapter);
        adapter.update(getData());
        listener();

    }

    private ArrayList<OnBoardItem> getData() {
        OnBoardItem onBoardItem = new OnBoardItem();
        ArrayList<OnBoardItem> arrayList = new ArrayList<>();
        arrayList.add(new OnBoardItem(R.drawable.onboard1, ""))
    }

    private void initViews() {
        viewPager = findViewById(R.id.viewPager);
        toolbar = findViewById(R.id.toolbar);
        btnNext = findViewById(R.id.btnNext);
    }


}
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      