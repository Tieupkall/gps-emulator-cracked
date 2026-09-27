package com.rosteam.gpsemulator;

import android.content.Context;
import android.content.SharedPreferences;
import android.location.Location;
import android.location.LocationManager;
import android.os.SystemClock;
import android.preference.PreferenceManager;
import com.google.firebase.analytics.FirebaseAnalytics;

/* JADX INFO: loaded from: c:\Users\LEGION\OneDrive\Desktop\ALL TOOL\New folder\classes5.dex */
public class MockLocationProvider {
    Context ctx;
    public Location mockLocation;
    SharedPreferences preferences;
    String providerName;

    public MockLocationProvider(String str, Context context) throws Exception {
        this.providerName = str;
        this.ctx = context;
        this.preferences = PreferenceManager.getDefaultSharedPreferences(context);
        LocationManager locationManager = (LocationManager) context.getSystemService(FirebaseAnalytics.Param.LOCATION);
        try {
            locationManager.removeTestProvider(this.providerName);
        } catch (Exception unused) {
        }
        locationManager.addTestProvider(this.providerName, false, false, false, false, true, true, true, 1, 1);
        locationManager.setTestProviderEnabled(this.providerName, true);
    }

    public void pushLocation(double d, double d2) {
        pushLocation(d, d2, 0.0f, 0.0f);
    }

    public void pushLocation(double d, double d2, float f, float f2) {
        LocationManager locationManager = (LocationManager) this.ctx.getSystemService(FirebaseAnalytics.Param.LOCATION);
        float f3 = this.preferences.getFloat("altitude2", 0.0f);
        float f4 = this.preferences.getFloat("accuracy2", 1.0f);
        Location location = new Location(this.providerName);
        this.mockLocation = location;
        location.setLatitude(d);
        this.mockLocation.setLongitude(d2);
        this.mockLocation.setAltitude(f3);
        this.mockLocation.setTime(System.currentTimeMillis());
        this.mockLocation.setAccuracy(f4);
        this.mockLocation.setElapsedRealtimeNanos(SystemClock.elapsedRealtimeNanos());
        this.mockLocation.setSpeed(f);
        this.mockLocation.setBearing(f2);
        try {
            if (isProviderEnabled()) {
                locationManager.setTestProviderLocation(this.providerName, this.mockLocation);
            }
        } catch (Exception unused) {
        }
    }

    public void shutdown() {
        LocationManager locationManager = (LocationManager) this.ctx.getSystemService(FirebaseAnalytics.Param.LOCATION);
        try {
            if (isProviderEnabled()) {
                locationManager.removeTestProvider(this.providerName);
            }
        } catch (Exception unused) {
        }
    }

    public boolean isProviderEnabled() {
        return ((LocationManager) this.ctx.getSystemService(FirebaseAnalytics.Param.LOCATION)).isProviderEnabled(this.providerName);
    }
}
