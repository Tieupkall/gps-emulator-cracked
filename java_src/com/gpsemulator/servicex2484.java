package com.rosteam.gpsemulator;

import android.app.AppOpsManager;
import android.app.PendingIntent;
import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.graphics.BitmapFactory;
import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.os.AsyncTask;
import android.os.Build;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Process;
import android.preference.PreferenceManager;
import android.text.TextUtils;
import android.util.Log;
import androidx.core.app.NotificationCompat;
import androidx.core.content.ContextCompat;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.location.LocationServices;
import com.google.android.gms.maps.model.LatLng;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.google.maps.android.SphericalUtil;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import java.math.RoundingMode;
import java.text.DecimalFormat;
import java.text.NumberFormat;
import java.util.List;
import java.util.Locale;
import java.util.Random;

/* JADX INFO: loaded from: c:\Users\LEGION\OneDrive\Desktop\ALL TOOL\New folder\classes5.dex */
public class servicex2484 extends Service {
    private static final int REFRESH_RATE = 150;
    Context context;
    LocationListener locationListener;
    LocationManager locationManager;
    private String mCiudadPais;
    GoogleApiClient mGoogleApiClient;
    private double[] mLatitude;
    private double[] mLongitude;
    private String mTestRequest;
    postFL miPostFL;
    NotificationCompat.Builder notificationBuilder;
    SharedPreferences preferences;
    boolean stopPostFL;
    boolean stopwithoutlaunch;
    boolean useplayserv;
    float velocidad;
    private String rutaName = TtmlNode.ANONYMOUS_REGION_ID;
    int loopMode = 0;
    boolean pause = false;

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return null;
    }

    @Override // android.app.Service
    public void onCreate() {
        this.context = this;
        SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(this);
        this.preferences = defaultSharedPreferences;
        this.useplayserv = defaultSharedPreferences.getBoolean("useplayserv", true);
        this.miPostFL = new postFL();
        try {
            GoogleApiClient googleApiClientBuild = new GoogleApiClient.Builder(this).addConnectionCallbacks(new GoogleApiClient.ConnectionCallbacks() { // from class: com.rosteam.gpsemulator.servicex2484.2
                public void onConnected(Bundle bundle) {
                }

                public void onConnectionSuspended(int i) {
                }
            }).addOnConnectionFailedListener(new GoogleApiClient.OnConnectionFailedListener() { // from class: com.rosteam.gpsemulator.servicex2484.1
                public void onConnectionFailed(ConnectionResult connectionResult) {
                }
            }).addApi(LocationServices.API).build();
            this.mGoogleApiClient = googleApiClientBuild;
            googleApiClientBuild.connect();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i, int i2) {
        PendingIntent activity;
        Log.e("servicex2484", "onStartCommand");
        Intent intent2 = new Intent(this, (Class<?>) MainActivity.class);
        intent2.setAction(CampaignEx.JSON_NATIVE_VIDEO_RESUME);
        PendingIntent activity2 = PendingIntent.getActivity(this, 0, intent2, 67108864);
        boolean z = this.preferences.getBoolean("launchonstop", false);
        this.stopwithoutlaunch = z;
        if (z) {
            Intent intent3 = new Intent(this, (Class<?>) servicex2484.class);
            intent3.setAction(LocationUtils.ACTION_STOP_TEST_MAIN);
            activity = PendingIntent.getService(this, 0, intent3, 67108864);
        } else {
            Intent intent4 = new Intent(this, (Class<?>) MainActivity.class);
            intent4.setAction(LocationUtils.ACTION_STOP_TEST);
            activity = PendingIntent.getActivity(this, 0, intent4, 67108864);
        }
        if (intent != null) {
            this.mTestRequest = intent.getAction();
            Log.e("servicex2484", "accion recibidah: " + this.mTestRequest + " main visible: " + App.isActivityVisible());
        }
        if (!TextUtils.equals(this.mTestRequest, LocationUtils.ACTION_STOP_TEST)) {
            if (TextUtils.equals(this.mTestRequest, LocationUtils.ACTION_STOP_TEST_MAIN)) {
                Log.e("servicex2484", "procesaremos el stop desde main");
                this.stopPostFL = true;
                this.miPostFL.limpiarFakes();
                restablecerGPS();
            } else if (TextUtils.equals(this.mTestRequest, LocationUtils.ACTION_PAUSE)) {
                this.pause = true;
            } else if (TextUtils.equals(this.mTestRequest, LocationUtils.ACTION_RESUME)) {
                this.mCiudadPais = intent.getStringExtra(LocationUtils.CIUDADPAIS);
                this.velocidad = intent.getFloatExtra("velocidad", 0.0f);
                this.loopMode = intent.getIntExtra("loopMode", 0);
                this.pause = false;
            } else {
                if (TextUtils.equals(this.mTestRequest, LocationUtils.ACTION_START_CONTINUOUS)) {
                    this.pause = false;
                    String stringExtra = intent.getStringExtra(LocationUtils.RUTA);
                    this.rutaName = stringExtra;
                    if (stringExtra != null) {
                        Log.e("rutaName", "Se envió nombre de ruta? " + this.rutaName);
                        List<LatLng> list = LocationUtils.getRoute(this.context, this.rutaName).puntos;
                        this.mLatitude = new double[list.size()];
                        this.mLongitude = new double[list.size()];
                        for (int i3 = 0; i3 < list.size(); i3++) {
                            this.mLatitude[i3] = (float) list.get(i3).latitude;
                            this.mLongitude[i3] = (float) list.get(i3).longitude;
                        }
                    } else {
                        Log.e("rutaName", "NO se envió nombre de ruta, usamos puntos recibidos");
                        this.mLatitude = intent.getDoubleArrayExtra(LocationUtils.LATITUDE);
                        this.mLongitude = intent.getDoubleArrayExtra(LocationUtils.LONGITUDE);
                    }
                    this.mCiudadPais = intent.getStringExtra(LocationUtils.CIUDADPAIS);
                    this.velocidad = intent.getFloatExtra("velocidad", 0.0f);
                    this.loopMode = intent.getIntExtra("loopMode", 0);
                    if (this.miPostFL.getStatus() != AsyncTask.Status.RUNNING) {
                        this.miPostFL.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new String[0]);
                    }
                } else if (TextUtils.equals(this.mTestRequest, LocationUtils.ACTION_REFRESH_NOTIF)) {
                    this.mCiudadPais = intent.getStringExtra(LocationUtils.CIUDADPAIS);
                }
                NotificationCompat.Action actionBuild = new NotificationCompat.Action.Builder(R.drawable.stopnotif, getString(R.string.opener), activity2).build();
                NotificationCompat.Action actionBuild2 = new NotificationCompat.Action.Builder(R.drawable.stopnotif, getString(R.string.stop), activity).build();
                this.notificationBuilder = new NotificationCompat.Builder(this, App.CHANNEL_ID);
                this.notificationBuilder.setSmallIcon(R.drawable.notificationanim).setVisibility(this.preferences.getBoolean("hidenotif", false) ? -1 : 0).setPriority(1).setContentTitle(getString(this.velocidad >= 0.2777778f ? R.string.emulating_route : R.string.emulating_location)).setContentText(this.mCiudadPais).setLargeIcon(BitmapFactory.decodeResource(this.context.getResources(), R.drawable.fakegpsnotifyloli)).addAction(actionBuild).addAction(actionBuild2).setContentIntent(activity2);
                if (ContextCompat.checkSelfPermission(this, "android.permission.ACCESS_FINE_LOCATION") != 0) {
                    stopSelf();
                    return 2;
                }
                try {
                    if (Build.VERSION.SDK_INT >= 29) {
                        Log.e("service2484", "StartForeground build >= 29");
                        startForeground(1, this.notificationBuilder.build(), 8);
                    } else {
                        Log.e("service2484", "StartForeground build < 29");
                        startForeground(1, this.notificationBuilder.build());
                    }
                } catch (Exception unused) {
                    Log.e("GPSEMU", "ERROR PRODUCIDO");
                    stopSelf();
                    return 2;
                }
            }
        } else {
            Log.e("servicex2484", "procesaremos el stop desde notif");
            this.stopPostFL = true;
            restablecerGPS();
            if (App.isActivityVisible()) {
                sendMessageStop();
            }
            if (!this.preferences.getBoolean("launchonstop", false)) {
                Intent intent5 = new Intent(this, (Class<?>) MainActivity.class);
                intent5.addFlags(268435456);
                intent5.setAction(LocationUtils.ACTION_STOP_TEST);
                startActivity(intent5);
            }
        }
        return 1;
    }

    private void sendMessageStop() {
        Intent intent = new Intent("detener");
        intent.putExtra("permanecer", 0);
        LocalBroadcastManager.getInstance(this).sendBroadcast(intent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendMessageStopStay(double d, double d2) {
        Intent intent = new Intent("detener");
        intent.putExtra("permanecer", 1);
        intent.putExtra("latitude", d);
        intent.putExtra("longitude", d2);
        LocalBroadcastManager.getInstance(this).sendBroadcast(intent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendMessageUpdate(double d, double d2, double[] dArr, double[] dArr2, float f, boolean z) {
        Intent intent = new Intent("update");
        intent.putExtra("message", new double[]{d, d2});
        intent.putExtra("latitudes", dArr);
        intent.putExtra("longitudes", dArr2);
        intent.putExtra("velocidad", f);
        intent.putExtra(CampaignEx.JSON_NATIVE_VIDEO_PAUSE, this.pause);
        LocalBroadcastManager.getInstance(this).sendBroadcast(intent);
    }

    @Override // android.app.Service
    public void onDestroy() {
        super.onDestroy();
        this.stopPostFL = true;
        Log.e("service2484", "onDestroy() servicex2484 detenido");
        stopSelf();
    }

    class postFL extends AsyncTask<String, String, String> {
        MockLocationProvider mockFused;
        MockLocationProvider mockGPS;
        MockLocationProvider mockNetwork;
        MockLocationProvider mockPasive;
        MockLocationProvider testGPS;

        postFL() {
        }

        @Override // android.os.AsyncTask
        protected void onPreExecute() {
            super.onPreExecute();
            servicex2484.this.stopPostFL = false;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public String doInBackground(String... strArr) {
            float f;
            float f2;
            int length;
            boolean z;
            int i;
            boolean z2;
            double dNextFloat;
            servicex2484 servicex2484Var = servicex2484.this;
            if (!servicex2484Var.isMockLocationEnabled(servicex2484Var.context)) {
                cancel(true);
            }
            try {
                this.mockPasive = new MockLocationProvider("passive", servicex2484.this.context);
            } catch (Exception e) {
                e.printStackTrace();
            }
            try {
                this.mockNetwork = new MockLocationProvider("network", servicex2484.this.context);
            } catch (Exception e2) {
                e2.printStackTrace();
            }
            try {
                try {
                    try {
                        this.mockGPS = new MockLocationProvider("gps", servicex2484.this.context);
                        while (true) {
                            int i2 = length + 1;
                            float fComputeDistanceBetween = (float) SphericalUtil.computeDistanceBetween(new LatLng(servicex2484.this.mLatitude[length], servicex2484.this.mLongitude[length]), new LatLng(servicex2484.this.mLatitude[i2], servicex2484.this.mLongitude[i2]));
                            float f3 = servicex2484.this.velocidad;
                            float f4 = f2 > f ? f2 / fComputeDistanceBetween : f;
                            float f5 = f;
                            double dComputeHeading = SphericalUtil.computeHeading(new LatLng(servicex2484.this.mLatitude[length], servicex2484.this.mLongitude[length]), new LatLng(servicex2484.this.mLatitude[i2], servicex2484.this.mLongitude[i2]));
                            if (z) {
                                i = i2;
                                try {
                                    this.mockNetwork.pushLocation(servicex2484.this.mLatitude[servicex2484.this.mLatitude.length - 1], servicex2484.this.mLongitude[servicex2484.this.mLongitude.length - 1], servicex2484.this.velocidad, (float) dComputeHeading);
                                } catch (Exception e3) {
                                    e3.printStackTrace();
                                }
                                try {
                                    this.mockGPS.pushLocation(servicex2484.this.mLatitude[servicex2484.this.mLatitude.length - 1], servicex2484.this.mLongitude[servicex2484.this.mLongitude.length - 1], servicex2484.this.velocidad, (float) dComputeHeading);
                                } catch (Exception e4) {
                                    e4.printStackTrace();
                                }
                                try {
                                    this.testGPS.pushLocation(servicex2484.this.mLatitude[servicex2484.this.mLatitude.length - 1], servicex2484.this.mLongitude[servicex2484.this.mLongitude.length - 1], servicex2484.this.velocidad, (float) dComputeHeading);
                                } catch (Exception e5) {
                                    e5.printStackTrace();
                                }
                                ((LocationManager) servicex2484.this.context.getSystemService(FirebaseAnalytics.Param.LOCATION)).getAllProviders();
                                if (servicex2484.this.useplayserv) {
                                    try {
                                        LocationServices.FusedLocationApi.setMockMode(servicex2484.this.mGoogleApiClient, true);
                                        LocationServices.FusedLocationApi.setMockLocation(servicex2484.this.mGoogleApiClient, this.mockNetwork.mockLocation);
                                    } catch (Exception e6) {
                                        Log.e("fake gps", "EXCEPTION CON PLAY SERVICES");
                                        e6.printStackTrace();
                                    }
                                }
                                servicex2484 servicex2484Var2 = servicex2484.this;
                                servicex2484Var2.sendMessageUpdate(servicex2484Var2.mLatitude[servicex2484.this.mLatitude.length - 1], servicex2484.this.mLongitude[servicex2484.this.mLongitude.length - 1], servicex2484.this.mLatitude, servicex2484.this.mLongitude, servicex2484.this.velocidad, servicex2484.this.pause);
                                try {
                                    Thread.sleep(new Random().nextInt(100) + 900);
                                } catch (InterruptedException unused) {
                                }
                            } else {
                                float f6 = f2;
                                float f7 = f4;
                                float f8 = f6;
                                while (true) {
                                    if (f7 > 100.0f) {
                                        f2 = f8;
                                        break;
                                    }
                                    float f9 = 15.0f / (fComputeDistanceBetween / servicex2484.this.velocidad);
                                    float f10 = (f7 + f9) - 100.0f;
                                    float f11 = f10 > f5 ? f10 * fComputeDistanceBetween : f5;
                                    if (servicex2484.this.pause) {
                                        f9 = f5;
                                    }
                                    if (servicex2484.this.stopPostFL) {
                                        f2 = f11;
                                        break;
                                    }
                                    int i3 = i2;
                                    double d = dComputeHeading;
                                    int i4 = length;
                                    LatLng latLngInterpolate = SphericalUtil.interpolate(new LatLng(servicex2484.this.mLatitude[length], servicex2484.this.mLongitude[length]), new LatLng(servicex2484.this.mLatitude[i3], servicex2484.this.mLongitude[i3]), ((double) f7) / 100.0d);
                                    double d2 = latLngInterpolate.latitude;
                                    double dNextFloat2 = latLngInterpolate.longitude;
                                    float f12 = servicex2484.this.preferences.getInt("accuracy", 1) * 8.983112E-6f;
                                    if (!servicex2484.this.preferences.getBoolean("randomize", false) || servicex2484.this.velocidad >= 0.2777778f || new Random().nextInt(10) <= 6) {
                                        dNextFloat = d2;
                                    } else {
                                        Log.e("fakegps", "randomizamos");
                                        dNextFloat = d2 + ((double) ((new Random().nextFloat() - 0.5f) * f12));
                                        dNextFloat2 += (double) (f12 * (new Random().nextFloat() - 0.5f));
                                    }
                                    int i5 = Integer.parseInt(servicex2484.this.preferences.getString("decimal_places", "-1"));
                                    if (i5 >= 0) {
                                        NumberFormat decimalFormat = DecimalFormat.getInstance(Locale.ENGLISH);
                                        decimalFormat.setMaximumFractionDigits(i5);
                                        decimalFormat.setMinimumFractionDigits(i5);
                                        decimalFormat.setRoundingMode(RoundingMode.DOWN);
                                        dNextFloat2 = Double.parseDouble(decimalFormat.format(dNextFloat2));
                                        dNextFloat = Double.parseDouble(decimalFormat.format(dNextFloat));
                                    }
                                    double d3 = dNextFloat;
                                    double d4 = dNextFloat2;
                                    try {
                                        dComputeHeading = d;
                                        try {
                                            this.mockNetwork.pushLocation(d3, d4, servicex2484.this.velocidad, (float) dComputeHeading);
                                        } catch (Exception e7) {
                                            e = e7;
                                            e.printStackTrace();
                                        }
                                    } catch (Exception e8) {
                                        e = e8;
                                        dComputeHeading = d;
                                    }
                                    try {
                                        this.mockGPS.pushLocation(d3, d4, servicex2484.this.velocidad, (float) dComputeHeading);
                                    } catch (Exception e9) {
                                        e9.printStackTrace();
                                    }
                                    try {
                                        this.mockFused.pushLocation(d3, d4, servicex2484.this.velocidad, (float) dComputeHeading);
                                    } catch (Exception e10) {
                                        e10.printStackTrace();
                                    }
                                    try {
                                        this.testGPS.pushLocation(d3, d4, servicex2484.this.velocidad, (float) dComputeHeading);
                                    } catch (Exception e11) {
                                        e11.printStackTrace();
                                    }
                                    ((LocationManager) servicex2484.this.context.getSystemService(FirebaseAnalytics.Param.LOCATION)).getAllProviders();
                                    if (servicex2484.this.useplayserv) {
                                        try {
                                            LocationServices.FusedLocationApi.setMockMode(servicex2484.this.mGoogleApiClient, true);
                                            LocationServices.FusedLocationApi.setMockLocation(servicex2484.this.mGoogleApiClient, this.mockNetwork.mockLocation);
                                        } catch (Exception e12) {
                                            Log.e("fake gps", "EXCEPTION CON PLAY SERVICES");
                                            e12.printStackTrace();
                                        }
                                    }
                                    servicex2484 servicex2484Var3 = servicex2484.this;
                                    servicex2484Var3.sendMessageUpdate(d3, d4, servicex2484Var3.mLatitude, servicex2484.this.mLongitude, servicex2484.this.velocidad, servicex2484.this.pause);
                                    try {
                                        if (servicex2484.this.velocidad >= 1049508068) {
                                            Thread.sleep(150L);
                                        } else {
                                            Thread.sleep(new Random().nextInt(100) + 900);
                                        }
                                    } catch (InterruptedException unused2) {
                                    }
                                    f7 += f9;
                                    f8 = f11;
                                    length = i4;
                                    i2 = i3;
                                }
                                i = i2;
                            }
                            length = i;
                            if (length == servicex2484.this.mLatitude.length - 1) {
                                int i6 = servicex2484.this.loopMode;
                                if (i6 == 0) {
                                    z2 = true;
                                    servicex2484 servicex2484Var4 = servicex2484.this;
                                    servicex2484Var4.sendMessageStopStay(servicex2484Var4.mLatitude[servicex2484.this.mLatitude.length - 1], servicex2484.this.mLongitude[servicex2484.this.mLongitude.length - 1]);
                                    length = servicex2484.this.mLatitude.length - 2;
                                    z = true;
                                } else if (i6 != 1) {
                                    if (i6 == 2) {
                                        length = 0;
                                    }
                                    z2 = true;
                                } else {
                                    double[] dArr = (double[]) servicex2484.this.mLatitude.clone();
                                    double[] dArr2 = (double[]) servicex2484.this.mLongitude.clone();
                                    z2 = true;
                                    int i7 = 0;
                                    for (int length2 = dArr.length - 1; length2 >= 0; length2--) {
                                        servicex2484.this.mLatitude[i7] = dArr[length2];
                                        servicex2484.this.mLongitude[i7] = dArr2[length2];
                                        i7++;
                                    }
                                    length = 0;
                                }
                            } else {
                                z2 = true;
                            }
                            if (servicex2484.this.stopPostFL) {
                                return null;
                            }
                            f = f5;
                        }
                    } catch (Exception e13) {
                        e13.printStackTrace();
                    }
                    this.testGPS = new MockLocationProvider("test", servicex2484.this.context);
                } catch (Exception e14) {
                    e14.printStackTrace();
                }
                this.mockFused = new MockLocationProvider("fused", servicex2484.this.context);
            } catch (Exception e15) {
                e15.printStackTrace();
            }
            Log.e("SEGMENTOS", "Cantidad: " + servicex2484.this.mLongitude.length);
            f = 0.0f;
            f2 = 0.0f;
            length = 0;
            z = false;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public void onPostExecute(String str) {
            limpiarFakes();
        }

        @Override // android.os.AsyncTask
        protected void onCancelled() {
            Log.e("onCancelled", "cancelled");
            super.onCancelled();
        }

        private LatLng interpolate(LatLng latLng, LatLng latLng2, double d) {
            double d2 = 1.0d - d;
            return new LatLng((latLng.latitude * d2) + (latLng2.latitude * d), (latLng.longitude * d2) + (latLng2.longitude * d));
        }

        public void limpiarFakes() {
            Log.e("fakegps", "Limpiar fakes");
            MockLocationProvider mockLocationProvider = this.mockNetwork;
            if (mockLocationProvider != null) {
                mockLocationProvider.shutdown();
            }
            MockLocationProvider mockLocationProvider2 = this.mockGPS;
            if (mockLocationProvider2 != null) {
                mockLocationProvider2.shutdown();
            }
            try {
                LocationServices.FusedLocationApi.setMockMode(servicex2484.this.mGoogleApiClient, false);
                LocationServices.FusedLocationApi.flushLocations(servicex2484.this.mGoogleApiClient);
                servicex2484.this.mGoogleApiClient.disconnect();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    public void restablecerGPS() {
        Log.e("service2484", "restablecerGPS incio");
        boolean z = ContextCompat.checkSelfPermission(this.context, "android.permission.ACCESS_FINE_LOCATION") == 0;
        Log.e("service2484", "has permission? " + z);
        if (z) {
            this.locationManager = (LocationManager) this.context.getSystemService(FirebaseAnalytics.Param.LOCATION);
            LocationListener locationListener = new LocationListener() { // from class: com.rosteam.gpsemulator.servicex2484.3
                @Override // android.location.LocationListener
                public void onProviderDisabled(String str) {
                }

                @Override // android.location.LocationListener
                public void onProviderEnabled(String str) {
                }

                @Override // android.location.LocationListener
                public void onStatusChanged(String str, int i, Bundle bundle) {
                }

                @Override // android.location.LocationListener
                public void onLocationChanged(Location location) {
                    MockLocationProvider mockLocationProvider;
                    Log.e("service2484", "onLocationChanged " + location.getLatitude() + " + " + location.getLongitude());
                    try {
                        servicex2484.this.mGoogleApiClient = new GoogleApiClient.Builder(servicex2484.this.context).addConnectionCallbacks(new GoogleApiClient.ConnectionCallbacks() { // from class: com.rosteam.gpsemulator.servicex2484.3.2
                            public void onConnected(Bundle bundle) {
                            }

                            public void onConnectionSuspended(int i) {
                            }
                        }).addOnConnectionFailedListener(new GoogleApiClient.OnConnectionFailedListener() { // from class: com.rosteam.gpsemulator.servicex2484.3.1
                            public void onConnectionFailed(ConnectionResult connectionResult) {
                            }
                        }).addApi(LocationServices.API).build();
                        servicex2484.this.mGoogleApiClient.connect();
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                    MockLocationProvider mockLocationProvider2 = null;
                    try {
                        mockLocationProvider = new MockLocationProvider("network", servicex2484.this.context);
                        mockLocationProvider.pushLocation(location.getLatitude(), location.getLongitude());
                    } catch (Exception e2) {
                        e2.printStackTrace();
                        mockLocationProvider = null;
                    }
                    try {
                        MockLocationProvider mockLocationProvider3 = new MockLocationProvider("gps", servicex2484.this.context);
                        mockLocationProvider3.pushLocation(location.getLatitude(), location.getLongitude());
                        mockLocationProvider2 = mockLocationProvider3;
                    } catch (Exception e3) {
                        e3.printStackTrace();
                    }
                    try {
                        LocationServices.FusedLocationApi.setMockMode(servicex2484.this.mGoogleApiClient, true);
                        LocationServices.FusedLocationApi.setMockLocation(servicex2484.this.mGoogleApiClient, mockLocationProvider.mockLocation);
                        LocationServices.FusedLocationApi.setMockLocation(servicex2484.this.mGoogleApiClient, mockLocationProvider2.mockLocation);
                    } catch (Exception e4) {
                        e4.printStackTrace();
                    }
                    try {
                        Thread.sleep(1500L);
                    } catch (InterruptedException e5) {
                        e5.printStackTrace();
                    }
                    if (mockLocationProvider != null) {
                        mockLocationProvider.shutdown();
                    }
                    if (mockLocationProvider2 != null) {
                        mockLocationProvider2.shutdown();
                    }
                    try {
                        LocationServices.FusedLocationApi.setMockMode(servicex2484.this.mGoogleApiClient, false);
                        LocationServices.FusedLocationApi.flushLocations(servicex2484.this.mGoogleApiClient);
                        servicex2484.this.mGoogleApiClient.disconnect();
                    } catch (Exception e6) {
                        e6.printStackTrace();
                    }
                    servicex2484.this.locationManager.removeUpdates(servicex2484.this.locationListener);
                }
            };
            this.locationListener = locationListener;
            this.locationManager.requestLocationUpdates("network", 0L, 0.0f, locationListener);
        }
        stopSelf();
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
