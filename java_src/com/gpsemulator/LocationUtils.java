package com.rosteam.gpsemulator;

import android.content.Context;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import android.util.Log;
import com.google.android.gms.maps.model.CameraPosition;
import com.google.android.gms.maps.model.LatLng;
import com.mbridge.msdk.playercommon.exoplayer2.extractor.ts.TsExtractor;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.rosteam.gpsemulator.utils.RegUbic;
import java.math.RoundingMode;
import java.text.DecimalFormat;
import java.text.NumberFormat;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

/* JADX INFO: loaded from: c:\Users\LEGION\OneDrive\Desktop\ALL TOOL\New folder\classes5.dex */
public final class LocationUtils {
    public static final String ACTION_PAUSE = "ACTION_PAUSE";
    public static final String ACTION_REFRESH_NOTIF = "ACTION_REFRESH_NOTIF";
    public static final String ACTION_RESUME = "ACTION_RESUME";
    public static final String ACTION_START_CONTINUOUS = "ACTION_START_CONTINUOUS";
    public static final String ACTION_STOP_TEST = "ACTION_STOP";
    public static final String ACTION_STOP_TEST_MAIN = "ACTION_STOP_MAIN";
    public static final String CIUDADPAIS = "com.example.android.mocklocation.CIUDADPAIS";
    public static final String LATITUDE = "com.example.android.mocklocation.LATITUDE";
    public static final String LONGITUDE = "com.example.android.mocklocation.LONGITUDE";
    public static final int LOOP_RESTART = 2;
    public static final int LOOP_REVERSE = 1;
    public static final int LOOP_STOP = 0;
    public static final String RUTA = "uy.digitools.RUTA";

    public static LatLng getDelta(CameraPosition cameraPosition, float f) {
        double d;
        switch ((int) cameraPosition.zoom) {
            case 3:
                d = 6.0d;
                break;
            case 4:
                d = 3.0d;
                break;
            case 5:
                d = 1.5d;
                break;
            case 6:
                d = 0.75d;
                break;
            case 7:
                d = 0.4d;
                break;
            case 8:
                d = 0.25d;
                break;
            case 9:
                d = 0.1d;
                break;
            case 10:
                d = 0.05d;
                break;
            case 11:
                d = 0.025d;
                break;
            case 12:
                d = 0.015d;
                break;
            case 13:
                d = 0.007d;
                break;
            case 14:
                d = 0.004d;
                break;
            case 15:
                d = 0.002d;
                break;
            case 16:
                d = 0.001d;
                break;
            case 17:
                d = 7.0E-4d;
                break;
            case 18:
                d = 4.0E-4d;
                break;
            case 19:
                d = 2.0E-4d;
                break;
            case 20:
                d = 7.5E-5d;
                break;
            case TsExtractor.TS_STREAM_TYPE_ID3 /* 21 */:
                d = 4.0E-5d;
                break;
            default:
                d = 0.0d;
                break;
        }
        return new LatLng(cameraPosition.target.latitude, cameraPosition.target.longitude + d);
    }

    public static double trunc(double d, int i) {
        if (i < 0) {
            return d;
        }
        NumberFormat decimalFormat = DecimalFormat.getInstance(Locale.ENGLISH);
        decimalFormat.setMaximumFractionDigits(i);
        decimalFormat.setMinimumFractionDigits(i);
        decimalFormat.setRoundingMode(RoundingMode.DOWN);
        return Double.parseDouble(decimalFormat.format(d));
    }

    public static String rutaToString(RegUbic regUbic) {
        String strConcat = regUbic.name + "+" + regUbic.modo + "+" + regUbic.zoom + "+" + regUbic.bearing + "+";
        for (int i = 0; i < regUbic.puntos.size(); i++) {
            strConcat = strConcat.concat(regUbic.puntos.get(i).latitude + "," + regUbic.puntos.get(i).longitude + ";");
        }
        return strConcat.concat("+" + regUbic.pined);
    }

    public static String rutaToString(List<LatLng> list, String str, int i, float f, float f2) {
        String strConcat = str + "+" + i + "+" + f + "+" + f2 + "+";
        for (int i2 = 0; i2 < list.size(); i2++) {
            strConcat = strConcat.concat(list.get(i2).latitude + "," + list.get(i2).longitude + ";");
        }
        return strConcat.concat("+false").concat("+-1");
    }

    public static String rutaToString(List<LatLng> list, String str, int i, float f, float f2, double d) {
        String strConcat = str + "+" + i + "+" + f + "+" + f2 + "+";
        for (int i2 = 0; i2 < list.size(); i2++) {
            strConcat = strConcat.concat(list.get(i2).latitude + "," + list.get(i2).longitude + ";");
        }
        return strConcat.concat("+false").concat("+" + d);
    }

