package com.example.currencyconverter;

import androidx.appcompat.app.AppCompatActivity;

import android.os.Bundle;
import android.widget.EditText;
import android.util.Log;
import android.view.View;
import android.widget.Toast;

import java.util.Random;


public class MainActivity extends AppCompatActivity {
    int randomNumber;
    public void convertCurrency(View view)
    {
        Log.i("Info","Button pressed!");
        EditText editText = findViewById(R.id.editText);
        String amountInPounds = editText.getText().toString();
        double amountInPoundsDouble = Double.parseDouble(amountInPounds);
        double amountInDollarsDouble = amountInPoundsDouble * 1.3;
        String amountInDollarsString = Double.toString(amountInDollarsDouble);
        Log.i("Amount in Dollars",amountInDollarsString);
        Toast.makeText(this,"£"+amountInPounds+"is $"+amountInDollarsString, Toast.LENGTH_LONG).show();
    }
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        Random rand= new Random();
         randomNumber = rand.nextInt( 20 ) + 1;
    }
}
