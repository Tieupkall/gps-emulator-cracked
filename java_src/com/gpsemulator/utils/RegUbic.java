package com.rosteam.gpsemulator.utils;

import com.google.android.gms.maps.model.LatLng;
import java.util.List;

/* JADX INFO: loaded from: c:\Users\LEGION\OneDrive\Desktop\ALL TOOL\New folder\classes5.dex */
public class RegUbic {
    public float bearing;
    public String cadenaPref;
    public String ciudadpais;
    public int id;
    public double lat;
    public double lng;
    public int modo;
    public String name;
    public boolean pined;
    public boolean pinnedPlaceholder;
    public String prefName;
    public List<LatLng> puntos;
    public float zoom;

    public RegUbic(String str, double d, double d2, float f) {
        this.bearing = 0.0f;
        this.pined = false;
        this.pinnedPlaceholder = false;
        this.ciudadpais = str;
        this.lat = d;
        this.lng = d2;
        this.zoom = f;
    }

    public RegUbic(String str, double d, double d2, float f, float f2, boolean z) {
        this.pinnedPlaceholder = false;
        this.ciudadpais = str;
        this.lat = d;
        this.lng = d2;
        this.zoom = f;
        this.bearing = f2;
        this.pined = z;
    }

    public RegUbic(String str, int i, List<LatLng> list, float f, float f2, boolean z) {
        this.pinnedPlaceholder = false;
        this.name = str;
        this.modo = i;
        this.puntos = list;
        this.zoom = f;
        this.bearing = f2;
        this.pined = z;
    }
}
