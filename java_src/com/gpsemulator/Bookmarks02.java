package com.rosteam.gpsemulator;

import android.content.Context;
import android.content.DialogInterface;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.preference.PreferenceManager;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.ContextThemeWrapper;
import android.view.Display;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.app.AlertDialog;
import androidx.appcompat.app.AppCompatActivity;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.viewpager2.adapter.FragmentStateAdapter;
import androidx.viewpager2.widget.ViewPager2;
import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.AdView;
import com.google.android.gms.ads.LoadAdError;
import com.google.android.material.tabs.TabLayout;
import com.google.android.material.tabs.TabLayoutMediator;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.rosteam.gpsemulator.utils.RegUbic;
import java.util.ArrayList;

/* JADX INFO: loaded from: c:\Users\LEGION\OneDrive\Desktop\ALL TOOL\New folder\classes5.dex */
public class Bookmarks02 extends AppCompatActivity implements TabLayoutMediator.TabConfigurationStrategy, TabFragment.OnDataPass {
    LinearLayout bannerContainer;
    int numerofavoritos;
    SharedPreferences preferences;
    boolean saveIsPending = false;
    TabLayout tabLayout;
    ArrayList<String> titles;
    ViewPager2 viewPager2;

    /* JADX WARN: Multi-variable type inference failed */
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setTheme(R.style.AppTheme_PopupOverlay);
        setContentView(R.layout.activity_bookmarks02);
        setSupportActionBar(findViewById(R.id.toolbar));
        getSupportActionBar().setDisplayHomeAsUpEnabled(true);
        getSupportActionBar().setDisplayShowHomeEnabled(true);
        this.viewPager2 = findViewById(R.id.pager);
        this.tabLayout = findViewById(R.id.tab_layout);
        this.preferences = PreferenceManager.getDefaultSharedPreferences(this);
        this.bannerContainer = (LinearLayout) findViewById(R.id.banner_container);
        this.preferences.edit().putBoolean("noads", true).putInt("numerofavoritos", 1000).apply();
        if (false) {
            cargarBannerAdmob();
        }
        this.numerofavoritos = 1000;
        ArrayList<String> arrayList = new ArrayList<>();
        this.titles = arrayList;
        arrayList.add(getResources().getString(R.string.favorites));
        this.titles.add(getResources().getString(R.string.routes));
        this.titles.add(getResources().getString(R.string.history));
        setViewPagerAdapter();
        new TabLayoutMediator(this.tabLayout, this.viewPager2, this).attach();
        this.tabLayout.addOnTabSelectedListener(new TabLayout.OnTabSelectedListener() { // from class: com.rosteam.gpsemulator.Bookmarks02.1
            public void onTabSelected(TabLayout.Tab tab) {
                View customView = tab.getCustomView();
                ((TextView) customView.findViewById(R.id.nav_label)).setTextColor(Bookmarks02.this.getResources().getColor(R.color.colorAccent));
                ((ImageView) customView.findViewById(R.id.nav_icon)).setColorFilter(Bookmarks02.this.getResources().getColor(R.color.colorAccent));
            }

            public void onTabUnselected(TabLayout.Tab tab) {
                View customView = tab.getCustomView();
                ((TextView) customView.findViewById(R.id.nav_label)).setTextColor(Bookmarks02.this.getResources().getColor(R.color.gris_unselected));
                ((ImageView) customView.findViewById(R.id.nav_icon)).setColorFilter(Bookmarks02.this.getResources().getColor(R.color.gris_unselected));
            }

            public void onTabReselected(TabLayout.Tab tab) {
                View customView = tab.getCustomView();
                ((TextView) customView.findViewById(R.id.nav_label)).setTextColor(Bookmarks02.this.getResources().getColor(R.color.colorAccent));
                ((ImageView) customView.findViewById(R.id.nav_icon)).setColorFilter(Bookmarks02.this.getResources().getColor(R.color.colorAccent));
            }
        });
        TabLayout tabLayout = this.tabLayout;
        tabLayout.selectTab(tabLayout.getTabAt(0));
        this.viewPager2.setCurrentItem(this.preferences.getInt("pagbookmark", 0), false);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void cargarBannerAdmob() {
        Log.e("Bookmarks", "cargarBannerAdmob");
        final AdView adView = new AdView(this);
        adView.setAdUnitId("ca-app-pub-4161078187932834/4822802799");
        AdRequest adRequestBuild = new AdRequest.Builder().build();
        Display defaultDisplay = getWindowManager().getDefaultDisplay();
        DisplayMetrics displayMetrics = new DisplayMetrics();
        defaultDisplay.getMetrics(displayMetrics);
        adView.setAdSize(AdSize.getCurrentOrientationAnchoredAdaptiveBannerAdSize(this, (int) (displayMetrics.widthPixels / displayMetrics.density)));
        adView.setAdListener(new AdListener() { // from class: com.rosteam.gpsemulator.Bookmarks02.2
            public void onAdFailedToLoad(LoadAdError loadAdError) {
                super.onAdFailedToLoad(loadAdError);
                Log.e("Bookmarks", "cargarBannerAdmob FAILED");
            }

            public void onAdLoaded() {
                super.onAdLoaded();
                ViewGroup.LayoutParams layoutParams = Bookmarks02.this.bannerContainer.getLayoutParams();
                layoutParams.height = -2;
                Bookmarks02.this.bannerContainer.setLayoutParams(layoutParams);
                Bookmarks02.this.bannerContainer.addView(adView);
            }
        });
        adView.loadAd(adRequestBuild);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void onConfigureTab(TabLayout.Tab tab, int i) {
        LinearLayout linearLayout = (LinearLayout) LayoutInflater.from(this).inflate(R.layout.nav_tab, (ViewGroup) null);
        ((TextView) linearLayout.findViewById(R.id.nav_label)).setText(this.titles.get(i));
        ImageView imageView = (ImageView) linearLayout.findViewById(R.id.nav_icon);
        if (i == 0) {
            imageView.setImageResource(R.drawable.ic_star);
        }
        if (i == 1) {
            imageView.setImageResource(R.drawable.route);
        }
        if (i == 2) {
            imageView.setImageResource(R.drawable.ic_history);
        }
        tab.setCustomView(linearLayout);
    }

    public boolean onSupportNavigateUp() {
        onBackPressed();
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void setViewPagerAdapter() {
        ViewPager2Adapter viewPager2Adapter = new ViewPager2Adapter(this);
        ArrayList<Fragment> arrayList = new ArrayList<>();
        arrayList.add(new TabFragment(0, loadFavsFromPref()));
        arrayList.add(new TabFragment(1, LocationUtils.loadRutasFromPref(this)));
        arrayList.add(new TabFragment(2, LocationUtils.loadHisFromPref(this)));
        viewPager2Adapter.setData(arrayList);
        this.viewPager2.setAdapter(viewPager2Adapter);
        this.viewPager2.registerOnPageChangeCallback(new ViewPager2.OnPageChangeCallback() { // from class: com.rosteam.gpsemulator.Bookmarks02.3
            public void onPageSelected(int i) {
                super.onPageSelected(i);
                SharedPreferences.Editor editorEdit = Bookmarks02.this.preferences.edit();
                editorEdit.putInt("pagbookmark", i);
                editorEdit.apply();
            }
        });
    }

    public class ViewPager2Adapter extends FragmentStateAdapter {
        private ArrayList<Fragment> fragments;

        public ViewPager2Adapter(FragmentActivity fragmentActivity) {
            super(fragmentActivity);
        }

        public Fragment createFragment(int i) {
            return this.fragments.get(i);
        }

        public int getItemCount() {
            return this.fragments.size();
        }

        public void setData(ArrayList<Fragment> arrayList) {
            this.fragments = arrayList;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public ArrayList<RegUbic> loadFavsFromPref() {
        ArrayList<RegUbic> arrayList = new ArrayList<>();
        this.preferences = PreferenceManager.getDefaultSharedPreferences(this);
        for (int i = 0; i < this.numerofavoritos; i++) {
            String string = this.preferences.getString("favPosition" + i, TtmlNode.ANONYMOUS_REGION_ID);
            if (!string.isEmpty()) {
                RegUbic prefToUbic = LocationUtils.parsePrefToUbic(string);
                prefToUbic.cadenaPref = string;
                prefToUbic.id = i;
                arrayList.add(prefToUbic);
            }
        }
        return arrayList;
    }

    @Override // com.rosteam.gpsemulator.TabFragment.OnDataPass
    public void onDataPass(boolean z) {
        this.saveIsPending = z;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void onBackPressed() {
        Log.e("Boorkmarks02", "onBackPressed");
        if (this.saveIsPending) {
            new AlertDialog.Builder(new ContextThemeWrapper((Context) this, R.style.Theme_Custom_Dialog), R.style.CustomAlertDialog).setTitle(R.string.discard_title).setMessage(R.string.discard_summary).setPositiveButton(R.string.cancel, new DialogInterface.OnClickListener() { // from class: com.rosteam.gpsemulator.Bookmarks02.5
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i) {
                }
            }).setNegativeButton(R.string.discard, new DialogInterface.OnClickListener() { // from class: com.rosteam.gpsemulator.Bookmarks02.4
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i) {
                    Bookmarks02.this.saveIsPending = false;
                    Bookmarks02.super.onBackPressed();
                }
            }).show();
        } else {
            super.onBackPressed();
        }
    }

    protected void onDestroy() {
        super.onDestroy();
        Log.e("Boorkmarks02", "onDestroy");
    }
}
