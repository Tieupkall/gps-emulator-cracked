package com.rosteam.gpsemulator;

import android.app.AppOpsManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Process;
import android.preference.PreferenceManager;
import android.util.Log;
import androidx.core.content.ContextCompat;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.rosteam.gpsemulator.utils.RegUbic;
import java.util.ArrayList;

/* JADX INFO: loaded from: c:\Users\LEGION\OneDrive\Desktop\ALL TOOL\New folder\classes5.dex */
public class BootUpReceiver extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        String string;
        Log.e("BootUp", "BootUp received");
        SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(context);
        boolean z = defaultSharedPreferences.getBoolean("startlastlocation", false);
        boolean z2 = true;
        Log.e("BootUp", "autoStart: " + z + " noAds: " + z2);
        if (z && z2) {
            ArrayList arrayList = new ArrayList();
            int i = 0;
            do {
                string = defaultSharedPreferences.getString("histPosition" + i, TtmlNode.ANONYMOUS_REGION_ID);
                if (!string.isEmpty()) {
                    arrayList.add(parsePrefToUbic(string));
                }
                i++;
            } while (!string.isEmpty());
            Log.e("BootUp", "History position 0 :" + ((RegUbic) arrayList.get(0)).ciudadpais);
            Log.e("BootUp", "History position " + (arrayList.size() - 1) + ":" + ((RegUbic) arrayList.get(arrayList.size() - 1)).ciudadpais);
            if (arrayList.size() > 0) {
                RegUbic regUbic = (RegUbic) arrayList.get(0);
                double[] dArr = {regUbic.lat, regUbic.lat};
                double[] dArr2 = {regUbic.lng, regUbic.lng};
                Intent intent2 = new Intent(context, (Class<?>) servicex2484.class);
                intent2.addFlags(268435456);
                intent2.putExtra(LocationUtils.LATITUDE, dArr);
                intent2.putExtra(LocationUtils.LONGITUDE, dArr2);
                intent2.putExtra(LocationUtils.CIUDADPAIS, regUbic.ciudadpais);
                intent2.putExtra("velocidad", 0.02777778f);
                intent2.putExtra("loopMode", 2);
                intent2.setAction(LocationUtils.ACTION_START_CONTINUOUS);
                Log.e("BootUp", "Vamos a intentar iniciar foreground service");
                ContextCompat.startForegroundService(context, intent2);
            }
        }
    }

    public RegUbic parsePrefToUbic(String str) {
        float f;
        String[] strArrSplit = str.split("\\+");
        String str2 = strArrSplit[0];
        double d = Double.parseDouble(strArrSplit[1]);
        double d2 = Double.parseDouble(strArrSplit[2]);
        float f2 = Float.parseFloat(strArrSplit[3]);
        try {
            f = Float.parseFloat(strArrSplit[4]);
        } catch (Exception unused) {
            f = 0.0f;
        }
        return new RegUbic(str2, d, d2, f2, f, false);
    }

    public boolean isMockLocationEnabled(Context context) {
        try {
            return ((AppOpsManager) context.getSystemService("appops")).checkOp("android:mock_location", Process.myUid(), "com.android.billingclient") == 0;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }
}