    public static RegUbic parseRutaToUbic(String str) {
        Log.e("GPSEMU", "parseRutaToUbic(): " + str);
        ArrayList arrayList = new ArrayList();
        String[] strArrSplit = str.split("\\+");
        boolean z = false;
        String str2 = strArrSplit[0];
        int i = Integer.parseInt(strArrSplit[1]);
        float f = Float.parseFloat(strArrSplit[2]);
        float f2 = Float.parseFloat(strArrSplit[3]);
        for (String str3 : strArrSplit[4].split(";")) {
            String[] strArrSplit2 = str3.split(",");
            arrayList.add(new LatLng(Double.parseDouble(strArrSplit2[0]), Double.parseDouble(strArrSplit2[1])));
        }
        try {
            z = Boolean.parseBoolean(strArrSplit[5]);
        } catch (Exception unused) {
        }
        RegUbic regUbic = new RegUbic(str2, i, arrayList, f, f2, z);
        Log.e("Ruta", str2);
        return regUbic;
    }

    public static ArrayList<RegUbic> loadHisFromPref(Context context) {
        SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(context);
        ArrayList<RegUbic> arrayList = new ArrayList<>();
        for (int i = 0; i < 12; i++) {
            String string = defaultSharedPreferences.getString("histPosition" + i, TtmlNode.ANONYMOUS_REGION_ID);
            if (!string.isEmpty()) {
                RegUbic prefToUbic = parsePrefToUbic(string);
                prefToUbic.cadenaPref = string;
                prefToUbic.id = i;
                arrayList.add(prefToUbic);
            }
        }
        return arrayList;
    }

    public static RegUbic parsePrefToUbic(String str) {
        float f;
        String[] strArrSplit = str.split("\\+");
        boolean z = false;
        String str2 = strArrSplit[0];
        double d = Double.parseDouble(strArrSplit[1]);
        double d2 = Double.parseDouble(strArrSplit[2]);
        float f2 = Float.parseFloat(strArrSplit[3]);
        try {
            f = Float.parseFloat(strArrSplit[4]);
            try {
                z = Boolean.parseBoolean(strArrSplit[5]);
            } catch (Exception unused) {
            }
        } catch (Exception unused2) {
            f = 0.0f;
        }
        return new RegUbic(str2, d, d2, f2, f, z);
    }

    public static ArrayList<RegUbic> loadRutasFromPref(Context context) {
        ArrayList<RegUbic> arrayList = new ArrayList<>();
        SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(context);
        int i = 0;
        while (true) {
            String string = defaultSharedPreferences.getString("ruta" + i, TtmlNode.ANONYMOUS_REGION_ID);
            if (string.compareTo(TtmlNode.ANONYMOUS_REGION_ID) == 0) {
                return arrayList;
            }
            RegUbic rutaToUbic = parseRutaToUbic(string);
            rutaToUbic.cadenaPref = string;
            rutaToUbic.prefName = "ruta" + i;
            rutaToUbic.id = i;
            arrayList.add(rutaToUbic);
            i++;
        }
    }

    public static List<LatLng> generateCirclePoints(LatLng latLng, double d) {
        ArrayList arrayList = new ArrayList();
        double d2 = d / 6371009.0d;
        double radians = Math.toRadians(latLng.latitude);
        double radians2 = Math.toRadians(latLng.longitude);
        for (int i = 0; i <= 50; i++) {
            double d3 = (((double) i) * 6.283185307179586d) / 50.0d;
            double dAsin = Math.asin((Math.sin(radians) * Math.cos(d2)) + (Math.cos(radians) * Math.sin(d2) * Math.cos(d3)));
            arrayList.add(new LatLng(Math.toDegrees(dAsin), Math.toDegrees(Math.atan2(Math.sin(d3) * Math.sin(d2) * Math.cos(radians), Math.cos(d2) - (Math.sin(radians) * Math.sin(dAsin))) + radians2)));
        }
        return arrayList;
    }

    public static RegUbic getRoute(Context context, String str) {
        String string = PreferenceManager.getDefaultSharedPreferences(context).getString(str, TtmlNode.ANONYMOUS_REGION_ID);
        ArrayList arrayList = new ArrayList();
        String[] strArrSplit = string.split("\\+");
        boolean z = false;
        String str2 = strArrSplit[0];
        int i = Integer.parseInt(strArrSplit[1]);
        float f = Float.parseFloat(strArrSplit[2]);
        float f2 = Float.parseFloat(strArrSplit[3]);
        for (String str3 : strArrSplit[4].split(";")) {
            String[] strArrSplit2 = str3.split(",");
            arrayList.add(new LatLng(Double.parseDouble(strArrSplit2[0]), Double.parseDouble(strArrSplit2[1])));
        }
        try {
            z = Boolean.parseBoolean(strArrSplit[5]);
        } catch (Exception unused) {
        }
        return new RegUbic(str2, i, arrayList, f, f2, z);
    }
}
