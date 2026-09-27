package com.rosteam.gpsemulator;

import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.Toolbar;

/* JADX INFO: loaded from: c:\Users\LEGION\OneDrive\Desktop\ALL TOOL\New folder\classes5.dex */
public class SettingsActivity2 extends AppCompatActivity {
    SettingsFragment miSettingsFragment;

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.pref_activity);
        Log.e("fakegps", "iniciamos preferences");
        this.miSettingsFragment = new SettingsFragment();
        getSupportFragmentManager().beginTransaction().replace(R.id.pref_container, this.miSettingsFragment).commit();
        setSupportActionBar((Toolbar) findViewById(R.id.toolbarsettings));
        getSupportActionBar().setDisplayHomeAsUpEnabled(true);
        getSupportActionBar().setDisplayShowHomeEnabled(true);
    }

    protected void onPostCreate(Bundle bundle) {
        super.onPostCreate(bundle);
    }

    protected void onDestroy() {
        super.onDestroy();
        getSupportFragmentManager().beginTransaction().detach(this.miSettingsFragment);
    }

    protected void onActivityResult(int i, int i2, Intent intent) {
        this.miSettingsFragment.onActivityResult(i, i2, intent);
        super.onActivityResult(i, i2, intent);
    }
}
