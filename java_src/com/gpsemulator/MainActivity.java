package com.rosteam.gpsemulator;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.app.Activity;
import android.app.ActivityManager;
import android.app.AppOpsManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.IntentSender;
import android.content.SharedPreferences;
import android.content.pm.ResolveInfo;
import android.content.res.Resources;
import android.graphics.Color;
import android.location.Address;
import android.location.Geocoder;
import android.location.Location;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.PowerManager;
import android.os.Process;
import android.preference.PreferenceManager;
import android.provider.Settings;
import android.text.InputFilter;
import android.util.DisplayMetrics;
import android.util.Log;
import android.util.SparseArray;
import android.view.ContextThemeWrapper;
import android.view.Display;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.animation.LinearInterpolator;
import android.view.animation.RotateAnimation;
import android.view.inputmethod.InputMethodManager;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.SeekBar;
import android.widget.TextView;
import android.widget.Toast;
import androidx.appcompat.app.ActionBarDrawerToggle;
import androidx.appcompat.app.AlertDialog;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.app.AppCompatDialog;
import androidx.appcompat.widget.Toolbar;
import androidx.core.app.ActivityCompat;
import androidx.core.content.ContextCompat;
import androidx.drawerlayout.widget.DrawerLayout;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import com.android.billingclient.api.AcknowledgePurchaseParams;
import com.android.billingclient.api.AcknowledgePurchaseResponseListener;
import com.android.billingclient.api.BillingClient;
import com.android.billingclient.api.BillingClientStateListener;
import com.android.billingclient.api.BillingFlowParams;
import com.android.billingclient.api.BillingResult;
import com.android.billingclient.api.PendingPurchasesParams;
import com.android.billingclient.api.ProductDetails;
import com.android.billingclient.api.ProductDetailsResponseListener;
import com.android.billingclient.api.Purchase;
import com.android.billingclient.api.PurchasesResponseListener;
import com.android.billingclient.api.PurchasesUpdatedListener;
import com.android.billingclient.api.QueryProductDetailsParams;
import com.android.billingclient.api.QueryProductDetailsResult;
import com.android.billingclient.api.QueryPurchasesParams;
import com.bytedance.sdk.openadsdk.api.banner.PAGBannerAd;
import com.bytedance.sdk.openadsdk.api.banner.PAGBannerAdLoadListener;
import com.bytedance.sdk.openadsdk.api.banner.PAGBannerRequest;
import com.bytedance.sdk.openadsdk.api.banner.PAGBannerSize;
import com.bytedance.sdk.openadsdk.api.interstitial.PAGInterstitialAd;
import com.bytedance.sdk.openadsdk.api.interstitial.PAGInterstitialAdInteractionListener;
import com.bytedance.sdk.openadsdk.api.interstitial.PAGInterstitialAdLoadListener;
import com.bytedance.sdk.openadsdk.api.interstitial.PAGInterstitialRequest;
import com.bytedance.sdk.openadsdk.api.open.PAGAppOpenAdInteractionListener;
import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.AdView;
import com.google.android.gms.ads.FullScreenContentCallback;
import com.google.android.gms.ads.LoadAdError;
import com.google.android.gms.ads.OnUserEarnedRewardListener;
import com.google.android.gms.ads.interstitial.InterstitialAdLoadCallback;
import com.google.android.gms.ads.rewarded.RewardItem;
import com.google.android.gms.ads.rewarded.RewardedAd;
import com.google.android.gms.ads.rewarded.RewardedAdLoadCallback;
import com.google.android.gms.maps.CameraUpdateFactory;
import com.google.android.gms.maps.GoogleMap;
import com.google.android.gms.maps.OnMapReadyCallback;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.google.android.gms.maps.model.CameraPosition;
import com.google.android.gms.maps.model.Circle;
import com.google.android.gms.maps.model.CircleOptions;
import com.google.android.gms.maps.model.CustomCap;
import com.google.android.gms.maps.model.Dash;
import com.google.android.gms.maps.model.Gap;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.LatLngBounds;
import com.google.android.gms.maps.model.MapStyleOptions;
import com.google.android.gms.maps.model.Marker;
import com.google.android.gms.maps.model.MarkerOptions;
import com.google.android.gms.maps.model.Polyline;
import com.google.android.gms.maps.model.PolylineOptions;
import com.google.android.gms.maps.model.RoundCap;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.OnSuccessListener;
import com.google.android.gms.tasks.Task;
import com.google.android.material.snackbar.Snackbar;
import com.google.android.play.core.appupdate.AppUpdateInfo;
import com.google.android.play.core.appupdate.AppUpdateManager;
import com.google.android.play.core.appupdate.AppUpdateManagerFactory;
import com.google.android.play.core.install.InstallState;
import com.google.android.play.core.install.InstallStateUpdatedListener;
import com.google.android.play.core.review.ReviewInfo;
import com.google.android.play.core.review.ReviewManager;
import com.google.android.play.core.review.ReviewManagerFactory;
import com.google.android.ump.ConsentForm;
import com.google.android.ump.ConsentInformation;
import com.google.android.ump.ConsentRequestParameters;
import com.google.android.ump.FormError;
import com.google.android.ump.UserMessagingPlatform;
import com.google.firebase.FirebaseApp;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.google.firebase.crashlytics.internal.metadata.UserMetadata;
import com.google.firebase.messaging.ServiceStarter;
import com.google.firebase.sessions.settings.RemoteSettings;
import com.google.maps.android.SphericalUtil;
import com.google.protobuf.Reader;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.mbridge.msdk.playercommon.exoplayer2.DefaultRenderersFactory;
import com.mbridge.msdk.playercommon.exoplayer2.source.chunk.ChunkedTrackBlacklistUtil;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import com.my.target.ads.InterstitialAd;
import com.my.target.ads.MyTargetView;
import com.my.target.common.MyTargetPrivacy;
import com.my.target.common.models.IAdLoadingError;
import com.rosteam.gpsemulator.utils.RegUbic;
import com.socdm.d.adgeneration.ADG;
import com.socdm.d.adgeneration.ADGConsts;
import com.socdm.d.adgeneration.ADGListener;
import com.socdm.d.adgeneration.interstitial.ADGInterstitial;
import com.socdm.d.adgeneration.interstitial.ADGInterstitialListener;
import com.unity3d.ads.IUnityAdsInitializationListener;
import com.unity3d.ads.IUnityAdsLoadListener;
import com.unity3d.ads.IUnityAdsShowListener;
import com.unity3d.ads.UnityAds;
import com.unity3d.ads.UnityAdsShowOptions;
import com.unity3d.services.banners.BannerErrorInfo;
import com.unity3d.services.banners.BannerView;
import com.unity3d.services.banners.UnityBannerSize;
import com.vungle.ads.AdConfig;
import com.vungle.ads.BaseAd;
import com.vungle.ads.InitializationListener;
import com.vungle.ads.InterstitialAdListener;
import com.vungle.ads.VungleAds;
import com.vungle.ads.VungleError;
import com.yandex.mobile.ads.appopenad.AppOpenAdEventListener;
import com.yandex.mobile.ads.banner.BannerAdEventListener;
import com.yandex.mobile.ads.banner.BannerAdSize;
import com.yandex.mobile.ads.banner.BannerAdView;
import com.yandex.mobile.ads.common.AdError;
import com.yandex.mobile.ads.common.AdRequestError;
import com.yandex.mobile.ads.common.ImpressionData;
import com.yandex.mobile.ads.interstitial.InterstitialAdEventListener;
import com.yandex.mobile.ads.interstitial.InterstitialAdLoadListener;
import com.yandex.mobile.ads.interstitial.InterstitialAdLoader;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLDecoder;
import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Random;
import java.util.TimeZone;
import java.util.Timer;
import java.util.TimerTask;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: c:\Users\LEGION\OneDrive\Desktop\ALL TOOL\New folder\classes5.dex */
public class MainActivity extends AppCompatActivity implements IUnityAdsInitializationListener, PurchasesUpdatedListener {
    public static long COMPLEXIDAD_MAX_RUTA = 5000;
    private static final int MODO_CREAR_RUTA = 1;
    private static final int MODO_DRIVING = 201;
    private static final int MODO_NORMAL = 0;
    private static final int MODO_PLAY_PENDING = 5;
    private static final int MODO_PUNTO_RUNNING = 6;
    private static final int MODO_RUTA_PAUSE = 3;
    private static final int MODO_RUTA_PLAYING = 4;
    private static final int MODO_RUTA_READY = 2;
    private static final int MODO_WALKING = 200;
    public static final int MY_PERMISSIONS_NOTIFICATION = 98;
    public static final int MY_PERMISSIONS_REQUEST_LOCATION = 99;
    static final int NUMEROHISTORICOS = 12;
    public static final int REQUEST_CODE_OPENBOOKMARKS = 5005;
    public static final int REQUEST_CODE_OPEN_SETTINGS = 101;
    public static final int REQUEST_CODE_SEARCH = 102;
    public static final int RESULT_CODE_OPEN_CONFIG = 2;
    public static final int RESULT_CODE_OPEN_GDPR = 1;
    private static final int RUTA_AUTOMATICA = 101;
    private static final int RUTA_CIRCULO = 102;
    private static final int RUTA_CIRCULO_READYTOSAVE = 103;
    private static final int RUTA_MANUAL = 100;
    public static long SEG_ENTRE_INTERS_CORTO = 150;
    public static long SEG_ENTRE_SPLASH_CORTO = 150;
    public static long SEG_ENTRE_SPLASH_LARGO = 210;
    public static long TIEMPO_ESPERA_ADS = 2900;
    public static final float VELOCIDAD_ESTATICA = 0.02777778f;
    public static final float VELOCIDAD_ESTATICA_UMBRAL = 0.2777778f;
    public static int VEL_MAX_KM = 900;
    public static int VEL_MAX_MILES = 560;
    double GetTimeLat;
    double GetTimeLng;
    AdView adViewAdMob;
    AdView adViewAdMobExit;
    ADG adg;
    ADG adgExit;
    ADGInterstitial adgInterstitial;
    View anuncioView;
    AppUpdateManager appUpdateManager;
    TextView automaticRouteText;
    private String bannerId;
    BannerView bannerUnity;
    BannerAdView bannerYandexExit;
    BillingClient billingClient;
    int cantUsos;
    View child;
    ConsentForm consentForm;
    ConsentInformation consentInformation;
    Context context;
    LinearLayout createRouteLyt;
    ContextThemeWrapper ctw;
    double currentLat;
    double currentLong;
    Marker currentMark;
    ProductDetails currentProductDetails;
    RegUbic currentRoute;
    String currentRuta;
    DrawerLayout drawer;
    SharedPreferences.Editor editor;
    BannerView exitBannerUnity;
    private ImageButton favButton;
    InputMethodManager imm;
    InstallStateUpdatedListener installStateUpdatedListener;
    InterstitialAd intersVK;
    PAGInterstitialAd interstitialPangle;
    com.yandex.mobile.ads.interstitial.InterstitialAd interstitialYandex;
    double[] lat;
    double[] lng;
    private IUnityAdsLoadListener loadListener;
    private long loadTimeExitAd;
    int loopMode;
    FirebaseAnalytics mFirebaseAnalytics;
    private com.google.android.gms.ads.interstitial.InterstitialAd mInterstitialAd;
    private Intent mRequestIntent;
    private GoogleMap map;
    String mapTypeValue;
    boolean metric;
    Circle miCirculo;
    private miBottomSheetDialog miExitDialog;
    PinnedAdapter miPinnedAdapter;
    TextView miToastView;
    float misKMxHora;
    View mobileContainer;
    private int modoApp;
    private int modoAutomatic;
    private int modoRuta;
    MyTargetView myTargetBanner;
    MyTargetView myTargetExit;
    View nativeAdView;
    int numerofavoritos;
    InterstitialAd openVK;
    View permisosLayout;
    AlertDialog permissionDialog;
    boolean pinedClosed;
    ListView pinedList;
    ArrayList<RegUbic> pinnedTemp;
    ImageView pinview;
    private String placementId02;
    Polyline polyline1;
    Polyline polylinePending;
    BannerAdView preBannerYandex;
    SharedPreferences preferences;
    AlertDialog purchaseDialog;
    LinearLayout purchaseFromDrawerLyt;
    private RewardedAd rewardedAd;
    private int rewardedAutomaticRoutes;
    int sdkVersion;
    boolean seekTouchTracking;
    private IUnityAdsShowListener showListener;
    private ImageButton startButton;
    private ImageButton stopButton;
    private BroadcastReceiver stopMessageReceiver;
    TextView textHoraFake;
    String timeArea;
    Timer timer;
    TimerTask timerTask;
    boolean toastAnim;
    LinearLayout topBannerContainer;
    boolean topBannerYandexReady;
    private String transicion01Id;
    RegUbic ultimaUbic;
    private ImageButton undoButton;
    private String unityExitBannerId;
    boolean unitySplashReady;
    boolean unityStopReady;
    boolean unityTransicionReady;
    private BroadcastReceiver updateMessageReceiverUpdate;
    float velocidad;
    private com.vungle.ads.InterstitialAd vungleAppOpen;
    SparseArray<Group> groups = new SparseArray<>();
    ArrayList<RegUbic> history = new ArrayList<>();
    ArrayList<RegUbic> favorites = new ArrayList<>();
    ArrayList<RegUbic> rutas = new ArrayList<>();
    boolean inviteshown = false;
    List<Address> addresses = null;
    final Handler handler = new Handler();
    String zoneName = null;
    boolean noAds = true;
    boolean seAgregoBanner = false;
    private String unityGameID = "2906747";
    private String splashId = MimeTypes.BASE_TYPE_VIDEO;
    private String stopId = "stop_splash";

    public void onInitializationFailed(UnityAds.UnityAdsInitializationError unityAdsInitializationError, String str) {
    }

    public MainActivity() {
        this.bannerId = App.XIAOMI ? "banner_xiaomi" : "gpsbanner";
        this.unityExitBannerId = "banner_exit";
        this.transicion01Id = "tran_01_global";
        this.placementId02 = MimeTypes.BASE_TYPE_VIDEO;
        this.unitySplashReady = false;
        this.unityStopReady = false;
        this.unityTransicionReady = false;
        this.timeArea = TtmlNode.ANONYMOUS_REGION_ID;
        this.toastAnim = false;
        this.loadTimeExitAd = 0L;
        this.modoApp = 0;
        this.modoRuta = 100;
        this.modoAutomatic = MODO_DRIVING;
        this.currentRuta = TtmlNode.ANONYMOUS_REGION_ID;
        this.velocidad = 0.0f;
        this.misKMxHora = 1.0f;
        this.loopMode = 0;
        this.seekTouchTracking = false;
        this.topBannerYandexReady = false;
        this.pinedClosed = true;
        this.intersVK = null;
        this.openVK = null;
        this.rewardedAutomaticRoutes = 0;
        this.sdkVersion = Build.VERSION.SDK_INT;
        this.loadListener = new IUnityAdsLoadListener() { // from class: com.rosteam.gpsemulator.MainActivity.56
            public void onUnityAdsAdLoaded(String str) {
                Log.e("UnityReady", "Placement id: " + str);
                if (str.contentEquals(MainActivity.this.splashId)) {
                    MainActivity.this.unitySplashReady = true;
                }
                if (str.contentEquals(MainActivity.this.stopId)) {
                    MainActivity.this.unityStopReady = true;
                }
                if (str.contentEquals(MainActivity.this.transicion01Id)) {
                    MainActivity.this.unityTransicionReady = true;
                }
            }

            public void onUnityAdsFailedToLoad(String str, UnityAds.UnityAdsLoadError unityAdsLoadError, String str2) {
                Log.e("UnityAdsExample", "Unity Ads failed to load ad for " + str + " with error: [" + unityAdsLoadError + "] " + str2);
            }
        };
        this.showListener = new IUnityAdsShowListener() { // from class: com.rosteam.gpsemulator.MainActivity.57
            public void onUnityAdsShowFailure(String str, UnityAds.UnityAdsShowError unityAdsShowError, String str2) {
                Log.e("UnityAdsExample", "Unity Ads failed to show ad for " + str + " with error: [" + unityAdsShowError + "] " + str2);
            }

            public void onUnityAdsShowStart(String str) {
                Log.v("UnityAdsExample", "onUnityAdsShowStart: " + str);
            }

            public void onUnityAdsShowClick(String str) {
                Log.v("UnityAdsExample", "onUnityAdsShowClick: " + str);
            }

            public void onUnityAdsShowComplete(String str, UnityAds.UnityAdsShowCompletionState unityAdsShowCompletionState) {
                Log.v("UnityAdsExample", "onUnityAdsShowComplete: " + str);
            }
        };
        this.stopMessageReceiver = new BroadcastReceiver() { // from class: com.rosteam.gpsemulator.MainActivity.69
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context, Intent intent) {
                int intExtra = intent.getIntExtra("permanecer", 0);
                MainActivity.this.onStopButtonClick(null);
                if (intExtra == 1) {
                    Log.e("Message", "Permanecer en ultimo punto de la ruta");
                    final double doubleExtra = intent.getDoubleExtra("latitude", 0.0d);
                    final double doubleExtra2 = intent.getDoubleExtra("longitude", 0.0d);
                    new Handler().postDelayed(new Runnable() { // from class: com.rosteam.gpsemulator.MainActivity.69.1
                        @Override // java.lang.Runnable
                        public void run() {
                            MainActivity.this.currentLat = doubleExtra;
                            MainActivity.this.currentLong = doubleExtra2;
                            MainActivity.this.onStartContinuousButtonClick(null);
                        }
                    }, 500L);
                }
            }
        };
        this.updateMessageReceiverUpdate = new BroadcastReceiver() { // from class: com.rosteam.gpsemulator.MainActivity.70
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context, Intent intent) {
                double[] doubleArrayExtra = intent.getDoubleArrayExtra("message");
                double[] doubleArrayExtra2 = intent.getDoubleArrayExtra("latitudes");
                double[] doubleArrayExtra3 = intent.getDoubleArrayExtra("longitudes");
                boolean booleanExtra = intent.getBooleanExtra(CampaignEx.JSON_NATIVE_VIDEO_PAUSE, false);
                float floatExtra = intent.getFloatExtra("velocidad", 0.0f);
                if (floatExtra >= 0.2777778f) {
                    if (MainActivity.this.polyline1 == null || MainActivity.this.polyline1.getPoints().size() == 0) {
                        MainActivity mainActivity = MainActivity.this;
                        mainActivity.polyline1 = mainActivity.map.addPolyline(new PolylineOptions().geodesic(true).clickable(false).add(new LatLng[0]));
                        ArrayList arrayList = new ArrayList();
                        for (int i = 0; i < doubleArrayExtra2.length; i++) {
                            arrayList.add(new LatLng(doubleArrayExtra2[i], doubleArrayExtra3[i]));
                        }
                        MainActivity.this.polyline1.setPoints(arrayList);
                        MainActivity.this.polyline1.setStartCap(new RoundCap());
                        MainActivity.this.polyline1.setEndCap(new RoundCap());
                        MainActivity.this.polyline1.setEndCap(new CustomCap(BitmapDescriptorFactory.fromResource(R.drawable.arrow2), MainActivity.this.convertDpToPixel(6.0f)));
                        MainActivity.this.polyline1.setWidth(MainActivity.this.convertDpToPixel(4.0f));
                        MainActivity.this.polyline1.setColor(MainActivity.this.getResources().getColor(R.color.colorRuta));
                        MainActivity.this.polyline1.setJointType(2);
                    }
                    MainActivity.this.stopButton.setEnabled(true);
                    if (booleanExtra) {
                        MainActivity.this.modoApp = 3;
                        MainActivity.this.startButton.setImageResource(R.drawable.ic_play);
                        MainActivity.this.favButton.setImageResource(R.drawable.botondelete);
                        MainActivity.this.favButton.setEnabled(true);
                    } else {
                        MainActivity.this.modoApp = 4;
                        MainActivity.this.startButton.setImageResource(R.drawable.ic_pause);
                        MainActivity.this.favButton.setImageResource(R.drawable.botondelete);
                        MainActivity.this.favButton.setEnabled(false);
                    }
                }
                if (MainActivity.this.currentMark != null) {
                    MainActivity.this.currentMark.setPosition(new LatLng(doubleArrayExtra[0], doubleArrayExtra[1]));
                } else {
                    MainActivity mainActivity2 = MainActivity.this;
                    mainActivity2.currentMark = mainActivity2.map.addMarker(new MarkerOptions().position(new LatLng(doubleArrayExtra[0], doubleArrayExtra[1])).title(floatExtra >= 0.2777778f ? MainActivity.this.getResources().getString(R.string.route) : doubleArrayExtra[0] + ", " + doubleArrayExtra[1]).zIndex(10.0f).icon(BitmapDescriptorFactory.fromResource(R.drawable.fakegpsmarker)));
                }
            }
        };
    }

    /* JADX WARN: Multi-variable type inference failed */
    protected void onCreate(Bundle bundle) {
        int i;
        super.onCreate(bundle);
        setTheme(R.style.AppTheme_PopupOverlay);
        View viewInflate = getLayoutInflater().inflate(R.layout.activity_main, (ViewGroup) null);
        this.child = viewInflate;
        setContentView(viewInflate);
        this.context = this;
        this.ctw = new ContextThemeWrapper((Context) this, R.style.Theme_Custom_Dialog);
        Toolbar toolbarFindViewById = findViewById(R.id.toolbar);
        setSupportActionBar(toolbarFindViewById);
        SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(this);
        this.preferences = defaultSharedPreferences;
        this.editor = defaultSharedPreferences.edit();
        this.topBannerContainer = (LinearLayout) findViewById(R.id.bannerContainerBottom);
        DrawerLayout drawerLayoutFindViewById = findViewById(R.id.drawer_layout);
        this.drawer = drawerLayoutFindViewById;
        this.purchaseFromDrawerLyt = (LinearLayout) drawerLayoutFindViewById.findViewById(R.id.purchase_pro);
        this.pinedList = (ListView) this.drawer.findViewById(R.id.listpined);
        ActionBarDrawerToggle actionBarDrawerToggle = new ActionBarDrawerToggle(this, this.drawer, toolbarFindViewById, R.string.navigation_drawer_open, R.string.navigation_drawer_close);
        this.drawer.setDrawerListener(actionBarDrawerToggle);
        actionBarDrawerToggle.syncState();
        BillingClient billingClientBuild = BillingClient.newBuilder(this).setListener(this).enablePendingPurchases(PendingPurchasesParams.newBuilder().enableOneTimeProducts().build()).build();
        this.billingClient = billingClientBuild;
        billingClientBuild.startConnection(new AnonymousClass1());
        this.noAds = true;
        this.numerofavoritos = 1000;
        this.editor.putBoolean("noads", true);
        this.editor.putInt("numerofavoritos", 1000);
        this.purchaseFromDrawerLyt.setVisibility(8);
        this.cantUsos = this.preferences.getInt("downloads", 0);
        this.editor.putBoolean("appstartvisible", false);
        this.editor.commit();
        unlockExitAd();
        rateThisApp();
        FirebaseApp.initializeApp(this);
        this.mFirebaseAnalytics = FirebaseAnalytics.getInstance(this);
        if (!this.noAds) {
            UnityAds.initialize(getApplicationContext(), this.unityGameID, this);
            boolean z = this.preferences.getBoolean("isEEA", false);
            int i2 = this.preferences.getInt("consent_status", -1);
            if (z) {
                MyTargetPrivacy.setUserConsent(i2 == 3);
            }
            VungleAds.init(getApplicationContext(), "668a93b9b8c631b497b71bff", new InitializationListener() { // from class: com.rosteam.gpsemulator.MainActivity.2
                public void onSuccess() {
                    Log.e("Liftoff", "Vungle SDK init onSuccess()");
                    MainActivity.this.vungleAppOpen = new com.vungle.ads.InterstitialAd(MainActivity.this.context, "APPOPENDIRECT-6435318", new AdConfig());
                    MainActivity.this.vungleAppOpen.setAdListener(new InterstitialAdListener() { // from class: com.rosteam.gpsemulator.MainActivity.2.1
                        public void onAdFailedToPlay(BaseAd baseAd, VungleError vungleError) {
                            Log.e("Liftoff", "onAdFailedToPlay");
                        }

                        public void onAdFailedToLoad(BaseAd baseAd, VungleError vungleError) {
                            Log.e("Liftoff", "onAdFailedToLoad " + vungleError.getErrorMessage() + " " + vungleError.getCode());
                        }

                        public void onAdLeftApplication(BaseAd baseAd) {
                            Log.e("Liftoff", "onAdLeftApplication");
                        }

                        public void onAdEnd(BaseAd baseAd) {
                            Log.e("Liftoff", "onAdEnd");
                        }

                        public void onAdImpression(BaseAd baseAd) {
                            Log.e("Liftoff", "onAdImpression");
                        }

                        public void onAdStart(BaseAd baseAd) {
                            Log.e("Liftoff", "onAdStart");
                        }

                        public void onAdLoaded(BaseAd baseAd) {
                            Log.e("Liftoff", "onAdLoaded");
                        }

                        public void onAdClicked(BaseAd baseAd) {
                            Log.e("Liftoff", "onAdClicked");
                        }
                    });
                    MainActivity.this.vungleAppOpen.load();
                }

                public void onError(VungleError vungleError) {
                    Log.d("Liftoff", "onError():" + vungleError.getErrorMessage());
                }
            });
            ADGInterstitial aDGInterstitial = new ADGInterstitial(this);
            this.adgInterstitial = aDGInterstitial;
            aDGInterstitial.setLocationId("184967");
            this.adgInterstitial.setAdListener(new ADGInterstitialListener() { // from class: com.rosteam.gpsemulator.MainActivity.3
                public void onCloseInterstitial() {
                    Log.e("AdGeneration", "Interstitial onCloseInterstitial");
                }

                public void onReceiveAd() {
                    Log.e("AdGeneration", "Interstitial onReceiveAd");
                }

                public void onFailedToReceiveAd(ADGConsts.ADGErrorCode aDGErrorCode) {
                    super.onFailedToReceiveAd(aDGErrorCode);
                    Log.e("AdGeneration", "Interstitial onFailedToReceiveAd: " + aDGErrorCode.toString());
                }
            });
            this.adgInterstitial.preload();
            Log.e("[myTarget]", "INICIALIZAMOS MYTARGET");
            InterstitialAd interstitialAd = new InterstitialAd(1859093, this);
            interstitialAd.setListener(new InterstitialAd.InterstitialAdListener() { // from class: com.rosteam.gpsemulator.MainActivity.4
                @Override // com.my.target.ads.InterstitialAd.InterstitialAdListener
                public void onFailedToShow(InterstitialAd interstitialAd2) {
                }

                @Override // com.my.target.ads.InterstitialAd.InterstitialAdListener
                public void onLoad(InterstitialAd interstitialAd2) {
                    Log.e("cargarOpenVK", "onLoad");
                    MainActivity.this.openVK = interstitialAd2;
                }

                @Override // com.my.target.ads.InterstitialAd.InterstitialAdListener
                public void onNoAd(IAdLoadingError iAdLoadingError, InterstitialAd interstitialAd2) {
                    Log.e("cargarOpenVK", "onNoAd " + iAdLoadingError.getMessage());
                }

                @Override // com.my.target.ads.InterstitialAd.InterstitialAdListener
                public void onClick(InterstitialAd interstitialAd2) {
                    Log.e("cargarOpenVK", "onClick");
                }

                @Override // com.my.target.ads.InterstitialAd.InterstitialAdListener
                public void onDismiss(InterstitialAd interstitialAd2) {
                    Log.e("cargarOpenVK", "onDismiss");
                }

                @Override // com.my.target.ads.InterstitialAd.InterstitialAdListener
                public void onVideoCompleted(InterstitialAd interstitialAd2) {
                    Log.e("cargarOpenVK", "onVideoCompleted");
                }

                @Override // com.my.target.ads.InterstitialAd.InterstitialAdListener
                public void onDisplay(InterstitialAd interstitialAd2) {
                    Log.e("cargarOpenVK", "onDisplay");
                }
            });
            interstitialAd.load();
            if (splashNow() && (i = this.cantUsos) >= 1 && i != 10 && i != 2) {
                new checkAdAvailability().execute(0);
            } else {
                this.child.setAlpha(1.0f);
                Log.e("GPS", "CARGAR EXIT Y TRANS");
                cargarBannerExit();
                cargarTransitionAdmob();
            }
            if (!this.seAgregoBanner) {
                cargarBannerAdmob();
                this.seAgregoBanner = true;
            }
            cargarRewarded();
            consentGDPR_UMP();
        } else {
            try {
                ViewGroup.LayoutParams layoutParams = this.topBannerContainer.getLayoutParams();
                layoutParams.height = 0;
                this.topBannerContainer.setLayoutParams(layoutParams);
                this.topBannerContainer.removeAllViews();
                Log.e("myGPS", "eliminamos banner cuando no va splash x noAds");
                this.seAgregoBanner = false;
                this.child.getParent().requestLayout();
            } catch (Exception unused) {
                this.child.getParent().requestLayout();
            }
        }
        stoptimertask();
        this.stopButton = (ImageButton) findViewById(R.id.stop_test_button);
        this.startButton = (ImageButton) findViewById(R.id.start_continuous_button);
        this.favButton = (ImageButton) findViewById(R.id.favorite_button);
        this.undoButton = (ImageButton) findViewById(R.id.bttn_undo);
        this.textHoraFake = (TextView) findViewById(R.id.textHoraFake);
        this.miToastView = (TextView) findViewById(R.id.customtoast);
        this.stopButton.setEnabled(false);
        this.startButton.setEnabled(false);
        this.favButton.setEnabled(false);
        this.imm = (InputMethodManager) getSystemService("input_method");
        getSupportFragmentManager().findFragmentById(R.id.map).getMapAsync(new OnMapReadyCallback() { // from class: com.rosteam.gpsemulator.MainActivity.5
            public void onMapReady(GoogleMap googleMap) {
                try {
                    if (!googleMap.setMapStyle(MapStyleOptions.loadRawResourceStyle(MainActivity.this.context, R.raw.map_style))) {
                        Log.e("fakegps", "Style parsing failed.");
                    }
                } catch (Resources.NotFoundException e) {
                    Log.e("fakegps", "Can't find style. Error: ", e);
                }
                MainActivity.this.map = googleMap;
                MainActivity.this.map.getUiSettings().setZoomControlsEnabled(true);
                MainActivity.this.map.getUiSettings().setCompassEnabled(true);
                MainActivity.this.map.setBuildingsEnabled(false);
                if (ContextCompat.checkSelfPermission(MainActivity.this.context, "android.permission.ACCESS_FINE_LOCATION") == 0) {
                    MainActivity.this.map.setMyLocationEnabled(true);
                }
                MainActivity.this.map.getUiSettings().setMyLocationButtonEnabled(true);
                MainActivity.this.map.setOnCameraMoveListener(new GoogleMap.OnCameraMoveListener() { // from class: com.rosteam.gpsemulator.MainActivity.5.1
                    public void onCameraMove() {
                        if (MainActivity.this.modoApp != 1 || MainActivity.this.map == null) {
                            return;
                        }
                        if (MainActivity.this.polylinePending != null && MainActivity.this.modoRuta != 102) {
                            MainActivity.this.polylinePending.setPoints(Arrays.asList((LatLng) MainActivity.this.polylinePending.getPoints().get(0), new LatLng(MainActivity.this.map.getCameraPosition().target.latitude, MainActivity.this.map.getCameraPosition().target.longitude)));
                        } else {
                            if (MainActivity.this.miCirculo == null || MainActivity.this.modoRuta != 102) {
                                return;
                            }
                            float[] fArr = new float[1];
                            Location.distanceBetween(MainActivity.this.miCirculo.getCenter().latitude, MainActivity.this.miCirculo.getCenter().longitude, MainActivity.this.map.getCameraPosition().target.latitude, MainActivity.this.map.getCameraPosition().target.longitude, fArr);
                            MainActivity.this.miCirculo.setRadius(fArr[0]);
                        }
                    }
                });
                MainActivity.this.reiniciarMap();
                MainActivity.this.stopButton.setEnabled(false);
                MainActivity.this.startButton.setEnabled(true);
                MainActivity.this.favButton.setEnabled(false);
                MainActivity.this.processIntent();
            }
        });
        this.drawer.findViewById(R.id.pined).setOnClickListener(new View.OnClickListener() { // from class: com.rosteam.gpsemulator.MainActivity.6
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                MainActivity mainActivity = MainActivity.this;
                mainActivity.pinnedTemp = mainActivity.loadPinned();
                MainActivity mainActivity2 = MainActivity.this;
                MainActivity mainActivity3 = MainActivity.this;
                mainActivity2.miPinnedAdapter = mainActivity3.new PinnedAdapter(mainActivity3.getApplicationContext(), MainActivity.this.pinnedTemp);
                MainActivity.this.pinedList.setAdapter((ListAdapter) MainActivity.this.miPinnedAdapter);
                int iMin = Math.min(MainActivity.this.pinnedTemp.size() * 46, 230);
                if (MainActivity.this.pinnedTemp.isEmpty()) {
                    RegUbic regUbic = new RegUbic(MainActivity.this.getResources().getString(R.string.nothing_here_yet), 0.0d, 0.0d, 0.0f);
                    regUbic.pinnedPlaceholder = true;
                    MainActivity.this.pinnedTemp.add(regUbic);
                    iMin = 60;
                } else {
                    MainActivity.this.pinedList.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: com.rosteam.gpsemulator.MainActivity.6.1
                        @Override // android.widget.AdapterView.OnItemClickListener
                        public void onItemClick(AdapterView<?> adapterView, View view2, int i3, long j) {
                            if (MainActivity.this.pinnedTemp.get(i3).name != null) {
                                MainActivity.this.gotoRoute(MainActivity.this.pinnedTemp.get(i3));
                            } else {
                                if (!MainActivity.this.isMyServiceRunning(servicex2484.class)) {
                                    MainActivity.this.onStopClickStep2(false);
                                }
                                MainActivity.this.gotoLocation(MainActivity.this.pinnedTemp.get(i3));
                            }
                            MainActivity.this.drawer.closeDrawers();
                        }
                    });
                }
                MainActivity mainActivity4 = MainActivity.this;
                mainActivity4.pinedClosed = true ^ mainActivity4.pinedClosed;
                MainActivity.this.pinview = (ImageView) view.findViewById(R.id.pinnecicon);
                MainActivity mainActivity5 = MainActivity.this;
                mainActivity5.switchPinnedList(mainActivity5.pinedClosed, iMin);
            }
        });
        this.mobileContainer = this.drawer.findViewById(R.id.containerMovil);
        this.drawer.findViewById(R.id.bookmarkslyt).setOnClickListener(new View.OnClickListener() { // from class: com.rosteam.gpsemulator.MainActivity.7
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                MainActivity.this.drawer.closeDrawers();
                new Handler().postDelayed(new Runnable() { // from class: com.rosteam.gpsemulator.MainActivity.7.1
                    @Override // java.lang.Runnable
                    public void run() {
                        if (!MainActivity.this.pinedClosed) {
                            MainActivity.this.pinedClosed = true;
                            MainActivity.this.switchPinnedList(true, 60);
                        }
                        MainActivity.this.favButton.setEnabled(false);
                        MainActivity.this.transitionShow(new Intent((Context) MainActivity.this, (Class<?>) Bookmarks02.class), MainActivity.REQUEST_CODE_OPENBOOKMARKS);
                    }
                }, 200L);
            }
        });
        this.drawer.findViewById(R.id.newroutelyt).setOnClickListener(new View.OnClickListener() { // from class: com.rosteam.gpsemulator.MainActivity.8
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                MainActivity.this.drawer.closeDrawers();
                MainActivity.this.newRoute();
            }
        });
        this.purchaseFromDrawerLyt.setOnClickListener(new View.OnClickListener() { // from class: com.rosteam.gpsemulator.MainActivity.9
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                MainActivity.this.drawer.closeDrawers();
                MainActivity.this.hacerCompra();
            }
        });
        this.history = new ArrayList<>();
        this.favorites = new ArrayList<>();
        this.rutas = new ArrayList<>();
        loadFavsFromPref();
        loadRutasFromPref();
        this.history = LocationUtils.loadHisFromPref(this);
        this.pinnedTemp = loadPinned();
        this.mRequestIntent = new Intent((Context) this, (Class<?>) servicex2484.class);
        if (this.cantUsos == 0) {
            new AlertDialog.Builder(this.ctw, R.style.CustomAlertDialog).setTitle(R.string.importanttitle).setMessage(R.string.importantmessage).setPositiveButton(R.string.importantagree, new DialogInterface.OnClickListener() { // from class: com.rosteam.gpsemulator.MainActivity.10
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i3) {
                }
            }).show();
        }
        if (this.cantUsos > 1000) {
            this.cantUsos = ServiceStarter.ERROR_UNKNOWN;
        }
        this.editor.putInt("downloads", this.cantUsos + 1);
        this.editor.commit();
        checarUpdate();
    }

    /* JADX INFO: renamed from: com.rosteam.gpsemulator.MainActivity$1, reason: invalid class name */
    class AnonymousClass1 implements BillingClientStateListener {
        AnonymousClass1() {
        }

        public void onBillingSetupFinished(BillingResult billingResult) {
            if (billingResult.getResponseCode() == 0) {
                MainActivity.this.billingClient.queryPurchasesAsync(QueryPurchasesParams.newBuilder().setProductType("subs").build(), new PurchasesResponseListener() { // from class: com.rosteam.gpsemulator.MainActivity.1.1
                    public void onQueryPurchasesResponse(BillingResult billingResult2, List<Purchase> list) {
                        if (list != null && list.size() > 0) {
                            Log.e("fakegps", "hay purchase");
                            MainActivity.this.purchaseFromDrawerLyt.setVisibility(8);
                            MainActivity.this.handlePurchase(list.get(0));
                            return;
                        }
                        MainActivity.this.billingClient.queryPurchasesAsync(QueryPurchasesParams.newBuilder().setProductType("inapp").build(), new PurchasesResponseListener() { // from class: com.rosteam.gpsemulator.MainActivity.1.1.1
                            public void onQueryPurchasesResponse(BillingResult billingResult3, List<Purchase> list2) {
                                if (list2 != null && list2.size() > 0) {
                                    Log.e("fakegps", "hay purchase");
                                    MainActivity.this.handlePurchase(list2.get(0));
                                } else {
                                    MainActivity.this.deshabilitarPRO();
                                }
                            }
                        });
                    }
                });
                ArrayList arrayList = new ArrayList();
                arrayList.add(QueryProductDetailsParams.Product.newBuilder().setProductId("pro_subs").setProductType("subs").build());
                MainActivity.this.billingClient.queryProductDetailsAsync(QueryProductDetailsParams.newBuilder().setProductList(arrayList).build(), new ProductDetailsResponseListener() { // from class: com.rosteam.gpsemulator.MainActivity.1.2
                    public void onProductDetailsResponse(BillingResult billingResult2, QueryProductDetailsResult queryProductDetailsResult) {
                        if (billingResult2.getResponseCode() == 0) {
                            List productDetailsList = queryProductDetailsResult.getProductDetailsList();
                            if (!productDetailsList.isEmpty()) {
                                MainActivity.this.currentProductDetails = (ProductDetails) productDetailsList.get(0);
                                Log.e("GPS", "productDetailsList.size() " + productDetailsList.size());
                                for (int i = 0; i < productDetailsList.size(); i++) {
                                    Log.e("GPS", "offers size " + i + ": " + MainActivity.this.currentProductDetails.getSubscriptionOfferDetails().size());
                                    for (int i2 = 0; i2 < MainActivity.this.currentProductDetails.getSubscriptionOfferDetails().size(); i2++) {
                                        Log.e("GPS", "offer " + i2 + ": " + ((ProductDetails.SubscriptionOfferDetails) MainActivity.this.currentProductDetails.getSubscriptionOfferDetails().get(i2)).getBasePlanId());
                                    }
                                }
                                return;
                            }
                            MainActivity.this.purchaseFromDrawerLyt.setVisibility(8);
                            return;
                        }
                        MainActivity.this.purchaseFromDrawerLyt.setVisibility(8);
                    }
                });
            }
        }

        public void onBillingServiceDisconnected() {
            Log.e("fakegps", "Billing Service Disconnected");
        }
    }

    class checkAdAvailability extends AsyncTask<Integer, Integer, Integer> {
        boolean appOpenhAvailable = false;

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public void onProgressUpdate(Integer... numArr) {
        }

        checkAdAvailability() {
        }

        @Override // android.os.AsyncTask
        protected void onPreExecute() {
            super.onPreExecute();
            MainActivity.this.child.setAlpha(0.0f);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public Integer doInBackground(Integer... numArr) {
            int iIntValue = (int) (MainActivity.TIEMPO_ESPERA_ADS - ((long) numArr[0].intValue()));
            if (numArr[0].intValue() < 1000) {
                try {
                    Thread.sleep(1000 - numArr[0].intValue());
                } catch (InterruptedException unused) {
                }
            }
            int iIntValue2 = 0;
            while (iIntValue2 <= iIntValue) {
                publishProgress(0);
                iIntValue2 += 100;
                try {
                    Thread.sleep(100L);
                } catch (InterruptedException unused2) {
                    iIntValue2 = numArr[0].intValue() + 1000;
                }
                if (this.appOpenhAvailable || !MainActivity.this.splashNow()) {
                    break;
                }
            }
            return 0;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        /* JADX WARN: Type inference failed for: r5v11, types: [android.app.Activity, com.rosteam.gpsemulator.MainActivity] */
        /* JADX WARN: Type inference failed for: r5v14, types: [android.app.Activity, com.rosteam.gpsemulator.MainActivity] */
        @Override // android.os.AsyncTask
        public void onPostExecute(Integer num) {
            Log.e("cheadvailavility", "onPostExecute");
            Log.e("GPS", "CARGAR EXIT Y TRANS");
            MainActivity.this.cargarBannerExit();
            MainActivity.this.cargarTransitionAdmob();
            final AnimatorSet animatorSet = new AnimatorSet();
            animatorSet.play(ObjectAnimator.ofFloat(MainActivity.this.child, "alpha", 0.0f, 1.0f));
            animatorSet.setStartDelay(100L);
            animatorSet.setDuration(300L);
            IUnityAdsShowListener iUnityAdsShowListener = new IUnityAdsShowListener() { // from class: com.rosteam.gpsemulator.MainActivity.checkAdAvailability.1
                public void onUnityAdsShowClick(String str) {
                }

                public void onUnityAdsShowComplete(String str, UnityAds.UnityAdsShowCompletionState unityAdsShowCompletionState) {
                }

                public void onUnityAdsShowFailure(String str, UnityAds.UnityAdsShowError unityAdsShowError, String str2) {
                }

                public void onUnityAdsShowStart(String str) {
                }
            };
            if (MainActivity.this.splashNow()) {
                Log.e("cheadvailavility", "splashNow yes");
                if (this.appOpenhAvailable) {
                    Log.e("cheadvailavility", "aadmob pp open available");
                    try {
                        Log.e("AppOpen", "va Admob...");
                        MainActivity.this.setAdBlock();
                        App.showAdIfAvailable2(MainActivity.this, new App.OnShowAdCompleteListener() { // from class: com.rosteam.gpsemulator.MainActivity.checkAdAvailability.2
                            @Override // com.rosteam.gpsemulator.App.OnShowAdCompleteListener
                            public void onShowAdComplete() {
                                animatorSet.start();
                            }
                        });
                        return;
                    } catch (Exception unused) {
                        if (MainActivity.this.unitySplashReady) {
                            MainActivity.this.setAdBlock();
                            animatorSet.start();
                            ?? r5 = MainActivity.this;
                            UnityAds.show((Activity) r5, ((MainActivity) r5).splashId, new UnityAdsShowOptions(), iUnityAdsShowListener);
                            return;
                        }
                        return;
                    }
                }
                if (MainActivity.this.vungleAppOpen != null && MainActivity.this.vungleAppOpen.canPlayAd().booleanValue()) {
                    Log.e("AppOpen", "va Vungle...");
                    MainActivity.this.setAdBlock();
                    animatorSet.start();
                    MainActivity.this.vungleAppOpen.play(MainActivity.this.getApplicationContext());
                    return;
                }
                if (MainActivity.this.unitySplashReady) {
                    Log.e("AppOpen", "va Unity...");
                    MainActivity.this.setAdBlock();
                    animatorSet.start();
                    ?? r6 = MainActivity.this;
                    UnityAds.show((Activity) r6, ((MainActivity) r6).splashId, new UnityAdsShowOptions(), iUnityAdsShowListener);
                    return;
                }
                if (App.pangleAppOpenAd != null) {
                    Log.e("AppOpen", "va Pangle...");
                    App.pangleAppOpenAd.setAdInteractionListener(new PAGAppOpenAdInteractionListener() { // from class: com.rosteam.gpsemulator.MainActivity.checkAdAvailability.3
                        public void onAdClicked() {
                        }

                        public void onAdShowed() {
                            Log.e("pangleAppOpen", "ad showed");
                        }

                        public void onAdDismissed() {
                            Log.e("pangleAppOpen", "ad dismissed");
                            animatorSet.start();
                        }
                    });
                    MainActivity.this.setAdBlock();
                    App.pangleAppOpenAd.show(MainActivity.this);
                    return;
                }
                if (MainActivity.this.adgInterstitial.isReady()) {
                    Log.e("AppOpen", "va AdGen...");
                    MainActivity.this.setAdBlock();
                    MainActivity.this.adgInterstitial.show();
                    animatorSet.start();
                    return;
                }
                if (App.yandexAppOpenAd != null) {
                    Log.e("AppOpen", "va Yandex...");
                    App.yandexAppOpenAd.setAdEventListener(new AppOpenAdEventListener() { // from class: com.rosteam.gpsemulator.MainActivity.checkAdAvailability.4
                        public void onAdClicked() {
                        }

                        public void onAdDismissed() {
                        }

                        public void onAdFailedToShow(AdError adError) {
                        }

                        public void onAdImpression(ImpressionData impressionData) {
                        }

                        public void onAdShown() {
                        }
                    });
                    MainActivity.this.setAdBlock();
                    animatorSet.start();
                    App.yandexAppOpenAd.show(MainActivity.this);
                    return;
                }
                if (MainActivity.this.openVK != null) {
                    Log.e("AppOpen", "va VK...");
                    MainActivity.this.openVK.setListener(new InterstitialAd.InterstitialAdListener() { // from class: com.rosteam.gpsemulator.MainActivity.checkAdAvailability.5
                        @Override // com.my.target.ads.InterstitialAd.InterstitialAdListener
                        public void onClick(InterstitialAd interstitialAd) {
                        }

                        @Override // com.my.target.ads.InterstitialAd.InterstitialAdListener
                        public void onDisplay(InterstitialAd interstitialAd) {
                        }

                        @Override // com.my.target.ads.InterstitialAd.InterstitialAdListener
                        public void onFailedToShow(InterstitialAd interstitialAd) {
                        }

                        @Override // com.my.target.ads.InterstitialAd.InterstitialAdListener
                        public void onLoad(InterstitialAd interstitialAd) {
                        }

                        @Override // com.my.target.ads.InterstitialAd.InterstitialAdListener
                        public void onNoAd(IAdLoadingError iAdLoadingError, InterstitialAd interstitialAd) {
                        }

                        @Override // com.my.target.ads.InterstitialAd.InterstitialAdListener
                        public void onVideoCompleted(InterstitialAd interstitialAd) {
                        }

                        @Override // com.my.target.ads.InterstitialAd.InterstitialAdListener
                        public void onDismiss(InterstitialAd interstitialAd) {
                            MainActivity.this.openVK = null;
                        }
                    });
                    MainActivity.this.setAdBlock();
                    animatorSet.start();
                    MainActivity.this.openVK.show();
                    return;
                }
                animatorSet.start();
                return;
            }
            animatorSet.start();
        }
    }

    public boolean isPowerRestricted() {
        return !((PowerManager) getApplicationContext().getSystemService("power")).isIgnoringBatteryOptimizations("com.rosteam.gpsemulator");
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void checkBatteryPolicy() {
        new AlertDialog.Builder(this, R.style.CustomAlertDialog).setMessage(R.string.batterysummary).setPositiveButton("ok", new DialogInterface.OnClickListener() { // from class: com.rosteam.gpsemulator.MainActivity.11
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                Intent intent = new Intent();
                intent.setAction("android.settings.IGNORE_BATTERY_OPTIMIZATION_SETTINGS");
                MainActivity.this.startActivity(intent);
            }
        }).create().show();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void checkLocationPermission() {
        if (ActivityCompat.shouldShowRequestPermissionRationale(this, "android.permission.ACCESS_FINE_LOCATION")) {
            new AlertDialog.Builder(this, R.style.CustomAlertDialog).setTitle(R.string.location_permission_titlte).setMessage(R.string.location_permission_needed).setPositiveButton("ok", new DialogInterface.OnClickListener() { // from class: com.rosteam.gpsemulator.MainActivity.12
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i) {
                    ActivityCompat.requestPermissions(MainActivity.this, new String[]{"android.permission.ACCESS_FINE_LOCATION"}, 99);
                }
            }).create().show();
        } else {
            Log.e("GPS", "requestLocationPermission should NOT SHOW rationale");
            ActivityCompat.requestPermissions(this, new String[]{"android.permission.ACCESS_FINE_LOCATION"}, 99);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void checkNotificationPermission() {
        Log.e("GPS", "requestLocationPermission NOT GRANTED");
        if (ActivityCompat.shouldShowRequestPermissionRationale(this, "android.permission.POST_NOTIFICATIONS")) {
            Log.e("GPS", "requestLocationPermission should show rationale");
            new AlertDialog.Builder(this, R.style.CustomAlertDialog).setMessage("Notification permission needed to shown the app running").setPositiveButton("ok", new DialogInterface.OnClickListener() { // from class: com.rosteam.gpsemulator.MainActivity.13
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i) {
                    ActivityCompat.requestPermissions(MainActivity.this, new String[]{"android.permission.POST_NOTIFICATIONS"}, 98);
                }
            }).create().show();
        } else {
            Log.e("GPS", "requestLocationPermission should NOT SHOW rationale");
            ActivityCompat.requestPermissions(this, new String[]{"android.permission.POST_NOTIFICATIONS"}, 98);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        super.onRequestPermissionsResult(i, strArr, iArr);
        if (i == 99 && iArr.length > 0) {
            Log.e("GPS", "request permission results received");
            if (iArr[0] == 0) {
                Log.e("GPS", "request permission GRANTED");
                this.map.setMyLocationEnabled(true);
            } else {
                Log.e("GPS", "request permission NOT GRANTED " + iArr[0]);
                if (ContextCompat.checkSelfPermission(this, "android.permission.ACCESS_FINE_LOCATION") != 0) {
                    miToast(R.string.location_permission_needed, 2);
                }
            }
        }
    }

    private void lockExitAd() {
        this.editor.putLong("exitBlockTime", System.currentTimeMillis() + ChunkedTrackBlacklistUtil.DEFAULT_TRACK_BLACKLIST_MS);
        this.editor.commit();
    }

    private void unlockExitAd() {
        this.editor.putLong("exitBlockTime", System.currentTimeMillis());
        this.editor.commit();
    }

    private boolean exitAdNow() {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setAdBlock() {
        this.editor.putLong("blockTime", System.currentTimeMillis());
        this.editor.commit();
    }

    private void onetimeSplashLock() {
        this.editor.putBoolean("onettimeblock", true);
        this.editor.commit();
    }

    private void onetimeSplashUnlock() {
        this.editor.putBoolean("onettimeblock", false);
        this.editor.commit();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean splashNow() {
        return false;
    }

    private boolean transitionNow() {
        return false;
    }

    private boolean rewardedNow() {
        return false;
    }

    private void setRewardedNow() {
        this.editor.putBoolean("rewardednow", true);
        this.editor.commit();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void unsetRewardedNow() {
        this.editor.putBoolean("rewardednow", false);
        this.editor.commit();
    }

    public void onBackPressed() {
        this.noAds = true;
        DrawerLayout drawerLayoutFindViewById = findViewById(R.id.drawer_layout);
        if (drawerLayoutFindViewById.isDrawerOpen(8388611)) {
            drawerLayoutFindViewById.closeDrawer(8388611);
            return;
        }
        if (this.modoApp == 1) {
            Polyline polyline = this.polyline1;
            if ((polyline != null && !polyline.getPoints().isEmpty()) || this.miCirculo != null) {
                new AlertDialog.Builder(this.ctw, R.style.CustomAlertDialog).setTitle(R.string.discard_route).setMessage(R.string.discard_question).setPositiveButton(R.string.discard, new DialogInterface.OnClickListener() { // from class: com.rosteam.gpsemulator.MainActivity.15
                    @Override // android.content.DialogInterface.OnClickListener
                    public void onClick(DialogInterface dialogInterface, int i) {
                        if (MainActivity.this.polyline1 != null) {
                            MainActivity.this.polyline1.remove();
                        }
                        if (MainActivity.this.polylinePending != null) {
                            MainActivity.this.polylinePending.remove();
                        }
                        if (MainActivity.this.miCirculo != null) {
                            MainActivity.this.miCirculo.remove();
                        }
                        MainActivity.this.favButton.setImageResource(R.drawable.botonfav);
                        MainActivity.this.favButton.setEnabled(false);
                        MainActivity.this.undoButton.setEnabled(false);
                        MainActivity.this.undoButton.setVisibility(4);
                        MainActivity.this.stopButton.setEnabled(false);
                        MainActivity.this.modoApp = 0;
                        ((LinearLayout) MainActivity.this.findViewById(R.id.createRouteLyt)).setVisibility(8);
                    }
                }).setNegativeButton(R.string.cancel, new DialogInterface.OnClickListener() { // from class: com.rosteam.gpsemulator.MainActivity.14
                    @Override // android.content.DialogInterface.OnClickListener
                    public void onClick(DialogInterface dialogInterface, int i) {
                    }
                }).show();
                return;
            }
            Polyline polyline2 = this.polyline1;
            if (polyline2 != null) {
                polyline2.remove();
            }
            Polyline polyline3 = this.polylinePending;
            if (polyline3 != null) {
                polyline3.remove();
            }
            this.favButton.setImageResource(R.drawable.botonfav);
            this.favButton.setEnabled(false);
            this.undoButton.setEnabled(false);
            this.undoButton.setVisibility(4);
            this.stopButton.setEnabled(false);
            this.modoApp = 0;
            ((LinearLayout) findViewById(R.id.createRouteLyt)).setVisibility(8);
            return;
        }
        if (!this.noAds && ((this.adViewAdMobExit != null || this.nativeAdView != null || this.bannerYandexExit != null || this.exitBannerUnity != null || this.adgExit != null) && exitAdNow())) {
            miBottomSheetDialog mibottomsheetdialog = this.miExitDialog;
            try {
                if (mibottomsheetdialog == null) {
                    if (this.adViewAdMobExit != null) {
                        Log.e("exitSheet", "mandamos admob");
                        this.miExitDialog = new miBottomSheetDialog(this.adViewAdMobExit);
                    } else if (this.exitBannerUnity != null) {
                        Log.e("exitSheet", "mandamos unity");
                        this.miExitDialog = new miBottomSheetDialog(this.exitBannerUnity);
                    } else if (this.bannerYandexExit != null) {
                        Log.e("exitSheet", "mandamos Yandex");
                        this.miExitDialog = new miBottomSheetDialog(this.bannerYandexExit);
                    } else if (this.adgExit != null) {
                        Log.e("exitSheet", "mandamos AdGen");
                        this.miExitDialog = new miBottomSheetDialog(this.adgExit);
                    }
                    this.miExitDialog.show(getSupportFragmentManager(), "add_photo_dialog_fragment" + System.currentTimeMillis());
                    return;
                }
                if (!mibottomsheetdialog.isVisible()) {
                    this.miExitDialog.show(getSupportFragmentManager(), "add_photo_dialog_fragment" + System.currentTimeMillis());
                    return;
                } else {
                    super.onBackPressed();
                    return;
                }
            } catch (Exception unused) {
                return;
            }
        }
        super.onBackPressed();
    }

    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(R.menu.main, menu);
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        int itemId = menuItem.getItemId();
        if (itemId == R.id.action_search) {
            openSearch();
        }
        if (itemId == R.id.action_settings) {
            transitionShow(new Intent((Context) this, (Class<?>) SettingsActivity2.class), 101);
        }
        return super.onOptionsItemSelected(menuItem);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void newRoute() {
        this.noAds = true;
        Log.e("NEW ROUTE", "vamos a hacer un request layou");
        this.child.getParent().requestLayout();
        LinearLayout linearLayout = (LinearLayout) findViewById(R.id.createRouteLyt);
        this.createRouteLyt = linearLayout;
        linearLayout.setVisibility(0);
        this.automaticRouteText = (TextView) findViewById(R.id.automatic_route);
        this.modoRuta = 100;
        View viewFindViewById = findViewById(R.id.circle_route);
        View viewFindViewById2 = findViewById(R.id.manual_route);
        View viewFindViewById3 = findViewById(R.id.automatic_route);
        viewFindViewById2.setBackground(getDrawable(R.drawable.fondoredondo));
        viewFindViewById.setBackground(null);
        viewFindViewById3.setBackground(null);
        int i = this.modoApp;
        if (i == 4 || i == 3) {
            onStopClickStep2(false);
        }
        miToast(getString(R.string.ruta_crear_inicio), 3);
        this.modoApp = 1;
        Polyline polyline = this.polyline1;
        if (polyline != null) {
            polyline.remove();
        }
        this.polyline1 = null;
        Circle circle = this.miCirculo;
        if (circle != null) {
            circle.remove();
        }
        this.miCirculo = null;
        this.startButton.setImageResource(R.drawable.botonset);
        this.favButton.setImageResource(R.drawable.botonsave);
        this.favButton.setEnabled(false);
        this.stopButton.setEnabled(true);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void onStartContinuousButtonClick(View view) {
        final RadioGroup radioGroup;
        boolean z;
        double radius;
        List<LatLng> points;
        Log.e("onStartContin", "modoApp " + this.modoApp);
        if (this.map == null) {
            return;
        }
        this.startButton.setEnabled(false);
        boolean z2 = true;
        if (this.modoApp == 1) {
            Log.e("fakeGPS", "CREAR RUTA");
            if (this.modoRuta != 102) {
                Polyline polyline = this.polyline1;
                if (polyline == null) {
                    if (this.rutas.size() == 1) {
                        miToast(getString(R.string.ruta_paso_02), 2);
                    }
                    Polyline polylineAddPolyline = this.map.addPolyline(new PolylineOptions().clickable(false).pattern(Arrays.asList(new Gap(convertDpToPixel(5.0f)), new Dash(convertDpToPixel(15.0f)))).add(new LatLng[]{new LatLng(this.map.getCameraPosition().target.latitude, this.map.getCameraPosition().target.longitude), new LatLng(this.map.getCameraPosition().target.latitude, this.map.getCameraPosition().target.longitude)}));
                    this.polylinePending = polylineAddPolyline;
                    polylineAddPolyline.setColor(getResources().getColor(R.color.colorRuta));
                    this.polylinePending.setWidth(convertDpToPixel(2.0f));
                    Polyline polylineAddPolyline2 = this.map.addPolyline(new PolylineOptions().clickable(false).geodesic(true).add(new LatLng(this.map.getCameraPosition().target.latitude, this.map.getCameraPosition().target.longitude)));
                    this.polyline1 = polylineAddPolyline2;
                    polylineAddPolyline2.setEndCap(new CustomCap(BitmapDescriptorFactory.fromResource(R.drawable.arrow2), convertDpToPixel(6.0f)));
                    this.polyline1.setStartCap(new RoundCap());
                    this.polyline1.setWidth(convertDpToPixel(4.0f));
                    this.polyline1.setColor(getResources().getColor(R.color.colorRuta));
                    this.polyline1.setJointType(2);
                    moveToFast(LocationUtils.getDelta(this.map.getCameraPosition(), 0.0f), this.map.getCameraPosition().zoom, this.map.getCameraPosition().bearing);
                    this.undoButton.setEnabled(true);
                    this.undoButton.setVisibility(0);
                    this.undoButton.setOnClickListener(new View.OnClickListener() { // from class: com.rosteam.gpsemulator.MainActivity.18
                        @Override // android.view.View.OnClickListener
                        public void onClick(View view2) {
                            List points2 = MainActivity.this.polyline1.getPoints();
                            points2.remove(points2.size() - 1);
                            if (points2.size() < 2) {
                                MainActivity.this.favButton.setEnabled(false);
                            }
                            if (points2.size() < 1) {
                                MainActivity.this.undoButton.setVisibility(4);
                            }
                            MainActivity.this.polyline1.setPoints(points2);
                            if (points2.size() == 0) {
                                MainActivity.this.polyline1.remove();
                                MainActivity.this.polyline1 = null;
                                MainActivity.this.polylinePending.remove();
                                MainActivity.this.polylinePending = null;
                            }
                            if (points2.size() > 0) {
                                List points3 = MainActivity.this.polylinePending.getPoints();
                                points3.set(0, (LatLng) points2.get(points2.size() - 1));
                                MainActivity.this.polylinePending.setPoints(points3);
                            }
                        }
                    });
                } else {
                    if (polyline.getPoints().size() == 1 && this.rutas.size() == 1) {
                        miToast(getString(R.string.ruta_paso_03), 2);
                    }
                    List points2 = this.polyline1.getPoints();
                    if (points2.size() < COMPLEXIDAD_MAX_RUTA) {
                        List points3 = this.polylinePending.getPoints();
                        points2.add(new LatLng(this.map.getCameraPosition().target.latitude, this.map.getCameraPosition().target.longitude));
                        points3.set(0, new LatLng(this.map.getCameraPosition().target.latitude, this.map.getCameraPosition().target.longitude));
                        points3.set(1, new LatLng(this.map.getCameraPosition().target.latitude, this.map.getCameraPosition().target.longitude));
                        this.polylinePending.setPoints(points3);
                        if (this.modoRuta == 100) {
                            this.polyline1.setPoints(points2);
                        }
                        if (this.modoRuta == 101) {
                            onCalculateRoute((LatLng) points2.get(points2.size() - 2), (LatLng) points2.get(points2.size() - 1));
                            setRewardedNow();
                            if (!this.noAds) {
                                int i = this.rewardedAutomaticRoutes - 1;
                                this.rewardedAutomaticRoutes = i;
                                if (i <= 0) {
                                    this.rewardedAutomaticRoutes = 0;
                                    if (this.rewardedAd == null) {
                                        cargarRewarded();
                                    }
                                    onManualRouteClick(this.createRouteLyt.findViewById(R.id.manual_route));
                                }
                                this.automaticRouteText.setText(String.format("%s (%d)", getResources().getString(R.string.automatic), Integer.valueOf(this.rewardedAutomaticRoutes)));
                            }
                        }
                        if (points2.size() > 1) {
                            this.favButton.setEnabled(true);
                        }
                        if (!points2.isEmpty()) {
                            this.undoButton.setVisibility(0);
                        }
                    } else {
                        miToast(getString(R.string.route_too_long), 3);
                    }
                }
            } else if (this.miCirculo == null) {
                Log.e("GPSEMU", "set en modo RUTA_CIRCULO");
                this.miCirculo = this.map.addCircle(new CircleOptions().center(new LatLng(this.map.getCameraPosition().target.latitude, this.map.getCameraPosition().target.longitude)).radius(0.0d).strokeWidth(convertDpToPixel(4.0f)).strokeColor(getResources().getColor(R.color.colorRuta)).clickable(true));
                moveToFast(LocationUtils.getDelta(this.map.getCameraPosition(), 0.0f), this.map.getCameraPosition().zoom, this.map.getCameraPosition().bearing);
                this.favButton.setEnabled(true);
                this.undoButton.setEnabled(true);
                this.undoButton.setVisibility(0);
                this.undoButton.setOnClickListener(new View.OnClickListener() { // from class: com.rosteam.gpsemulator.MainActivity.19
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view2) {
                        if (MainActivity.this.modoRuta == MainActivity.RUTA_CIRCULO_READYTOSAVE) {
                            MainActivity.this.modoRuta = 102;
                            float[] fArr = new float[1];
                            Location.distanceBetween(MainActivity.this.miCirculo.getCenter().latitude, MainActivity.this.miCirculo.getCenter().longitude, MainActivity.this.map.getCameraPosition().target.latitude, MainActivity.this.map.getCameraPosition().target.longitude, fArr);
                            MainActivity.this.miCirculo.setRadius(fArr[0]);
                            return;
                        }
                        MainActivity.this.miCirculo.remove();
                        MainActivity.this.miCirculo = null;
                        MainActivity.this.undoButton.setEnabled(false);
                        MainActivity.this.undoButton.setVisibility(4);
                        MainActivity.this.favButton.setEnabled(false);
                    }
                });
            } else {
                this.modoRuta = RUTA_CIRCULO_READYTOSAVE;
                this.favButton.callOnClick();
            }
            this.startButton.setEnabled(true);
            return;
        }
        this.startButton.setEnabled(true);
        if (launchPermissionDialog(false)) {
            return;
        }
        double d = this.currentLat;
        this.lat = new double[]{d, d};
        double d2 = this.currentLong;
        this.lng = new double[]{d2, d2};
        int i2 = this.modoApp;
        if (i2 == 0) {
            if (view != null) {
                this.currentLat = this.map.getCameraPosition().target.latitude;
                this.currentLong = this.map.getCameraPosition().target.longitude;
            }
            double[] dArr = this.lat;
            double d3 = this.currentLat;
            dArr[0] = (float) d3;
            double[] dArr2 = this.lng;
            double d4 = this.currentLong;
            dArr2[0] = (float) d4;
            dArr[1] = (float) d3;
            dArr2[1] = (float) d4;
            this.velocidad = 0.02777778f;
            this.loopMode = 2;
            this.favButton.setEnabled(true);
            this.favButton.setHapticFeedbackEnabled(false);
            this.favButton.setImageResource(R.drawable.botonfav);
        } else {
            if (i2 == 2 || i2 == 3) {
                String string = this.preferences.getString("distance_units", MBridgeConstans.ENDCARD_URL_TYPE_PL);
                this.metric = true;
                if (string.contentEquals(MBridgeConstans.ENDCARD_URL_TYPE_PL)) {
                    String country = Locale.getDefault().getCountry();
                    if ("US".equals(country) || "LR".equals(country)) {
                        this.metric = false;
                    } else if (!"MM".equals(country)) {
                        this.metric = true;
                    }
                } else if (string.contentEquals("1")) {
                    this.metric = true;
                } else if (string.contentEquals(MBridgeConstans.API_REUQEST_CATEGORY_APP)) {
                    this.metric = false;
                }
                View viewInflate = getLayoutInflater().inflate(R.layout.playroute_layout, (ViewGroup) null);
                final TextView textView = (TextView) viewInflate.findViewById(R.id.speed_text);
                TextView textView2 = (TextView) viewInflate.findViewById(R.id.length_text);
                RadioGroup radioGroup2 = (RadioGroup) viewInflate.findViewById(R.id.group_loop);
                final SeekBar seekBar = (SeekBar) viewInflate.findViewById(R.id.seek_speed);
                TextView textView3 = (TextView) viewInflate.findViewById(R.id.editSpeedLayout);
                final RadioButton radioButton = (RadioButton) viewInflate.findViewById(R.id.opcStop);
                final RadioButton radioButton2 = (RadioButton) viewInflate.findViewById(R.id.opcReverse);
                int i3 = this.preferences.getInt("loopmode", R.id.opcStop);
                if (i3 != R.id.opcStop && i3 != R.id.opcReverse && i3 != R.id.opcRestart) {
                    i3 = R.id.opcStop;
                }
                radioGroup2.check(i3);
                this.misKMxHora = this.preferences.getFloat("velocidad", 1.0f);
                textView.setText(this.metric ? getString(R.string.speed, new Object[]{Float.valueOf(this.misKMxHora)}) : getString(R.string.speed_mph, new Object[]{Float.valueOf(this.misKMxHora * 0.6213712f)}));
                seekBar.setProgress((int) (((this.misKMxHora * 100.0f) - 100.0f) / (VEL_MAX_KM - 1)));
                try {
                    Circle circle = this.miCirculo;
                    if (circle != null) {
                        radius = circle.getRadius() * 6.283185307179586d;
                        z = true;
                    } else {
                        List points4 = this.polyline1.getPoints();
                        int size = points4.size();
                        double[] dArr3 = new double[size];
                        double[] dArr4 = new double[points4.size()];
                        int i4 = 0;
                        while (i4 < points4.size()) {
                            try {
                                z = z2;
                                int i5 = size;
                                try {
                                    dArr3[i4] = (float) ((LatLng) points4.get(i4)).latitude;
                                    dArr4[i4] = (float) ((LatLng) points4.get(i4)).longitude;
                                    i4++;
                                    z2 = z;
                                    size = i5;
                                } catch (Exception unused) {
                                    radioGroup = radioGroup2;
                                    textView3.setOnClickListener(new View.OnClickListener() { // from class: com.rosteam.gpsemulator.MainActivity.20
                                        @Override // android.view.View.OnClickListener
                                        public void onClick(View view2) {
                                            MainActivity mainActivity;
                                            int i6;
                                            View viewInflate2 = MainActivity.this.getLayoutInflater().inflate(R.layout.altitude_layout, (ViewGroup) null);
                                            final EditText editText = (EditText) viewInflate2.findViewById(R.id.inputAltitude);
                                            editText.setInputType(8194);
                                            double dFloor = Math.floor((MainActivity.this.metric ? MainActivity.this.misKMxHora : MainActivity.this.misKMxHora * 0.6213712f) * 100.0f) / 100.0d;
                                            Log.e("editedSpeed", "truncated: " + dFloor);
                                            editText.setText(TtmlNode.ANONYMOUS_REGION_ID + dFloor);
                                            InputFilter[] inputFilterArr = new InputFilter[2];
                                            inputFilterArr[0] = new InputFilter.LengthFilter(7);
                                            inputFilterArr[1] = new SettingsFragment.InputFilterMinMax(1, MainActivity.this.metric ? MainActivity.VEL_MAX_KM : MainActivity.VEL_MAX_MILES);
                                            editText.setFilters(inputFilterArr);
                                            textView.setText(MainActivity.this.metric ? MainActivity.this.getString(R.string.speed, new Object[]{Float.valueOf(MainActivity.this.misKMxHora)}) : MainActivity.this.getString(R.string.speed_mph, new Object[]{Float.valueOf(MainActivity.this.misKMxHora * 0.6213712f)}));
                                            AlertDialog.Builder builder = new AlertDialog.Builder(MainActivity.this.context, R.style.CustomAlertDialog);
                                            if (MainActivity.this.metric) {
                                                mainActivity = MainActivity.this;
                                                i6 = R.string.speed_title;
                                            } else {
                                                mainActivity = MainActivity.this;
                                                i6 = R.string.speed_title_mph;
                                            }
                                            builder.setTitle(mainActivity.getString(i6)).setView(viewInflate2).setPositiveButton("Ok", new DialogInterface.OnClickListener() { // from class: com.rosteam.gpsemulator.MainActivity.20.1
                                                @Override // android.content.DialogInterface.OnClickListener
                                                public void onClick(DialogInterface dialogInterface, int i7) {
                                                    float f;
                                                    try {
                                                        f = Float.parseFloat(editText.getText().toString());
                                                    } catch (Exception e) {
                                                        e.printStackTrace();
                                                        f = 1.0f;
                                                    }
                                                    float f2 = f > 0.0f ? f : 1.0f;
                                                    MainActivity mainActivity2 = MainActivity.this;
                                                    if (!MainActivity.this.metric) {
                                                        f2 *= 1.609344f;
                                                    }
                                                    mainActivity2.misKMxHora = f2;
                                                    seekBar.setProgress((int) (((MainActivity.this.misKMxHora * 100.0f) - 100.0f) / (MainActivity.VEL_MAX_KM - 1)));
                                                }
                                            }).show();
                                        }
                                    });
                                    seekBar.setOnSeekBarChangeListener(new SeekBar.OnSeekBarChangeListener() { // from class: com.rosteam.gpsemulator.MainActivity.21
                                        @Override // android.widget.SeekBar.OnSeekBarChangeListener
                                        public void onProgressChanged(SeekBar seekBar2, int i6, boolean z3) {
                                            if (MainActivity.this.seekTouchTracking) {
                                                MainActivity.this.misKMxHora = ((seekBar.getProgress() * (MainActivity.VEL_MAX_KM - 1)) + 100) / 100;
                                                textView.setText(MainActivity.this.metric ? MainActivity.this.getString(R.string.speed, new Object[]{Float.valueOf(MainActivity.this.misKMxHora)}) : MainActivity.this.getString(R.string.speed_mph, new Object[]{Float.valueOf(MainActivity.this.misKMxHora * 0.6213712f)}));
                                                MainActivity mainActivity = MainActivity.this;
                                                mainActivity.velocidad = mainActivity.misKMxHora / 3.6f;
                                                return;
                                            }
                                            textView.setText(MainActivity.this.metric ? MainActivity.this.getString(R.string.speed, new Object[]{Float.valueOf(MainActivity.this.misKMxHora)}) : MainActivity.this.getString(R.string.speed_mph, new Object[]{Float.valueOf(MainActivity.this.misKMxHora * 0.6213712f)}));
                                        }

                                        @Override // android.widget.SeekBar.OnSeekBarChangeListener
                                        public void onStartTrackingTouch(SeekBar seekBar2) {
                                            MainActivity.this.seekTouchTracking = true;
                                        }

                                        @Override // android.widget.SeekBar.OnSeekBarChangeListener
                                        public void onStopTrackingTouch(SeekBar seekBar2) {
                                            Log.e("velocidadSEEK", "onStopTrackingTouch");
                                            MainActivity.this.seekTouchTracking = false;
                                        }
                                    });
                                    new AlertDialog.Builder(this.ctw, R.style.CustomAlertDialog).setTitle(R.string.play_route).setView(viewInflate).setPositiveButton(R.string.play, new DialogInterface.OnClickListener() { // from class: com.rosteam.gpsemulator.MainActivity.23
                                        @Override // android.content.DialogInterface.OnClickListener
                                        public void onClick(DialogInterface dialogInterface, int i6) {
                                            int i7;
                                            MainActivity mainActivity = MainActivity.this;
                                            mainActivity.velocidad = mainActivity.misKMxHora / 3.6f;
                                            if (radioButton.isChecked()) {
                                                MainActivity.this.loopMode = 0;
                                            } else if (radioButton2.isChecked()) {
                                                MainActivity.this.loopMode = 1;
                                            } else {
                                                MainActivity.this.loopMode = 2;
                                            }
                                            MainActivity.this.editor.putInt("loopmode", radioGroup.getCheckedRadioButtonId());
                                            Log.e("setVelocidad", "valor a guardar: " + MainActivity.this.misKMxHora);
                                            MainActivity.this.editor.putFloat("velocidad", MainActivity.this.misKMxHora);
                                            MainActivity.this.editor.commit();
                                            if (MainActivity.this.modoApp == 3) {
                                                Log.e("StartContinuos", "SE VUELVE DE PAUSA");
                                                MainActivity.this.startButton.setImageResource(R.drawable.ic_pause);
                                                MainActivity.this.favButton.setEnabled(false);
                                                MainActivity.this.modoApp = 4;
                                                MainActivity mainActivity2 = MainActivity.this;
                                                mainActivity2.miToast(mainActivity2.getString(R.string.route_resumed), 1);
                                                MainActivity.this.mRequestIntent.putExtra("velocidad", MainActivity.this.velocidad);
                                                MainActivity.this.mRequestIntent.putExtra("loopMode", MainActivity.this.loopMode);
                                                MainActivity.this.mRequestIntent.setAction(LocationUtils.ACTION_RESUME);
                                                ContextCompat.startForegroundService(MainActivity.this.getApplicationContext(), MainActivity.this.mRequestIntent);
                                                MainActivity.this.startButton.setEnabled(true);
                                                return;
                                            }
                                            if (MainActivity.this.currentMark != null) {
                                                MainActivity.this.mRequestIntent.setAction(LocationUtils.ACTION_STOP_TEST);
                                                MainActivity mainActivity3 = MainActivity.this;
                                                mainActivity3.stopService(mainActivity3.mRequestIntent);
                                                i7 = 400;
                                            } else {
                                                i7 = 0;
                                            }
                                            MainActivity.this.modoApp = 5;
                                            MainActivity.this.favButton.setEnabled(false);
                                            new Handler().postDelayed(new Runnable() { // from class: com.rosteam.gpsemulator.MainActivity.23.1
                                                @Override // java.lang.Runnable
                                                public void run() {
                                                    MainActivity.this.startButton.callOnClick();
                                                }
                                            }, i7);
                                        }
                                    }).setNegativeButton(android.R.string.cancel, new DialogInterface.OnClickListener() { // from class: com.rosteam.gpsemulator.MainActivity.22
                                        @Override // android.content.DialogInterface.OnClickListener
                                        public void onClick(DialogInterface dialogInterface, int i6) {
                                        }
                                    }).show();
                                    this.startButton.setEnabled(z);
                                    return;
                                }
                            } catch (Exception unused2) {
                                z = z2;
                                radioGroup = radioGroup2;
                                textView3.setOnClickListener(new View.OnClickListener() { // from class: com.rosteam.gpsemulator.MainActivity.20
                                    @Override // android.view.View.OnClickListener
                                    public void onClick(View view2) {
                                        MainActivity mainActivity;
                                        int i6;
                                        View viewInflate2 = MainActivity.this.getLayoutInflater().inflate(R.layout.altitude_layout, (ViewGroup) null);
                                        final EditText editText = (EditText) viewInflate2.findViewById(R.id.inputAltitude);
                                        editText.setInputType(8194);
                                        double dFloor = Math.floor((MainActivity.this.metric ? MainActivity.this.misKMxHora : MainActivity.this.misKMxHora * 0.6213712f) * 100.0f) / 100.0d;
                                        Log.e("editedSpeed", "truncated: " + dFloor);
                                        editText.setText(TtmlNode.ANONYMOUS_REGION_ID + dFloor);
                                        InputFilter[] inputFilterArr = new InputFilter[2];
                                        inputFilterArr[0] = new InputFilter.LengthFilter(7);
                                        inputFilterArr[1] = new SettingsFragment.InputFilterMinMax(1, MainActivity.this.metric ? MainActivity.VEL_MAX_KM : MainActivity.VEL_MAX_MILES);
                                        editText.setFilters(inputFilterArr);
                                        textView.setText(MainActivity.this.metric ? MainActivity.this.getString(R.string.speed, new Object[]{Float.valueOf(MainActivity.this.misKMxHora)}) : MainActivity.this.getString(R.string.speed_mph, new Object[]{Float.valueOf(MainActivity.this.misKMxHora * 0.6213712f)}));
                                        AlertDialog.Builder builder = new AlertDialog.Builder(MainActivity.this.context, R.style.CustomAlertDialog);
                                        if (MainActivity.this.metric) {
                                            mainActivity = MainActivity.this;
                                            i6 = R.string.speed_title;
                                        } else {
                                            mainActivity = MainActivity.this;
                                            i6 = R.string.speed_title_mph;
                                        }
                                        builder.setTitle(mainActivity.getString(i6)).setView(viewInflate2).setPositiveButton("Ok", new DialogInterface.OnClickListener() { // from class: com.rosteam.gpsemulator.MainActivity.20.1
                                            @Override // android.content.DialogInterface.OnClickListener
                                            public void onClick(DialogInterface dialogInterface, int i7) {
                                                float f;
                                                try {
                                                    f = Float.parseFloat(editText.getText().toString());
                                                } catch (Exception e) {
                                                    e.printStackTrace();
                                                    f = 1.0f;
                                                }
                                                float f2 = f > 0.0f ? f : 1.0f;
                                                MainActivity mainActivity2 = MainActivity.this;
                                                if (!MainActivity.this.metric) {
                                                    f2 *= 1.609344f;
                                                }
                                                mainActivity2.misKMxHora = f2;
                                                seekBar.setProgress((int) (((MainActivity.this.misKMxHora * 100.0f) - 100.0f) / (MainActivity.VEL_MAX_KM - 1)));
                                            }
                                        }).show();
                                    }
                                });
                                seekBar.setOnSeekBarChangeListener(new SeekBar.OnSeekBarChangeListener() { // from class: com.rosteam.gpsemulator.MainActivity.21
                                    @Override // android.widget.SeekBar.OnSeekBarChangeListener
                                    public void onProgressChanged(SeekBar seekBar2, int i6, boolean z3) {
                                        if (MainActivity.this.seekTouchTracking) {
                                            MainActivity.this.misKMxHora = ((seekBar.getProgress() * (MainActivity.VEL_MAX_KM - 1)) + 100) / 100;
                                            textView.setText(MainActivity.this.metric ? MainActivity.this.getString(R.string.speed, new Object[]{Float.valueOf(MainActivity.this.misKMxHora)}) : MainActivity.this.getString(R.string.speed_mph, new Object[]{Float.valueOf(MainActivity.this.misKMxHora * 0.6213712f)}));
                                            MainActivity mainActivity = MainActivity.this;
                                            mainActivity.velocidad = mainActivity.misKMxHora / 3.6f;
                                            return;
                                        }
                                        textView.setText(MainActivity.this.metric ? MainActivity.this.getString(R.string.speed, new Object[]{Float.valueOf(MainActivity.this.misKMxHora)}) : MainActivity.this.getString(R.string.speed_mph, new Object[]{Float.valueOf(MainActivity.this.misKMxHora * 0.6213712f)}));
                                    }

                                    @Override // android.widget.SeekBar.OnSeekBarChangeListener
                                    public void onStartTrackingTouch(SeekBar seekBar2) {
                                        MainActivity.this.seekTouchTracking = true;
                                    }

                                    @Override // android.widget.SeekBar.OnSeekBarChangeListener
                                    public void onStopTrackingTouch(SeekBar seekBar2) {
                                        Log.e("velocidadSEEK", "onStopTrackingTouch");
                                        MainActivity.this.seekTouchTracking = false;
                                    }
                                });
                                new AlertDialog.Builder(this.ctw, R.style.CustomAlertDialog).setTitle(R.string.play_route).setView(viewInflate).setPositiveButton(R.string.play, new DialogInterface.OnClickListener() { // from class: com.rosteam.gpsemulator.MainActivity.23
                                    @Override // android.content.DialogInterface.OnClickListener
                                    public void onClick(DialogInterface dialogInterface, int i6) {
                                        int i7;
                                        MainActivity mainActivity = MainActivity.this;
                                        mainActivity.velocidad = mainActivity.misKMxHora / 3.6f;
                                        if (radioButton.isChecked()) {
                                            MainActivity.this.loopMode = 0;
                                        } else if (radioButton2.isChecked()) {
                                            MainActivity.this.loopMode = 1;
                                        } else {
                                            MainActivity.this.loopMode = 2;
                                        }
                                        MainActivity.this.editor.putInt("loopmode", radioGroup.getCheckedRadioButtonId());
                                        Log.e("setVelocidad", "valor a guardar: " + MainActivity.this.misKMxHora);
                                        MainActivity.this.editor.putFloat("velocidad", MainActivity.this.misKMxHora);
                                        MainActivity.this.editor.commit();
                                        if (MainActivity.this.modoApp == 3) {
                                            Log.e("StartContinuos", "SE VUELVE DE PAUSA");
                                            MainActivity.this.startButton.setImageResource(R.drawable.ic_pause);
                                            MainActivity.this.favButton.setEnabled(false);
                                            MainActivity.this.modoApp = 4;
                                            MainActivity mainActivity2 = MainActivity.this;
                                            mainActivity2.miToast(mainActivity2.getString(R.string.route_resumed), 1);
                                            MainActivity.this.mRequestIntent.putExtra("velocidad", MainActivity.this.velocidad);
                                            MainActivity.this.mRequestIntent.putExtra("loopMode", MainActivity.this.loopMode);
                                            MainActivity.this.mRequestIntent.setAction(LocationUtils.ACTION_RESUME);
                                            ContextCompat.startForegroundService(MainActivity.this.getApplicationContext(), MainActivity.this.mRequestIntent);
                                            MainActivity.this.startButton.setEnabled(true);
                                            return;
                                        }
                                        if (MainActivity.this.currentMark != null) {
                                            MainActivity.this.mRequestIntent.setAction(LocationUtils.ACTION_STOP_TEST);
                                            MainActivity mainActivity3 = MainActivity.this;
                                            mainActivity3.stopService(mainActivity3.mRequestIntent);
                                            i7 = 400;
                                        } else {
                                            i7 = 0;
                                        }
                                        MainActivity.this.modoApp = 5;
                                        MainActivity.this.favButton.setEnabled(false);
                                        new Handler().postDelayed(new Runnable() { // from class: com.rosteam.gpsemulator.MainActivity.23.1
                                            @Override // java.lang.Runnable
                                            public void run() {
                                                MainActivity.this.startButton.callOnClick();
                                            }
                                        }, i7);
                                    }
                                }).setNegativeButton(android.R.string.cancel, new DialogInterface.OnClickListener() { // from class: com.rosteam.gpsemulator.MainActivity.22
                                    @Override // android.content.DialogInterface.OnClickListener
                                    public void onClick(DialogInterface dialogInterface, int i6) {
                                    }
                                }).show();
                                this.startButton.setEnabled(z);
                                return;
                            }
                        }
                        z = z2;
                        int i6 = size;
                        double dComputeDistanceBetween = 0.0d;
                        int i7 = 0;
                        while (i7 < i6 - 1) {
                            double d5 = dComputeDistanceBetween;
                            double[] dArr5 = dArr3;
                            double[] dArr6 = dArr4;
                            LatLng latLng = new LatLng(dArr3[i7], dArr6[i7]);
                            int i8 = i7 + 1;
                            radioGroup = radioGroup2;
                            try {
                                radioGroup2 = radioGroup;
                                dComputeDistanceBetween = d5 + SphericalUtil.computeDistanceBetween(latLng, new LatLng(dArr5[i8], dArr6[i8]));
                                dArr3 = dArr5;
                                dArr4 = dArr6;
                                i7 = i8;
                            } catch (Exception unused3) {
                            }
                        }
                        radius = dComputeDistanceBetween;
                    }
                    radioGroup = radioGroup2;
                    if (!this.metric) {
                        float f = ((float) (radius / 1000.0d)) * 0.6213712f;
                        if (f < 0.1f) {
                            textView2.setText(getString(R.string.distance_feet, new Object[]{Double.valueOf(radius * 3.2808399200439453d)}));
                        } else {
                            textView2.setText(getString(R.string.distance_miles, new Object[]{Float.valueOf(f)}));
                        }
                    } else if (radius < 1000.0d) {
                        textView2.setText(getString(R.string.distance_meters, new Object[]{Double.valueOf(radius)}));
                    } else {
                        textView2.setText(getString(R.string.distance_kilometers, new Object[]{Double.valueOf(radius / 1000.0d)}));
                    }
                } catch (Exception unused4) {
                    radioGroup = radioGroup2;
                    z = true;
                }
                textView3.setOnClickListener(new View.OnClickListener() { // from class: com.rosteam.gpsemulator.MainActivity.20
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view2) {
                        MainActivity mainActivity;
                        int i9;
                        View viewInflate2 = MainActivity.this.getLayoutInflater().inflate(R.layout.altitude_layout, (ViewGroup) null);
                        final EditText editText = (EditText) viewInflate2.findViewById(R.id.inputAltitude);
                        editText.setInputType(8194);
                        double dFloor = Math.floor((MainActivity.this.metric ? MainActivity.this.misKMxHora : MainActivity.this.misKMxHora * 0.6213712f) * 100.0f) / 100.0d;
                        Log.e("editedSpeed", "truncated: " + dFloor);
                        editText.setText(TtmlNode.ANONYMOUS_REGION_ID + dFloor);
                        InputFilter[] inputFilterArr = new InputFilter[2];
                        inputFilterArr[0] = new InputFilter.LengthFilter(7);
                        inputFilterArr[1] = new SettingsFragment.InputFilterMinMax(1, MainActivity.this.metric ? MainActivity.VEL_MAX_KM : MainActivity.VEL_MAX_MILES);
                        editText.setFilters(inputFilterArr);
                        textView.setText(MainActivity.this.metric ? MainActivity.this.getString(R.string.speed, new Object[]{Float.valueOf(MainActivity.this.misKMxHora)}) : MainActivity.this.getString(R.string.speed_mph, new Object[]{Float.valueOf(MainActivity.this.misKMxHora * 0.6213712f)}));
                        AlertDialog.Builder builder = new AlertDialog.Builder(MainActivity.this.context, R.style.CustomAlertDialog);
                        if (MainActivity.this.metric) {
                            mainActivity = MainActivity.this;
                            i9 = R.string.speed_title;
                        } else {
                            mainActivity = MainActivity.this;
                            i9 = R.string.speed_title_mph;
                        }
                        builder.setTitle(mainActivity.getString(i9)).setView(viewInflate2).setPositiveButton("Ok", new DialogInterface.OnClickListener() { // from class: com.rosteam.gpsemulator.MainActivity.20.1
                            @Override // android.content.DialogInterface.OnClickListener
                            public void onClick(DialogInterface dialogInterface, int i10) {
                                float f2;
                                try {
                                    f2 = Float.parseFloat(editText.getText().toString());
                                } catch (Exception e) {
                                    e.printStackTrace();
                                    f2 = 1.0f;
                                }
                                float f3 = f2 > 0.0f ? f2 : 1.0f;
                                MainActivity mainActivity2 = MainActivity.this;
                                if (!MainActivity.this.metric) {
                                    f3 *= 1.609344f;
                                }
                                mainActivity2.misKMxHora = f3;
                                seekBar.setProgress((int) (((MainActivity.this.misKMxHora * 100.0f) - 100.0f) / (MainActivity.VEL_MAX_KM - 1)));
                            }
                        }).show();
                    }
                });
                seekBar.setOnSeekBarChangeListener(new SeekBar.OnSeekBarChangeListener() { // from class: com.rosteam.gpsemulator.MainActivity.21
                    @Override // android.widget.SeekBar.OnSeekBarChangeListener
                    public void onProgressChanged(SeekBar seekBar2, int i9, boolean z3) {
                        if (MainActivity.this.seekTouchTracking) {
                            MainActivity.this.misKMxHora = ((seekBar.getProgress() * (MainActivity.VEL_MAX_KM - 1)) + 100) / 100;
                            textView.setText(MainActivity.this.metric ? MainActivity.this.getString(R.string.speed, new Object[]{Float.valueOf(MainActivity.this.misKMxHora)}) : MainActivity.this.getString(R.string.speed_mph, new Object[]{Float.valueOf(MainActivity.this.misKMxHora * 0.6213712f)}));
                            MainActivity mainActivity = MainActivity.this;
                            mainActivity.velocidad = mainActivity.misKMxHora / 3.6f;
                            return;
                        }
                        textView.setText(MainActivity.this.metric ? MainActivity.this.getString(R.string.speed, new Object[]{Float.valueOf(MainActivity.this.misKMxHora)}) : MainActivity.this.getString(R.string.speed_mph, new Object[]{Float.valueOf(MainActivity.this.misKMxHora * 0.6213712f)}));
                    }

                    @Override // android.widget.SeekBar.OnSeekBarChangeListener
                    public void onStartTrackingTouch(SeekBar seekBar2) {
                        MainActivity.this.seekTouchTracking = true;
                    }

                    @Override // android.widget.SeekBar.OnSeekBarChangeListener
                    public void onStopTrackingTouch(SeekBar seekBar2) {
                        Log.e("velocidadSEEK", "onStopTrackingTouch");
                        MainActivity.this.seekTouchTracking = false;
                    }
                });
                new AlertDialog.Builder(this.ctw, R.style.CustomAlertDialog).setTitle(R.string.play_route).setView(viewInflate).setPositiveButton(R.string.play, new DialogInterface.OnClickListener() { // from class: com.rosteam.gpsemulator.MainActivity.23
                    @Override // android.content.DialogInterface.OnClickListener
                    public void onClick(DialogInterface dialogInterface, int i9) {
                        int i10;
                        MainActivity mainActivity = MainActivity.this;
                        mainActivity.velocidad = mainActivity.misKMxHora / 3.6f;
                        if (radioButton.isChecked()) {
                            MainActivity.this.loopMode = 0;
                        } else if (radioButton2.isChecked()) {
                            MainActivity.this.loopMode = 1;
                        } else {
                            MainActivity.this.loopMode = 2;
                        }
                        MainActivity.this.editor.putInt("loopmode", radioGroup.getCheckedRadioButtonId());
                        Log.e("setVelocidad", "valor a guardar: " + MainActivity.this.misKMxHora);
                        MainActivity.this.editor.putFloat("velocidad", MainActivity.this.misKMxHora);
                        MainActivity.this.editor.commit();
                        if (MainActivity.this.modoApp == 3) {
                            Log.e("StartContinuos", "SE VUELVE DE PAUSA");
                            MainActivity.this.startButton.setImageResource(R.drawable.ic_pause);
                            MainActivity.this.favButton.setEnabled(false);
                            MainActivity.this.modoApp = 4;
                            MainActivity mainActivity2 = MainActivity.this;
                            mainActivity2.miToast(mainActivity2.getString(R.string.route_resumed), 1);
                            MainActivity.this.mRequestIntent.putExtra("velocidad", MainActivity.this.velocidad);
                            MainActivity.this.mRequestIntent.putExtra("loopMode", MainActivity.this.loopMode);
                            MainActivity.this.mRequestIntent.setAction(LocationUtils.ACTION_RESUME);
                            ContextCompat.startForegroundService(MainActivity.this.getApplicationContext(), MainActivity.this.mRequestIntent);
                            MainActivity.this.startButton.setEnabled(true);
                            return;
                        }
                        if (MainActivity.this.currentMark != null) {
                            MainActivity.this.mRequestIntent.setAction(LocationUtils.ACTION_STOP_TEST);
                            MainActivity mainActivity3 = MainActivity.this;
                            mainActivity3.stopService(mainActivity3.mRequestIntent);
                            i10 = 400;
                        } else {
                            i10 = 0;
                        }
                        MainActivity.this.modoApp = 5;
                        MainActivity.this.favButton.setEnabled(false);
                        new Handler().postDelayed(new Runnable() { // from class: com.rosteam.gpsemulator.MainActivity.23.1
                            @Override // java.lang.Runnable
                            public void run() {
                                MainActivity.this.startButton.callOnClick();
                            }
                        }, i10);
                    }
                }).setNegativeButton(android.R.string.cancel, new DialogInterface.OnClickListener() { // from class: com.rosteam.gpsemulator.MainActivity.22
                    @Override // android.content.DialogInterface.OnClickListener
                    public void onClick(DialogInterface dialogInterface, int i9) {
                    }
                }).show();
                this.startButton.setEnabled(z);
                return;
            }
            if (i2 == 5) {
                Circle circle2 = this.miCirculo;
                if (circle2 != null) {
                    points = LocationUtils.generateCirclePoints(circle2.getCenter(), this.miCirculo.getRadius());
                } else {
                    points = this.polyline1.getPoints();
                }
                this.lat = new double[points.size()];
                this.lng = new double[points.size()];
                for (int i9 = 0; i9 < points.size(); i9++) {
                    this.lat[i9] = (float) points.get(i9).latitude;
                    this.lng[i9] = (float) points.get(i9).longitude;
                }
                this.startButton.setImageResource(R.drawable.ic_pause);
                this.modoApp = 4;
                Log.e("fakegps", "velocidad: " + this.velocidad);
            } else if (i2 == 4) {
                this.startButton.setImageResource(R.drawable.ic_play);
                this.favButton.setEnabled(true);
                this.modoApp = 3;
                miToast(getString(R.string.route_paused), 1);
                this.mRequestIntent.setAction(LocationUtils.ACTION_PAUSE);
                ContextCompat.startForegroundService(this, this.mRequestIntent);
                this.startButton.setEnabled(true);
                return;
            }
        }
        GetCiudadPais(this.lat[0], this.lng[0], this.map.getCameraPosition().zoom, this.map.getCameraPosition().bearing);
        int i10 = Integer.parseInt(this.preferences.getString("decimal_places", "-1"));
        if (this.velocidad >= 0.2777778f) {
            miToast(getString(R.string.route_initiated), 1);
        } else if (i10 >= 0) {
            miToast(getResources().getString(R.string.location_set_to) + "\n(truncated)", 1);
        } else {
            miToast(R.string.location_set_to, 1);
        }
        if (ContextCompat.checkSelfPermission(this, "android.permission.ACCESS_FINE_LOCATION") != 0) {
            miToast(R.string.location_permission_needed, 1);
        }
        Log.e("GPSemu", "lat: " + this.currentLat + " long: " + this.currentLong);
        if (this.modoApp == 4) {
            if (this.miCirculo != null) {
                this.mRequestIntent.removeExtra(LocationUtils.RUTA);
                this.mRequestIntent.putExtra(LocationUtils.LATITUDE, this.lat);
                this.mRequestIntent.putExtra(LocationUtils.LONGITUDE, this.lng);
                this.miCirculo.remove();
                this.miCirculo = null;
            } else {
                this.mRequestIntent.putExtra(LocationUtils.RUTA, this.currentRuta);
            }
        } else {
            this.mRequestIntent.removeExtra(LocationUtils.RUTA);
            this.mRequestIntent.putExtra(LocationUtils.LATITUDE, this.lat);
            this.mRequestIntent.putExtra(LocationUtils.LONGITUDE, this.lng);
        }
        this.mRequestIntent.putExtra(LocationUtils.CIUDADPAIS, TtmlNode.ANONYMOUS_REGION_ID);
        this.mRequestIntent.putExtra("velocidad", this.velocidad);
        this.mRequestIntent.putExtra("loopMode", this.loopMode);
        this.mRequestIntent.setAction(LocationUtils.ACTION_START_CONTINUOUS);
        ContextCompat.startForegroundService(this, this.mRequestIntent);
        Marker marker = this.currentMark;
        if (marker != null) {
            marker.remove();
        }
        this.currentMark = this.map.addMarker(new MarkerOptions().position(new LatLng(this.lat[0], this.lng[0])).title(LocationUtils.trunc(this.lat[0], i10) + ", " + LocationUtils.trunc(this.lng[0], i10)).zIndex(10.0f).icon(BitmapDescriptorFactory.fromResource(R.drawable.fakegpsmarker)));
        this.stopButton.setEnabled(true);
        this.startButton.setEnabled(true);
        goPro();
    }

    private boolean launchPermissionDialog(boolean z) {
        View viewInflate = getLayoutInflater().inflate(R.layout.permissions, (ViewGroup) null);
        this.permisosLayout = viewInflate;
        if (!setPermissionButtons(viewInflate) && !z) {
            return false;
        }
        AlertDialog alertDialogCreate = new AlertDialog.Builder(this.context, R.style.CustomAlertDialog).setTitle(R.string.initial_config).setView(this.permisosLayout).create();
        this.permissionDialog = alertDialogCreate;
        alertDialogCreate.show();
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private boolean setPermissionButtons(View view) {
        boolean z;
        LinearLayout linearLayout = (LinearLayout) view.findViewById(R.id.permission01);
        LinearLayout linearLayout2 = (LinearLayout) view.findViewById(R.id.permission02);
        LinearLayout linearLayout3 = (LinearLayout) view.findViewById(R.id.permission03);
        LinearLayout linearLayout4 = (LinearLayout) view.findViewById(R.id.permission04);
        LinearLayout linearLayout5 = (LinearLayout) view.findViewById(R.id.permission05);
        Button button = (Button) view.findViewById(R.id.continuar);
        setButtonPermissionEnabled(linearLayout, 0);
        setButtonPermissionEnabled(linearLayout2, 0);
        setButtonPermissionEnabled(linearLayout3, 0);
        setButtonPermissionEnabled(linearLayout4, 0);
        linearLayout.setOnClickListener(new View.OnClickListener() { // from class: com.rosteam.gpsemulator.MainActivity.24
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                new AlertDialog.Builder(MainActivity.this.ctw, R.style.CustomAlertDialog).setMessage(MainActivity.this.getString(R.string.howtounlockdevopts)).setPositiveButton(MainActivity.this.getString(R.string.go_settings), new DialogInterface.OnClickListener() { // from class: com.rosteam.gpsemulator.MainActivity.24.1
                    @Override // android.content.DialogInterface.OnClickListener
                    public void onClick(DialogInterface dialogInterface, int i) {
                        MainActivity.this.startActivityForResult(new Intent("android.settings.DEVICE_INFO_SETTINGS"), 0);
                    }
                }).show();
            }
        });
        linearLayout2.setOnClickListener(new View.OnClickListener() { // from class: com.rosteam.gpsemulator.MainActivity.25
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                new AlertDialog.Builder(MainActivity.this.ctw, R.style.CustomAlertDialog).setMessage(MainActivity.this.getString(R.string.setgpsasmockapp)).setPositiveButton(MainActivity.this.getString(R.string.godevopts), new DialogInterface.OnClickListener() { // from class: com.rosteam.gpsemulator.MainActivity.25.1
                    @Override // android.content.DialogInterface.OnClickListener
                    public void onClick(DialogInterface dialogInterface, int i) {
                        try {
                            MainActivity.this.startActivityForResult(new Intent("android.settings.APPLICATION_DEVELOPMENT_SETTINGS"), 0);
                        } catch (Exception unused) {
                            MainActivity.this.miToast(MainActivity.this.getString(R.string.error_open_developer_options_manually), 2);
                        }
                    }
                }).show();
            }
        });
        linearLayout3.setOnClickListener(new View.OnClickListener() { // from class: com.rosteam.gpsemulator.MainActivity.26
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                MainActivity.this.checkLocationPermission();
            }
        });
        linearLayout4.setOnClickListener(new View.OnClickListener() { // from class: com.rosteam.gpsemulator.MainActivity.27
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                MainActivity.this.checkBatteryPolicy();
            }
        });
        linearLayout5.setOnClickListener(new View.OnClickListener() { // from class: com.rosteam.gpsemulator.MainActivity.28
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                MainActivity.this.checkNotificationPermission();
            }
        });
        button.setOnClickListener(new View.OnClickListener() { // from class: com.rosteam.gpsemulator.MainActivity.29
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                MainActivity.this.permissionDialog.dismiss();
            }
        });
        Log.e("fakeGPS", "INICIO DE VERIFICACIONES DE PERMISOS");
        List<ResolveInfo> listQueryIntentActivities = this.context.getPackageManager().queryIntentActivities(new Intent("android.settings.APPLICATION_DEVELOPMENT_SETTINGS"), 0);
        int i = 0;
        for (int i2 = 0; i2 < listQueryIntentActivities.size(); i2++) {
            if (!listQueryIntentActivities.get(i2).toString().toLowerCase().contains("disabled")) {
                i = 1;
            }
        }
        try {
            if (isMockLocationEnabled(this)) {
                Log.e("fakeGPS", "--- mock locations: enabled");
                setButtonPermissionEnabled(linearLayout, 1);
                setButtonPermissionEnabled(linearLayout2, 1);
                z = false;
            } else {
                Log.e("fakeGPS", "--- mock locations: disabled");
                if (!listQueryIntentActivities.isEmpty()) {
                    Log.e("GPS", "lista" + listQueryIntentActivities.toString());
                    if (i != 0) {
                        setButtonPermissionEnabled(linearLayout, 1);
                        setButtonPermissionEnabled(linearLayout2, 0);
                    } else {
                        setButtonPermissionEnabled(linearLayout, 4);
                        setButtonPermissionEnabled(linearLayout2, 0);
                    }
                } else {
                    setButtonPermissionEnabled(linearLayout, i);
                    setButtonPermissionEnabled(linearLayout2, 0);
                }
                z = true;
            }
        } catch (Exception e) {
            Log.e("fakeGPS", "--- mock locations: error");
            Log.e("fakeGPS", e.getMessage());
            setButtonPermissionEnabled(linearLayout, i);
            setButtonPermissionEnabled(linearLayout2, 0);
        }
        if (Build.VERSION.SDK_INT >= 33) {
            linearLayout5.setVisibility(0);
            if (ContextCompat.checkSelfPermission(this, "android.permission.POST_NOTIFICATIONS") != 0) {
                setButtonPermissionEnabled(linearLayout5, 3);
            } else {
                setButtonPermissionEnabled(linearLayout5, 1);
            }
        } else {
            linearLayout5.setVisibility(8);
        }
        if (ContextCompat.checkSelfPermission(this, "android.permission.ACCESS_FINE_LOCATION") != 0) {
            setButtonPermissionEnabled(linearLayout3, 0);
            z = true;
        } else {
            setButtonPermissionEnabled(linearLayout3, 1);
        }
        if (isPowerRestricted()) {
            setButtonPermissionEnabled(linearLayout4, 3);
        } else {
            setButtonPermissionEnabled(linearLayout4, 1);
        }
        button.setEnabled(!z);
        return z;
    }

    private void setButtonPermissionEnabled(LinearLayout linearLayout, int i) {
        if (i == 0) {
            linearLayout.setBackground(getDrawable(R.drawable.fondoredondo));
            ((TextView) ((LinearLayout) linearLayout.getChildAt(0)).getChildAt(0)).setTextColor(Color.parseColor("#FFFFFF"));
            ((TextView) ((LinearLayout) linearLayout.getChildAt(0)).getChildAt(1)).setVisibility(8);
            ((ImageView) linearLayout.getChildAt(1)).setImageResource(R.drawable.checked_error);
            linearLayout.setEnabled(true);
            return;
        }
        if (i == 1) {
            linearLayout.setBackground(null);
            ((TextView) ((LinearLayout) linearLayout.getChildAt(0)).getChildAt(0)).setTextColor(getResources().getColor(R.color.gris_unselected));
            ((TextView) ((LinearLayout) linearLayout.getChildAt(0)).getChildAt(1)).setVisibility(8);
            ((ImageView) linearLayout.getChildAt(1)).setImageResource(R.drawable.ic_check);
            linearLayout.setEnabled(true);
            return;
        }
        if (i == 2) {
            linearLayout.setBackground(getDrawable(R.drawable.fondoredondogris));
            ((TextView) ((LinearLayout) linearLayout.getChildAt(0)).getChildAt(0)).setTextColor(Color.parseColor("#FFFFFF"));
            ((ImageView) linearLayout.getChildAt(1)).setImageResource(R.drawable.checked_error);
            linearLayout.setEnabled(false);
            return;
        }
        if (i == 3) {
            linearLayout.setBackground(getDrawable(R.drawable.fondoredondo));
            ((TextView) ((LinearLayout) linearLayout.getChildAt(0)).getChildAt(0)).setTextColor(Color.parseColor("#FFFFFF"));
            ((TextView) ((LinearLayout) linearLayout.getChildAt(0)).getChildAt(1)).setVisibility(0);
            ((ImageView) linearLayout.getChildAt(1)).setImageResource(R.drawable.checked_error);
            linearLayout.setEnabled(true);
            return;
        }
        if (i == 4) {
            linearLayout.setBackground(getDrawable(R.drawable.fondoredondo));
            ((TextView) ((LinearLayout) linearLayout.getChildAt(0)).getChildAt(0)).setTextColor(Color.parseColor("#FFFFFF"));
            ((TextView) ((LinearLayout) linearLayout.getChildAt(0)).getChildAt(1)).setVisibility(0);
            ((TextView) ((LinearLayout) linearLayout.getChildAt(0)).getChildAt(1)).setText("unknown");
            ((ImageView) linearLayout.getChildAt(1)).setImageResource(R.drawable.checked_error);
            linearLayout.setEnabled(true);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void onStopButtonClick(View view) {
        if (this.modoApp != 1) {
            Log.e("onStop", "va unity interstitial...");
            if (!this.noAds && splashNow() && this.unityStopReady) {
                setAdBlock();
                UnityAds.show(this, this.stopId, new UnityAdsShowOptions(), (IUnityAdsShowListener) null);
            }
        }
        onStopClickStep2(true);
    }

    public void onStopClickStep2(final boolean z) {
        Log.e("onStop 2", "en modo ruta: " + this.modoApp);
        if (this.modoApp == 1) {
            Polyline polyline = this.polyline1;
            if (polyline != null && !polyline.getPoints().isEmpty()) {
                new AlertDialog.Builder(this.ctw, R.style.CustomAlertDialog).setTitle(R.string.discard_route).setMessage(R.string.discard_question).setPositiveButton(R.string.discard, new DialogInterface.OnClickListener() { // from class: com.rosteam.gpsemulator.MainActivity.31
                    @Override // android.content.DialogInterface.OnClickListener
                    public void onClick(DialogInterface dialogInterface, int i) {
                        if (MainActivity.this.polyline1 != null) {
                            MainActivity.this.polyline1.remove();
                        }
                        if (MainActivity.this.polylinePending != null) {
                            MainActivity.this.polylinePending.remove();
                        }
                        if (MainActivity.this.miCirculo != null) {
                            MainActivity.this.miCirculo.remove();
                        }
                        MainActivity.this.miCirculo = null;
                        MainActivity.this.favButton.setImageResource(R.drawable.botonfav);
                        MainActivity.this.favButton.setEnabled(false);
                        MainActivity.this.undoButton.setEnabled(false);
                        MainActivity.this.undoButton.setVisibility(4);
                        MainActivity.this.stopButton.setEnabled(false);
                        MainActivity.this.modoApp = 0;
                        ((LinearLayout) MainActivity.this.findViewById(R.id.createRouteLyt)).setVisibility(8);
                    }
                }).setNegativeButton(R.string.cancel, new DialogInterface.OnClickListener() { // from class: com.rosteam.gpsemulator.MainActivity.30
                    @Override // android.content.DialogInterface.OnClickListener
                    public void onClick(DialogInterface dialogInterface, int i) {
                    }
                }).show();
                return;
            }
            Polyline polyline2 = this.polyline1;
            if (polyline2 != null) {
                polyline2.remove();
            }
            Polyline polyline3 = this.polylinePending;
            if (polyline3 != null) {
                polyline3.remove();
            }
            Circle circle = this.miCirculo;
            if (circle != null) {
                circle.remove();
            }
            this.miCirculo = null;
            this.favButton.setImageResource(R.drawable.botonfav);
            this.favButton.setEnabled(false);
            this.undoButton.setEnabled(false);
            this.undoButton.setVisibility(4);
            this.stopButton.setEnabled(false);
            this.modoApp = 0;
            ((LinearLayout) findViewById(R.id.createRouteLyt)).setVisibility(8);
            return;
        }
        this.mRequestIntent.setAction(LocationUtils.ACTION_STOP_TEST_MAIN);
        try {
            if (isMyServiceRunning(servicex2484.class)) {
                startService(this.mRequestIntent);
            }
        } catch (Exception unused) {
        }
        new Handler().postDelayed(new Runnable() { // from class: com.rosteam.gpsemulator.MainActivity.32
            @Override // java.lang.Runnable
            public void run() {
                if (MainActivity.this.polyline1 != null) {
                    MainActivity.this.polyline1.remove();
                }
                MainActivity.this.polyline1 = null;
                if (MainActivity.this.miCirculo != null) {
                    MainActivity.this.miCirculo.remove();
                }
                MainActivity.this.miCirculo = null;
                MainActivity.this.stoptimertask();
                MainActivity.this.startButton.setImageResource(R.drawable.botonset);
                MainActivity.this.stopButton.setEnabled(false);
                MainActivity.this.startButton.setEnabled(true);
                MainActivity.this.favButton.setEnabled(false);
                MainActivity.this.favButton.setHapticFeedbackEnabled(false);
                MainActivity.this.favButton.setImageResource(R.drawable.botonfav);
                MainActivity.this.modoApp = 0;
                if (MainActivity.this.currentMark != null) {
                    Log.e("STOP|", "marker no es null");
                    MainActivity.this.currentMark.remove();
                    MainActivity.this.currentMark = null;
                    if (z) {
                        MainActivity.this.miToast(R.string.location_cheater_stopped, 1);
                    }
                }
            }
        }, 200L);
    }

    public void onFavButtonClick(View view) {
        int i = this.modoApp;
        if (i != 0) {
            if (i != 1) {
                if (i == 2 || i == 3) {
                    new AlertDialog.Builder(this.ctw, R.style.CustomAlertDialog).setTitle(R.string.delete_route).setMessage(R.string.delete_route_question).setPositiveButton(R.string.delete, new DialogInterface.OnClickListener() { // from class: com.rosteam.gpsemulator.MainActivity.44
                        @Override // android.content.DialogInterface.OnClickListener
                        public void onClick(DialogInterface dialogInterface, int i2) {
                            MainActivity.this.modoApp = 0;
                            ArrayList<RegUbic> arrayList = (ArrayList) MainActivity.this.rutas.clone();
                            arrayList.remove(0);
                            for (int i3 = 0; i3 < arrayList.size(); i3++) {
                                if (arrayList.get(i3).puntos.equals(MainActivity.this.currentRoute.puntos)) {
                                    arrayList.remove(i3);
                                    break;
                                }
                            }
                            MainActivity.this.rewriteRutasEnPrefs(arrayList);
                            MainActivity.this.onStopClickStep2(true);
                            MainActivity.this.loadRutasFromPref();
                            MainActivity.this.loadPinned();
                            if (MainActivity.this.miPinnedAdapter != null) {
                                MainActivity.this.miPinnedAdapter.notifyDataSetChanged();
                            }
                            if (MainActivity.this.pinedClosed) {
                                return;
                            }
                            MainActivity.this.pinedClosed = true;
                            MainActivity.this.switchPinnedList(true, 60);
                        }
                    }).setNegativeButton(R.string.cancel, new DialogInterface.OnClickListener() { // from class: com.rosteam.gpsemulator.MainActivity.43
                        @Override // android.content.DialogInterface.OnClickListener
                        public void onClick(DialogInterface dialogInterface, int i2) {
                        }
                    }).show();
                    return;
                }
                return;
            }
            View viewInflate = getLayoutInflater().inflate(R.layout.addroute_layout, (ViewGroup) null);
            final EditText editText = (EditText) viewInflate.findViewById(R.id.edit_name);
            loadRutasFromPref();
            int i2 = this.modoRuta;
            if (i2 == 102 || i2 == RUTA_CIRCULO_READYTOSAVE) {
                editText.setText(String.format(getResources().getString(R.string.circlenro), Integer.valueOf(this.rutas.size())));
            } else {
                editText.setText(getString(R.string.route) + this.rutas.size());
            }
            editText.setInputType(UserMetadata.MAX_INTERNAL_KEY_SIZE);
            editText.setTextColor(getResources().getColor(R.color.edit_text));
            new AlertDialog.Builder(this.ctw, R.style.CustomAlertDialog).setTitle(R.string.save_route).setView(viewInflate).setPositiveButton(android.R.string.ok, new DialogInterface.OnClickListener() { // from class: com.rosteam.gpsemulator.MainActivity.40
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i3) {
                    List<LatLng> listGenerateCirclePoints;
                    String strReplace = editText.getText().toString().replace("+", " ");
                    MainActivity.this.modoApp = 2;
                    MainActivity.this.undoButton.setEnabled(false);
                    MainActivity.this.favButton.setImageResource(R.drawable.botondelete);
                    MainActivity.this.undoButton.setVisibility(4);
                    MainActivity.this.startButton.setImageResource(R.drawable.ic_play);
                    MainActivity.this.imm.hideSoftInputFromWindow(editText.getWindowToken(), 0);
                    MainActivity.this.findViewById(R.id.createRouteLyt).setVisibility(8);
                    if (MainActivity.this.modoRuta == 102 || MainActivity.this.modoRuta == MainActivity.RUTA_CIRCULO_READYTOSAVE) {
                        listGenerateCirclePoints = LocationUtils.generateCirclePoints(MainActivity.this.miCirculo.getCenter(), MainActivity.this.miCirculo.getRadius());
                    } else {
                        listGenerateCirclePoints = MainActivity.this.polyline1.getPoints();
                    }
                    if (MainActivity.this.polylinePending != null) {
                        MainActivity.this.polylinePending.remove();
                    }
                    String strRutaToString = LocationUtils.rutaToString(listGenerateCirclePoints, strReplace, 1, MainActivity.this.map.getCameraPosition().zoom, MainActivity.this.map.getCameraPosition().bearing);
                    MainActivity mainActivity = MainActivity.this;
                    mainActivity.currentRuta = mainActivity.rutaToPrefs(strRutaToString, mainActivity.rutas.size() - 1);
                    MainActivity.this.loadRutasFromPref();
                    MainActivity mainActivity2 = MainActivity.this;
                    mainActivity2.currentRoute = mainActivity2.rutas.get(MainActivity.this.rutas.size() - 1);
                    LatLngBounds.Builder builder = new LatLngBounds.Builder();
                    Iterator<LatLng> it = listGenerateCirclePoints.iterator();
                    while (it.hasNext()) {
                        builder.include(it.next());
                    }
                    MainActivity.this.map.animateCamera(CameraUpdateFactory.newLatLngBounds(builder.build(), 80), 1000, (GoogleMap.CancelableCallback) null);
                    if (MainActivity.this.rutas.size() == 1) {
                        MainActivity mainActivity3 = MainActivity.this;
                        mainActivity3.miToast(mainActivity3.getString(R.string.ruta_paso_final), 2);
                    } else {
                        MainActivity mainActivity4 = MainActivity.this;
                        mainActivity4.miToast(mainActivity4.getString(R.string.ruta_paso_ruta_guardada), 2);
                    }
                }
            }).setNegativeButton(android.R.string.cancel, new DialogInterface.OnClickListener() { // from class: com.rosteam.gpsemulator.MainActivity.39
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i3) {
                    MainActivity.this.imm.hideSoftInputFromWindow(editText.getWindowToken(), 0);
                    if (MainActivity.this.modoRuta == MainActivity.RUTA_CIRCULO_READYTOSAVE) {
                        MainActivity.this.modoRuta = 102;
                    }
                }
            }).setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.rosteam.gpsemulator.MainActivity.38
                @Override // android.content.DialogInterface.OnCancelListener
                public void onCancel(DialogInterface dialogInterface) {
                    MainActivity.this.imm.hideSoftInputFromWindow(editText.getWindowToken(), 0);
                    if (MainActivity.this.modoRuta == MainActivity.RUTA_CIRCULO_READYTOSAVE) {
                        MainActivity.this.modoRuta = 102;
                    }
                }
            }).show();
            new Handler().postDelayed(new Runnable() { // from class: com.rosteam.gpsemulator.MainActivity.41
                @Override // java.lang.Runnable
                public void run() {
                    editText.requestFocus();
                    editText.selectAll();
                }
            }, 200L);
            runOnUiThread(new Runnable() { // from class: com.rosteam.gpsemulator.MainActivity.42
                @Override // java.lang.Runnable
                public void run() {
                    new Handler().postDelayed(new Runnable() { // from class: com.rosteam.gpsemulator.MainActivity.42.1
                        @Override // java.lang.Runnable
                        public void run() {
                            MainActivity.this.imm.toggleSoftInput(2, 0);
                        }
                    }, 250L);
                }
            });
            return;
        }
        if (this.favButton.isHapticFeedbackEnabled()) {
            this.favButton.setImageResource(R.drawable.botonfav);
            this.favButton.setHapticFeedbackEnabled(false);
            if (!this.favorites.isEmpty()) {
                this.favorites.remove(0);
            }
            favsToPrefs();
            miToast(R.string.favorite_deleted, 1);
            if (this.pinedClosed) {
                return;
            }
            this.pinedClosed = true;
            switchPinnedList(true, 60);
            return;
        }
        if (this.favorites.size() < this.numerofavoritos) {
            this.favButton.setHapticFeedbackEnabled(true);
            this.favButton.setImageResource(R.drawable.botonfavchecked);
            View viewInflate2 = getLayoutInflater().inflate(R.layout.addfav_layout, (ViewGroup) null);
            final EditText editText2 = (EditText) viewInflate2.findViewById(R.id.edit_name);
            RegUbic regUbic = this.ultimaUbic;
            editText2.setText(regUbic != null ? regUbic.ciudadpais : TtmlNode.ANONYMOUS_REGION_ID);
            editText2.setInputType(UserMetadata.MAX_INTERNAL_KEY_SIZE);
            editText2.setTextColor(getResources().getColor(R.color.edit_text));
            new AlertDialog.Builder(this.ctw, R.style.CustomAlertDialog).setTitle(getString(R.string.add_to_favs)).setView(viewInflate2).setPositiveButton(android.R.string.ok, new DialogInterface.OnClickListener() { // from class: com.rosteam.gpsemulator.MainActivity.35
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i3) {
                    MainActivity.this.ultimaUbic.ciudadpais = editText2.getText().toString().replace("+", " ");
                    if (!MainActivity.this.favorites.isEmpty()) {
                        MainActivity.this.favorites.add(0, MainActivity.this.ultimaUbic);
                    } else {
                        MainActivity.this.favorites.add(MainActivity.this.ultimaUbic);
                    }
                    MainActivity.this.favsToPrefs();
                    MainActivity.this.stopButton.setEnabled(true);
                    MainActivity.this.startButton.setEnabled(true);
                    MainActivity.this.imm.hideSoftInputFromWindow(editText2.getWindowToken(), 0);
                }
            }).setNegativeButton(android.R.string.cancel, new DialogInterface.OnClickListener() { // from class: com.rosteam.gpsemulator.MainActivity.34
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i3) {
                    MainActivity.this.favButton.setHapticFeedbackEnabled(false);
                    MainActivity.this.favButton.setImageResource(R.drawable.botonfav);
                    MainActivity.this.imm.hideSoftInputFromWindow(editText2.getWindowToken(), 0);
                }
            }).setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.rosteam.gpsemulator.MainActivity.33
                @Override // android.content.DialogInterface.OnCancelListener
                public void onCancel(DialogInterface dialogInterface) {
                    MainActivity.this.favButton.setHapticFeedbackEnabled(false);
                    MainActivity.this.favButton.setImageResource(R.drawable.botonfav);
                    MainActivity.this.imm.hideSoftInputFromWindow(editText2.getWindowToken(), 0);
                }
            }).show();
            new Handler().postDelayed(new Runnable() { // from class: com.rosteam.gpsemulator.MainActivity.36
                @Override // java.lang.Runnable
                public void run() {
                    editText2.requestFocus();
                    editText2.selectAll();
                }
            }, 200L);
            runOnUiThread(new Runnable() { // from class: com.rosteam.gpsemulator.MainActivity.37
                @Override // java.lang.Runnable
                public void run() {
                    new Handler().postDelayed(new Runnable() { // from class: com.rosteam.gpsemulator.MainActivity.37.1
                        @Override // java.lang.Runnable
                        public void run() {
                            MainActivity.this.imm.toggleSoftInput(2, 0);
                        }
                    }, 250L);
                }
            });
            return;
        }
        miToast(getResources().getString(R.string.only_n_favs, Integer.valueOf(this.numerofavoritos)), 2);
    }

    public void onManualRouteClick(final View view) {
        if (this.modoRuta == 102 && this.miCirculo != null) {
            new AlertDialog.Builder(this.ctw, R.style.CustomAlertDialog).setTitle(R.string.discard_route).setMessage(R.string.discard_question).setPositiveButton(R.string.discard, new DialogInterface.OnClickListener() { // from class: com.rosteam.gpsemulator.MainActivity.46
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i) {
                    MainActivity.this.miCirculo.remove();
                    MainActivity.this.miCirculo = null;
                    MainActivity.this.setManualMode(view);
                }
            }).setNegativeButton(R.string.cancel, new DialogInterface.OnClickListener() { // from class: com.rosteam.gpsemulator.MainActivity.45
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i) {
                }
            }).show();
        } else {
            setManualMode(view);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setManualMode(View view) {
        this.modoRuta = 100;
        View viewFindViewById = ((ViewGroup) view.getParent()).findViewById(R.id.circle_route);
        View viewFindViewById2 = ((ViewGroup) view.getParent()).findViewById(R.id.automatic_route);
        view.setBackground(getDrawable(R.drawable.fondoredondo));
        viewFindViewById.setBackground(null);
        viewFindViewById2.setBackground(null);
        ViewGroup viewGroup = (ViewGroup) view.getParent().getParent().getParent();
        viewGroup.findViewById(R.id.textoManual).setVisibility(0);
        viewGroup.findViewById(R.id.textoCircle).setVisibility(8);
        viewGroup.findViewById(R.id.textoAutomatic).setVisibility(8);
        viewGroup.findViewById(R.id.contenidoAutomatic).setVisibility(4);
    }

    public void onCircleClick(final View view) {
        Polyline polyline;
        int i = this.modoRuta;
        if ((i == 100 || i == 101) && (polyline = this.polyline1) != null && !polyline.getPoints().isEmpty()) {
            new AlertDialog.Builder(this.ctw, R.style.CustomAlertDialog).setTitle(R.string.discard_route).setMessage(R.string.discard_question).setPositiveButton(R.string.discard, new DialogInterface.OnClickListener() { // from class: com.rosteam.gpsemulator.MainActivity.48
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i2) {
                    if (MainActivity.this.polyline1 != null) {
                        MainActivity.this.polyline1.remove();
                    }
                    if (MainActivity.this.polylinePending != null) {
                        MainActivity.this.polylinePending.remove();
                    }
                    MainActivity.this.polyline1 = null;
                    MainActivity.this.setCircleMode(view);
                }
            }).setNegativeButton(R.string.cancel, new DialogInterface.OnClickListener() { // from class: com.rosteam.gpsemulator.MainActivity.47
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i2) {
                }
            }).show();
        } else {
            setCircleMode(view);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setCircleMode(View view) {
        this.modoRuta = 102;
        this.favButton.setEnabled(false);
        View viewFindViewById = ((ViewGroup) view.getParent()).findViewById(R.id.manual_route);
        View viewFindViewById2 = ((ViewGroup) view.getParent()).findViewById(R.id.automatic_route);
        view.setBackground(getDrawable(R.drawable.fondoredondo));
        viewFindViewById.setBackground(null);
        viewFindViewById2.setBackground(null);
        ViewGroup viewGroup = (ViewGroup) view.getParent().getParent().getParent();
        viewGroup.findViewById(R.id.textoManual).setVisibility(8);
        viewGroup.findViewById(R.id.textoCircle).setVisibility(0);
        viewGroup.findViewById(R.id.textoAutomatic).setVisibility(8);
        viewGroup.findViewById(R.id.contenidoAutomatic).setVisibility(4);
    }

    public void onAutomaticRouteClick(final View view) {
        if (this.modoRuta == 102 && this.miCirculo != null) {
            new AlertDialog.Builder(this.ctw, R.style.CustomAlertDialog).setTitle(R.string.discard_route).setMessage(R.string.discard_question).setPositiveButton(R.string.discard, new DialogInterface.OnClickListener() { // from class: com.rosteam.gpsemulator.MainActivity.50
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i) {
                    MainActivity.this.miCirculo.remove();
                    MainActivity.this.miCirculo = null;
                    MainActivity.this.setAutomaticMode(view);
                }
            }).setNegativeButton(R.string.cancel, new DialogInterface.OnClickListener() { // from class: com.rosteam.gpsemulator.MainActivity.49
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i) {
                }
            }).show();
        } else {
            setAutomaticMode(view);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setAutomaticMode(final View view) {
        switchAtuomatic(view);
    }

    public void switchAtuomatic(View view) {
        this.modoRuta = 101;
        View viewFindViewById = ((ViewGroup) view.getParent()).findViewById(R.id.manual_route);
        View viewFindViewById2 = ((ViewGroup) view.getParent()).findViewById(R.id.circle_route);
        view.setBackground(getDrawable(R.drawable.fondoredondo));
        viewFindViewById.setBackground(null);
        viewFindViewById2.setBackground(null);
        ViewGroup viewGroup = (ViewGroup) view.getParent().getParent().getParent();
        viewGroup.findViewById(R.id.textoManual).setVisibility(8);
        viewGroup.findViewById(R.id.textoCircle).setVisibility(8);
        viewGroup.findViewById(R.id.textoAutomatic).setVisibility(0);
        viewGroup.findViewById(R.id.contenidoAutomatic).setVisibility(0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void onRewardedClick(final View view) {
        RewardedAd rewardedAd = this.rewardedAd;
        if (rewardedAd != null) {
            rewardedAd.setFullScreenContentCallback(new FullScreenContentCallback() { // from class: com.rosteam.gpsemulator.MainActivity.53
                public void onAdClicked() {
                }

                public void onAdImpression() {
                }

                public void onAdShowedFullScreenContent() {
                }

                public void onAdDismissedFullScreenContent() {
                    Log.e("Rewarded", "Ad dismissed fullscreen content.");
                    MainActivity.this.rewardedAd = null;
                    MainActivity.this.cargarRewarded();
                }

                public void onAdFailedToShowFullScreenContent(com.google.android.gms.ads.AdError adError) {
                    MainActivity.this.rewardedAd = null;
                }
            });
            setAdBlock();
            this.rewardedAd.show(this, new OnUserEarnedRewardListener() { // from class: com.rosteam.gpsemulator.MainActivity.54
                public void onUserEarnedReward(RewardItem rewardItem) {
                    Log.e("Rewarded", "The user earned the reward.");
                    TextView textView = (TextView) ((ViewGroup) view.getParent().getParent().getParent()).findViewById(R.id.automatic_route);
                    MainActivity.this.rewardedAutomaticRoutes = 3;
                    textView.setText(String.format("%s (%d)", MainActivity.this.getResources().getString(R.string.automatic), Integer.valueOf(MainActivity.this.rewardedAutomaticRoutes)));
                    MainActivity.this.unsetRewardedNow();
                    MainActivity.this.switchAtuomatic(view);
                }
            });
            return;
        }
        switchAtuomatic(view);
    }

    public void onWalkingClick(View view) {
        this.modoAutomatic = MODO_WALKING;
        View childAt = ((ViewGroup) view.getParent()).getChildAt(0);
        ((ImageView) view).setColorFilter(getResources().getColor(R.color.colorAccent));
        ((ImageView) childAt).setColorFilter(Color.parseColor("#999999"));
    }

    public void onDrivingClick(View view) {
        this.modoAutomatic = MODO_DRIVING;
        View childAt = ((ViewGroup) view.getParent()).getChildAt(1);
        ((ImageView) view).setColorFilter(getResources().getColor(R.color.colorAccent));
        ((ImageView) childAt).setColorFilter(Color.parseColor("#999999"));
    }

    public void onCalculateRoute(LatLng latLng, LatLng latLng2) {
        new FetchUrl().execute(getUrlMapbox(latLng, latLng2));
    }

    public String getUrl(LatLng latLng, LatLng latLng2) {
        return "https://maps.googleapis.com/maps/api/directions/json?origin=" + latLng.latitude + "," + latLng.longitude + "&destination=" + latLng2.latitude + "," + latLng2.longitude + "&sensor=false" + (this.modoAutomatic == MODO_WALKING ? "&mode=walking" : "&mode=driving") + "&key=AIzaSyBnqca301BLnXE--vOX_lTJWJwY2IrrSSA";
    }

    public String getUrlMapbox(LatLng latLng, LatLng latLng2) {
        return "https://api.mapbox.com/directions/v5/mapbox/" + (this.modoAutomatic == MODO_WALKING ? "walking/" : "driving/") + latLng.longitude + "," + latLng.latitude + ";" + latLng2.longitude + "," + latLng2.latitude + "?alternatives=false&continue_straight=true&geometries=geojson&language=en&overview=full&steps=false&exclude=ferry&access_token=pk.eyJ1IjoiZGlnaXRvb2xzIiwiYSI6ImNtOWs1ZDdtbDBqZXoyaXB4dDNmdGZncGEifQ.xBliBeXmlNZGg83fbCj3MQ";
    }

    private class FetchUrl extends AsyncTask<String, Void, String> {
        AlertDialog calculatingRouteDialog;

        private FetchUrl() {
            this.calculatingRouteDialog = new AlertDialog.Builder((Activity) MainActivity.this.context, R.style.CustomAlertDialog).setTitle(R.string.calculating_route).setMessage(R.string.wait).setCancelable(false).create();
        }

        @Override // android.os.AsyncTask
        protected void onPreExecute() {
            this.calculatingRouteDialog.show();
            super.onPreExecute();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public String doInBackground(String... strArr) throws Throwable {
            String strDownloadUrl = TtmlNode.ANONYMOUS_REGION_ID;
            try {
                strDownloadUrl = MainActivity.this.downloadUrl(strArr[0]);
                Log.e("Background Task data", strDownloadUrl.toString());
            } catch (Exception e) {
                Log.e("Background Task", e.toString());
            }
            try {
                Thread.sleep(1400L);
            } catch (InterruptedException unused) {
            }
            return strDownloadUrl;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public void onPostExecute(String str) {
            super.onPostExecute(str);
            this.calculatingRouteDialog.dismiss();
            new ParserTask().execute(str);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String downloadUrl(String str) throws Throwable {
        HttpURLConnection httpURLConnection;
        String string = TtmlNode.ANONYMOUS_REGION_ID;
        InputStream inputStream = null;
        try {
            httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
            try {
                try {
                    httpURLConnection.connect();
                    inputStream = httpURLConnection.getInputStream();
                    BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream));
                    StringBuffer stringBuffer = new StringBuffer();
                    while (true) {
                        String line = bufferedReader.readLine();
                        if (line != null) {
                            stringBuffer.append(line);
                        } else {
                            string = stringBuffer.toString();
                            Log.e("downloadUrl", string.toString());
                            bufferedReader.close();
                            inputStream.close();
                            httpURLConnection.disconnect();
                            return string;
                        }
                        th = th;
                        inputStream.close();
                        httpURLConnection.disconnect();
                        throw th;
                    }
                } catch (Exception e) {
                    e = e;
                    Log.e("Exception", e.toString());
                    inputStream.close();
                    httpURLConnection.disconnect();
                    return string;
                }
            } catch (Throwable th) {
                th = th;
            }
        } catch (Exception e2) {
            e = e2;
            httpURLConnection = null;
        } catch (Throwable th2) {
            th = th2;
            httpURLConnection = null;
        }
    }

    private class ParserTask extends AsyncTask<String, Integer, List<List<HashMap<String, String>>>> {
        private ParserTask() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public List<List<HashMap<String, String>>> doInBackground(String... strArr) {
            List<List<HashMap<String, String>>> list = null;
            try {
                JSONObject jSONObject = new JSONObject(strArr[0]);
                Log.e("ParserTask", strArr[0].toString());
                DataParserMapBox dataParserMapBox = MainActivity.this.new DataParserMapBox();
                Log.e("ParserTask", dataParserMapBox.toString());
                list = dataParserMapBox.parse(jSONObject);
                Log.e("ParserTask", "Executing routes");
                Log.e("ParserTask", list.toString());
                return list;
            } catch (Exception e) {
                Log.e("ParserTask", e.toString());
                e.printStackTrace();
                return list;
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public void onPostExecute(List<List<HashMap<String, String>>> list) {
            ArrayList arrayList = new ArrayList();
            for (int i = 0; i < list.size(); i++) {
                List<HashMap<String, String>> list2 = list.get(i);
                for (int i2 = 0; i2 < list2.size(); i2++) {
                    HashMap<String, String> map = list2.get(i2);
                    arrayList.add(new LatLng(Double.parseDouble(map.get("lat")), Double.parseDouble(map.get("lng"))));
                }
            }
            List points = MainActivity.this.polyline1.getPoints();
            List points2 = MainActivity.this.polylinePending.getPoints();
            if (!arrayList.isEmpty()) {
                points.addAll(arrayList);
                MainActivity.this.polyline1.setPoints(points);
            } else {
                MainActivity mainActivity = MainActivity.this;
                mainActivity.miToast(mainActivity.getString(R.string.theres_no_route), 2);
            }
            points2.set(0, (LatLng) points.get(points.size() - 1));
            points2.set(1, new LatLng(MainActivity.this.map.getCameraPosition().target.latitude, MainActivity.this.map.getCameraPosition().target.longitude));
            MainActivity.this.polylinePending.setPoints(points2);
        }
    }

    class DataParser {
        DataParser() {
        }

        List<List<HashMap<String, String>>> parse(JSONObject jSONObject) {
            ArrayList arrayList = new ArrayList();
            try {
                JSONArray jSONArray = jSONObject.getJSONArray("routes");
                for (int i = 0; i < jSONArray.length(); i++) {
                    JSONArray jSONArray2 = ((JSONObject) jSONArray.get(i)).getJSONArray("legs");
                    ArrayList arrayList2 = new ArrayList();
                    for (int i2 = 0; i2 < jSONArray2.length(); i2++) {
                        JSONArray jSONArray3 = ((JSONObject) jSONArray2.get(i2)).getJSONArray("steps");
                        for (int i3 = 0; i3 < jSONArray3.length(); i3++) {
                            List<LatLng> listDecodePoly = decodePoly((String) ((JSONObject) ((JSONObject) jSONArray3.get(i3)).get("polyline")).get("points"));
                            for (int i4 = 0; i4 < listDecodePoly.size(); i4++) {
                                HashMap map = new HashMap();
                                map.put("lat", Double.toString(listDecodePoly.get(i4).latitude));
                                map.put("lng", Double.toString(listDecodePoly.get(i4).longitude));
                                arrayList2.add(map);
                            }
                        }
                        arrayList.add(arrayList2);
                    }
                }
            } catch (JSONException e) {
                e.printStackTrace();
            } catch (Exception unused) {
            }
            return arrayList;
        }

        private List<LatLng> decodePoly(String str) {
            int i;
            int i2;
            ArrayList arrayList = new ArrayList();
            int length = str.length();
            int i3 = 0;
            int i4 = 0;
            int i5 = 0;
            while (i3 < length) {
                int i6 = 0;
                int i7 = 0;
                while (true) {
                    i = i3 + 1;
                    int iCharAt = str.charAt(i3) - '?';
                    i6 |= (iCharAt & 31) << i7;
                    i7 += 5;
                    if (iCharAt < 32) {
                        break;
                    }
                    i3 = i;
                }
                int i8 = ((i6 & 1) != 0 ? ~(i6 >> 1) : i6 >> 1) + i4;
                int i9 = 0;
                int i10 = 0;
                while (true) {
                    i2 = i + 1;
                    int iCharAt2 = str.charAt(i) - '?';
                    i9 |= (iCharAt2 & 31) << i10;
                    i10 += 5;
                    if (iCharAt2 < 32) {
                        break;
                    }
                    i = i2;
                }
                int i11 = i9 & 1;
                int i12 = i9 >> 1;
                if (i11 != 0) {
                    i12 = ~i12;
                }
                i5 += i12;
                arrayList.add(new LatLng(((double) i8) / 100000.0d, ((double) i5) / 100000.0d));
                i4 = i8;
                i3 = i2;
            }
            return arrayList;
        }
    }

    class DataParserMapBox {
        DataParserMapBox() {
        }

        List<List<HashMap<String, String>>> parse(JSONObject jSONObject) {
            ArrayList arrayList = new ArrayList();
            try {
                JSONArray jSONArray = jSONObject.getJSONArray("routes");
                Log.e("routes", "tamaño: " + jSONArray.length());
                if (jSONArray.length() > 0) {
                    JSONArray jSONArray2 = ((JSONObject) jSONArray.get(0)).getJSONObject("geometry").getJSONArray("coordinates");
                    ArrayList arrayList2 = new ArrayList();
                    Log.e("geometry coords", "tamaño: " + jSONArray2.length());
                    for (int i = 0; i < jSONArray2.length(); i++) {
                        HashMap map = new HashMap();
                        map.put("lat", Double.toString(((Double) ((JSONArray) jSONArray2.get(i)).get(1)).doubleValue()));
                        map.put("lng", Double.toString(((Double) ((JSONArray) jSONArray2.get(i)).get(0)).doubleValue()));
                        arrayList2.add(map);
                    }
                    arrayList.add(arrayList2);
                    return arrayList;
                }
            } catch (JSONException e) {
                e.printStackTrace();
            } catch (Exception unused) {
            }
            return arrayList;
        }

        private List<LatLng> decodePoly(String str) {
            int i;
            int i2;
            ArrayList arrayList = new ArrayList();
            int length = str.length();
            int i3 = 0;
            int i4 = 0;
            int i5 = 0;
            while (i3 < length) {
                int i6 = 0;
                int i7 = 0;
                while (true) {
                    i = i3 + 1;
                    int iCharAt = str.charAt(i3) - '?';
                    i6 |= (iCharAt & 31) << i7;
                    i7 += 5;
                    if (iCharAt < 32) {
                        break;
                    }
                    i3 = i;
                }
                int i8 = ((i6 & 1) != 0 ? ~(i6 >> 1) : i6 >> 1) + i4;
                int i9 = 0;
                int i10 = 0;
                while (true) {
                    i2 = i + 1;
                    int iCharAt2 = str.charAt(i) - '?';
                    i9 |= (iCharAt2 & 31) << i10;
                    i10 += 5;
                    if (iCharAt2 < 32) {
                        break;
                    }
                    i = i2;
                }
                int i11 = i9 & 1;
                int i12 = i9 >> 1;
                if (i11 != 0) {
                    i12 = ~i12;
                }
                i5 += i12;
                arrayList.add(new LatLng(((double) i8) / 100000.0d, ((double) i5) / 100000.0d));
                i4 = i8;
                i3 = i2;
            }
            return arrayList;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void searchPlace(String str, int i) {
        Log.e("GPS", "Search...");
        Matcher matcher = Pattern.compile("[-+]?\\d{1,3}([.]\\d+)?, *[-+]?\\d{1,3}([.]\\d+)?").matcher(str);
        Matcher matcher2 = Pattern.compile("[-+]?\\d{1,3}([.]\\d+)?、*[-+]?\\d{1,3}([.]\\d+)?").matcher(str);
        if (matcher.matches()) {
            Log.e("GPS", "es longitud y latitud " + matcher.group());
            moveTo(new LatLng(Float.valueOf(matcher.group().split(",")[0]).floatValue(), Float.valueOf(matcher.group().split(",")[1]).floatValue()), 12.0f, 0.0f);
            return;
        }
        if (matcher2.matches()) {
            Log.e("GPS", "es longitud y latitud COMMA JP " + matcher2.group());
            moveTo(new LatLng(Float.valueOf(matcher2.group().split("、")[0]).floatValue(), Float.valueOf(matcher2.group().split("、")[1]).floatValue()), 12.0f, 0.0f);
            return;
        }
        try {
            List<Address> fromLocationName = new Geocoder(getBaseContext()).getFromLocationName(str, i);
            this.addresses = fromLocationName;
            if (fromLocationName != null) {
                if (fromLocationName.size() == 1) {
                    moveTo(new LatLng(this.addresses.get(0).getLatitude(), this.addresses.get(0).getLongitude()), 15.0f, 0.0f);
                }
                if (this.addresses.size() > 1) {
                    final AppCompatDialog appCompatDialog = new AppCompatDialog(this);
                    appCompatDialog.setTitle(getString(R.string.selectlocation));
                    ListView listView = new ListView(this);
                    String[] strArr = new String[this.addresses.size()];
                    for (int i2 = 0; i2 < this.addresses.size(); i2++) {
                        strArr[i2] = this.addresses.get(i2).getAddressLine(0);
                    }
                    listView.setAdapter((ListAdapter) new ArrayAdapter((Context) this, android.R.layout.simple_list_item_1, android.R.id.text1, (Object[]) strArr));
                    listView.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: com.rosteam.gpsemulator.MainActivity.55
                        @Override // android.widget.AdapterView.OnItemClickListener
                        public void onItemClick(AdapterView<?> adapterView, View view, int i3, long j) {
                            MainActivity.this.moveTo(new LatLng(MainActivity.this.addresses.get(i3).getLatitude(), MainActivity.this.addresses.get(i3).getLongitude()), 15.0f, 0.0f);
                            appCompatDialog.dismiss();
                        }
                    });
                    appCompatDialog.setContentView(listView);
                    appCompatDialog.show();
                    return;
                }
                if (this.addresses.size() == 0) {
                    miToast(R.string.place_not_found, 1);
                }
            }
        } catch (IOException unused) {
            miToast(R.string.internet_connection_needed, 1);
        }
    }

    public void onInitializationComplete() {
        UnityAds.load(this.splashId, this.loadListener);
        UnityAds.load(this.transicion01Id, this.loadListener);
        UnityAds.load(this.stopId, this.loadListener);
    }

    public class Group {
        public String string;
        public final List<String> children = new ArrayList();
        public final List<LatLng> ubicaciones = new ArrayList();
        public final List zoomes = new ArrayList();
        public final List bearings = new ArrayList();
        public List<RegUbic> registrosRutas = new ArrayList();

        public Group(String str) {
            this.string = str;
        }
    }

    public void moveTo(LatLng latLng, float f, float f2) {
        if (this.map != null) {
            this.map.animateCamera(CameraUpdateFactory.newCameraPosition(new CameraPosition.Builder().target(latLng).zoom(f).bearing(f2).build()), this.preferences.getBoolean("animate", true) ? 2000 : 1, (GoogleMap.CancelableCallback) null);
        } else {
            miToast("Map not ready", 1);
        }
    }

    public void moveToFast(LatLng latLng, float f, float f2) {
        GoogleMap googleMap = this.map;
        if (googleMap != null) {
            googleMap.animateCamera(CameraUpdateFactory.newCameraPosition(new CameraPosition.Builder().target(latLng).zoom(f).bearing(f2).build()), 350, (GoogleMap.CancelableCallback) null);
        } else {
            miToast("Map not ready", 1);
        }
    }

    public void updateLastLoc(RegUbic regUbic) {
        SharedPreferences.Editor editorEdit = this.preferences.edit();
        editorEdit.putString("lastloc", regUbic.ciudadpais + "+" + regUbic.lat + "+" + regUbic.lng + "+" + regUbic.zoom);
        editorEdit.commit();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void addToHis(RegUbic regUbic) {
        ArrayList<RegUbic> arrayListLoadHisFromPref = LocationUtils.loadHisFromPref(this);
        this.history = arrayListLoadHisFromPref;
        if (arrayListLoadHisFromPref.size() >= 12) {
            ArrayList<RegUbic> arrayList = this.history;
            arrayList.remove(arrayList.size() - 1);
        }
        int i = 0;
        this.history.add(0, regUbic);
        SharedPreferences.Editor editorEdit = this.preferences.edit();
        for (RegUbic regUbic2 : this.history) {
            editorEdit.putString("histPosition" + i, regUbic2.ciudadpais + "+" + regUbic2.lat + "+" + regUbic2.lng + "+" + regUbic2.zoom + "+" + regUbic2.bearing);
            i++;
        }
        editorEdit.commit();
    }

    public void favsToPrefs() {
        SharedPreferences.Editor editorEdit = this.preferences.edit();
        int i = 0;
        for (int i2 = 0; i2 < this.numerofavoritos; i2++) {
            editorEdit.remove("favPosition" + i2);
        }
        for (RegUbic regUbic : this.favorites) {
            editorEdit.putString("favPosition" + i, regUbic.ciudadpais + "+" + regUbic.lat + "+" + regUbic.lng + "+" + regUbic.zoom + "+" + regUbic.bearing + "+" + regUbic.pined);
            i++;
        }
        editorEdit.commit();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void loadFavsFromPref() {
        this.favorites.clear();
        this.preferences = PreferenceManager.getDefaultSharedPreferences(this);
        for (int i = 0; i < this.numerofavoritos; i++) {
            String string = this.preferences.getString("favPosition" + i, TtmlNode.ANONYMOUS_REGION_ID);
            if (!string.isEmpty()) {
                this.favorites.add(LocationUtils.parsePrefToUbic(string));
            }
        }
    }

    public ArrayList<RegUbic> loadPinned() {
        Log.e("loadPinned", "INICIAMOS");
        ArrayList<RegUbic> arrayList = new ArrayList<>();
        for (int i = 0; i < this.favorites.size(); i++) {
            if (this.favorites.get(i).pined) {
                arrayList.add(this.favorites.get(i));
            }
        }
        for (int i2 = 0; i2 < this.rutas.size(); i2++) {
            if (this.rutas.get(i2).pined) {
                arrayList.add(this.rutas.get(i2));
            }
        }
        Log.e("loadPinned", "result size: " + arrayList.size() + " data: " + arrayList);
        return arrayList;
    }

    public String rutaToPrefs(String str, int i) {
        SharedPreferences.Editor editorEdit = this.preferences.edit();
        editorEdit.putString("ruta" + i, str);
        editorEdit.apply();
        return "ruta" + i;
    }

    public void rewriteRutasEnPrefs(ArrayList<RegUbic> arrayList) {
        limpiarRutas();
        for (int i = 0; i < arrayList.size(); i++) {
            rutaToPrefs(LocationUtils.rutaToString(arrayList.get(i)), i);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void loadRutasFromPref() {
        this.rutas.clear();
        this.rutas.add(new RegUbic("hola", 0, (List<LatLng>) null, 0.0f, 0.0f, false));
        this.preferences = PreferenceManager.getDefaultSharedPreferences(this);
        int i = 0;
        while (true) {
            String string = this.preferences.getString("ruta" + i, TtmlNode.ANONYMOUS_REGION_ID);
            Log.e("ruta" + i, "vbalue " + i + ": " + string);
            if (string.compareTo(TtmlNode.ANONYMOUS_REGION_ID) == 0) {
                return;
            }
            RegUbic rutaToUbic = LocationUtils.parseRutaToUbic(string);
            rutaToUbic.prefName = "ruta" + i;
            this.rutas.add(rutaToUbic);
            i++;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void limpiarRutas() {
        Log.e("GPSEmulator", "limpiarRutas() inicio");
        SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(this);
        this.preferences = defaultSharedPreferences;
        SharedPreferences.Editor editorEdit = defaultSharedPreferences.edit();
        for (int i = 0; this.preferences.getString("ruta" + i, TtmlNode.ANONYMOUS_REGION_ID).compareTo(TtmlNode.ANONYMOUS_REGION_ID) != 0; i++) {
            editorEdit.remove("ruta" + i);
        }
        editorEdit.apply();
    }

    public boolean isMockLocationEnabled(Context context) throws Exception {
        AppOpsManager appOpsManager = (AppOpsManager) context.getSystemService("appops");
        Log.e("fakegps", "isMockLocationEnabled standard? " + appOpsManager.checkOp("android:mock_location", Process.myUid(), "com.rosteam.gpsemulator"));
        return appOpsManager.checkOp("android:mock_location", Process.myUid(), "com.rosteam.gpsemulator") == 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void reanudar() {
        SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(this);
        this.preferences = defaultSharedPreferences;
        String string = defaultSharedPreferences.getString("lastloc", TtmlNode.ANONYMOUS_REGION_ID);
        if (string != TtmlNode.ANONYMOUS_REGION_ID) {
            this.ultimaUbic = LocationUtils.parsePrefToUbic(string);
            moveTo(new LatLng(this.ultimaUbic.lat, this.ultimaUbic.lng), this.ultimaUbic.zoom, 0.0f);
            GetTime(this.ultimaUbic.lat, this.ultimaUbic.lng, false);
            this.stopButton.setEnabled(true);
            this.startButton.setEnabled(true);
            this.favButton.setEnabled(true);
            this.favButton.setHapticFeedbackEnabled(false);
            this.favButton.setImageResource(R.drawable.botonfav);
        }
    }

    public void irUltimaUbicacion() {
        if (this.history.size() > 0) {
            this.ultimaUbic = new RegUbic(this.history.get(0).ciudadpais, this.history.get(0).lat, this.history.get(0).lng, this.history.get(0).zoom);
            moveTo(new LatLng(this.ultimaUbic.lat, this.ultimaUbic.lng), this.ultimaUbic.zoom, 0.0f);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isMyServiceRunning(Class<?> cls) {
        Iterator<ActivityManager.RunningServiceInfo> it = ((ActivityManager) getSystemService("activity")).getRunningServices(Reader.READ_DONE).iterator();
        while (it.hasNext()) {
            if (cls.getName().equals(it.next().service.getClassName())) {
                return true;
            }
        }
        return false;
    }

    public void onDestroy() {
        stoptimertask();
        super.onDestroy();
    }

    private void rateThisApp() {
        if (this.cantUsos == 10) {
            new AlertDialog.Builder(this.ctw, R.style.CustomAlertDialog).setTitle(getString(R.string.doyoulike)).setMessage(getString(R.string.please_rate)).setPositiveButton(android.R.string.yes, new AnonymousClass59()).setNegativeButton(android.R.string.no, new DialogInterface.OnClickListener() { // from class: com.rosteam.gpsemulator.MainActivity.58
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i) {
                }
            }).show();
        }
    }

    /* JADX INFO: renamed from: com.rosteam.gpsemulator.MainActivity$59, reason: invalid class name */
    class AnonymousClass59 implements DialogInterface.OnClickListener {
        static /* synthetic */ void lambda$onClick$0(Task task) {
        }

        AnonymousClass59() {
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            if (App.XIAOMI) {
                Intent intent = new Intent("android.intent.action.VIEW");
                intent.setData(Uri.parse("mimarket://details?id=com.rosteam.gpsemulator&back=true|false&ref=refstr&startDownload=true"));
                MainActivity.this.startActivity(intent);
            } else {
                final ReviewManager reviewManagerCreate = ReviewManagerFactory.create(MainActivity.this);
                reviewManagerCreate.requestReviewFlow().addOnCompleteListener(new OnCompleteListener() { // from class: com.rosteam.gpsemulator.MainActivity$59$$ExternalSyntheticLambda0
                    public final void onComplete(Task task) {
                        this.f$0.m509lambda$onClick$1$comrosteamgpsemulatorMainActivity$59(reviewManagerCreate, task);
                    }
                });
            }
        }

        /* JADX INFO: renamed from: lambda$onClick$1$com-rosteam-gpsemulator-MainActivity$59, reason: not valid java name */
        /* synthetic */ void m509lambda$onClick$1$comrosteamgpsemulatorMainActivity$59(ReviewManager reviewManager, Task task) {
            if (task.isSuccessful()) {
                reviewManager.launchReviewFlow(MainActivity.this, (ReviewInfo) task.getResult()).addOnCompleteListener(new OnCompleteListener() { // from class: com.rosteam.gpsemulator.MainActivity$59$$ExternalSyntheticLambda1
                    public final void onComplete(Task task2) {
                        MainActivity.AnonymousClass59.lambda$onClick$0(task2);
                    }
                });
            } else {
                Intent intent = new Intent("android.intent.action.VIEW");
                intent.setData(Uri.parse("market://details?id=com.rosteam.gpsemulator"));
                MainActivity.this.startActivity(intent);
            }
        }
    }

    public void GetTime(double d, double d2, boolean z) {
        this.GetTimeLat = d;
        this.GetTimeLng = d2;
        stoptimertask();
        Log.e("GPS", "GetTime repetido: " + z);
        new C1TimeZoneDBquery(z).execute(new String[0]);
    }

    /* JADX INFO: renamed from: com.rosteam.gpsemulator.MainActivity$1TimeZoneDBquery, reason: invalid class name */
    class C1TimeZoneDBquery extends AsyncTask<String, String, String> {
        String TimeZoneDBResult;
        final /* synthetic */ boolean val$repetido;

        C1TimeZoneDBquery(boolean z) {
            this.val$repetido = z;
        }

        @Override // android.os.AsyncTask
        protected void onPreExecute() {
            super.onPreExecute();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public String doInBackground(String... strArr) {
            String string = MainActivity.this.preferences.getString("timezone", TtmlNode.ANONYMOUS_REGION_ID);
            Log.e("GPS", "ultimoTimeZone: " + string);
            if (this.val$repetido && !string.contentEquals(TtmlNode.ANONYMOUS_REGION_ID)) {
                MainActivity.this.zoneName = string;
                return "true";
            }
            try {
                new Random().nextInt(20);
                Log.e("TimeZoneQuery", "va adrieto...");
                InputStream inputStreamOpenStream = new URL("https://adrieto.pythonanywhere.com/time1/lat=" + MainActivity.this.GetTimeLat + "&lng=" + MainActivity.this.GetTimeLng + "?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyIjoiYWRyaWFuIiwicGFzc3dvcmQiOiJsb2NvIn0.5yG_BGH8OsyOtDDlHWk4_jRW5iFb0-RBA78M6tXxc9M").openStream();
                try {
                    BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStreamOpenStream));
                    try {
                        this.TimeZoneDBResult = bufferedReader.readLine();
                        Log.e("GetTime", "HTTP RESPONSE: urlConnection.getResponseCode() TimeZoneDBResult: " + this.TimeZoneDBResult);
                        MainActivity mainActivity = MainActivity.this;
                        String str = this.TimeZoneDBResult;
                        mainActivity.zoneName = (String) str.subSequence(str.indexOf("<zoneName>") + 10, this.TimeZoneDBResult.indexOf("</zoneName>"));
                        MainActivity.this.editor.putString("timezone", MainActivity.this.zoneName);
                        MainActivity.this.editor.commit();
                        bufferedReader.close();
                        if (inputStreamOpenStream != null) {
                            inputStreamOpenStream.close();
                            return "true";
                        }
                        return "true";
                    } catch (Throwable th) {
                        try {
                            bufferedReader.close();
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                        }
                        throw th;
                    }
                } catch (Throwable th3) {
                    if (inputStreamOpenStream != null) {
                        try {
                            inputStreamOpenStream.close();
                        } catch (Throwable th4) {
                            th3.addSuppressed(th4);
                        }
                    }
                    throw th3;
                }
            } catch (Exception e) {
                e.printStackTrace();
                return "false";
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public void onPostExecute(String str) {
            if (str.compareTo("true") == 0) {
                try {
                    Log.e("onPostExecute", "ZoneName: " + MainActivity.this.zoneName);
                    MainActivity.this.timer = new Timer();
                    MainActivity.this.timerTask = new TimerTask() { // from class: com.rosteam.gpsemulator.MainActivity.1TimeZoneDBquery.1
                        @Override // java.util.TimerTask, java.lang.Runnable
                        public void run() {
                            MainActivity.this.handler.post(new Runnable() { // from class: com.rosteam.gpsemulator.MainActivity.1TimeZoneDBquery.1.1
                                @Override // java.lang.Runnable
                                public void run() {
                                    try {
                                        TimeZone timeZone = TimeZone.getTimeZone(MainActivity.this.zoneName);
                                        Calendar calendar = Calendar.getInstance(timeZone);
                                        DateFormat timeInstance = DateFormat.getTimeInstance(3);
                                        timeInstance.setTimeZone(timeZone);
                                        MainActivity.this.textHoraFake.setText(" " + MainActivity.this.getString(R.string.time_in_location) + timeInstance.format(calendar.getTime()) + " ");
                                        MainActivity.this.textHoraFake.setVisibility(0);
                                    } catch (Exception e) {
                                        e.printStackTrace();
                                    }
                                }
                            });
                        }
                    };
                    MainActivity.this.timer.schedule(MainActivity.this.timerTask, 0L, ChunkedTrackBlacklistUtil.DEFAULT_TRACK_BLACKLIST_MS);
                } catch (Exception unused) {
                }
            }
        }
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [com.rosteam.gpsemulator.MainActivity$1CiudadPaisQuery] */
    public void GetCiudadPais(double d, double d2, float f, float f2) {
        new AsyncTask<String, String, String>(d, d2, f, f2) { // from class: com.rosteam.gpsemulator.MainActivity.1CiudadPaisQuery
            String ciudadpais;
            final /* synthetic */ float val$bearing;
            final /* synthetic */ double val$lat;
            final /* synthetic */ double val$lng;
            final /* synthetic */ float val$zoom;

            {
                this.val$lat = d;
                this.val$lng = d2;
                this.val$zoom = f;
                this.val$bearing = f2;
                this.ciudadpais = d + ", " + d2;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // android.os.AsyncTask
            public String doInBackground(String... strArr) {
                List<Address> fromLocation;
                String str;
                try {
                    fromLocation = new Geocoder(MainActivity.this.context, Locale.getDefault()).getFromLocation(this.val$lat, this.val$lng, 1);
                } catch (IOException e) {
                    Log.e("fakegps", "Error en geocoder");
                    e.printStackTrace();
                    fromLocation = null;
                }
                if (fromLocation != null && fromLocation.size() > 0) {
                    String locality = fromLocation.get(0).getLocality();
                    String adminArea = fromLocation.get(0).getAdminArea();
                    if (locality != null) {
                        str = locality + ", ";
                    } else {
                        str = adminArea == null ? TtmlNode.ANONYMOUS_REGION_ID : adminArea + ", ";
                    }
                    String countryName = fromLocation.get(0).getCountryName();
                    MainActivity.this.timeArea = countryName + RemoteSettings.FORWARD_SLASH_STRING + adminArea;
                    this.ciudadpais = str + countryName;
                }
                return null;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // android.os.AsyncTask
            public void onPostExecute(String str) {
                MainActivity.this.ultimaUbic = new RegUbic(this.ciudadpais, this.val$lat, this.val$lng, this.val$zoom, this.val$bearing, false);
                MainActivity mainActivity = MainActivity.this;
                mainActivity.addToHis(mainActivity.ultimaUbic);
                MainActivity mainActivity2 = MainActivity.this;
                mainActivity2.updateLastLoc(mainActivity2.ultimaUbic);
                MainActivity.this.mRequestIntent.putExtra(LocationUtils.CIUDADPAIS, this.ciudadpais);
                MainActivity.this.mRequestIntent.setAction(LocationUtils.ACTION_REFRESH_NOTIF);
                try {
                    MainActivity mainActivity3 = MainActivity.this;
                    mainActivity3.startService(mainActivity3.mRequestIntent);
                } catch (Exception unused) {
                }
                String string = MainActivity.this.preferences.getString("timearea", TtmlNode.ANONYMOUS_REGION_ID);
                Log.e("fakegps", "timeArea: " + MainActivity.this.timeArea + " ultimoTimeArea: " + string);
                MainActivity mainActivity4 = MainActivity.this;
                mainActivity4.GetTime(this.val$lat, this.val$lng, mainActivity4.timeArea.contentEquals(string));
                MainActivity.this.editor.putString("timearea", MainActivity.this.timeArea);
                MainActivity.this.editor.commit();
            }
        }.execute(new String[0]);
    }

    public void stoptimertask() {
        Timer timer = this.timer;
        if (timer != null) {
            timer.cancel();
            this.timer = null;
            this.textHoraFake.setText(TtmlNode.ANONYMOUS_REGION_ID);
            this.textHoraFake.setVisibility(8);
        }
    }

    protected void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        setIntent(intent);
        Log.e("FAKEGPS", "recibimos intent!!!!!");
        if (this.map == null) {
            getSupportFragmentManager().findFragmentById(R.id.map).getMapAsync(new OnMapReadyCallback() { // from class: com.rosteam.gpsemulator.MainActivity.60
                public void onMapReady(GoogleMap googleMap) {
                    MainActivity.this.map = googleMap;
                    MainActivity.this.map.getUiSettings().setZoomControlsEnabled(true);
                    MainActivity.this.map.getUiSettings().setCompassEnabled(true);
                    MainActivity.this.reiniciarMap();
                    MainActivity.this.stopButton.setEnabled(false);
                    MainActivity.this.startButton.setEnabled(true);
                    MainActivity.this.favButton.setEnabled(false);
                    MainActivity.this.processIntent();
                }
            });
        } else {
            processIntent();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void processIntent() {
        Uri data;
        String string;
        float f;
        Intent intent = getIntent();
        String action = intent.getAction();
        if (action != null) {
            stoptimertask();
            if (action.equals(CampaignEx.JSON_NATIVE_VIDEO_RESUME)) {
                reanudar();
            }
            if (action.equals(LocationUtils.ACTION_STOP_TEST)) {
                Log.e("fakegps", "recibimos stop");
                irUltimaUbicacion();
                onStopButtonClick(null);
            } else if (action.equals("android.intent.action.MAIN")) {
                irUltimaUbicacion();
            } else if (action.equals("android.intent.action.SEARCH")) {
                openSearch();
            } else if (action.equals("android.intent.action.LOCATION01")) {
                ArrayList arrayList = new ArrayList();
                int i = 0;
                do {
                    string = this.preferences.getString("histPosition" + i, TtmlNode.ANONYMOUS_REGION_ID);
                    if (!string.isEmpty()) {
                        String[] strArrSplit = string.split("\\+");
                        String str = strArrSplit[0];
                        double d = Double.parseDouble(strArrSplit[1]);
                        double d2 = Double.parseDouble(strArrSplit[2]);
                        float f2 = Float.parseFloat(strArrSplit[3]);
                        try {
                            f = Float.parseFloat(strArrSplit[4]);
                        } catch (Exception unused) {
                            f = 0.0f;
                        }
                        arrayList.add(0, new RegUbic(str, d, d2, f2, f, false));
                    }
                    i++;
                } while (!string.isEmpty());
                if (arrayList.size() > 0) {
                    RegUbic regUbic = (RegUbic) arrayList.get(arrayList.size() - 1);
                    double[] dArr = {regUbic.lat};
                    double[] dArr2 = {regUbic.lng};
                    Intent intent2 = new Intent(this.context, (Class<?>) servicex2484.class);
                    intent2.addFlags(268435456);
                    intent2.putExtra(LocationUtils.LATITUDE, dArr);
                    intent2.putExtra(LocationUtils.LONGITUDE, dArr2);
                    intent2.putExtra(LocationUtils.CIUDADPAIS, regUbic.ciudadpais);
                    intent2.putExtra("velocidad", 0.0f);
                    intent2.putExtra("loopMode", 0);
                    intent2.setAction(LocationUtils.ACTION_START_CONTINUOUS);
                    Log.e("gps", "Vamos a intentar iniciar foreground service");
                    ContextCompat.startForegroundService(this.context, intent2);
                }
            } else if (action.equals("android.intent.action.VIEW") && (data = intent.getData()) != null) {
                String scheme = data.getScheme();
                getContentResolver().getType(data);
                if (FirebaseAnalytics.Param.CONTENT.equals(scheme) || "file".equals(scheme)) {
                    try {
                        readFileFromUri(data);
                    } catch (OutOfMemoryError unused2) {
                    }
                }
            }
            if (isMyServiceRunning(servicex2484.class)) {
                reanudar();
            }
            String dataString = intent.getDataString();
            if (dataString != null) {
                try {
                    String strDecode = URLDecoder.decode(dataString, C.UTF8_NAME);
                    int iIndexOf = strDecode.indexOf("?q=");
                    int iIndexOf2 = strDecode.indexOf("?daddr=");
                    if (strDecode.indexOf("geo:") >= 0) {
                        searchPlace(strDecode.substring(4), 1);
                        return;
                    }
                    if (iIndexOf2 >= 0) {
                        String strReplace = strDecode.substring(iIndexOf2 + 7).replace("loc:", TtmlNode.ANONYMOUS_REGION_ID);
                        int iIndexOf3 = strReplace.indexOf(" ", strReplace.indexOf(",") + 2);
                        if (iIndexOf3 <= 0) {
                            iIndexOf3 = strReplace.length();
                        }
                        searchPlace(strReplace.substring(0, iIndexOf3), 1);
                        return;
                    }
                    if (iIndexOf >= 0) {
                        int i2 = iIndexOf + 3;
                        String strReplace2 = strDecode.substring(i2).replace("loc:", TtmlNode.ANONYMOUS_REGION_ID);
                        int iIndexOf4 = strReplace2.indexOf(" ", strReplace2.indexOf(",") + 2);
                        if (iIndexOf4 <= 0) {
                            iIndexOf4 = strReplace2.length();
                        }
                        String strSubstring = strReplace2.substring(0, iIndexOf4);
                        try {
                            moveTo(new LatLng(Double.parseDouble(strSubstring.substring(0, strSubstring.indexOf(","))), Double.parseDouble(strSubstring.substring(strSubstring.indexOf(",") + 1, strSubstring.length()))), 15.0f, 0.0f);
                            return;
                        } catch (Exception unused3) {
                            searchPlace(URLDecoder.decode(intent.getDataString(), C.UTF8_NAME).substring(i2), 1);
                            return;
                        }
                    }
                    return;
                } catch (Exception unused4) {
                    return;
                }
            }
            String stringExtra = intent.getStringExtra("android.intent.extra.TEXT");
            if (stringExtra != null) {
                searchPlace(stringExtra, 1);
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:73:0x0140 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    private void readFileFromUri(Uri uri) {
        String string;
        if (this.noAds) {
            try {
                InputStream inputStreamOpenInputStream = getContentResolver().openInputStream(uri);
                try {
                    BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStreamOpenInputStream));
                    try {
                        final ArrayList arrayList = new ArrayList();
                        final ArrayList arrayList2 = new ArrayList();
                        StringBuilder sb = new StringBuilder();
                        while (true) {
                            String line = bufferedReader.readLine();
                            if (line == null) {
                                break;
                            } else {
                                sb.append(line).append("\n");
                            }
                            if (inputStreamOpenInputStream != null) {
                                try {
                                    inputStreamOpenInputStream.close();
                                } catch (Throwable th) {
                                    th.addSuppressed(th);
                                }
                            }
                            throw th;
                        }
                        String[] strArrSplit = sb.toString().split("###");
                        for (String str : strArrSplit[0].split("\n")) {
                            Log.e("linea", str);
                            try {
                                arrayList.add(LocationUtils.parsePrefToUbic(str));
                            } catch (Exception unused) {
                            }
                        }
                        for (String str2 : strArrSplit[1].split("\n")) {
                            Log.e("linea", str2);
                            if (str2.length() >= 2) {
                                try {
                                    arrayList2.add(LocationUtils.parseRutaToUbic(str2));
                                } catch (Exception unused2) {
                                }
                            }
                        }
                        if (arrayList.size() > 0 && arrayList2.size() > 0) {
                            string = String.format(getString(R.string.encontrado_ubic_rutas), Integer.valueOf(arrayList.size()), Integer.valueOf(arrayList2.size()));
                        } else if (arrayList.size() <= 0) {
                            string = String.format(getString(R.string.encontrado_rutas), Integer.valueOf(arrayList2.size()));
                        } else if (arrayList2.size() <= 0) {
                            string = String.format(getString(R.string.encontrado_ubic), Integer.valueOf(arrayList.size()));
                        } else {
                            string = getString(R.string.encontrado_nada);
                        }
                        AlertDialog.Builder message = new AlertDialog.Builder(this.ctw, R.style.CustomAlertDialog).setTitle(R.string.restaurar_marcadores).setMessage(string);
                        if (arrayList.size() > 0 || arrayList2.size() > 0) {
                            message.setPositiveButton(R.string.reemplazar, new DialogInterface.OnClickListener() { // from class: com.rosteam.gpsemulator.MainActivity.62
                                @Override // android.content.DialogInterface.OnClickListener
                                public void onClick(DialogInterface dialogInterface, int i) {
                                    try {
                                        MainActivity.this.reemplazarBookmarks(arrayList, arrayList2, true);
                                        MainActivity mainActivity = MainActivity.this;
                                        mainActivity.miToast(mainActivity.getString(R.string.bookmarks_replaced), 2);
                                    } catch (Exception unused3) {
                                        MainActivity mainActivity2 = MainActivity.this;
                                        mainActivity2.miToast(mainActivity2.getString(R.string.something_went_wrong), 2);
                                    }
                                }
                            }).setNeutralButton(R.string.agregar, new DialogInterface.OnClickListener() { // from class: com.rosteam.gpsemulator.MainActivity.61
                                @Override // android.content.DialogInterface.OnClickListener
                                public void onClick(DialogInterface dialogInterface, int i) {
                                    try {
                                        MainActivity.this.reemplazarBookmarks(arrayList, arrayList2, false);
                                        MainActivity mainActivity = MainActivity.this;
                                        mainActivity.miToast(mainActivity.getString(R.string.bookmarks_added), 2);
                                    } catch (Exception unused3) {
                                        MainActivity mainActivity2 = MainActivity.this;
                                        mainActivity2.miToast(mainActivity2.getString(R.string.something_went_wrong), 2);
                                    }
                                }
                            });
                        } else {
                            message.setNegativeButton(R.string.cerrar, new DialogInterface.OnClickListener() { // from class: com.rosteam.gpsemulator.MainActivity.63
                                @Override // android.content.DialogInterface.OnClickListener
                                public void onClick(DialogInterface dialogInterface, int i) {
                                }
                            });
                        }
                        message.show();
                        bufferedReader.close();
                        if (inputStreamOpenInputStream != null) {
                            inputStreamOpenInputStream.close();
                            return;
                        }
                        return;
                    } catch (Throwable th2) {
                        try {
                            bufferedReader.close();
                        } catch (Throwable th3) {
                            th2.addSuppressed(th3);
                        }
                        throw th2;
                    }
                } catch (Throwable th4) {
                    if (inputStreamOpenInputStream != null) {
                        inputStreamOpenInputStream.close();
                    }
                    throw th4;
                }
            } catch (Exception e) {
                new AlertDialog.Builder(this.ctw, R.style.CustomAlertDialog).setTitle(R.string.restaurar_marcadores).setMessage(R.string.se_produjo_un_error_al_leer_el_archivo_de_marcadores).setNegativeButton(R.string.cerrar, new DialogInterface.OnClickListener() { // from class: com.rosteam.gpsemulator.MainActivity.64
                    @Override // android.content.DialogInterface.OnClickListener
                    public void onClick(DialogInterface dialogInterface, int i) {
                    }
                }).show();
                e.printStackTrace();
                return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void reemplazarBookmarks(ArrayList<RegUbic> arrayList, ArrayList<RegUbic> arrayList2, boolean z) {
        if (arrayList.size() > 0) {
            if (z) {
                this.favorites.clear();
            }
            this.favorites.addAll(arrayList);
            favsToPrefs();
        }
        if (arrayList2.size() > 0) {
            if (z) {
                this.rutas.clear();
            }
            if (this.rutas.size() > 0) {
                this.rutas.remove(0);
            }
            this.rutas.addAll(arrayList2);
            rewriteRutasEnPrefs(this.rutas);
        }
    }

    public void resetAll() {
        SharedPreferences.Editor editorEdit = this.preferences.edit();
        editorEdit.clear();
        stoptimertask();
        editorEdit.commit();
        this.favorites.clear();
        this.history.clear();
        moveTo(new LatLng(0.0d, 0.0d), 0.0f, 0.0f);
        this.mRequestIntent.setAction(LocationUtils.ACTION_STOP_TEST);
        startService(this.mRequestIntent);
        Marker marker = this.currentMark;
        if (marker != null) {
            marker.remove();
        }
        this.stopButton.setEnabled(false);
        this.startButton.setEnabled(true);
        this.favButton.setEnabled(false);
        this.favButton.setHapticFeedbackEnabled(false);
        this.favButton.setImageResource(R.drawable.botonfav);
        reiniciarMap();
        miToast(R.string.all_values_reset, 1);
    }

    public void reiniciarMap() {
        String string = this.preferences.getString("map_mode", MBridgeConstans.ENDCARD_URL_TYPE_PL);
        this.mapTypeValue = string;
        if (this.map == null) {
            getSupportFragmentManager().findFragmentById(R.id.map).getMapAsync(new OnMapReadyCallback() { // from class: com.rosteam.gpsemulator.MainActivity.67
                public void onMapReady(GoogleMap googleMap) {
                    MainActivity.this.map = googleMap;
                    MainActivity.this.map.getUiSettings().setZoomControlsEnabled(true);
                    MainActivity.this.map.getUiSettings().setCompassEnabled(true);
                    int i = Integer.parseInt(MainActivity.this.mapTypeValue);
                    if (i == 0) {
                        MainActivity.this.map.setMapType(1);
                    } else if (i == 1) {
                        MainActivity.this.map.setMapType(4);
                    } else {
                        if (i != 2) {
                            return;
                        }
                        MainActivity.this.map.setMapType(3);
                    }
                }
            });
            return;
        }
        int i = Integer.parseInt(string);
        if (i == 0) {
            this.map.setMapType(1);
        } else if (i == 1) {
            this.map.setMapType(4);
        } else {
            if (i != 2) {
                return;
            }
            this.map.setMapType(3);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void openSearch() {
        onetimeSplashLock();
        transitionShow(new Intent((Context) this, (Class<?>) busqueda.class), 102);
    }

    protected void onRestart() {
        int i;
        int i2;
        super.onRestart();
        App.activityResumed();
        int i3 = this.preferences.getInt("accion", 0);
        if (i3 == 1) {
            resetAll();
        } else if (i3 == 2) {
            reiniciarMap();
        }
        SharedPreferences.Editor editorEdit = this.preferences.edit();
        editorEdit.putInt("accion", 0);
        editorEdit.commit();
        this.noAds = true;
        this.numerofavoritos = 1000;
        Log.e("fakegps", "onRestart, no ads? " + this.noAds);
        habilitarPRO();
        if (!isMyServiceRunning(servicex2484.class) && (i2 = this.modoApp) != 1 && i2 != 2) {
            onStopClickStep2(true);
        }
        if (!this.noAds && !wasLoadTimeLessThanNHoursAgo(1L)) {
            Log.e("onRestart", "cargarBannerExit() de NUEVO");
            cargarBannerExit();
        }
        if (this.noAds || !splashNow() || (i = this.cantUsos) < 1 || i == 10 || i == 2) {
            return;
        }
        Log.e("fakegps", "Va app open return");
        this.child.setAlpha(0.0f);
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.play(ObjectAnimator.ofFloat(this.child, "alpha", 0.0f, 1.0f));
        animatorSet.setStartDelay(150L);
        animatorSet.setDuration(350L);
        runOnUiThread(new AnonymousClass68(animatorSet));
    }

    /* JADX INFO: renamed from: com.rosteam.gpsemulator.MainActivity$68, reason: invalid class name */
    class AnonymousClass68 implements Runnable {
        final /* synthetic */ AnimatorSet val$animation;

        AnonymousClass68(AnimatorSet animatorSet) {
            this.val$animation = animatorSet;
        }

        @Override // java.lang.Runnable
        public void run() {
            new Handler().postDelayed(new Runnable() { // from class: com.rosteam.gpsemulator.MainActivity.68.1
                @Override // java.lang.Runnable
                public void run() {
                    if (App.isAppOpenStartAvailable()) {
                        App.showAdIfAvailable2(MainActivity.this, new App.OnShowAdCompleteListener() { // from class: com.rosteam.gpsemulator.MainActivity.68.1.1
                            @Override // com.rosteam.gpsemulator.App.OnShowAdCompleteListener
                            public void onShowAdComplete() {
                                MainActivity.this.setAdBlock();
                                AnonymousClass68.this.val$animation.start();
                            }
                        });
                        return;
                    }
                    if (MainActivity.this.vungleAppOpen != null && MainActivity.this.vungleAppOpen.canPlayAd().booleanValue()) {
                        MainActivity.this.setAdBlock();
                        AnonymousClass68.this.val$animation.start();
                        MainActivity.this.vungleAppOpen.play(MainActivity.this.getApplicationContext());
                        return;
                    }
                    if (App.pangleAppOpenAd != null) {
                        Log.e("fakegps", "onRestast pangle open available");
                        App.pangleAppOpenAd.setAdInteractionListener(new PAGAppOpenAdInteractionListener() { // from class: com.rosteam.gpsemulator.MainActivity.68.1.2
                            public void onAdClicked() {
                            }

                            public void onAdShowed() {
                                Log.e("pangleAppOpen", "ad showed");
                            }

                            public void onAdDismissed() {
                                Log.e("pangleAppOpen", "ad dismissed");
                                AnonymousClass68.this.val$animation.setStartDelay(350L);
                                AnonymousClass68.this.val$animation.start();
                                App.pangleAppOpenAd = null;
                            }
                        });
                        MainActivity.this.setAdBlock();
                        App.pangleAppOpenAd.show(MainActivity.this);
                        return;
                    }
                    if (App.yandexAppOpenAd != null) {
                        App.yandexAppOpenAd.setAdEventListener(new AppOpenAdEventListener() { // from class: com.rosteam.gpsemulator.MainActivity.68.1.3
                            public void onAdClicked() {
                            }

                            public void onAdDismissed() {
                            }

                            public void onAdFailedToShow(AdError adError) {
                            }

                            public void onAdImpression(ImpressionData impressionData) {
                            }

                            public void onAdShown() {
                            }
                        });
                        MainActivity.this.setAdBlock();
                        AnonymousClass68.this.val$animation.start();
                        App.yandexAppOpenAd.show(MainActivity.this);
                        return;
                    }
                    if (MainActivity.this.openVK != null) {
                        Log.e("VK", "openVK not null");
                        MainActivity.this.openVK.setListener(new InterstitialAd.InterstitialAdListener() { // from class: com.rosteam.gpsemulator.MainActivity.68.1.4
                            @Override // com.my.target.ads.InterstitialAd.InterstitialAdListener
                            public void onClick(InterstitialAd interstitialAd) {
                            }

                            @Override // com.my.target.ads.InterstitialAd.InterstitialAdListener
                            public void onDisplay(InterstitialAd interstitialAd) {
                            }

                            @Override // com.my.target.ads.InterstitialAd.InterstitialAdListener
                            public void onFailedToShow(InterstitialAd interstitialAd) {
                            }

                            @Override // com.my.target.ads.InterstitialAd.InterstitialAdListener
                            public void onLoad(InterstitialAd interstitialAd) {
                            }

                            @Override // com.my.target.ads.InterstitialAd.InterstitialAdListener
                            public void onNoAd(IAdLoadingError iAdLoadingError, InterstitialAd interstitialAd) {
                            }

                            @Override // com.my.target.ads.InterstitialAd.InterstitialAdListener
                            public void onVideoCompleted(InterstitialAd interstitialAd) {
                            }

                            @Override // com.my.target.ads.InterstitialAd.InterstitialAdListener
                            public void onDismiss(InterstitialAd interstitialAd) {
                                MainActivity.this.openVK = null;
                            }
                        });
                        MainActivity.this.setAdBlock();
                        AnonymousClass68.this.val$animation.start();
                        MainActivity.this.openVK.show();
                        return;
                    }
                    AnonymousClass68.this.val$animation.start();
                }
            }, 750L);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    protected void onPause() {
        super.onPause();
        miBottomSheetDialog mibottomsheetdialog = this.miExitDialog;
        if (mibottomsheetdialog != null) {
            mibottomsheetdialog.dismiss();
            this.miExitDialog = null;
        }
        App.activityPaused();
        LocalBroadcastManager.getInstance(this).unregisterReceiver(this.stopMessageReceiver);
        LocalBroadcastManager.getInstance(this).unregisterReceiver(this.updateMessageReceiverUpdate);
    }

    public void onTrimMemory(int i) {
        super.onTrimMemory(i);
    }

    /* JADX WARN: Multi-variable type inference failed */
    protected void onResume() {
        super.onResume();
        Log.e("fakegps", "onResume");
        App.activityResumed();
        LocalBroadcastManager.getInstance(this).registerReceiver(this.stopMessageReceiver, new IntentFilter("detener"));
        LocalBroadcastManager.getInstance(this).registerReceiver(this.updateMessageReceiverUpdate, new IntentFilter("update"));
        AlertDialog alertDialog = this.permissionDialog;
        if (alertDialog == null || !alertDialog.isShowing()) {
            return;
        }
        setPermissionButtons(this.permisosLayout);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void cargarBannerAdmob() {
        if (true) return;
        Log.e("fakegps", "cargarBannerAdmob()");
        this.topBannerContainer.removeAllViews();
        AdView adView = new AdView(this);
        this.adViewAdMob = adView;
        adView.setAdUnitId(App.XIAOMI ? "ca-app-pub-4161078187932834/2700602956" : "ca-app-pub-4161078187932834/2999719920");
        View view = this.adViewAdMob;
        this.anuncioView = view;
        this.topBannerContainer.addView(view);
        AdRequest adRequestBuild = new AdRequest.Builder().build();
        Display defaultDisplay = getWindowManager().getDefaultDisplay();
        DisplayMetrics displayMetrics = new DisplayMetrics();
        defaultDisplay.getMetrics(displayMetrics);
        this.adViewAdMob.setAdSize(AdSize.getLargeAnchoredAdaptiveBannerAdSize(this, (int) (displayMetrics.widthPixels / displayMetrics.density)));
        this.adViewAdMob.loadAd(adRequestBuild);
        this.adViewAdMob.setAdListener(new AdListener() { // from class: com.rosteam.gpsemulator.MainActivity.71
            public void onAdFailedToLoad(LoadAdError loadAdError) {
                super.onAdFailedToLoad(loadAdError);
                Log.e("AdmobBanner", "Load failed");
                MainActivity.this.cargarPreBannerYandex();
                MainActivity.this.cargarBannerPangle();
            }

            public void onAdClicked() {
                super.onAdClicked();
            }

            public void onAdClosed() {
                super.onAdClosed();
            }

            public void onAdImpression() {
                super.onAdImpression();
            }

            public void onAdLoaded() {
                super.onAdLoaded();
                Log.e("AdmobBanner", "Load succeded");
            }

            public void onAdOpened() {
                super.onAdOpened();
            }

            public void onAdSwipeGestureClicked() {
                super.onAdSwipeGestureClicked();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public void cargarPreBannerYandex() {
        if (true) return;
        Log.e("preBannerYandex", "INICIO");
        int i = (int) (getResources().getDisplayMetrics().widthPixels / getResources().getDisplayMetrics().density);
        BannerAdView bannerAdView = new BannerAdView(this);
        this.preBannerYandex = bannerAdView;
        bannerAdView.setAdSize(BannerAdSize.inline(getApplicationContext(), i, 90));
        com.yandex.mobile.ads.common.AdRequest adRequestBuild = new com.yandex.mobile.ads.common.AdRequest.Builder("R-M-16039764-1").build();
        this.preBannerYandex.setBannerAdEventListener(new BannerAdEventListener() { // from class: com.rosteam.gpsemulator.MainActivity.72
            public void onAdClicked() {
            }

            public void onImpression(ImpressionData impressionData) {
            }

            public void onAdLoaded() {
                Log.e("YANDEX_MOBILE_ADS_TAG", "pre banner ready");
                MainActivity.this.topBannerYandexReady = true;
            }

            public void onAdFailedToLoad(AdRequestError adRequestError) {
                Log.e("YANDEX_MOBILE_ADS_TAG", "pre banner ready FAILED " + adRequestError);
                MainActivity.this.topBannerYandexReady = false;
            }
        });
        this.preBannerYandex.loadAd(adRequestBuild);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void cargarBannerPangle() {
        if (true) return;
        Log.e("cargarBannerPangle", "iniciamos cargarBannerPangle");
        Display defaultDisplay = getWindowManager().getDefaultDisplay();
        DisplayMetrics displayMetrics = new DisplayMetrics();
        defaultDisplay.getMetrics(displayMetrics);
        PAGBannerAd.loadAd("980438440", new PAGBannerRequest(PAGBannerSize.getInlineAdaptiveBannerAdSize((int) (displayMetrics.widthPixels / displayMetrics.density), 90)), new PAGBannerAdLoadListener() { // from class: com.rosteam.gpsemulator.MainActivity.73
            public void onError(int i, String str) {
                Log.e("pangle", "Banner load error: " + i + " - " + str + " yandexReeady? " + MainActivity.this.topBannerYandexReady);
                if (MainActivity.this.topBannerYandexReady) {
                    MainActivity.this.topBannerContainer.removeAllViews();
                    MainActivity.this.topBannerContainer.addView(MainActivity.this.preBannerYandex);
                } else {
                    new Handler().postDelayed(new Runnable() { // from class: com.rosteam.gpsemulator.MainActivity.73.1
                        @Override // java.lang.Runnable
                        public void run() {
                            if (MainActivity.this.topBannerYandexReady) {
                                MainActivity.this.topBannerContainer.removeAllViews();
                                MainActivity.this.topBannerContainer.addView(MainActivity.this.preBannerYandex);
                            } else {
                                MainActivity.this.cargarBannerADG();
                            }
                        }
                    }, 1300L);
                }
            }

            public void onAdLoaded(PAGBannerAd pAGBannerAd) {
                Log.e("pangle", "Banner onAdLoaded");
                MainActivity.this.topBannerContainer.removeAllViews();
                MainActivity.this.topBannerContainer.addView(pAGBannerAd.getBannerView());
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public void cargarBannerADG() {
        if (true) return;
        Log.e("AdGeneration", "cargarBannerADG");
        ADG adg = new ADG(this);
        this.adg = adg;
        adg.setLocationId("184964");
        this.adg.setAdFrameSize(ADG.AdFrameSize.SP);
        this.adg.setAdListener(new ADGListener() { // from class: com.rosteam.gpsemulator.MainActivity.74
            public void onReceiveAd() {
                Log.e("AdGeneration", "onReceiveAd");
            }

            public void onFailedToReceiveAd(ADGConsts.ADGErrorCode aDGErrorCode) {
                super.onFailedToReceiveAd(aDGErrorCode);
                Log.e("AdGeneration", "onFailedToReceiveAd " + aDGErrorCode.toString());
                MainActivity.this.cargarBannerVK();
            }

            public void onClickAd() {
                super.onClickAd();
                Log.e("AdGeneration", "onClickAd");
            }
        });
        this.adg.start();
        this.topBannerContainer.removeAllViews();
        this.topBannerContainer.addView(this.adg);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public void cargarBannerVK() {
        if (true) return;
        Log.e("bannerVK", "INICIO");
        MyTargetView myTargetView = new MyTargetView(this);
        this.myTargetBanner = myTargetView;
        myTargetView.setSlotId(1331960);
        this.myTargetBanner.setListener(new MyTargetView.MyTargetViewListener() { // from class: com.rosteam.gpsemulator.MainActivity.75
            @Override // com.my.target.ads.MyTargetView.MyTargetViewListener
            public void onLoad(MyTargetView myTargetView2) {
                Log.e("bannerMyTarget", "onLoad");
                MainActivity.this.topBannerContainer.removeAllViews();
                MainActivity.this.topBannerContainer.addView(MainActivity.this.myTargetBanner);
            }

            @Override // com.my.target.ads.MyTargetView.MyTargetViewListener
            public void onNoAd(IAdLoadingError iAdLoadingError, MyTargetView myTargetView2) {
                Log.e("bannerMyTarget", "onNoAd " + iAdLoadingError.getMessage());
                MainActivity.this.cargarBannerUnityNew();
            }

            @Override // com.my.target.ads.MyTargetView.MyTargetViewListener
            public void onShow(MyTargetView myTargetView2) {
                Log.e("bannerMyTarget", "onShow");
            }

            @Override // com.my.target.ads.MyTargetView.MyTargetViewListener
            public void onClick(MyTargetView myTargetView2) {
                Log.e("bannerMyTarget", "onClick");
            }
        });
        this.myTargetBanner.load();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public void cargarBannerUnityNew() {
        if (true) return;
        BannerView.IListener iListener = new BannerView.IListener() { // from class: com.rosteam.gpsemulator.MainActivity.76
            public void onBannerShown(BannerView bannerView) {
            }

            public void onBannerLoaded(BannerView bannerView) {
                Log.e("bannerUnity", "bannerUnity loaded");
                MainActivity.this.topBannerContainer.removeAllViews();
                try {
                    Log.e("myGPS", "agregamos banner unity");
                    MainActivity.this.topBannerContainer.addView(bannerView);
                } catch (Exception unused) {
                }
            }

            public void onBannerClick(BannerView bannerView) {
                Log.e("bannerUnity", "bannerUnity clicked");
            }

            public void onBannerFailedToLoad(BannerView bannerView, BannerErrorInfo bannerErrorInfo) {
                Log.e("bannerUnity", "bannerUnity failed");
            }

            public void onBannerLeftApplication(BannerView bannerView) {
                Log.e("bannerUnity", "bannerUnity leftapp");
            }
        };
        BannerView bannerView = new BannerView(this, this.bannerId, UnityBannerSize.getDynamicSize(getApplicationContext()));
        this.bannerUnity = bannerView;
        bannerView.setListener(iListener);
        this.bannerUnity.load();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public void cargarExitVK() {
        if (true) return;
        Log.e("cargarExitVK", "INICIO");
        MyTargetView myTargetView = new MyTargetView(this);
        myTargetView.setSlotId(1333543);
        myTargetView.setAdSize(MyTargetView.AdSize.ADSIZE_300x250);
        myTargetView.setListener(new MyTargetView.MyTargetViewListener() { // from class: com.rosteam.gpsemulator.MainActivity.77
            @Override // com.my.target.ads.MyTargetView.MyTargetViewListener
            public void onLoad(MyTargetView myTargetView2) {
                Log.e("cargarExitVK", "onLoad");
                MainActivity.this.myTargetExit = myTargetView2;
            }

            @Override // com.my.target.ads.MyTargetView.MyTargetViewListener
            public void onNoAd(IAdLoadingError iAdLoadingError, MyTargetView myTargetView2) {
                Log.e("cargarExitVK", "onNoAd " + iAdLoadingError.getMessage());
                MainActivity.this.cargarBannerUnityExit();
            }

            @Override // com.my.target.ads.MyTargetView.MyTargetViewListener
            public void onShow(MyTargetView myTargetView2) {
                Log.e("cargarExitVK", "onShow");
            }

            @Override // com.my.target.ads.MyTargetView.MyTargetViewListener
            public void onClick(MyTargetView myTargetView2) {
                Log.e("cargarExitVK", "onClick");
            }
        });
        myTargetView.load();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public void cargarTransitionAdmob() {
        if (true) return;
        Log.e("cargarTransitionAdmob", "inicio...");
        com.google.android.gms.ads.interstitial.InterstitialAd.load(this, "ca-app-pub-4161078187932834/8015562441", new AdRequest.Builder().build(), new InterstitialAdLoadCallback() { // from class: com.rosteam.gpsemulator.MainActivity.78
            public void onAdLoaded(com.google.android.gms.ads.interstitial.InterstitialAd interstitialAd) {
                MainActivity.this.mInterstitialAd = interstitialAd;
                Log.e("cargarTransitionAdmob", "onAdLoaded");
            }

            public void onAdFailedToLoad(LoadAdError loadAdError) {
                Log.e("cargarTransitionAdmob", loadAdError.toString());
                MainActivity.this.mInterstitialAd = null;
                MainActivity.this.cargarTransitionPangle();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void cargarTransitionPangle() {
        if (true) return;
        Log.e("cargarTransitionPangle", "inicio...");
        PAGInterstitialAd.loadAd("980476004", new PAGInterstitialRequest(), new PAGInterstitialAdLoadListener() { // from class: com.rosteam.gpsemulator.MainActivity.79
            public void onError(int i, String str) {
                Log.e("cargarTransitionPangle", "error: " + i + " - " + str);
                MainActivity.this.cargarTransitionYandex();
            }

            public void onAdLoaded(PAGInterstitialAd pAGInterstitialAd) {
                Log.e("cargarTransitionPangle", "interstitial Pangle Loaded");
                MainActivity.this.interstitialPangle = pAGInterstitialAd;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public void cargarTransitionYandex() {
        if (true) return;
        Log.e("cargarTransitionYandex", "incio");
        new InterstitialAdLoader(this).loadAd(new com.yandex.mobile.ads.common.AdRequest.Builder("R-M-16039764-3").build(), new InterstitialAdLoadListener() { // from class: com.rosteam.gpsemulator.MainActivity.80
            public void onAdLoaded(com.yandex.mobile.ads.interstitial.InterstitialAd interstitialAd) {
                Log.e("cargarTransitionYandex", "Interstitial loaded");
                MainActivity.this.interstitialYandex = interstitialAd;
            }

            public void onAdFailedToLoad(AdRequestError adRequestError) {
                Log.e("cargarTransitionYandex", "Interstitial failed to load: " + adRequestError.getDescription());
                MainActivity.this.cargarTransitionVK();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public void cargarTransitionVK() {
        if (true) return;
        Log.e("cargarTransitionVK", "INICIO");
        InterstitialAd interstitialAd = new InterstitialAd(1333003, this);
        interstitialAd.setListener(new InterstitialAd.InterstitialAdListener() { // from class: com.rosteam.gpsemulator.MainActivity.81
            @Override // com.my.target.ads.InterstitialAd.InterstitialAdListener
            public void onFailedToShow(InterstitialAd interstitialAd2) {
            }

            @Override // com.my.target.ads.InterstitialAd.InterstitialAdListener
            public void onLoad(InterstitialAd interstitialAd2) {
                Log.e("cargarTransitionVK", "onLoad");
                MainActivity.this.intersVK = interstitialAd2;
            }

            @Override // com.my.target.ads.InterstitialAd.InterstitialAdListener
            public void onNoAd(IAdLoadingError iAdLoadingError, InterstitialAd interstitialAd2) {
                Log.e("cargarTransitionVK", "onNoAd " + iAdLoadingError.getMessage());
            }

            @Override // com.my.target.ads.InterstitialAd.InterstitialAdListener
            public void onClick(InterstitialAd interstitialAd2) {
                Log.e("cargarTransitionVK", "onClick");
            }

            @Override // com.my.target.ads.InterstitialAd.InterstitialAdListener
            public void onDismiss(InterstitialAd interstitialAd2) {
                Log.e("cargarTransitionVK", "onDismiss");
            }

            @Override // com.my.target.ads.InterstitialAd.InterstitialAdListener
            public void onVideoCompleted(InterstitialAd interstitialAd2) {
                Log.e("cargarTransitionVK", "onVideoCompleted");
            }

            @Override // com.my.target.ads.InterstitialAd.InterstitialAdListener
            public void onDisplay(InterstitialAd interstitialAd2) {
                Log.e("cargarTransitionVK", "onDisplay");
            }
        });
        interstitialAd.load();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public void cargarBannerExit() {
        if (true) return;
        AdView adView = new AdView(this);
        this.adViewAdMobExit = adView;
        adView.setAdUnitId("ca-app-pub-4161078187932834/6864980928");
        AdRequest adRequestBuild = new AdRequest.Builder().build();
        this.adViewAdMobExit.setAdSize(AdSize.MEDIUM_RECTANGLE);
        this.adViewAdMobExit.setAdListener(new AdListener() { // from class: com.rosteam.gpsemulator.MainActivity.82
            public void onAdLoaded() {
                super.onAdLoaded();
                Log.e("adMob Exit", "banner Loaded");
                MainActivity.this.loadTimeExitAd = new Date().getTime();
            }

            public void onAdFailedToLoad(LoadAdError loadAdError) {
                super.onAdFailedToLoad(loadAdError);
                Log.e("adMob Exit", "banner failed to Load");
                MainActivity.this.adViewAdMobExit = null;
                MainActivity.this.cargarBannerExitYandex();
            }
        });
        this.adViewAdMobExit.loadAd(adRequestBuild);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void cargarBannerExitYandex() {
        if (true) return;
        final BannerAdView bannerAdView = new BannerAdView(getApplicationContext());
        int i = getResources().getDisplayMetrics().widthPixels;
        float f = getResources().getDisplayMetrics().density;
        int i2 = getResources().getDisplayMetrics().heightPixels;
        float f2 = getResources().getDisplayMetrics().density;
        bannerAdView.setAdSize(BannerAdSize.fixed(getApplicationContext(), 300, 400));
        com.yandex.mobile.ads.common.AdRequest adRequestBuild = new com.yandex.mobile.ads.common.AdRequest.Builder("R-M-16039764-5").build();
        bannerAdView.setBannerAdEventListener(new BannerAdEventListener() { // from class: com.rosteam.gpsemulator.MainActivity.83
            public void onAdClicked() {
            }

            public void onImpression(ImpressionData impressionData) {
            }

            public void onAdLoaded() {
                Log.e("YANDEX_ADS_EXIT", "onAdLoaded");
                MainActivity.this.bannerYandexExit = bannerAdView;
            }

            public void onAdFailedToLoad(AdRequestError adRequestError) {
                Log.e("YANDEX_ADS_EXIT", "onAdFailedToLoad " + adRequestError);
                MainActivity.this.bannerYandexExit = null;
                MainActivity.this.cargarBannerExitAdGen();
            }
        });
        bannerAdView.loadAd(adRequestBuild);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public void cargarBannerExitAdGen() {
        if (true) return;
        Log.e("AdGeneration", "cargarBannerExitAdGen");
        final ADG adg = new ADG(this);
        adg.setLocationId("184965");
        adg.setAdFrameSize(ADG.AdFrameSize.RECT);
        adg.setAdListener(new ADGListener() { // from class: com.rosteam.gpsemulator.MainActivity.84
            public void onReceiveAd() {
                MainActivity.this.adgExit = adg;
            }

            public void onFailedToReceiveAd(ADGConsts.ADGErrorCode aDGErrorCode) {
                super.onFailedToReceiveAd(aDGErrorCode);
                MainActivity.this.adgExit = null;
                MainActivity.this.cargarExitVK();
            }

            public void onClickAd() {
                super.onClickAd();
            }
        });
        adg.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public void cargarBannerUnityExit() {
        if (true) return;
        BannerView.IListener iListener = new BannerView.IListener() { // from class: com.rosteam.gpsemulator.MainActivity.85
            public void onBannerShown(BannerView bannerView) {
            }

            public void onBannerLoaded(BannerView bannerView) {
                Log.e("exitBannerUnity", "bannerUnity loaded");
            }

            public void onBannerClick(BannerView bannerView) {
                Log.e("exitBannerUnity", "bannerUnity clicked");
            }

            public void onBannerFailedToLoad(BannerView bannerView, BannerErrorInfo bannerErrorInfo) {
                Log.e("exitBannerUnity", "bannerUnity failed " + bannerErrorInfo.errorMessage + " | code: " + bannerErrorInfo.errorCode);
                MainActivity.this.exitBannerUnity = null;
            }

            public void onBannerLeftApplication(BannerView bannerView) {
                Log.e("exitBannerUnity", "bannerUnity leftapp");
            }
        };
        BannerView bannerView = new BannerView(this, this.unityExitBannerId, new UnityBannerSize(300, 250));
        this.exitBannerUnity = bannerView;
        bannerView.setListener(iListener);
        this.exitBannerUnity.load();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public void cargarRewarded() {
        if (true) return;
        RewardedAd.load(this, "ca-app-pub-4161078187932834/9728728587", new AdRequest.Builder().build(), new RewardedAdLoadCallback() { // from class: com.rosteam.gpsemulator.MainActivity.86
            public void onAdFailedToLoad(LoadAdError loadAdError) {
                MainActivity.this.rewardedAd = null;
            }

            public void onAdLoaded(RewardedAd rewardedAd) {
                MainActivity.this.rewardedAd = rewardedAd;
            }
        });
    }

    private boolean wasLoadTimeLessThanNHoursAgo(long j) {
        return new Date().getTime() - this.loadTimeExitAd < j * 3600000;
    }

    public void miToast(int i, int i2) {
        miToast(getResources().getString(i), i2);
    }

    public void miToast(String str, int i) {
        AnimatorSet animatorSet = new AnimatorSet();
        if (this.toastAnim) {
            return;
        }
        this.miToastView.setAlpha(1.0f);
        this.miToastView.setScaleX(1.0f);
        this.miToastView.setScaleY(1.0f);
        this.miToastView.setText(str);
        animatorSet.playTogether(ObjectAnimator.ofFloat(this.miToastView, "alpha", 1.0f, 0.0f), ObjectAnimator.ofFloat(this.miToastView, "scaleY", 1.0f, 0.5f), ObjectAnimator.ofFloat(this.miToastView, "scaleX", 1.0f, 0.5f));
        animatorSet.setStartDelay(i * 1150);
        animatorSet.setDuration(150L);
        animatorSet.addListener(new Animator.AnimatorListener() { // from class: com.rosteam.gpsemulator.MainActivity.87
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                MainActivity.this.toastAnim = true;
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                MainActivity.this.toastAnim = false;
            }
        });
        animatorSet.start();
    }

    public void goPro() {
        if (true) return;
        Log.e("GoPro", "inviteShown: " + this.inviteshown + " usos: " + this.cantUsos);
        String string = getString(R.string.proinvitemsg);
        if (this.cantUsos % 3 != 0 || this.noAds) {
            return;
        }
        new AlertDialog.Builder(this.ctw, R.style.CustomAlertDialog).setTitle(getString(R.string.pronvitetitle)).setMessage(string).setPositiveButton(R.string.accept, new DialogInterface.OnClickListener() { // from class: com.rosteam.gpsemulator.MainActivity.89
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                MainActivity.this.editor.putInt("downloads", MainActivity.this.cantUsos);
                MainActivity.this.editor.commit();
                MainActivity.this.hacerCompra();
            }
        }).setNeutralButton(getString(R.string.proinvitelater), new DialogInterface.OnClickListener() { // from class: com.rosteam.gpsemulator.MainActivity.88
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                MainActivity.this.cantUsos++;
                MainActivity.this.editor.putInt("downloads", MainActivity.this.cantUsos);
                MainActivity.this.editor.commit();
            }
        }).show();
    }

    public void hacerCompra() {
        if (true) return;
        ProductDetails.PricingPhase pricingPhase;
        ProductDetails.PricingPhase pricingPhase2;
        if (this.currentProductDetails != null) {
            int i = 0;
            int i2 = 0;
            for (int i3 = 0; i3 < this.currentProductDetails.getSubscriptionOfferDetails().size(); i3++) {
                if (((ProductDetails.SubscriptionOfferDetails) this.currentProductDetails.getSubscriptionOfferDetails().get(i3)).getBasePlanId().contentEquals("pro-3months")) {
                    i = i3;
                }
                if (((ProductDetails.SubscriptionOfferDetails) this.currentProductDetails.getSubscriptionOfferDetails().get(i3)).getBasePlanId().contentEquals("pro-monthly")) {
                    i2 = i3;
                }
            }
            String offerToken = ((ProductDetails.SubscriptionOfferDetails) this.currentProductDetails.getSubscriptionOfferDetails().get(i)).getOfferToken();
            ArrayList arrayList = new ArrayList();
            arrayList.add(BillingFlowParams.ProductDetailsParams.newBuilder().setProductDetails(this.currentProductDetails).setOfferToken(offerToken).build());
            final BillingFlowParams billingFlowParamsBuild = BillingFlowParams.newBuilder().setProductDetailsParamsList(arrayList).build();
            String offerToken2 = ((ProductDetails.SubscriptionOfferDetails) this.currentProductDetails.getSubscriptionOfferDetails().get(i2)).getOfferToken();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(BillingFlowParams.ProductDetailsParams.newBuilder().setProductDetails(this.currentProductDetails).setOfferToken(offerToken2).build());
            final BillingFlowParams billingFlowParamsBuild2 = BillingFlowParams.newBuilder().setProductDetailsParamsList(arrayList2).build();
            try {
                pricingPhase = (ProductDetails.PricingPhase) ((ProductDetails.SubscriptionOfferDetails) this.currentProductDetails.getSubscriptionOfferDetails().get(i)).getPricingPhases().getPricingPhaseList().get(0);
                try {
                    pricingPhase2 = (ProductDetails.PricingPhase) ((ProductDetails.SubscriptionOfferDetails) this.currentProductDetails.getSubscriptionOfferDetails().get(i2)).getPricingPhases().getPricingPhaseList().get(0);
                } catch (Exception unused) {
                    pricingPhase2 = null;
                }
            } catch (Exception unused2) {
                pricingPhase = null;
            }
            View viewInflate = getLayoutInflater().inflate(R.layout.purchase, (ViewGroup) null);
            LinearLayout linearLayout = (LinearLayout) viewInflate.findViewById(R.id.three_months);
            TextView textView = (TextView) viewInflate.findViewById(R.id.text_3months);
            TextView textView2 = (TextView) viewInflate.findViewById(R.id.text_saving);
            LinearLayout linearLayout2 = (LinearLayout) viewInflate.findViewById(R.id.one_month);
            TextView textView3 = (TextView) viewInflate.findViewById(R.id.text_1month);
            LinearLayout linearLayout3 = (LinearLayout) viewInflate.findViewById(R.id.dismiss);
            textView.setText(getString(R.string.money_3months, new Object[]{pricingPhase.getFormattedPrice()}));
            linearLayout.setOnClickListener(new View.OnClickListener() { // from class: com.rosteam.gpsemulator.MainActivity.90
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    MainActivity.this.billingClient.launchBillingFlow((Activity) MainActivity.this.context, billingFlowParamsBuild);
                }
            });
            textView2.setText(getString(R.string.save_money, new Object[]{Integer.valueOf((int) (((((pricingPhase2.getPriceAmountMicros() / 1000) * 3) - (pricingPhase.getPriceAmountMicros() / 1000)) / ((pricingPhase2.getPriceAmountMicros() / 1000) * 3)) * 100.0f))}));
            textView3.setText(getString(R.string.money_month, new Object[]{pricingPhase2.getFormattedPrice()}));
            linearLayout2.setOnClickListener(new View.OnClickListener() { // from class: com.rosteam.gpsemulator.MainActivity.91
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    MainActivity.this.billingClient.launchBillingFlow((Activity) MainActivity.this.context, billingFlowParamsBuild2);
                }
            });
            linearLayout3.setOnClickListener(new View.OnClickListener() { // from class: com.rosteam.gpsemulator.MainActivity.92
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    MainActivity.this.purchaseDialog.dismiss();
                }
            });
            AlertDialog alertDialogCreate = new AlertDialog.Builder((Activity) this.context, R.style.CustomAlertDialog).setTitle(R.string.upgradepro).setMessage(R.string.removeads).setView(viewInflate).create();
            this.purchaseDialog = alertDialogCreate;
            alertDialogCreate.show();
        }
    }

    protected void onActivityResult(int i, final int i2, final Intent intent) {
        super.onActivityResult(i, i2, intent);
        Log.e("onActivityResult", "Code: " + i2);
        if (i == 101 && i2 == 1) {
            this.consentInformation.reset();
            consentGDPR_UMP();
            return;
        }
        if (i == 5005) {
            loadRutasFromPref();
            loadFavsFromPref();
            this.pinnedTemp = loadPinned();
            PinnedAdapter pinnedAdapter = this.miPinnedAdapter;
            if (pinnedAdapter != null) {
                pinnedAdapter.notifyDataSetChanged();
            }
            new Handler().postDelayed(new Runnable() { // from class: com.rosteam.gpsemulator.MainActivity.93
                @Override // java.lang.Runnable
                public void run() {
                    Intent intent2 = intent;
                    if (intent2 != null) {
                        String stringExtra = intent2.getStringExtra("cadena");
                        int i3 = i2;
                        if (i3 == 0) {
                            Log.e("onActivityResult", "Fav seleccionado cadena: " + stringExtra);
                        } else {
                            if (i3 == 1) {
                                Log.e("onActivityResult", "recibimos ruta: " + stringExtra);
                                RegUbic rutaToUbic = LocationUtils.parseRutaToUbic(MainActivity.this.preferences.getString(stringExtra, TtmlNode.ANONYMOUS_REGION_ID));
                                rutaToUbic.prefName = stringExtra;
                                MainActivity.this.currentRuta = stringExtra;
                                MainActivity.this.gotoRoute(rutaToUbic);
                                return;
                            }
                            if (i3 != 2) {
                                return;
                            }
                        }
                        Log.e("onActivityResult", "Historico seleccionado cadena: " + stringExtra);
                        MainActivity.this.gotoLocation(LocationUtils.parsePrefToUbic(stringExtra));
                    }
                }
            }, 300L);
            return;
        }
        if (i != 102) {
            if (i2 == 2) {
                Log.e("onActivityResult", "open config...");
                launchPermissionDialog(true);
                return;
            }
            return;
        }
        Log.e("gpsemulator", "retorno desde search, result = " + i2);
        if (i2 != 0 || intent == null) {
            return;
        }
        Log.e("onActivityResult", "busqueda seleccionada cadena: " + intent.getStringExtra("cadena"));
        gotoLocation(LocationUtils.parsePrefToUbic(intent.getStringExtra("cadena")));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void gotoLocation(RegUbic regUbic) {
        miToast(regUbic.ciudadpais, 1);
        moveTo(new LatLng(regUbic.lat, regUbic.lng), regUbic.zoom, regUbic.bearing);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void gotoRoute(RegUbic regUbic) {
        miToast(regUbic.name, 1);
        this.currentRuta = regUbic.prefName;
        this.currentRoute = regUbic;
        this.modoApp = 2;
        this.startButton.setImageResource(R.drawable.ic_play);
        this.startButton.setEnabled(true);
        this.stopButton.setEnabled(true);
        this.favButton.setImageResource(R.drawable.botondelete);
        this.favButton.setEnabled(true);
        Polyline polyline = this.polyline1;
        if (polyline != null) {
            polyline.remove();
        }
        Circle circle = this.miCirculo;
        if (circle != null) {
            circle.remove();
        }
        this.polyline1 = this.map.addPolyline(new PolylineOptions().clickable(false).geodesic(true).add(new LatLng[0]));
        List<LatLng> list = regUbic.puntos;
        this.polyline1.setPoints(list);
        this.polyline1.setStartCap(new RoundCap());
        this.polyline1.setEndCap(new CustomCap(BitmapDescriptorFactory.fromResource(R.drawable.arrow2), convertDpToPixel(6.0f)));
        this.polyline1.setWidth(convertDpToPixel(4.0f));
        this.polyline1.setColor(getResources().getColor(R.color.colorRuta));
        this.polyline1.setJointType(2);
        LatLngBounds.Builder builder = new LatLngBounds.Builder();
        Iterator<LatLng> it = list.iterator();
        while (it.hasNext()) {
            builder.include(it.next());
        }
        this.map.animateCamera(CameraUpdateFactory.newLatLngBounds(builder.build(), 80), this.preferences.getBoolean("animate", true) ? 2000 : 1, (GoogleMap.CancelableCallback) null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void switchPinnedList(boolean z, final int i) {
        runOnUiThread(new Runnable() { // from class: com.rosteam.gpsemulator.MainActivity.94
            @Override // java.lang.Runnable
            public void run() {
                ViewGroup.LayoutParams layoutParams = MainActivity.this.pinedList.getLayoutParams();
                layoutParams.height = MainActivity.this.convertDpToPixel(i);
                MainActivity.this.pinedList.setLayoutParams(layoutParams);
                for (ViewParent parent = MainActivity.this.pinedList.getParent(); parent != null; parent = parent.getParent()) {
                    parent.requestLayout();
                }
            }
        });
        RotateAnimation rotateAnimation = new RotateAnimation(z ? -90.0f : 0.0f, z ? 0.0f : -90.0f, 1, 0.5f, 1, 0.5f);
        rotateAnimation.setDuration(300L);
        rotateAnimation.setInterpolator(new LinearInterpolator());
        rotateAnimation.setFillAfter(true);
        this.pinview.startAnimation(rotateAnimation);
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this.mobileContainer, "translationY", z ? 0.0f : convertDpToPixel(i));
        objectAnimatorOfFloat.setDuration(300L);
        objectAnimatorOfFloat.start();
    }

    public void onPurchasesUpdated(BillingResult billingResult, List<Purchase> list) {
        if (billingResult.getResponseCode() == 0 && list != null) {
            runOnUiThread(new Runnable() { // from class: com.rosteam.gpsemulator.MainActivity.95
                @Override // java.lang.Runnable
                public void run() {
                    if (MainActivity.this.purchaseDialog != null) {
                        MainActivity.this.purchaseDialog.dismiss();
                    }
                }
            });
            Iterator<Purchase> it = list.iterator();
            while (it.hasNext()) {
                handlePurchase(it.next());
            }
            return;
        }
        if (billingResult.getResponseCode() == 7) {
            this.billingClient.queryPurchasesAsync(QueryPurchasesParams.newBuilder().setProductType("subs").build(), new PurchasesResponseListener() { // from class: com.rosteam.gpsemulator.MainActivity.96
                public void onQueryPurchasesResponse(BillingResult billingResult2, List<Purchase> list2) {
                    if (list2 != null && list2.size() > 0) {
                        Log.e("fakegps", "MAIN hay purchase");
                        MainActivity.this.editor.putBoolean("esSubs", true);
                        MainActivity.this.editor.commit();
                        MainActivity.this.handlePurchase(list2.get(0));
                        return;
                    }
                    MainActivity.this.billingClient.queryPurchasesAsync(QueryPurchasesParams.newBuilder().setProductType("inapp").build(), new PurchasesResponseListener() { // from class: com.rosteam.gpsemulator.MainActivity.96.1
                        public void onQueryPurchasesResponse(BillingResult billingResult3, List<Purchase> list3) {
                            if (list3 != null && list3.size() > 0) {
                                Log.e("fakegps", "hay purchase");
                                MainActivity.this.editor.putBoolean("esSubs", false);
                                MainActivity.this.editor.commit();
                                MainActivity.this.handlePurchase(list3.get(0));
                                return;
                            }
                            MainActivity.this.deshabilitarPRO();
                        }
                    });
                }
            });
        } else {
            if (billingResult.getResponseCode() == 1) {
                return;
            }
            Toast.makeText(getApplicationContext(), "Error " + billingResult.getDebugMessage(), 0).show();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    void handlePurchase(Purchase purchase) {
        Log.e("fakegps", "handlePurchase state: " + purchase.getPurchaseState());
        if (purchase.getPurchaseState() == 1) {
            if (!purchase.isAcknowledged()) {
                Log.e("fakegps", "vamos a hacer el acknowledgment");
                this.billingClient.acknowledgePurchase(AcknowledgePurchaseParams.newBuilder().setPurchaseToken(purchase.getPurchaseToken()).build(), new AcknowledgePurchaseResponseListener() { // from class: com.rosteam.gpsemulator.MainActivity.97
                    public void onAcknowledgePurchaseResponse(BillingResult billingResult) {
                        if (billingResult.getResponseCode() == 0) {
                            Log.e("fakegps", "acknowledgment response: " + billingResult.getResponseCode());
                            MainActivity.this.runOnUiThread(new Runnable() { // from class: com.rosteam.gpsemulator.MainActivity.97.1
                                @Override // java.lang.Runnable
                                public void run() {
                                    MainActivity.this.habilitarPRO();
                                    Toast.makeText((Context) MainActivity.this, R.string.congrats, 0).show();
                                }
                            });
                        }
                    }
                });
                return;
            }
            habilitarPRO();
            return;
        }
        if (purchase.getPurchaseState() == 2) {
            Toast.makeText((Context) this, R.string.purchase_pending, 0).show();
        } else if (purchase.getPurchaseState() == 0) {
            deshabilitarPRO();
            Toast.makeText(getApplicationContext(), "Purchase Status Unknown", 0).show();
        }
    }

    public void habilitarPRO() {
        runOnUiThread(new Runnable() { // from class: com.rosteam.gpsemulator.MainActivity.98
            @Override // java.lang.Runnable
            public void run() {
                if (MainActivity.this.noAds) {
                    return;
                }
                MainActivity.this.noAds = true;
                MainActivity.this.editor.putBoolean("noads", true);
                MainActivity.this.editor.putInt("numerofavoritos", 1000);
                MainActivity.this.editor.commit();
                try {
                    ViewGroup.LayoutParams layoutParams = MainActivity.this.topBannerContainer.getLayoutParams();
                    layoutParams.height = 0;
                    MainActivity.this.topBannerContainer.setLayoutParams(layoutParams);
                    MainActivity.this.topBannerContainer.removeAllViews();
                    MainActivity.this.purchaseFromDrawerLyt.setVisibility(8);
                    MainActivity.this.child.getParent().requestLayout();
                    Log.e("myGPS", "eliminamos banner");
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        });
    }

    public void deshabilitarPRO() {
        Log.e("myGPS", "deshabilitarPRO - bypassed");
        habilitarPRO();
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void consentGDPR_UMP() {
        ConsentRequestParameters consentRequestParametersBuild = new ConsentRequestParameters.Builder().setTagForUnderAgeOfConsent(false).build();
        ConsentInformation consentInformation = UserMessagingPlatform.getConsentInformation(this);
        this.consentInformation = consentInformation;
        consentInformation.requestConsentInfoUpdate(this, consentRequestParametersBuild, new ConsentInformation.OnConsentInfoUpdateSuccessListener() { // from class: com.rosteam.gpsemulator.MainActivity.99
            public void onConsentInfoUpdateSuccess() {
                if (MainActivity.this.consentInformation.isConsentFormAvailable()) {
                    MainActivity.this.loadForm();
                }
                if (MainActivity.this.consentInformation.getConsentStatus() == 1) {
                    MainActivity.this.editor.putBoolean("isEEA", false);
                } else {
                    MainActivity.this.editor.putBoolean("isEEA", true);
                }
                MainActivity.this.editor.putInt("consent_status", MainActivity.this.consentInformation.getConsentStatus());
                MainActivity.this.editor.commit();
            }
        }, new ConsentInformation.OnConsentInfoUpdateFailureListener() { // from class: com.rosteam.gpsemulator.MainActivity.100
            public void onConsentInfoUpdateFailure(FormError formError) {
            }
        });
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void loadForm() {
        UserMessagingPlatform.loadConsentForm(this, new UserMessagingPlatform.OnConsentFormLoadSuccessListener() { // from class: com.rosteam.gpsemulator.MainActivity.101
            public void onConsentFormLoadSuccess(ConsentForm consentForm) {
                MainActivity.this.consentForm = consentForm;
                if (MainActivity.this.consentInformation.getConsentStatus() == 2) {
                    consentForm.show(MainActivity.this, new ConsentForm.OnConsentFormDismissedListener() { // from class: com.rosteam.gpsemulator.MainActivity.101.1
                        public void onConsentFormDismissed(FormError formError) {
                            MainActivity.this.loadForm();
                        }
                    });
                }
            }
        }, new UserMessagingPlatform.OnConsentFormLoadFailureListener() { // from class: com.rosteam.gpsemulator.MainActivity.102
            public void onConsentFormLoadFailure(FormError formError) {
            }
        });
    }

    class PinnedAdapter extends ArrayAdapter<RegUbic> {
        public PinnedAdapter(Context context, ArrayList<RegUbic> arrayList) {
            super(context, 0, arrayList);
        }

        @Override // android.widget.ArrayAdapter, android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            RegUbic item = getItem(i);
            if (view == null) {
                view = LayoutInflater.from(MainActivity.this.ctw).inflate(R.layout.pinned_row, viewGroup, false);
            }
            TextView textView = (TextView) view.findViewById(R.id.pin_name);
            ImageView imageView = (ImageView) view.findViewById(R.id.icon_pinned_row);
            if (item.name != null) {
                textView.setText(item.name);
                imageView.setImageResource(R.drawable.pinned_route);
            } else {
                textView.setText(item.ciudadpais);
                imageView.setImageResource(R.drawable.pinned_location);
            }
            if (item.pinnedPlaceholder) {
                imageView.setVisibility(4);
            }
            return view;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public void transitionShow(final Intent intent, final int i) {
        startActivityForResult(intent, i);
        if (false) {
            if (this.mInterstitialAd != null) {
                Log.e("transitionShow", "Va AdMob");
                this.mInterstitialAd.setFullScreenContentCallback(new FullScreenContentCallback() { // from class: com.rosteam.gpsemulator.MainActivity.103
                    public void onAdClicked() {
                        Log.e("mInterstitialAd", "Ad was clicked.");
                    }

                    public void onAdDismissedFullScreenContent() {
                        Log.e("mInterstitialAd", "Ad dismissed fullscreen content.");
                        MainActivity.this.mInterstitialAd = null;
                        MainActivity.this.cargarTransitionAdmob();
                        MainActivity.this.startActivityForResult(intent, i);
                    }

                    public void onAdFailedToShowFullScreenContent(com.google.android.gms.ads.AdError adError) {
                        Log.e("mInterstitialAd", "Ad failed to show fullscreen content.");
                        MainActivity.this.mInterstitialAd = null;
                        MainActivity.this.cargarTransitionAdmob();
                        MainActivity.this.startActivityForResult(intent, i);
                    }

                    public void onAdImpression() {
                        Log.e("mInterstitialAd", "Ad recorded an impression.");
                    }

                    public void onAdShowedFullScreenContent() {
                        Log.e("mInterstitialAd", "Ad showed fullscreen content.");
                    }
                });
                setAdBlock();
                this.mInterstitialAd.show(this);
            } else if (this.unityTransicionReady) {
                Log.e("transitionShow", "Va Unity");
                this.unityTransicionReady = false;
                IUnityAdsShowListener iUnityAdsShowListener = new IUnityAdsShowListener() { // from class: com.rosteam.gpsemulator.MainActivity.104
                    public void onUnityAdsShowFailure(String str, UnityAds.UnityAdsShowError unityAdsShowError, String str2) {
                        Log.e("UnityAdsExample", "Unity Ads failed to show ad for " + str + " with error: [" + unityAdsShowError + "] " + str2);
                        MainActivity.this.startActivityForResult(intent, i);
                    }

                    public void onUnityAdsShowStart(String str) {
                        Log.e("UnityAdsExample", "onUnityAdsShowStart: " + str);
                    }

                    public void onUnityAdsShowClick(String str) {
                        Log.e("UnityAdsExample", "onUnityAdsShowClick: " + str);
                    }

                    public void onUnityAdsShowComplete(String str, UnityAds.UnityAdsShowCompletionState unityAdsShowCompletionState) {
                        Log.e("UnityAdsExample", "onUnityAdsShowComplete: " + str);
                        MainActivity.this.startActivityForResult(intent, i);
                    }
                };
                setAdBlock();
                UnityAds.show(this, this.transicion01Id, new UnityAdsShowOptions(), iUnityAdsShowListener);
            } else {
                ADGInterstitial aDGInterstitial = this.adgInterstitial;
                if (aDGInterstitial != null && aDGInterstitial.isReady()) {
                    Log.e("transitionShow", "Va adGen");
                    this.adgInterstitial.setAdListener(new ADGInterstitialListener() { // from class: com.rosteam.gpsemulator.MainActivity.105
                        public void onReceiveAd() {
                        }

                        public void onCloseInterstitial() {
                            MainActivity.this.startActivityForResult(intent, i);
                            MainActivity.this.adgInterstitial.preload();
                        }
                    });
                    setAdBlock();
                    this.adgInterstitial.show();
                } else if (this.interstitialPangle != null) {
                    Log.e("transitionShow", "Va Pangle");
                    this.interstitialPangle.setAdInteractionListener(new PAGInterstitialAdInteractionListener() { // from class: com.rosteam.gpsemulator.MainActivity.106
                        public void onAdClicked() {
                        }

                        public void onAdShowed() {
                            Log.e("PANGLE", "AD showed");
                        }

                        public void onAdDismissed() {
                            Log.e("PANGLE", "AD dismissed");
                            MainActivity.this.cargarTransitionAdmob();
                            MainActivity.this.interstitialPangle = null;
                            MainActivity.this.startActivityForResult(intent, i);
                        }
                    });
                    setAdBlock();
                    this.interstitialPangle.show(this);
                } else if (this.interstitialYandex != null) {
                    Log.e("transitionShow", "Va Yandex");
                    this.interstitialYandex.setAdEventListener(new InterstitialAdEventListener() { // from class: com.rosteam.gpsemulator.MainActivity.107
                        public void onAdClicked() {
                        }

                        public void onAdImpression(ImpressionData impressionData) {
                        }

                        public void onAdShown() {
                            Log.e("YANDEX_INTERSTITIAL", "onAdShown");
                        }

                        public void onAdFailedToShow(AdError adError) {
                            Log.e("YANDEX_INTERSTITIAL", "onAdFailedToShow " + adError.getDescription());
                            MainActivity.this.startActivityForResult(intent, i);
                        }

                        public void onAdDismissed() {
                            Log.e("YANDEX_INTERSTITIAL", "onAdDismissed");
                            MainActivity.this.interstitialYandex = null;
                            MainActivity.this.startActivityForResult(intent, i);
                            MainActivity.this.cargarTransitionYandex();
                        }
                    });
                    setAdBlock();
                    this.interstitialYandex.show(this);
                } else if (this.intersVK != null) {
                    Log.e("VK", "intersVK not null");
                    this.intersVK.setListener(new InterstitialAd.InterstitialAdListener() { // from class: com.rosteam.gpsemulator.MainActivity.108
                        @Override // com.my.target.ads.InterstitialAd.InterstitialAdListener
                        public void onClick(InterstitialAd interstitialAd) {
                        }

                        @Override // com.my.target.ads.InterstitialAd.InterstitialAdListener
                        public void onDisplay(InterstitialAd interstitialAd) {
                        }

                        @Override // com.my.target.ads.InterstitialAd.InterstitialAdListener
                        public void onFailedToShow(InterstitialAd interstitialAd) {
                        }

                        @Override // com.my.target.ads.InterstitialAd.InterstitialAdListener
                        public void onLoad(InterstitialAd interstitialAd) {
                        }

                        @Override // com.my.target.ads.InterstitialAd.InterstitialAdListener
                        public void onNoAd(IAdLoadingError iAdLoadingError, InterstitialAd interstitialAd) {
                        }

                        @Override // com.my.target.ads.InterstitialAd.InterstitialAdListener
                        public void onVideoCompleted(InterstitialAd interstitialAd) {
                        }

                        @Override // com.my.target.ads.InterstitialAd.InterstitialAdListener
                        public void onDismiss(InterstitialAd interstitialAd) {
                            MainActivity.this.intersVK = null;
                        }
                    });
                    setAdBlock();
                    this.intersVK.show();
                    startActivityForResult(intent, i);
                } else {
                    startActivityForResult(intent, i);
                }
            }
        } else {
            startActivityForResult(intent, i);
        }
        onetimeSplashLock();
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void checarUpdate() {
        this.appUpdateManager = AppUpdateManagerFactory.create(this);
        InstallStateUpdatedListener installStateUpdatedListener = new InstallStateUpdatedListener() { // from class: com.rosteam.gpsemulator.MainActivity$$ExternalSyntheticLambda0
            public final void onStateUpdate(Object obj) {
                this.f$0.m506lambda$checarUpdate$0$comrosteamgpsemulatorMainActivity((InstallState) obj);
            }
        };
        this.installStateUpdatedListener = installStateUpdatedListener;
        this.appUpdateManager.registerListener(installStateUpdatedListener);
        this.appUpdateManager.getAppUpdateInfo().addOnSuccessListener(new OnSuccessListener() { // from class: com.rosteam.gpsemulator.MainActivity$$ExternalSyntheticLambda1
            public final void onSuccess(Object obj) {
                this.f$0.m507lambda$checarUpdate$1$comrosteamgpsemulatorMainActivity((AppUpdateInfo) obj);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$checarUpdate$0$com-rosteam-gpsemulator-MainActivity, reason: not valid java name */
    /* synthetic */ void m506lambda$checarUpdate$0$comrosteamgpsemulatorMainActivity(InstallState installState) {
        if (installState.installStatus() == 11) {
            popupSnackBarForCompleteUpdate();
            GoogleMap googleMap = this.map;
            if (googleMap != null) {
                googleMap.getUiSettings().setZoomControlsEnabled(false);
                return;
            }
            return;
        }
        if (installState.installStatus() == 4) {
            removeInstallStateUpdateListener();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX INFO: renamed from: lambda$checarUpdate$1$com-rosteam-gpsemulator-MainActivity, reason: not valid java name */
    /* synthetic */ void m507lambda$checarUpdate$1$comrosteamgpsemulatorMainActivity(AppUpdateInfo appUpdateInfo) {
        if (appUpdateInfo.updateAvailability() == 2 && appUpdateInfo.isUpdateTypeAllowed(0)) {
            try {
                this.appUpdateManager.startUpdateFlowForResult(appUpdateInfo, 0, this, 101);
                return;
            } catch (IntentSender.SendIntentException e) {
                e.printStackTrace();
                return;
            }
        }
        if (appUpdateInfo.installStatus() == 11) {
            popupSnackBarForCompleteUpdate();
            GoogleMap googleMap = this.map;
            if (googleMap != null) {
                googleMap.getUiSettings().setZoomControlsEnabled(false);
            }
        }
    }

    private void popupSnackBarForCompleteUpdate() {
        Snackbar snackbarMake = Snackbar.make(findViewById(R.id.snackContainer), R.string.newappready, -2);
        snackbarMake.setAction(R.string.install, new View.OnClickListener() { // from class: com.rosteam.gpsemulator.MainActivity$$ExternalSyntheticLambda2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.m508xa719469b(view);
            }
        }).setActionTextColor(-1);
        View view = snackbarMake.getView();
        ((TextView) view.findViewById(com.google.android.material.R.id.snackbar_text)).setTextColor(-1);
        view.setBackgroundColor(getResources().getColor(R.color.colorAccent));
        snackbarMake.show();
    }

    /* JADX INFO: renamed from: lambda$popupSnackBarForCompleteUpdate$2$com-rosteam-gpsemulator-MainActivity, reason: not valid java name */
    /* synthetic */ void m508xa719469b(View view) {
        AppUpdateManager appUpdateManager = this.appUpdateManager;
        if (appUpdateManager != null) {
            appUpdateManager.completeUpdate();
        }
    }

    private void removeInstallStateUpdateListener() {
        AppUpdateManager appUpdateManager = this.appUpdateManager;
        if (appUpdateManager != null) {
            appUpdateManager.unregisterListener(this.installStateUpdatedListener);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void checkOverlayPermission() {
        if (Settings.canDrawOverlays(this)) {
            return;
        }
        startActivity(new Intent("android.settings.action.MANAGE_OVERLAY_PERMISSION"));
    }

    public int convertDpToPixel(float f) {
        return (int) (f * (getResources().getDisplayMetrics().densityDpi / 160.0f));
    }
}
