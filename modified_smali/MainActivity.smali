.class public Lcom/rosteam/gpsemulator/MainActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "MainActivity.java"

# interfaces
.implements Lcom/unity3d/ads/IUnityAdsInitializationListener;
.implements Lcom/android/billingclient/api/PurchasesUpdatedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rosteam/gpsemulator/MainActivity$checkAdAvailability;,
        Lcom/rosteam/gpsemulator/MainActivity$FetchUrl;,
        Lcom/rosteam/gpsemulator/MainActivity$PinnedAdapter;,
        Lcom/rosteam/gpsemulator/MainActivity$Group;,
        Lcom/rosteam/gpsemulator/MainActivity$DataParserMapBox;,
        Lcom/rosteam/gpsemulator/MainActivity$DataParser;,
        Lcom/rosteam/gpsemulator/MainActivity$ParserTask;
    }
.end annotation


# static fields
.field public static COMPLEXIDAD_MAX_RUTA:J = 0x1388L

.field private static final MODO_CREAR_RUTA:I = 0x1

.field private static final MODO_DRIVING:I = 0xc9

.field private static final MODO_NORMAL:I = 0x0

.field private static final MODO_PLAY_PENDING:I = 0x5

.field private static final MODO_PUNTO_RUNNING:I = 0x6

.field private static final MODO_RUTA_PAUSE:I = 0x3

.field private static final MODO_RUTA_PLAYING:I = 0x4

.field private static final MODO_RUTA_READY:I = 0x2

.field private static final MODO_WALKING:I = 0xc8

.field public static final MY_PERMISSIONS_NOTIFICATION:I = 0x62

.field public static final MY_PERMISSIONS_REQUEST_LOCATION:I = 0x63

.field static final NUMEROHISTORICOS:I = 0xc

.field public static final REQUEST_CODE_OPENBOOKMARKS:I = 0x138d

.field public static final REQUEST_CODE_OPEN_SETTINGS:I = 0x65

.field public static final REQUEST_CODE_SEARCH:I = 0x66

.field public static final RESULT_CODE_OPEN_CONFIG:I = 0x2

.field public static final RESULT_CODE_OPEN_GDPR:I = 0x1

.field private static final RUTA_AUTOMATICA:I = 0x65

.field private static final RUTA_CIRCULO:I = 0x66

.field private static final RUTA_CIRCULO_READYTOSAVE:I = 0x67

.field private static final RUTA_MANUAL:I = 0x64

.field public static SEG_ENTRE_INTERS_CORTO:J = 0x96L

.field public static SEG_ENTRE_SPLASH_CORTO:J = 0x96L

.field public static SEG_ENTRE_SPLASH_LARGO:J = 0xd2L

.field public static TIEMPO_ESPERA_ADS:J = 0xb54L

.field public static final VELOCIDAD_ESTATICA:F = 0.02777778f

.field public static final VELOCIDAD_ESTATICA_UMBRAL:F = 0.2777778f

.field public static VEL_MAX_KM:I = 0x384

.field public static VEL_MAX_MILES:I = 0x230


# instance fields
.field GetTimeLat:D

.field GetTimeLng:D

.field adViewAdMob:Lcom/google/android/gms/ads/AdView;

.field adViewAdMobExit:Lcom/google/android/gms/ads/AdView;

.field addresses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/location/Address;",
            ">;"
        }
    .end annotation
.end field

.field adg:Lcom/socdm/d/adgeneration/ADG;

.field adgExit:Lcom/socdm/d/adgeneration/ADG;

.field adgInterstitial:Lcom/socdm/d/adgeneration/interstitial/ADGInterstitial;

.field anuncioView:Landroid/view/View;

.field appUpdateManager:Lcom/google/android/play/core/appupdate/AppUpdateManager;

.field automaticRouteText:Landroid/widget/TextView;

.field private bannerId:Ljava/lang/String;

.field bannerUnity:Lcom/unity3d/services/banners/BannerView;

.field bannerYandexExit:Lcom/yandex/mobile/ads/banner/BannerAdView;

.field billingClient:Lcom/android/billingclient/api/BillingClient;

.field cantUsos:I

.field child:Landroid/view/View;

.field consentForm:Lcom/google/android/ump/ConsentForm;

.field consentInformation:Lcom/google/android/ump/ConsentInformation;

.field context:Landroid/content/Context;

.field createRouteLyt:Landroid/widget/LinearLayout;

.field ctw:Landroid/view/ContextThemeWrapper;

.field currentLat:D

.field currentLong:D

.field currentMark:Lcom/google/android/gms/maps/model/Marker;

.field currentProductDetails:Lcom/android/billingclient/api/ProductDetails;

.field currentRoute:Lcom/rosteam/gpsemulator/utils/RegUbic;

.field currentRuta:Ljava/lang/String;

.field drawer:Landroidx/drawerlayout/widget/DrawerLayout;

.field editor:Landroid/content/SharedPreferences$Editor;

.field exitBannerUnity:Lcom/unity3d/services/banners/BannerView;

.field private favButton:Landroid/widget/ImageButton;

.field favorites:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/rosteam/gpsemulator/utils/RegUbic;",
            ">;"
        }
    .end annotation
.end field

.field groups:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/rosteam/gpsemulator/MainActivity$Group;",
            ">;"
        }
    .end annotation
.end field

.field final handler:Landroid/os/Handler;

.field history:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/rosteam/gpsemulator/utils/RegUbic;",
            ">;"
        }
    .end annotation
.end field

.field imm:Landroid/view/inputmethod/InputMethodManager;

.field installStateUpdatedListener:Lcom/google/android/play/core/install/InstallStateUpdatedListener;

.field intersVK:Lcom/my/target/ads/InterstitialAd;

.field interstitialPangle:Lcom/bytedance/sdk/openadsdk/api/interstitial/PAGInterstitialAd;

.field interstitialYandex:Lcom/yandex/mobile/ads/interstitial/InterstitialAd;

.field inviteshown:Z

.field lat:[D

.field lng:[D

.field private loadListener:Lcom/unity3d/ads/IUnityAdsLoadListener;

.field private loadTimeExitAd:J

.field loopMode:I

.field mFirebaseAnalytics:Lcom/google/firebase/analytics/FirebaseAnalytics;

.field private mInterstitialAd:Lcom/google/android/gms/ads/interstitial/InterstitialAd;

.field private mRequestIntent:Landroid/content/Intent;

.field private map:Lcom/google/android/gms/maps/GoogleMap;

.field mapTypeValue:Ljava/lang/String;

.field metric:Z

.field miCirculo:Lcom/google/android/gms/maps/model/Circle;

.field private miExitDialog:Lcom/rosteam/gpsemulator/miBottomSheetDialog;

.field miPinnedAdapter:Lcom/rosteam/gpsemulator/MainActivity$PinnedAdapter;

.field miToastView:Landroid/widget/TextView;

.field misKMxHora:F

.field mobileContainer:Landroid/view/View;

.field private modoApp:I

.field private modoAutomatic:I

.field private modoRuta:I

.field myTargetBanner:Lcom/my/target/ads/MyTargetView;

.field myTargetExit:Lcom/my/target/ads/MyTargetView;

.field nativeAdView:Landroid/view/View;

.field noAds:Z

.field numerofavoritos:I

.field openVK:Lcom/my/target/ads/InterstitialAd;

.field permisosLayout:Landroid/view/View;

.field permissionDialog:Landroidx/appcompat/app/AlertDialog;

.field pinedClosed:Z

.field pinedList:Landroid/widget/ListView;

.field pinnedTemp:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/rosteam/gpsemulator/utils/RegUbic;",
            ">;"
        }
    .end annotation
.end field

.field pinview:Landroid/widget/ImageView;

.field private placementId02:Ljava/lang/String;

.field polyline1:Lcom/google/android/gms/maps/model/Polyline;

.field polylinePending:Lcom/google/android/gms/maps/model/Polyline;

.field preBannerYandex:Lcom/yandex/mobile/ads/banner/BannerAdView;

.field preferences:Landroid/content/SharedPreferences;

.field purchaseDialog:Landroidx/appcompat/app/AlertDialog;

.field purchaseFromDrawerLyt:Landroid/widget/LinearLayout;

.field private rewardedAd:Lcom/google/android/gms/ads/rewarded/RewardedAd;

.field private rewardedAutomaticRoutes:I

.field rutas:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/rosteam/gpsemulator/utils/RegUbic;",
            ">;"
        }
    .end annotation
.end field

.field sdkVersion:I

.field seAgregoBanner:Z

.field seekTouchTracking:Z

.field private showListener:Lcom/unity3d/ads/IUnityAdsShowListener;

.field private splashId:Ljava/lang/String;

.field private startButton:Landroid/widget/ImageButton;

.field private stopButton:Landroid/widget/ImageButton;

.field private stopId:Ljava/lang/String;

.field private stopMessageReceiver:Landroid/content/BroadcastReceiver;

.field textHoraFake:Landroid/widget/TextView;

.field timeArea:Ljava/lang/String;

.field timer:Ljava/util/Timer;

.field timerTask:Ljava/util/TimerTask;

.field toastAnim:Z

.field topBannerContainer:Landroid/widget/LinearLayout;

.field topBannerYandexReady:Z

.field private transicion01Id:Ljava/lang/String;

.field ultimaUbic:Lcom/rosteam/gpsemulator/utils/RegUbic;

.field private undoButton:Landroid/widget/ImageButton;

.field private unityExitBannerId:Ljava/lang/String;

.field private unityGameID:Ljava/lang/String;

.field unitySplashReady:Z

.field unityStopReady:Z

.field unityTransicionReady:Z

.field private updateMessageReceiverUpdate:Landroid/content/BroadcastReceiver;

.field velocidad:F

.field private vungleAppOpen:Lcom/vungle/ads/InterstitialAd;

.field zoneName:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$fgetfavButton(Lcom/rosteam/gpsemulator/MainActivity;)Landroid/widget/ImageButton;
    .registers 1

    iget-object p0, p0, Lcom/rosteam/gpsemulator/MainActivity;->favButton:Landroid/widget/ImageButton;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRequestIntent(Lcom/rosteam/gpsemulator/MainActivity;)Landroid/content/Intent;
    .registers 1

    iget-object p0, p0, Lcom/rosteam/gpsemulator/MainActivity;->mRequestIntent:Landroid/content/Intent;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmap(Lcom/rosteam/gpsemulator/MainActivity;)Lcom/google/android/gms/maps/GoogleMap;
    .registers 1

    iget-object p0, p0, Lcom/rosteam/gpsemulator/MainActivity;->map:Lcom/google/android/gms/maps/GoogleMap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmodoApp(Lcom/rosteam/gpsemulator/MainActivity;)I
    .registers 1

    iget p0, p0, Lcom/rosteam/gpsemulator/MainActivity;->modoApp:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmodoRuta(Lcom/rosteam/gpsemulator/MainActivity;)I
    .registers 1

    iget p0, p0, Lcom/rosteam/gpsemulator/MainActivity;->modoRuta:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetrewardedAutomaticRoutes(Lcom/rosteam/gpsemulator/MainActivity;)I
    .registers 1

    iget p0, p0, Lcom/rosteam/gpsemulator/MainActivity;->rewardedAutomaticRoutes:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetsplashId(Lcom/rosteam/gpsemulator/MainActivity;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/rosteam/gpsemulator/MainActivity;->splashId:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetstartButton(Lcom/rosteam/gpsemulator/MainActivity;)Landroid/widget/ImageButton;
    .registers 1

    iget-object p0, p0, Lcom/rosteam/gpsemulator/MainActivity;->startButton:Landroid/widget/ImageButton;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetstopButton(Lcom/rosteam/gpsemulator/MainActivity;)Landroid/widget/ImageButton;
    .registers 1

    iget-object p0, p0, Lcom/rosteam/gpsemulator/MainActivity;->stopButton:Landroid/widget/ImageButton;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetstopId(Lcom/rosteam/gpsemulator/MainActivity;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/rosteam/gpsemulator/MainActivity;->stopId:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettransicion01Id(Lcom/rosteam/gpsemulator/MainActivity;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/rosteam/gpsemulator/MainActivity;->transicion01Id:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetundoButton(Lcom/rosteam/gpsemulator/MainActivity;)Landroid/widget/ImageButton;
    .registers 1

    iget-object p0, p0, Lcom/rosteam/gpsemulator/MainActivity;->undoButton:Landroid/widget/ImageButton;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetvungleAppOpen(Lcom/rosteam/gpsemulator/MainActivity;)Lcom/vungle/ads/InterstitialAd;
    .registers 1

    iget-object p0, p0, Lcom/rosteam/gpsemulator/MainActivity;->vungleAppOpen:Lcom/vungle/ads/InterstitialAd;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputloadTimeExitAd(Lcom/rosteam/gpsemulator/MainActivity;J)V
    .registers 3

    iput-wide p1, p0, Lcom/rosteam/gpsemulator/MainActivity;->loadTimeExitAd:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmInterstitialAd(Lcom/rosteam/gpsemulator/MainActivity;Lcom/google/android/gms/ads/interstitial/InterstitialAd;)V
    .registers 2

    iput-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity;->mInterstitialAd:Lcom/google/android/gms/ads/interstitial/InterstitialAd;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmap(Lcom/rosteam/gpsemulator/MainActivity;Lcom/google/android/gms/maps/GoogleMap;)V
    .registers 2

    iput-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity;->map:Lcom/google/android/gms/maps/GoogleMap;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmodoApp(Lcom/rosteam/gpsemulator/MainActivity;I)V
    .registers 2

    iput p1, p0, Lcom/rosteam/gpsemulator/MainActivity;->modoApp:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmodoRuta(Lcom/rosteam/gpsemulator/MainActivity;I)V
    .registers 2

    iput p1, p0, Lcom/rosteam/gpsemulator/MainActivity;->modoRuta:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputrewardedAd(Lcom/rosteam/gpsemulator/MainActivity;Lcom/google/android/gms/ads/rewarded/RewardedAd;)V
    .registers 2

    iput-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity;->rewardedAd:Lcom/google/android/gms/ads/rewarded/RewardedAd;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputrewardedAutomaticRoutes(Lcom/rosteam/gpsemulator/MainActivity;I)V
    .registers 2

    iput p1, p0, Lcom/rosteam/gpsemulator/MainActivity;->rewardedAutomaticRoutes:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputvungleAppOpen(Lcom/rosteam/gpsemulator/MainActivity;Lcom/vungle/ads/InterstitialAd;)V
    .registers 2

    iput-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity;->vungleAppOpen:Lcom/vungle/ads/InterstitialAd;

    return-void
.end method

.method static bridge synthetic -$$Nest$mcargarBannerADG(Lcom/rosteam/gpsemulator/MainActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/rosteam/gpsemulator/MainActivity;->cargarBannerADG()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcargarBannerExit(Lcom/rosteam/gpsemulator/MainActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/rosteam/gpsemulator/MainActivity;->cargarBannerExit()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcargarBannerExitAdGen(Lcom/rosteam/gpsemulator/MainActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/rosteam/gpsemulator/MainActivity;->cargarBannerExitAdGen()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcargarBannerExitYandex(Lcom/rosteam/gpsemulator/MainActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/rosteam/gpsemulator/MainActivity;->cargarBannerExitYandex()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcargarBannerPangle(Lcom/rosteam/gpsemulator/MainActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/rosteam/gpsemulator/MainActivity;->cargarBannerPangle()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcargarBannerUnityExit(Lcom/rosteam/gpsemulator/MainActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/rosteam/gpsemulator/MainActivity;->cargarBannerUnityExit()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcargarBannerUnityNew(Lcom/rosteam/gpsemulator/MainActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/rosteam/gpsemulator/MainActivity;->cargarBannerUnityNew()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcargarBannerVK(Lcom/rosteam/gpsemulator/MainActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/rosteam/gpsemulator/MainActivity;->cargarBannerVK()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcargarExitVK(Lcom/rosteam/gpsemulator/MainActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/rosteam/gpsemulator/MainActivity;->cargarExitVK()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcargarPreBannerYandex(Lcom/rosteam/gpsemulator/MainActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/rosteam/gpsemulator/MainActivity;->cargarPreBannerYandex()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcargarRewarded(Lcom/rosteam/gpsemulator/MainActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/rosteam/gpsemulator/MainActivity;->cargarRewarded()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcargarTransitionAdmob(Lcom/rosteam/gpsemulator/MainActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/rosteam/gpsemulator/MainActivity;->cargarTransitionAdmob()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcargarTransitionPangle(Lcom/rosteam/gpsemulator/MainActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/rosteam/gpsemulator/MainActivity;->cargarTransitionPangle()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcargarTransitionVK(Lcom/rosteam/gpsemulator/MainActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/rosteam/gpsemulator/MainActivity;->cargarTransitionVK()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcargarTransitionYandex(Lcom/rosteam/gpsemulator/MainActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/rosteam/gpsemulator/MainActivity;->cargarTransitionYandex()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdownloadUrl(Lcom/rosteam/gpsemulator/MainActivity;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    invoke-direct {p0, p1}, Lcom/rosteam/gpsemulator/MainActivity;->downloadUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgotoLocation(Lcom/rosteam/gpsemulator/MainActivity;Lcom/rosteam/gpsemulator/utils/RegUbic;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/rosteam/gpsemulator/MainActivity;->gotoLocation(Lcom/rosteam/gpsemulator/utils/RegUbic;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgotoRoute(Lcom/rosteam/gpsemulator/MainActivity;Lcom/rosteam/gpsemulator/utils/RegUbic;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/rosteam/gpsemulator/MainActivity;->gotoRoute(Lcom/rosteam/gpsemulator/utils/RegUbic;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$misMyServiceRunning(Lcom/rosteam/gpsemulator/MainActivity;Ljava/lang/Class;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/rosteam/gpsemulator/MainActivity;->isMyServiceRunning(Ljava/lang/Class;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mnewRoute(Lcom/rosteam/gpsemulator/MainActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/rosteam/gpsemulator/MainActivity;->newRoute()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mprocessIntent(Lcom/rosteam/gpsemulator/MainActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/rosteam/gpsemulator/MainActivity;->processIntent()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mreemplazarBookmarks(Lcom/rosteam/gpsemulator/MainActivity;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/rosteam/gpsemulator/MainActivity;->reemplazarBookmarks(Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetAdBlock(Lcom/rosteam/gpsemulator/MainActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/rosteam/gpsemulator/MainActivity;->setAdBlock()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetAutomaticMode(Lcom/rosteam/gpsemulator/MainActivity;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/rosteam/gpsemulator/MainActivity;->setAutomaticMode(Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetCircleMode(Lcom/rosteam/gpsemulator/MainActivity;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/rosteam/gpsemulator/MainActivity;->setCircleMode(Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetManualMode(Lcom/rosteam/gpsemulator/MainActivity;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/rosteam/gpsemulator/MainActivity;->setManualMode(Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msplashNow(Lcom/rosteam/gpsemulator/MainActivity;)Z
    .registers 1

    invoke-direct {p0}, Lcom/rosteam/gpsemulator/MainActivity;->splashNow()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mswitchPinnedList(Lcom/rosteam/gpsemulator/MainActivity;ZI)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/rosteam/gpsemulator/MainActivity;->switchPinnedList(ZI)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mtransitionShow(Lcom/rosteam/gpsemulator/MainActivity;Landroid/content/Intent;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/rosteam/gpsemulator/MainActivity;->transitionShow(Landroid/content/Intent;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$munsetRewardedNow(Lcom/rosteam/gpsemulator/MainActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/rosteam/gpsemulator/MainActivity;->unsetRewardedNow()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    .line 229
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 236
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity;->groups:Landroid/util/SparseArray;

    .line 239
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity;->history:Ljava/util/ArrayList;

    .line 240
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity;->favorites:Ljava/util/ArrayList;

    .line 241
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity;->rutas:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 243
    iput-boolean v0, p0, Lcom/rosteam/gpsemulator/MainActivity;->inviteshown:Z

    const/4 v1, 0x0

    .line 246
    iput-object v1, p0, Lcom/rosteam/gpsemulator/MainActivity;->addresses:Ljava/util/List;

    .line 253
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/rosteam/gpsemulator/MainActivity;->handler:Landroid/os/Handler;

    .line 254
    iput-object v1, p0, Lcom/rosteam/gpsemulator/MainActivity;->zoneName:Ljava/lang/String;

    .line 263
    iput-boolean v0, p0, Lcom/rosteam/gpsemulator/MainActivity;->noAds:Z

    .line 264
    iput-boolean v0, p0, Lcom/rosteam/gpsemulator/MainActivity;->seAgregoBanner:Z

    .line 269
    const-string v2, "2906747"

    iput-object v2, p0, Lcom/rosteam/gpsemulator/MainActivity;->unityGameID:Ljava/lang/String;

    .line 270
    const-string v2, "video"

    iput-object v2, p0, Lcom/rosteam/gpsemulator/MainActivity;->splashId:Ljava/lang/String;

    .line 271
    const-string v3, "stop_splash"

    iput-object v3, p0, Lcom/rosteam/gpsemulator/MainActivity;->stopId:Ljava/lang/String;

    .line 272
    sget-boolean v3, Lcom/rosteam/gpsemulator/App;->XIAOMI:Z

    if-eqz v3, :cond_45

    const-string v3, "banner_xiaomi"

    goto :goto_47

    :cond_45
    const-string v3, "gpsbanner"

    :goto_47
    iput-object v3, p0, Lcom/rosteam/gpsemulator/MainActivity;->bannerId:Ljava/lang/String;

    .line 273
    const-string v3, "banner_exit"

    iput-object v3, p0, Lcom/rosteam/gpsemulator/MainActivity;->unityExitBannerId:Ljava/lang/String;

    .line 274
    const-string v3, "tran_01_global"

    iput-object v3, p0, Lcom/rosteam/gpsemulator/MainActivity;->transicion01Id:Ljava/lang/String;

    .line 275
    iput-object v2, p0, Lcom/rosteam/gpsemulator/MainActivity;->placementId02:Ljava/lang/String;

    .line 276
    iput-boolean v0, p0, Lcom/rosteam/gpsemulator/MainActivity;->unitySplashReady:Z

    .line 277
    iput-boolean v0, p0, Lcom/rosteam/gpsemulator/MainActivity;->unityStopReady:Z

    .line 278
    iput-boolean v0, p0, Lcom/rosteam/gpsemulator/MainActivity;->unityTransicionReady:Z

    .line 286
    const-string v2, ""

    iput-object v2, p0, Lcom/rosteam/gpsemulator/MainActivity;->timeArea:Ljava/lang/String;

    .line 288
    iput-boolean v0, p0, Lcom/rosteam/gpsemulator/MainActivity;->toastAnim:Z

    const-wide/16 v3, 0x0

    .line 297
    iput-wide v3, p0, Lcom/rosteam/gpsemulator/MainActivity;->loadTimeExitAd:J

    .line 314
    iput v0, p0, Lcom/rosteam/gpsemulator/MainActivity;->modoApp:I

    const/16 v3, 0x64

    .line 315
    iput v3, p0, Lcom/rosteam/gpsemulator/MainActivity;->modoRuta:I

    const/16 v3, 0xc9

    .line 316
    iput v3, p0, Lcom/rosteam/gpsemulator/MainActivity;->modoAutomatic:I

    .line 317
    iput-object v2, p0, Lcom/rosteam/gpsemulator/MainActivity;->currentRuta:Ljava/lang/String;

    const/4 v2, 0x0

    .line 322
    iput v2, p0, Lcom/rosteam/gpsemulator/MainActivity;->velocidad:F

    const/high16 v2, 0x3f800000    # 1.0f

    .line 323
    iput v2, p0, Lcom/rosteam/gpsemulator/MainActivity;->misKMxHora:F

    .line 324
    iput v0, p0, Lcom/rosteam/gpsemulator/MainActivity;->loopMode:I

    .line 325
    iput-boolean v0, p0, Lcom/rosteam/gpsemulator/MainActivity;->seekTouchTracking:Z

    .line 331
    iput-boolean v0, p0, Lcom/rosteam/gpsemulator/MainActivity;->topBannerYandexReady:Z

    const/4 v2, 0x1

    .line 336
    iput-boolean v2, p0, Lcom/rosteam/gpsemulator/MainActivity;->pinedClosed:Z

    .line 343
    iput-object v1, p0, Lcom/rosteam/gpsemulator/MainActivity;->intersVK:Lcom/my/target/ads/InterstitialAd;

    .line 344
    iput-object v1, p0, Lcom/rosteam/gpsemulator/MainActivity;->openVK:Lcom/my/target/ads/InterstitialAd;

    .line 348
    iput v0, p0, Lcom/rosteam/gpsemulator/MainActivity;->rewardedAutomaticRoutes:I

    .line 355
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    iput v0, p0, Lcom/rosteam/gpsemulator/MainActivity;->sdkVersion:I

    .line 3570
    new-instance v0, Lcom/rosteam/gpsemulator/MainActivity$56;

    invoke-direct {v0, p0}, Lcom/rosteam/gpsemulator/MainActivity$56;-><init>(Lcom/rosteam/gpsemulator/MainActivity;)V

    iput-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity;->loadListener:Lcom/unity3d/ads/IUnityAdsLoadListener;

    .line 3587
    new-instance v0, Lcom/rosteam/gpsemulator/MainActivity$57;

    invoke-direct {v0, p0}, Lcom/rosteam/gpsemulator/MainActivity$57;-><init>(Lcom/rosteam/gpsemulator/MainActivity;)V

    iput-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity;->showListener:Lcom/unity3d/ads/IUnityAdsShowListener;

    .line 4705
    new-instance v0, Lcom/rosteam/gpsemulator/MainActivity$69;

    invoke-direct {v0, p0}, Lcom/rosteam/gpsemulator/MainActivity$69;-><init>(Lcom/rosteam/gpsemulator/MainActivity;)V

    iput-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity;->stopMessageReceiver:Landroid/content/BroadcastReceiver;

    .line 4731
    new-instance v0, Lcom/rosteam/gpsemulator/MainActivity$70;

    invoke-direct {v0, p0}, Lcom/rosteam/gpsemulator/MainActivity$70;-><init>(Lcom/rosteam/gpsemulator/MainActivity;)V

    iput-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity;->updateMessageReceiverUpdate:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private cargarBannerADG()V
    .registers 3

    .line 5010
    const-string v0, "AdGeneration"

    const-string v1, "cargarBannerADG"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5011
    new-instance v0, Lcom/socdm/d/adgeneration/ADG;

    invoke-direct {v0, p0}, Lcom/socdm/d/adgeneration/ADG;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity;->adg:Lcom/socdm/d/adgeneration/ADG;

    .line 5012
    const-string v1, "184964"

    invoke-virtual {v0, v1}, Lcom/socdm/d/adgeneration/ADG;->setLocationId(Ljava/lang/String;)V

    .line 5014
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity;->adg:Lcom/socdm/d/adgeneration/ADG;

    sget-object v1, Lcom/socdm/d/adgeneration/ADG$AdFrameSize;->SP:Lcom/socdm/d/adgeneration/ADG$AdFrameSize;

    invoke-virtual {v0, v1}, Lcom/socdm/d/adgeneration/ADG;->setAdFrameSize(Lcom/socdm/d/adgeneration/ADG$AdFrameSize;)V

    .line 5015
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity;->adg:Lcom/socdm/d/adgeneration/ADG;

    new-instance v1, Lcom/rosteam/gpsemulator/MainActivity$74;

    invoke-direct {v1, p0}, Lcom/rosteam/gpsemulator/MainActivity$74;-><init>(Lcom/rosteam/gpsemulator/MainActivity;)V

    invoke-virtual {v0, v1}, Lcom/socdm/d/adgeneration/ADG;->setAdListener(Lcom/socdm/d/adgeneration/ADGListener;)V

    .line 5058
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity;->adg:Lcom/socdm/d/adgeneration/ADG;

    invoke-virtual {v0}, Lcom/socdm/d/adgeneration/ADG;->start()V

    .line 5060
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity;->topBannerContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 5061
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity;->topBannerContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/rosteam/gpsemulator/MainActivity;->adg:Lcom/socdm/d/adgeneration/ADG;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private cargarBannerAdmob()V
    .registers 4

    .line 4855
    const-string v0, "fakegps"

    const-string v1, "cargarBannerAdmob()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4856
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity;->topBannerContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 4857
    new-instance v0, Lcom/google/android/gms/ads/AdView;

    invoke-direct {v0, p0}, Lcom/google/android/gms/ads/AdView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity;->adViewAdMob:Lcom/google/android/gms/ads/AdView;

    .line 4858
    sget-boolean v1, Lcom/rosteam/gpsemulator/App;->XIAOMI:Z

    if-eqz v1, :cond_1a

    const-string v1, "ca-app-pub-4161078187932834/2700602956"

    goto :goto_1c

    :cond_1a
    const-string v1, "ca-app-pub-4161078187932834/2999719920"

    :goto_1c
    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdView;->setAdUnitId(Ljava/lang/String;)V

    .line 4861
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity;->adViewAdMob:Lcom/google/android/gms/ads/AdView;

    iput-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity;->anuncioView:Landroid/view/View;

    .line 4862
    iget-object v1, p0, Lcom/rosteam/gpsemulator/MainActivity;->topBannerContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 4864
    new-instance v0, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    .line 4866
    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v0

    .line 4867
    invoke-virtual {p0}, Lcom/rosteam/gpsemulator/MainActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 4868
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 4869
    invoke-virtual {v1, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 4870
    iget v1, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    .line 4871
    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v1, v2

    float-to-int v1, v1

    .line 4874
    invoke-static {p0, v1}, Lcom/google/android/gms/ads/AdSize;->getLargeAnchoredAdaptiveBannerAdSize(Landroid/content/Context;I)Lcom/google/android/gms/ads/AdSize;

    move-result-object v1

    .line 4876
    iget-object v2, p0, Lcom/rosteam/gpsemulator/MainActivity;->adViewAdMob:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/ads/AdView;->setAdSize(Lcom/google/android/gms/ads/AdSize;)V

    .line 4877
    iget-object v1, p0, Lcom/rosteam/gpsemulator/MainActivity;->adViewAdMob:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/AdView;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    .line 4878
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity;->adViewAdMob:Lcom/google/android/gms/ads/AdView;

    new-instance v1, Lcom/rosteam/gpsemulator/MainActivity$71;

    invoke-direct {v1, p0}, Lcom/rosteam/gpsemulator/MainActivity$71;-><init>(Lcom/rosteam/gpsemulator/MainActivity;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdView;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    return-void
.end method

.method private cargarBannerExit()V
    .registers 4

    .line 5332
    new-instance v0, Lcom/google/android/gms/ads/AdView;

    invoke-direct {v0, p0}, Lcom/google/android/gms/ads/AdView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity;->adViewAdMobExit:Lcom/google/android/gms/ads/AdView;

    .line 5333
    const-string v1, "ca-app-pub-4161078187932834/6864980928"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdView;->setAdUnitId(Ljava/lang/String;)V

    .line 5334
    new-instance v0, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    .line 5335
    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v0

    .line 5336
    iget-object v1, p0, Lcom/rosteam/gpsemulator/MainActivity;->adViewAdMobExit:Lcom/google/android/gms/ads/AdView;

    sget-object v2, Lcom/google/android/gms/ads/AdSize;->MEDIUM_RECTANGLE:Lcom/google/android/gms/ads/AdSize;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/AdView;->setAdSize(Lcom/google/android/gms/ads/AdSize;)V

    .line 5337
    iget-object v1, p0, Lcom/rosteam/gpsemulator/MainActivity;->adViewAdMobExit:Lcom/google/android/gms/ads/AdView;

    new-instance v2, Lcom/rosteam/gpsemulator/MainActivity$82;

    invoke-direct {v2, p0}, Lcom/rosteam/gpsemulator/MainActivity$82;-><init>(Lcom/rosteam/gpsemulator/MainActivity;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/AdView;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    .line 5354
    iget-object v1, p0, Lcom/rosteam/gpsemulator/MainActivity;->adViewAdMobExit:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/AdView;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    return-void
.end method

.method private cargarBannerExitAdGen()V
    .registers 3

    .line 5403
    const-string v0, "AdGeneration"

    const-string v1, "cargarBannerExitAdGen"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5405
    new-instance v0, Lcom/socdm/d/adgeneration/ADG;

    invoke-direct {v0, p0}, Lcom/socdm/d/adgeneration/ADG;-><init>(Landroid/content/Context;)V

    .line 5406
    const-string v1, "184965"

    invoke-virtual {v0, v1}, Lcom/socdm/d/adgeneration/ADG;->setLocationId(Ljava/lang/String;)V

    .line 5408
    sget-object v1, Lcom/socdm/d/adgeneration/ADG$AdFrameSize;->RECT:Lcom/socdm/d/adgeneration/ADG$AdFrameSize;

    invoke-virtual {v0, v1}, Lcom/socdm/d/adgeneration/ADG;->setAdFrameSize(Lcom/socdm/d/adgeneration/ADG$AdFrameSize;)V

    .line 5409
    new-instance v1, Lcom/rosteam/gpsemulator/MainActivity$84;

    invoke-direct {v1, p0, v0}, Lcom/rosteam/gpsemulator/MainActivity$84;-><init>(Lcom/rosteam/gpsemulator/MainActivity;Lcom/socdm/d/adgeneration/ADG;)V

    invoke-virtual {v0, v1}, Lcom/socdm/d/adgeneration/ADG;->setAdListener(Lcom/socdm/d/adgeneration/ADGListener;)V

    .line 5430
    invoke-virtual {v0}, Lcom/socdm/d/adgeneration/ADG;->start()V

    return-void
.end method

.method private cargarBannerExitYandex()V
    .registers 5

    .line 5363
    new-instance v0, Lcom/yandex/mobile/ads/banner/BannerAdView;

    invoke-virtual {p0}, Lcom/rosteam/gpsemulator/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/yandex/mobile/ads/banner/BannerAdView;-><init>(Landroid/content/Context;)V

    .line 5365
    invoke-virtual {p0}, Lcom/rosteam/gpsemulator/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {p0}, Lcom/rosteam/gpsemulator/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 5366
    invoke-virtual {p0}, Lcom/rosteam/gpsemulator/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {p0}, Lcom/rosteam/gpsemulator/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 5368
    invoke-virtual {p0}, Lcom/rosteam/gpsemulator/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x12c

    const/16 v3, 0x190

    invoke-static {v1, v2, v3}, Lcom/yandex/mobile/ads/banner/BannerAdSize;->fixed(Landroid/content/Context;II)Lcom/yandex/mobile/ads/banner/BannerAdSize;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/banner/BannerAdView;->setAdSize(Lcom/yandex/mobile/ads/banner/BannerAdSize;)V

    .line 5372
    new-instance v1, Lcom/yandex/mobile/ads/common/AdRequest$Builder;

    const-string v2, "R-M-16039764-5"

    invoke-direct {v1, v2}, Lcom/yandex/mobile/ads/common/AdRequest$Builder;-><init>(Ljava/lang/String;)V

    .line 5373
    invoke-virtual {v1}, Lcom/yandex/mobile/ads/common/AdRequest$Builder;->build()Lcom/yandex/mobile/ads/common/AdRequest;

    move-result-object v1

    .line 5374
    new-instance v2, Lcom/rosteam/gpsemulator/MainActivity$83;

    invoke-direct {v2, p0, v0}, Lcom/rosteam/gpsemulator/MainActivity$83;-><init>(Lcom/rosteam/gpsemulator/MainActivity;Lcom/yandex/mobile/ads/banner/BannerAdView;)V

    invoke-virtual {v0, v2}, Lcom/yandex/mobile/ads/banner/BannerAdView;->setBannerAdEventListener(Lcom/yandex/mobile/ads/banner/BannerAdEventListener;)V

    .line 5398
    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/banner/BannerAdView;->loadAd(Lcom/yandex/mobile/ads/common/AdRequest;)V

    return-void
.end method

.method private cargarBannerPangle()V
    .registers 4

    .line 4960
    const-string v0, "cargarBannerPangle"

    const-string v1, "iniciamos cargarBannerPangle"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4961
    invoke-virtual {p0}, Lcom/rosteam/gpsemulator/MainActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 4962
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 4963
    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 4964
    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    .line 4965
    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    const/16 v1, 0x5a

    .line 4967
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerSize;->getInlineAdaptiveBannerAdSize(II)Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerSize;

    move-result-object v0

    .line 4969
    new-instance v1, Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerRequest;

    invoke-direct {v1, v0}, Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerRequest;-><init>(Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerSize;)V

    .line 4970
    new-instance v0, Lcom/rosteam/gpsemulator/MainActivity$73;

    invoke-direct {v0, p0}, Lcom/rosteam/gpsemulator/MainActivity$73;-><init>(Lcom/rosteam/gpsemulator/MainActivity;)V

    const-string v2, "980438440"

    invoke-static {v2, v1, v0}, Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerAd;->loadAd(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerRequest;Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerAdLoadListener;)V

    return-void
.end method

.method private cargarBannerUnityExit()V
    .registers 7

    .line 5436
    new-instance v0, Lcom/rosteam/gpsemulator/MainActivity$85;

    invoke-direct {v0, p0}, Lcom/rosteam/gpsemulator/MainActivity$85;-><init>(Lcom/rosteam/gpsemulator/MainActivity;)V

    .line 5464
    new-instance v1, Lcom/unity3d/services/banners/BannerView;

    iget-object v2, p0, Lcom/rosteam/gpsemulator/MainActivity;->unityExitBannerId:Ljava/lang/String;

    new-instance v3, Lcom/unity3d/services/banners/UnityBannerSize;

    const/16 v4, 0x12c

    const/16 v5, 0xfa

    invoke-direct {v3, v4, v5}, Lcom/unity3d/services/banners/UnityBannerSize;-><init>(II)V

    invoke-direct {v1, p0, v2, v3}, Lcom/unity3d/services/banners/BannerView;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/unity3d/services/banners/UnityBannerSize;)V

    iput-object v1, p0, Lcom/rosteam/gpsemulator/MainActivity;->exitBannerUnity:Lcom/unity3d/services/banners/BannerView;

    .line 5467
    invoke-virtual {v1, v0}, Lcom/unity3d/services/banners/BannerView;->setListener(Lcom/unity3d/services/banners/BannerView$IListener;)V

    .line 5468
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity;->exitBannerUnity:Lcom/unity3d/services/banners/BannerView;

    invoke-virtual {v0}, Lcom/unity3d/services/banners/BannerView;->load()V

    return-void
.end method

.method private cargarBannerUnityNew()V
    .registers 5

    .line 5107
    new-instance v0, Lcom/rosteam/gpsemulator/MainActivity$76;

    invoke-direct {v0, p0}, Lcom/rosteam/gpsemulator/MainActivity$76;-><init>(Lcom/rosteam/gpsemulator/MainActivity;)V

    .line 5147
    new-instance v1, Lcom/unity3d/services/banners/BannerView;

    iget-object v2, p0, Lcom/rosteam/gpsemulator/MainActivity;->bannerId:Ljava/lang/String;

    .line 5148
    invoke-virtual {p0}, Lcom/rosteam/gpsemulator/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/unity3d/services/banners/UnityBannerSize;->getDynamicSize(Landroid/content/Context;)Lcom/unity3d/services/banners/UnityBannerSize;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Lcom/unity3d/services/banners/BannerView;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/unity3d/services/banners/UnityBannerSize;)V

    iput-object v1, p0, Lcom/rosteam/gpsemulator/MainActivity;->bannerUnity:Lcom/unity3d/services/banners/BannerView;

    .line 5150
    invoke-virtual {v1, v0}, Lcom/unity3d/services/banners/BannerView;->setListener(Lcom/unity3d/services/banners/BannerView$IListener;)V

    .line 5151
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity;->bannerUnity:Lcom/unity3d/services/banners/BannerView;

    invoke-virtual {v0}, Lcom/unity3d/services/banners/BannerView;->load()V

    return-void
.end method

.method private cargarBannerVK()V
    .registers 3

    .line 5067
    const-string v0, "bannerVK"

    const-string v1, "INICIO"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5068
    new-instance v0, Lcom/my/target/ads/MyTargetView;

    invoke-direct {v0, p0}, Lcom/my/target/ads/MyTargetView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity;->myTargetBanner:Lcom/my/target/ads/MyTargetView;

    const v1, 0x1452f8

    .line 5070
    invoke-virtual {v0, v1}, Lcom/my/target/ads/MyTargetView;->setSlotId(I)V

    .line 5074
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity;->myTargetBanner:Lcom/my/target/ads/MyTargetView;

    new-instance v1, Lcom/rosteam/gpsemulator/MainActivity$75;

    invoke-direct {v1, p0}, Lcom/rosteam/gpsemulator/MainActivity$75;-><init>(Lcom/rosteam/gpsemulator/MainActivity;)V

    invoke-virtual {v0, v1}, Lcom/my/target/ads/MyTargetView;->setListener(Lcom/my/target/ads/MyTargetView$MyTargetViewListener;)V

    .line 5099
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity;->myTargetBanner:Lcom/my/target/ads/MyTargetView;

    invoke-virtual {v0}, Lcom/my/target/ads/MyTargetView;->load()V

    return-void
.end method

.method private cargarExitVK()V
    .registers 3

    .line 5161
    const-string v0, "cargarExitVK"

    const-string v1, "INICIO"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5162
    new-instance v0, Lcom/my/target/ads/MyTargetView;

    invoke-direct {v0, p0}, Lcom/my/target/ads/MyTargetView;-><init>(Landroid/content/Context;)V

    const v1, 0x145927

    .line 5164
    invoke-virtual {v0, v1}, Lcom/my/target/ads/MyTargetView;->setSlotId(I)V

    .line 5165
    sget-object v1, Lcom/my/target/ads/MyTargetView$AdSize;->ADSIZE_300x250:Lcom/my/target/ads/MyTargetView$AdSize;

    invoke-virtual {v0, v1}, Lcom/my/target/ads/MyTargetView;->setAdSize(Lcom/my/target/ads/MyTargetView$AdSize;)V

    .line 5168
    new-instance v1, Lcom/rosteam/gpsemulator/MainActivity$77;

    invoke-direct {v1, p0}, Lcom/rosteam/gpsemulator/MainActivity$77;-><init>(Lcom/rosteam/gpsemulator/MainActivity;)V

    invoke-virtual {v0, v1}, Lcom/my/target/ads/MyTargetView;->setListener(Lcom/my/target/ads/MyTargetView$MyTargetViewListener;)V

    .line 5193
    invoke-virtual {v0}, Lcom/my/target/ads/MyTargetView;->load()V

    return-void
.end method

.method private cargarPreBannerYandex()V
    .registers 5

    .line 4923
    const-string v0, "preBannerYandex"

    const-string v1, "INICIO"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4924
    invoke-virtual {p0}, Lcom/rosteam/gpsemulator/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/rosteam/gpsemulator/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    .line 4926
    new-instance v1, Lcom/yandex/mobile/ads/banner/BannerAdView;

    invoke-direct {v1, p0}, Lcom/yandex/mobile/ads/banner/BannerAdView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/rosteam/gpsemulator/MainActivity;->preBannerYandex:Lcom/yandex/mobile/ads/banner/BannerAdView;

    .line 4927
    invoke-virtual {p0}, Lcom/rosteam/gpsemulator/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/16 v3, 0x5a

    invoke-static {v2, v0, v3}, Lcom/yandex/mobile/ads/banner/BannerAdSize;->inline(Landroid/content/Context;II)Lcom/yandex/mobile/ads/banner/BannerAdSize;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/yandex/mobile/ads/banner/BannerAdView;->setAdSize(Lcom/yandex/mobile/ads/banner/BannerAdSize;)V

    .line 4929
    new-instance v0, Lcom/yandex/mobile/ads/common/AdRequest$Builder;

    const-string v1, "R-M-16039764-1"

    invoke-direct {v0, v1}, Lcom/yandex/mobile/ads/common/AdRequest$Builder;-><init>(Ljava/lang/String;)V

    .line 4930
    invoke-virtual {v0}, Lcom/yandex/mobile/ads/common/AdRequest$Builder;->build()Lcom/yandex/mobile/ads/common/AdRequest;

    move-result-object v0

    .line 4933
    iget-object v1, p0, Lcom/rosteam/gpsemulator/MainActivity;->preBannerYandex:Lcom/yandex/mobile/ads/banner/BannerAdView;

    new-instance v2, Lcom/rosteam/gpsemulator/MainActivity$72;

    invoke-direct {v2, p0}, Lcom/rosteam/gpsemulator/MainActivity$72;-><init>(Lcom/rosteam/gpsemulator/MainActivity;)V

    invoke-virtual {v1, v2}, Lcom/yandex/mobile/ads/banner/BannerAdView;->setBannerAdEventListener(Lcom/yandex/mobile/ads/banner/BannerAdEventListener;)V

    .line 4953
    iget-object v1, p0, Lcom/rosteam/gpsemulator/MainActivity;->preBannerYandex:Lcom/yandex/mobile/ads/banner/BannerAdView;

    invoke-virtual {v1, v0}, Lcom/yandex/mobile/ads/banner/BannerAdView;->loadAd(Lcom/yandex/mobile/ads/common/AdRequest;)V

    return-void
.end method

.method private cargarRewarded()V
    .registers 4

    .line 5473
    new-instance v0, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v0

    .line 5474
    new-instance v1, Lcom/rosteam/gpsemulator/MainActivity$86;

    invoke-direct {v1, p0}, Lcom/rosteam/gpsemulator/MainActivity$86;-><init>(Lcom/rosteam/gpsemulator/MainActivity;)V

    const-string v2, "ca-app-pub-4161078187932834/9728728587"

    invoke-static {p0, v2, v0, v1}, Lcom/google/android/gms/ads/rewarded/RewardedAd;->load(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/ads/AdRequest;Lcom/google/android/gms/ads/rewarded/RewardedAdLoadCallback;)V

    return-void
.end method

.method private cargarTransitionAdmob()V
    .registers 4

    .line 5200
    const-string v0, "cargarTransitionAdmob"

    const-string v1, "inicio..."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5201
    new-instance v0, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v0

    .line 5204
    new-instance v1, Lcom/rosteam/gpsemulator/MainActivity$78;

    invoke-direct {v1, p0}, Lcom/rosteam/gpsemulator/MainActivity$78;-><init>(Lcom/rosteam/gpsemulator/MainActivity;)V

    const-string v2, "ca-app-pub-4161078187932834/8015562441"

    invoke-static {p0, v2, v0, v1}, Lcom/google/android/gms/ads/interstitial/InterstitialAd;->load(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/ads/AdRequest;Lcom/google/android/gms/ads/interstitial/InterstitialAdLoadCallback;)V

    return-void
.end method

.method private cargarTransitionPangle()V
    .registers 4

    .line 5224
    const-string v0, "cargarTransitionPangle"

    const-string v1, "inicio..."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5225
    new-instance v0, Lcom/bytedance/sdk/openadsdk/api/interstitial/PAGInterstitialRequest;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/api/interstitial/PAGInterstitialRequest;-><init>()V

    .line 5227
    new-instance v1, Lcom/rosteam/gpsemulator/MainActivity$79;

    invoke-direct {v1, p0}, Lcom/rosteam/gpsemulator/MainActivity$79;-><init>(Lcom/rosteam/gpsemulator/MainActivity;)V

    const-string v2, "980476004"

    invoke-static {v2, v0, v1}, Lcom/bytedance/sdk/openadsdk/api/interstitial/PAGInterstitialAd;->loadAd(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/api/interstitial/PAGInterstitialRequest;Lcom/bytedance/sdk/openadsdk/api/interstitial/PAGInterstitialAdLoadListener;)V

    return-void
.end method

.method private cargarTransitionVK()V
    .registers 3

    .line 5272
    const-string v0, "cargarTransitionVK"

    const-string v1, "INICIO"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5273
    new-instance v0, Lcom/my/target/ads/InterstitialAd;

    const v1, 0x14570b

    invoke-direct {v0, v1, p0}, Lcom/my/target/ads/InterstitialAd;-><init>(ILandroid/content/Context;)V

    .line 5274
    new-instance v1, Lcom/rosteam/gpsemulator/MainActivity$81;

    invoke-direct {v1, p0}, Lcom/rosteam/gpsemulator/MainActivity$81;-><init>(Lcom/rosteam/gpsemulator/MainActivity;)V

    invoke-virtual {v0, v1}, Lcom/my/target/ads/InterstitialAd;->setListener(Lcom/my/target/ads/InterstitialAd$InterstitialAdListener;)V

    .line 5325
    invoke-virtual {v0}, Lcom/my/target/ads/InterstitialAd;->load()V

    return-void
.end method

.method private cargarTransitionYandex()V
    .registers 4

    .line 5247
    const-string v0, "cargarTransitionYandex"

    const-string v1, "incio"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5249
    new-instance v0, Lcom/yandex/mobile/ads/interstitial/InterstitialAdLoader;

    invoke-direct {v0, p0}, Lcom/yandex/mobile/ads/interstitial/InterstitialAdLoader;-><init>(Landroid/content/Context;)V

    .line 5250
    new-instance v1, Lcom/yandex/mobile/ads/common/AdRequest$Builder;

    const-string v2, "R-M-16039764-3"

    invoke-direct {v1, v2}, Lcom/yandex/mobile/ads/common/AdRequest$Builder;-><init>(Ljava/lang/String;)V

    .line 5251
    invoke-virtual {v1}, Lcom/yandex/mobile/ads/common/AdRequest$Builder;->build()Lcom/yandex/mobile/ads/common/AdRequest;

    move-result-object v1

    .line 5254
    new-instance v2, Lcom/rosteam/gpsemulator/MainActivity$80;

    invoke-direct {v2, p0}, Lcom/rosteam/gpsemulator/MainActivity$80;-><init>(Lcom/rosteam/gpsemulator/MainActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/yandex/mobile/ads/interstitial/InterstitialAdLoader;->loadAd(Lcom/yandex/mobile/ads/common/AdRequest;Lcom/yandex/mobile/ads/interstitial/InterstitialAdLoadListener;)V

    return-void
.end method

.method private checarUpdate()V
    .registers 3

    .line 6349
    invoke-static {p0}, Lcom/google/android/play/core/appupdate/AppUpdateManagerFactory;->create(Landroid/content/Context;)Lcom/google/android/play/core/appupdate/AppUpdateManager;

    move-result-object v0

    iput-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity;->appUpdateManager:Lcom/google/android/play/core/appupdate/AppUpdateManager;

    .line 6351
    new-instance v0, Lcom/rosteam/gpsemulator/MainActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/rosteam/gpsemulator/MainActivity$$ExternalSyntheticLambda0;-><init>(Lcom/rosteam/gpsemulator/MainActivity;)V

    iput-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity;->installStateUpdatedListener:Lcom/google/android/play/core/install/InstallStateUpdatedListener;

    .line 6362
    iget-object v1, p0, Lcom/rosteam/gpsemulator/MainActivity;->appUpdateManager:Lcom/google/android/play/core/appupdate/AppUpdateManager;

    invoke-interface {v1, v0}, Lcom/google/android/play/core/appupdate/AppUpdateManager;->registerListener(Lcom/google/android/play/core/install/InstallStateUpdatedListener;)V

    .line 6364
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity;->appUpdateManager:Lcom/google/android/play/core/appupdate/AppUpdateManager;

    invoke-interface {v0}, Lcom/google/android/play/core/appupdate/AppUpdateManager;->getAppUpdateInfo()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    .line 6367
    new-instance v1, Lcom/rosteam/gpsemulator/MainActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/rosteam/gpsemulator/MainActivity$$ExternalSyntheticLambda1;-><init>(Lcom/rosteam/gpsemulator/MainActivity;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method private consentGDPR_UMP()V
    .registers 5

    .line 6052
    new-instance v0, Lcom/google/android/ump/ConsentRequestParameters$Builder;

    invoke-direct {v0}, Lcom/google/android/ump/ConsentRequestParameters$Builder;-><init>()V

    const/4 v1, 0x0

    .line 6054
    invoke-virtual {v0, v1}, Lcom/google/android/ump/ConsentRequestParameters$Builder;->setTagForUnderAgeOfConsent(Z)Lcom/google/android/ump/ConsentRequestParameters$Builder;

    move-result-object v0

    .line 6056
    invoke-virtual {v0}, Lcom/google/android/ump/ConsentRequestParameters$Builder;->build()Lcom/google/android/ump/ConsentRequestParameters;

    move-result-object v0

    .line 6058
    invoke-static {p0}, Lcom/google/android/ump/UserMessagingPlatform;->getConsentInformation(Landroid/content/Context;)Lcom/google/android/ump/ConsentInformation;

    move-result-object v1

    iput-object v1, p0, Lcom/rosteam/gpsemulator/MainActivity;->consentInformation:Lcom/google/android/ump/ConsentInformation;

    .line 6059
    new-instance v2, Lcom/rosteam/gpsemulator/MainActivity$99;

    invoke-direct {v2, p0}, Lcom/rosteam/gpsemulator/MainActivity$99;-><init>(Lcom/rosteam/gpsemulator/MainActivity;)V

    new-instance v3, Lcom/rosteam/gpsemulator/MainActivity$100;

    invoke-direct {v3, p0}, Lcom/rosteam/gpsemulator/MainActivity$100;-><init>(Lcom/rosteam/gpsemulator/MainActivity;)V

    invoke-interface {v1, p0, v0, v2, v3}, Lcom/google/android/ump/ConsentInformation;->requestConsentInfoUpdate(Landroid/app/Activity;Lcom/google/android/ump/ConsentRequestParameters;Lcom/google/android/ump/ConsentInformation$OnConsentInfoUpdateSuccessListener;Lcom/google/android/ump/ConsentInformation$OnConsentInfoUpdateFailureListener;)V

    return-void
.end method

.method private downloadUrl(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3210
    const-string v0, ""

    const/4 v1, 0x0

    .line 3214
    :try_start_3
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 3215
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_e} :catch_4a
    .catchall {:try_start_3 .. :try_end_e} :catchall_47

    .line 3216
    :try_start_e
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->connect()V

    .line 3217
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 3218
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 3219
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 3221
    :goto_24
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2e

    .line 3222
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_24

    .line 3225
    :cond_2e
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3226
    const-string v3, "downloadUrl"

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3227
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_3e} :catch_45
    .catchall {:try_start_e .. :try_end_3e} :catchall_5c

    .line 3232
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 3233
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object v0

    :catch_45
    move-exception v2

    goto :goto_4c

    :catchall_47
    move-exception v0

    move-object p1, v1

    goto :goto_5d

    :catch_4a
    move-exception v2

    move-object p1, v1

    .line 3230
    :goto_4c
    :try_start_4c
    const-string v3, "Exception"

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_55
    .catchall {:try_start_4c .. :try_end_55} :catchall_5c

    .line 3232
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 3233
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object v0

    :catchall_5c
    move-exception v0

    .line 3232
    :goto_5d
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 3233
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 3234
    throw v0
.end method

.method private exitAdNow()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method private gotoLocation(Lcom/rosteam/gpsemulator/utils/RegUbic;)V
    .registers 7

    .line 5758
    iget-object v0, p1, Lcom/rosteam/gpsemulator/utils/RegUbic;->ciudadpais:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/rosteam/gpsemulator/MainActivity;->miToast(Ljava/lang/String;I)V

    .line 5759
    new-instance v0, Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v1, p1, Lcom/rosteam/gpsemulator/utils/RegUbic;->lat:D

    iget-wide v3, p1, Lcom/rosteam/gpsemulator/utils/RegUbic;->lng:D

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    iget v1, p1, Lcom/rosteam/gpsemulator/utils/RegUbic;->zoom:F

    iget p1, p1, Lcom/rosteam/gpsemulator/utils/RegUbic;->bearing:F

    invoke-virtual {p0, v0, v1, p1}, Lcom/rosteam/gpsemulator/MainActivity;->moveTo(Lcom/google/android/gms/maps/model/LatLng;FF)V

    return-void
.end method

.method private gotoRoute(Lcom/rosteam/gpsemulator/utils/RegUbic;)V
    .registers 8

    .line 5764
    iget-object v0, p1, Lcom/rosteam/gpsemulator/utils/RegUbic;->name:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/rosteam/gpsemulator/MainActivity;->miToast(Ljava/lang/String;I)V

    .line 5765
    iget-object v0, p1, Lcom/rosteam/gpsemulator/utils/RegUbic;->prefName:Ljava/lang/String;

    iput-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity;->currentRuta:Ljava/lang/String;

    .line 5766
    iput-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity;->currentRoute:Lcom/rosteam/gpsemulator/utils/RegUbic;

    const/4 v0, 0x2

    .line 5767
    iput v0, p0, Lcom/rosteam/gpsemulator/MainActivity;->modoApp:I

    .line 5769
    iget-object v2, p0, Lcom/rosteam/gpsemulator/MainActivity;->startButton:Landroid/widget/ImageButton;

    sget v3, Lcom/rosteam/gpsemulator/R$drawable;->ic_play:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 5770
    iget-object v2, p0, Lcom/rosteam/gpsemulator/MainActivity;->startButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 5771
    iget-object v2, p0, Lcom/rosteam/gpsemulator/MainActivity;->stopButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 5772
    iget-object v2, p0, Lcom/rosteam/gpsemulator/MainActivity;->favButton:Landroid/widget/ImageButton;

    sget v3, Lcom/rosteam/gpsemulator/R$drawable;->botondelete:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 5773
    iget-object v2, p0, Lcom/rosteam/gpsemulator/MainActivity;->favButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 5775
    iget-object v2, p0, Lcom/rosteam/gpsemulator/MainActivity;->polyline1:Lcom/google/android/gms/maps/model/Polyline;

    if-eqz v2, :cond_33

    invoke-virtual {v2}, Lcom/google/android/gms/maps/model/Polyline;->remove()V

    .line 5776
    :cond_33
    iget-object v2, p0, Lcom/rosteam/gpsemulator/MainActivity;->miCirculo:Lcom/google/android/gms/maps/model/Circle;

    if-eqz v2, :cond_3a

    invoke-virtual {v2}, Lcom/google/android/gms/maps/model/Circle;->remove()V

    .line 5778
    :cond_3a
    iget-object v2, p0, Lcom/rosteam/gpsemulator/MainActivity;->map:Lcom/google/android/gms/maps/GoogleMap;

    new-instance v3, Lcom/google/android/gms/maps/model/PolylineOptions;

    invoke-direct {v3}, Lcom/google/android/gms/maps/model/PolylineOptions;-><init>()V

    const/4 v4, 0x0

    .line 5779
    invoke-virtual {v3, v4}, Lcom/google/android/gms/maps/model/PolylineOptions;->clickable(Z)Lcom/google/android/gms/maps/model/PolylineOptions;

    move-result-object v3

    .line 5780
    invoke-virtual {v3, v1}, Lcom/google/android/gms/maps/model/PolylineOptions;->geodesic(Z)Lcom/google/android/gms/maps/model/PolylineOptions;

    move-result-object v3

    new-array v4, v4, [Lcom/google/android/gms/maps/model/LatLng;

    .line 5781
    invoke-virtual {v3, v4}, Lcom/google/android/gms/maps/model/PolylineOptions;->add([Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/PolylineOptions;

    move-result-object v3

    .line 5778
    invoke-virtual {v2, v3}, Lcom/google/android/gms/maps/GoogleMap;->addPolyline(Lcom/google/android/gms/maps/model/PolylineOptions;)Lcom/google/android/gms/maps/model/Polyline;

    move-result-object v2

    iput-object v2, p0, Lcom/rosteam/gpsemulator/MainActivity;->polyline1:Lcom/google/android/gms/maps/model/Polyline;

    .line 5783
    iget-object p1, p1, Lcom/rosteam/gpsemulator/utils/RegUbic;->puntos:Ljava/util/List;

    .line 5785
    iget-object v2, p0, Lcom/rosteam/gpsemulator/MainActivity;->polyline1:Lcom/google/android/gms/maps/model/Polyline;

    invoke-virtual {v2, p1}, Lcom/google/android/gms/maps/model/Polyline;->setPoints(Ljava/util/List;)V

    .line 5786
    iget-object v2, p0, Lcom/rosteam/gpsemulator/MainActivity;->polyline1:Lcom/google/android/gms/maps/model/Polyline;

    new-instance v3, Lcom/google/android/gms/maps/model/RoundCap;

    invoke-direct {v3}, Lcom/google/android/gms/maps/model/RoundCap;-><init>()V

    invoke-virtual {v2, v3}, Lcom/google/android/gms/maps/model/Polyline;->setStartCap(Lcom/google/android/gms/maps/model/Cap;)V

    .line 5787
    iget-object v2, p0, Lcom/rosteam/gpsemulator/MainActivity;->polyline1:Lcom/google/android/gms/maps/model/Polyline;

    new-instance v3, Lcom/google/android/gms/maps/model/CustomCap;

    sget v4, Lcom/rosteam/gpsemulator/R$drawable;->arrow2:I

    invoke-static {v4}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->fromResource(I)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v4

    const/high16 v5, 0x40c00000    # 6.0f

    invoke-virtual {p0, v5}, Lcom/rosteam/gpsemulator/MainActivity;->convertDpToPixel(F)I

    move-result v5

    int-to-float v5, v5

    invoke-direct {v3, v4, v5}, Lcom/google/android/gms/maps/model/CustomCap;-><init>(Lcom/google/android/gms/maps/model/BitmapDescriptor;F)V

    invoke-virtual {v2, v3}, Lcom/google/android/gms/maps/model/Polyline;->setEndCap(Lcom/google/android/gms/maps/model/Cap;)V

    .line 5788
    iget-object v2, p0, Lcom/rosteam/gpsemulator/MainActivity;->polyline1:Lcom/google/android/gms/maps/model/Polyline;

    const/high16 v3, 0x40800000    # 4.0f

    invoke-virtual {p0, v3}, Lcom/rosteam/gpsemulator/MainActivity;->convertDpToPixel(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/maps/model/Polyline;->setWidth(F)V

    .line 5789
    iget-object v2, p0, Lcom/rosteam/gpsemulator/MainActivity;->polyline1:Lcom/google/android/gms/maps/model/Polyline;

    invoke-virtual {p0}, Lcom/rosteam/gpsemulator/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/rosteam/gpsemulator/R$color;->colorRuta:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/maps/model/Polyline;->setColor(I)V

    .line 5790
    iget-object v2, p0, Lcom/rosteam/gpsemulator/MainActivity;->polyline1:Lcom/google/android/gms/maps/model/Polyline;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/maps/model/Polyline;->setJointType(I)V

    .line 5792
    new-instance v0, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;-><init>()V

    .line 5793
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_a7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/maps/model/LatLng;

    .line 5794
    invoke-virtual {v0, v2}, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->include(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/LatLngBounds$Builder;

    goto :goto_a7

    .line 5796
    :cond_b7
    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->build()Lcom/google/android/gms/maps/model/LatLngBounds;

    move-result-object p1

    const/16 v0, 0x50

    .line 5799
    invoke-static {p1, v0}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newLatLngBounds(Lcom/google/android/gms/maps/model/LatLngBounds;I)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object p1

    .line 5800
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity;->preferences:Landroid/content/SharedPreferences;

    const-string v2, "animate"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_cd

    const/16 v1, 0x7d0

    .line 5801
    :cond_cd
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity;->map:Lcom/google/android/gms/maps/GoogleMap;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/android/gms/maps/GoogleMap;->animateCamera(Lcom/google/android/gms/maps/CameraUpdate;ILcom/google/android/gms/maps/GoogleMap$CancelableCallback;)V

    return-void
.end method

.method private isMyServiceRunning(Ljava/lang/Class;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 3871
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Lcom/rosteam/gpsemulator/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const v1, 0x7fffffff

    .line 3872
    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_31

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 3873
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v1, v1, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    const/4 p1, 0x1

    return p1

    :cond_31
    const/4 p1, 0x0

    return p1
.end method

.method private launchPermissionDialog(Z)Z
    .registers 5

    .line 2305
    invoke-virtual {p0}, Lcom/rosteam/gpsemulator/MainActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/rosteam/gpsemulator/R$layout;->permissions:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity;->permisosLayout:Landroid/view/View;

    .line 2307
    invoke-direct {p0, v0}, Lcom/rosteam/gpsemulator/MainActivity;->setPermissionButtons(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_18

    if-eqz p1, :cond_16

    goto :goto_18

    :cond_16
    const/4 p1, 0x0

    return p1

    .line 2308
    :cond_18
    :goto_18
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity;->context:Landroid/content/Context;

    sget v1, Lcom/rosteam/gpsemulator/R$style;->CustomAlertDialog:I

    invoke-direct {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    sget v0, Lcom/rosteam/gpsemulator/R$string;->initial_config:I

    .line 2309
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity;->permisosLayout:Landroid/view/View;

    .line 2310
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 2311
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity;->permissionDialog:Landroidx/appcompat/app/AlertDialog;

    .line 2312
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->show()V

    const/4 p1, 0x1

    return p1
.end method

.method private lockExitAd()V
    .registers 5

    .line 1486
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0xea60

    add-long/2addr v0, v2

    .line 1487
    iget-object v2, p0, Lcom/rosteam/gpsemulator/MainActivity;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v3, "exitBlockTime"

    invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 1488
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private newRoute()V
    .registers 8

    .line 1693
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "noads"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/rosteam/gpsemulator/MainActivity;->noAds:Z

    if-nez v0, :cond_49

    .line 1694
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity;->rutas:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_49

    .line 1695
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/rosteam/gpsemulator/MainActivity;->ctw:Landroid/view/ContextThemeWrapper;

    sget v2, Lcom/rosteam/gpsemulator/R$style;->CustomAlertDialog:I

    invoke-direct {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    sget v1, Lcom/rosteam/gpsemulator/R$string;->routes_limit_reached:I

    .line 1696
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/rosteam/gpsemulator/R$string;->routes_limit_reached_msg:I

    .line 1697
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/rosteam/gpsemulator/R$string;->accept:I

    new-instance v2, Lcom/rosteam/gpsemulator/MainActivity$17;

    invoke-direct {v2, p0}, Lcom/rosteam/gpsemulator/MainActivity$17;-><init>(Lcom/rosteam/gpsemulator/MainActivity;)V

    .line 1698
    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/rosteam/gpsemulator/R$string;->proinvitelater:I

    .line 1703
    invoke-virtual {p0, v1}, Lcom/rosteam/gpsemulator/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/rosteam/gpsemulator/MainActivity$16;

    invoke-direct {v2, p0}, Lcom/rosteam/gpsemulator/MainActivity$16;-><init>(Lcom/rosteam/gpsemulator/MainActivity;)V

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 1706
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void

    .line 1711
    :cond_49
    const-string v0, "NEW ROUTE"

    const-string v1, "vamos a hacer un request layou"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1712
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity;->child:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->requestLayout()V

    .line 1714
    sget v0, Lcom/rosteam/gpsemulator/R$id;->createRouteLyt:I

    invoke-virtual {p0, v0}, Lcom/rosteam/gpsemulator/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity;->createRouteLyt:Landroid/widget/LinearLayout;

    .line 1715
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1716
    sget v0, Lcom/rosteam/gpsemulator/R$id;->automatic_route:I

    invoke-virtual {p0, v0}, Lcom/rosteam/gpsemulator/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity;->automaticRouteText:Landroid/widget/TextView;

    const/16 v0, 0x64

    .line 1718
    iput v0, p0, Lcom/rosteam/gpsemulator/MainActivity;->modoRuta:I

    .line 1720
    sget v0, Lcom/rosteam/gpsemulator/R$id;->circle_route:I

    invoke-virtual {p0, v0}, Lcom/rosteam/gpsemulator/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1721
    sget v1, Lcom/rosteam/gpsemulator/R$id;->manual_route:I

    invoke-virtual {p0, v1}, Lcom/rosteam/gpsemulator/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1722
    sget v3, Lcom/rosteam/gpsemulator/R$id;->automatic_route:I

    invoke-virtual {p0, v3}, Lcom/rosteam/gpsemulator/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 1724
    sget v4, Lcom/rosteam/gpsemulator/R$drawable;->fondoredondo:I

    invoke-virtual {p0, v4}, Lcom/rosteam/gpsemulator/MainActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 v1, 0x0

    .line 1725
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1726
    invoke-virtual {v3, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1730
    iget-boolean v0, p0, Lcom/rosteam/gpsemulator/MainActivity;->noAds:Z

    const-string v3, "%s (%d)"

    const/4 v4, 0x1

    if-nez v0, :cond_c3

    invoke-direct {p0}, Lcom/rosteam/gpsemulator/MainActivity;->rewardedNow()Z

    move-result v0

    if-eqz v0, :cond_c3

    .line 1731
    iput v2, p0, Lcom/rosteam/gpsemulator/MainActivity;->rewardedAutomaticRoutes:I

    .line 1732
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity;->automaticRouteText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/rosteam/gpsemulator/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/rosteam/gpsemulator/R$string;->automatic:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget v6, p0, Lcom/rosteam/gpsemulator/MainActivity;->rewardedAutomaticRoutes:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v5, v6}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_ec

    .line 1734
    :cond_c3
    iget-boolean v0, p0, Lcom/rosteam/gpsemulator/MainActivity;->noAds:Z

    if-nez v0, :cond_ec

    invoke-direct {p0}, Lcom/rosteam/gpsemulator/MainActivity;->rewardedNow()Z

    move-result v0

    if-nez v0, :cond_ec

    .line 1735
    iput v4, p0, Lcom/rosteam/gpsemulator/MainActivity;->rewardedAutomaticRoutes:I

    .line 1736
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity;->automaticRouteText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/rosteam/gpsemulator/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/rosteam/gpsemulator/R$string;->automatic:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget v6, p0, Lcom/rosteam/gpsemulator/MainActivity;->rewardedAutomaticRoutes:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v5, v6}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1743
    :cond_ec
    :goto_ec
    iget v0, p0, Lcom/rosteam/gpsemulator/MainActivity;->modoApp:I

    const/4 v3, 0x4

    const/4 v5, 0x3

    if-eq v0, v3, :cond_f4

    if-ne v0, v5, :cond_f7

    :cond_f4
    invoke-virtual {p0, v2}, Lcom/rosteam/gpsemulator/MainActivity;->onStopClickStep2(Z)V

    .line 1745
    :cond_f7
    iget-boolean v0, p0, Lcom/rosteam/gpsemulator/MainActivity;->noAds:Z

    if-nez v0, :cond_106

    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity;->createRouteLyt:Landroid/widget/LinearLayout;

    sget v3, Lcom/rosteam/gpsemulator/R$id;->manual_route:I

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/rosteam/gpsemulator/MainActivity;->onManualRouteClick(Landroid/view/View;)V

    .line 1747
    :cond_106
    sget v0, Lcom/rosteam/gpsemulator/R$string;->ruta_crear_inicio:I

    invoke-virtual {p0, v0}, Lcom/rosteam/gpsemulator/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v5}, Lcom/rosteam/gpsemulator/MainActivity;->miToast(Ljava/lang/String;I)V

    .line 1748
    iput v4, p0, Lcom/rosteam/gpsemulator/MainActivity;->modoApp:I

    .line 1749
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity;->polyline1:Lcom/google/android/gms/maps/model/Polyline;

    if-eqz v0, :cond_118

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Polyline;->remove()V

    .line 1750
    :cond_118
    iput-object v1, p0, Lcom/rosteam/gpsemulator/MainActivity;->polyline1:Lcom/google/android/gms/maps/model/Polyline;

    .line 1751
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity;->miCirculo:Lcom/google/android/gms/maps/model/Circle;

    if-eqz v0, :cond_121

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Circle;->remove()V

    .line 1752
    :cond_121
    iput-object v1, p0, Lcom/rosteam/gpsemulator/MainActivity;->miCirculo:Lcom/google/android/gms/maps/model/Circle;

    .line 1753
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity;->startButton:Landroid/widget/ImageButton;

    sget v1, Lcom/rosteam/gpsemulator/R$drawable;->botonset:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1754
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity;->favButton:Landroid/widget/ImageButton;

    sget v1, Lcom/rosteam/gpsemulator/R$drawable;->botonsave:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1755
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity;->favButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1756
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity;->stopButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setEnabled(Z)V

    return-void
.end method

.method private onetimeSplashLock()V
    .registers 4

    .line 1511
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "onettimeblock"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1512
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private onetimeSplashUnlock()V
    .registers 4

    .line 1516
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "onettimeblock"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1517
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private openSearch()V
    .registers 3

    .line 4517
    invoke-direct {p0}, Lcom/rosteam/gpsemulator/MainActivity;->onetimeSplashLock()V

    .line 4518
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/rosteam/gpsemulator/busqueda;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0x66

    .line 4519
    invoke-direct {p0, v0, v1}, Lcom/rosteam/gpsemulator/MainActivity;->transitionShow(Landroid/content/Intent;I)V

    return-void
.end method

.method private popupSnackBarForCompleteUpdate()V
    .registers 5

    .line 6385
    sget v0, Lcom/rosteam/gpsemulator/R$id;->snackContainer:I

    invoke-virtual {p0, v0}, Lcom/rosteam/gpsemulator/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/rosteam/gpsemulator/R$string;->newappready:I

    const/4 v2, -0x2

    invoke-static {v0, v1, v2}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;II)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v0

    .line 6386
    sget v1, Lcom/rosteam/gpsemulator/R$string;->install:I

    new-instance v2, Lcom/rosteam/gpsemulator/MainActivity$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lcom/rosteam/gpsemulator/MainActivity$$ExternalSyntheticLambda2;-><init>(Lcom/rosteam/gpsemulator/MainActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/material/snackbar/Snackbar;->setAction(ILandroid/view/View$OnClickListener;)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v1

    const/4 v2, -0x1

    .line 6390
    invoke-virtual {v1, v2}, Lcom/google/android/material/snackbar/Snackbar;->setActionTextColor(I)Lcom/google/android/material/snackbar/Snackbar;

    .line 6391
    invoke-virtual {v0}, Lcom/google/android/material/snackbar/Snackbar;->getView()Landroid/view/View;

    move-result-object v1

    .line 6392
    sget v3, Lcom/google/android/material/R$id;->snackbar_text:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 6393
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 6394
    invoke-virtual {p0}, Lcom/rosteam/gpsemulator/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/rosteam/gpsemulator/R$color;->colorAccent:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 6395
    invoke-virtual {v0}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    return-void
.end method

.method private processIntent()V
    .registers 24

    move-object/from16 v0, p0

    .line 4133
    const-string v1, "UTF-8"

    invoke-virtual {v0}, Lcom/rosteam/gpsemulator/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 4134
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1f8

    .line 4142
    invoke-virtual {v0}, Lcom/rosteam/gpsemulator/MainActivity;->stoptimertask()V

    .line 4144
    const-string v4, "resume"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 4145
    invoke-virtual {v0}, Lcom/rosteam/gpsemulator/MainActivity;->reanudar()V

    .line 4148
    :cond_1c
    const-string v4, "ACTION_STOP"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x0

    const-string v9, ""

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-eqz v4, :cond_3c

    .line 4149
    const-string v3, "fakegps"

    const-string v4, "recibimos stop"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4150
    invoke-virtual {v0}, Lcom/rosteam/gpsemulator/MainActivity;->irUltimaUbicacion()V

    const/4 v3, 0x0

    .line 4151
    invoke-virtual {v0, v3}, Lcom/rosteam/gpsemulator/MainActivity;->onStopButtonClick(Landroid/view/View;)V

    goto/16 :goto_13a

    .line 4156
    :cond_3c
    const-string v4, "android.intent.action.MAIN"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_49

    .line 4157
    invoke-virtual {v0}, Lcom/rosteam/gpsemulator/MainActivity;->irUltimaUbicacion()V

    goto/16 :goto_13a

    .line 4159
    :cond_49
    const-string v4, "android.intent.action.SEARCH"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_56

    .line 4160
    invoke-direct {v0}, Lcom/rosteam/gpsemulator/MainActivity;->openSearch()V

    goto/16 :goto_13a

    .line 4162
    :cond_56
    const-string v4, "android.intent.action.LOCATION01"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10e

    .line 4163
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v3, v10

    .line 4167
    :cond_64
    iget-object v12, v0, Lcom/rosteam/gpsemulator/MainActivity;->preferences:Landroid/content/SharedPreferences;

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "histPosition"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v12, v13, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 4168
    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_ae

    .line 4173
    const-string v13, "\\+"

    invoke-virtual {v12, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 4175
    aget-object v15, v13, v10

    .line 4177
    aget-object v14, v13, v11

    invoke-static {v14}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v16

    .line 4179
    aget-object v14, v13, v7

    invoke-static {v14}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v18

    .line 4181
    aget-object v14, v13, v6

    invoke-static {v14}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v20

    .line 4184
    :try_start_99
    aget-object v13, v13, v5

    invoke-static {v13}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v13
    :try_end_9f
    .catch Ljava/lang/Exception; {:try_start_99 .. :try_end_9f} :catch_a2

    move/from16 v21, v13

    goto :goto_a4

    :catch_a2
    move/from16 v21, v8

    .line 4188
    :goto_a4
    new-instance v14, Lcom/rosteam/gpsemulator/utils/RegUbic;

    const/16 v22, 0x0

    invoke-direct/range {v14 .. v22}, Lcom/rosteam/gpsemulator/utils/RegUbic;-><init>(Ljava/lang/String;DDFFZ)V

    invoke-interface {v4, v10, v14}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_ae
    add-int/lit8 v3, v3, 0x1

    .line 4191
    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_64

    .line 4193
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_13a

    .line 4194
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v11

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/rosteam/gpsemulator/utils/RegUbic;

    .line 4195
    iget-wide v12, v3, Lcom/rosteam/gpsemulator/utils/RegUbic;->lat:D

    new-array v4, v11, [D

    aput-wide v12, v4, v10

    .line 4196
    iget-wide v12, v3, Lcom/rosteam/gpsemulator/utils/RegUbic;->lng:D

    new-array v14, v11, [D

    aput-wide v12, v14, v10

    .line 4197
    new-instance v12, Landroid/content/Intent;

    iget-object v13, v0, Lcom/rosteam/gpsemulator/MainActivity;->context:Landroid/content/Context;

    const-class v15, Lcom/rosteam/gpsemulator/servicex2484;

    invoke-direct {v12, v13, v15}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v13, 0x10000000

    .line 4198
    invoke-virtual {v12, v13}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4199
    const-string v13, "com.example.android.mocklocation.LATITUDE"

    invoke-virtual {v12, v13, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[D)Landroid/content/Intent;

    .line 4200
    const-string v4, "com.example.android.mocklocation.LONGITUDE"

    invoke-virtual {v12, v4, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[D)Landroid/content/Intent;

    .line 4201
    const-string v4, "com.example.android.mocklocation.CIUDADPAIS"

    iget-object v3, v3, Lcom/rosteam/gpsemulator/utils/RegUbic;->ciudadpais:Ljava/lang/String;

    invoke-virtual {v12, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4202
    const-string v3, "velocidad"

    invoke-virtual {v12, v3, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    .line 4203
    const-string v3, "loopMode"

    invoke-virtual {v12, v3, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4204
    const-string v3, "ACTION_START_CONTINUOUS"

    invoke-virtual {v12, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4205
    const-string v3, "gps"

    const-string v4, "Vamos a intentar iniciar foreground service"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4207
    iget-object v3, v0, Lcom/rosteam/gpsemulator/MainActivity;->context:Landroid/content/Context;

    invoke-static {v3, v12}, Landroidx/core/content/ContextCompat;->startForegroundService(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_13a

    .line 4211
    :cond_10e
    const-string v4, "android.intent.action.VIEW"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13a

    .line 4212
    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_13a

    .line 4214
    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    .line 4215
    invoke-virtual {v0}, Lcom/rosteam/gpsemulator/MainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    invoke-virtual {v12, v3}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    .line 4216
    const-string v12, "content"

    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_137

    const-string v12, "file"

    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13a

    .line 4218
    :cond_137
    :try_start_137
    invoke-direct {v0, v3}, Lcom/rosteam/gpsemulator/MainActivity;->readFileFromUri(Landroid/net/Uri;)V
    :try_end_13a
    .catch Ljava/lang/OutOfMemoryError; {:try_start_137 .. :try_end_13a} :catch_13a

    .line 4226
    :catch_13a
    :cond_13a
    :goto_13a
    const-class v3, Lcom/rosteam/gpsemulator/servicex2484;

    invoke-direct {v0, v3}, Lcom/rosteam/gpsemulator/MainActivity;->isMyServiceRunning(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_145

    .line 4227
    invoke-virtual {v0}, Lcom/rosteam/gpsemulator/MainActivity;->reanudar()V

    .line 4232
    :cond_145
    invoke-virtual {v2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1ed

    .line 4234
    :try_start_14b
    invoke-static {v3, v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4238
    const-string v4, "?q="

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 4239
    const-string v12, "?daddr="

    invoke-virtual {v3, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    .line 4240
    const-string v13, "geo:"

    invoke-virtual {v3, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    if-ltz v13, :cond_16c

    .line 4242
    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 4243
    invoke-virtual {v0, v1, v11}, Lcom/rosteam/gpsemulator/MainActivity;->searchPlace(Ljava/lang/String;I)V
    :try_end_16a
    .catch Ljava/lang/Exception; {:try_start_14b .. :try_end_16a} :catch_1f8

    goto/16 :goto_1f8

    .line 4244
    :cond_16c
    const-string v5, " "

    const-string v13, "loc:"

    const-string v14, ","

    if-ltz v12, :cond_196

    add-int/lit8 v12, v12, 0x7

    .line 4246
    :try_start_176
    invoke-virtual {v3, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 4247
    invoke-virtual {v1, v13, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 4248
    invoke-virtual {v1, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/2addr v2, v7

    invoke-virtual {v1, v5, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    if-lez v2, :cond_18a

    goto :goto_18e

    .line 4249
    :cond_18a
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    :goto_18e
    invoke-virtual {v1, v10, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 4251
    invoke-virtual {v0, v1, v11}, Lcom/rosteam/gpsemulator/MainActivity;->searchPlace(Ljava/lang/String;I)V

    goto :goto_1f8

    :cond_196
    if-ltz v4, :cond_1f8

    add-int/2addr v4, v6

    .line 4255
    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 4256
    invoke-virtual {v3, v13, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 4257
    invoke-virtual {v3, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    add-int/2addr v6, v7

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v5

    if-lez v5, :cond_1ad

    goto :goto_1b1

    .line 4258
    :cond_1ad
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    :goto_1b1
    invoke-virtual {v3, v10, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3
    :try_end_1b5
    .catch Ljava/lang/Exception; {:try_start_176 .. :try_end_1b5} :catch_1f8

    .line 4261
    :try_start_1b5
    invoke-virtual {v3, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v10, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    .line 4262
    invoke-virtual {v3, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    add-int/2addr v7, v11

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v3, v7, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v9

    .line 4263
    new-instance v3, Lcom/google/android/gms/maps/model/LatLng;

    invoke-direct {v3, v5, v6, v9, v10}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    const/high16 v5, 0x41700000    # 15.0f

    invoke-virtual {v0, v3, v5, v8}, Lcom/rosteam/gpsemulator/MainActivity;->moveTo(Lcom/google/android/gms/maps/model/LatLng;FF)V
    :try_end_1dc
    .catch Ljava/lang/Exception; {:try_start_1b5 .. :try_end_1dc} :catch_1dd

    goto :goto_1f8

    .line 4267
    :catch_1dd
    :try_start_1dd
    invoke-virtual {v2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v2

    .line 4268
    invoke-static {v2, v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4269
    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 4272
    invoke-virtual {v0, v1, v11}, Lcom/rosteam/gpsemulator/MainActivity;->searchPlace(Ljava/lang/String;I)V
    :try_end_1ec
    .catch Ljava/lang/Exception; {:try_start_1dd .. :try_end_1ec} :catch_1f8

    goto :goto_1f8

    .line 4278
    :cond_1ed
    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {v2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1f8

    .line 4279
    invoke-virtual {v0, v1, v11}, Lcom/rosteam/gpsemulator/MainActivity;->searchPlace(Ljava/lang/String;I)V

    :catch_1f8
    :cond_1f8
    :goto_1f8
    return-void
.end method

.method private rateThisApp()V
    .registers 4

    .line 3888
    iget v0, p0, Lcom/rosteam/gpsemulator/MainActivity;->cantUsos:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_3e

    .line 3889
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/rosteam/gpsemulator/MainActivity;->ctw:Landroid/view/ContextThemeWrapper;

    sget v2, Lcom/rosteam/gpsemulator/R$style;->CustomAlertDialog:I

    invoke-direct {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    sget v1, Lcom/rosteam/gpsemulator/R$string;->doyoulike:I

    .line 3890
    invoke-virtual {p0, v1}, Lcom/rosteam/gpsemulator/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/rosteam/gpsemulator/R$string;->please_rate:I

    .line 3891
    invoke-virtual {p0, v1}, Lcom/rosteam/gpsemulator/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/rosteam/gpsemulator/MainActivity$59;

    invoke-direct {v1, p0}, Lcom/rosteam/gpsemulator/MainActivity$59;-><init>(Lcom/rosteam/gpsemulator/MainActivity;)V

    const v2, 0x1040013

    .line 3892
    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/rosteam/gpsemulator/MainActivity$58;

    invoke-direct {v1, p0}, Lcom/rosteam/gpsemulator/MainActivity$58;-><init>(Lcom/rosteam/gpsemulator/MainActivity;)V

    const v2, 0x1040009

    .line 3918
    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 3921
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    :cond_3e
    return-void
.end method

.method private readFileFromUri(Landroid/net/Uri;)V
    .registers 13

    .line 4286
    iget-boolean v0, p0, Lcom/rosteam/gpsemulator/MainActivity;->noAds:Z

    if-eqz v0, :cond_171

    .line 4287
    :try_start_4
    invoke-virtual {p0}, Lcom/rosteam/gpsemulator/MainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p1
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_c} :catch_149

    .line 4288
    :try_start_c
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_16
    .catchall {:try_start_c .. :try_end_16} :catchall_13d

    .line 4289
    :try_start_16
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4290
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 4292
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 4295
    :goto_25
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4
    :try_end_29
    .catchall {:try_start_16 .. :try_end_29} :catchall_133

    const-string v5, "\n"

    if-eqz v4, :cond_35

    .line 4296
    :try_start_2d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_25

    .line 4298
    :cond_35
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4299
    const-string v4, "###"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 4307
    aget-object v6, v3, v4

    invoke-virtual {v6, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 4308
    array-length v7, v6
    :try_end_47
    .catchall {:try_start_2d .. :try_end_47} :catchall_133

    move v8, v4

    :goto_48
    const-string v9, "linea"

    if-ge v8, v7, :cond_5b

    :try_start_4c
    aget-object v10, v6, v8

    .line 4309
    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_51
    .catchall {:try_start_4c .. :try_end_51} :catchall_133

    .line 4311
    :try_start_51
    invoke-static {v10}, Lcom/rosteam/gpsemulator/LocationUtils;->parsePrefToUbic(Ljava/lang/String;)Lcom/rosteam/gpsemulator/utils/RegUbic;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_58} :catch_58
    .catchall {:try_start_51 .. :try_end_58} :catchall_133

    :catch_58
    add-int/lit8 v8, v8, 0x1

    goto :goto_48

    :cond_5b
    const/4 v6, 0x1

    .line 4316
    :try_start_5c
    aget-object v3, v3, v6

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 4317
    array-length v5, v3

    :goto_63
    if-ge v4, v5, :cond_7c

    aget-object v6, v3, v4

    .line 4318
    invoke-static {v9, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4319
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7
    :try_end_6e
    .catchall {:try_start_5c .. :try_end_6e} :catchall_133

    const/4 v8, 0x2

    if-ge v7, v8, :cond_72

    goto :goto_79

    .line 4321
    :cond_72
    :try_start_72
    invoke-static {v6}, Lcom/rosteam/gpsemulator/LocationUtils;->parseRutaToUbic(Ljava/lang/String;)Lcom/rosteam/gpsemulator/utils/RegUbic;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_79
    .catch Ljava/lang/Exception; {:try_start_72 .. :try_end_79} :catch_79
    .catchall {:try_start_72 .. :try_end_79} :catchall_133

    :catch_79
    :goto_79
    add-int/lit8 v4, v4, 0x1

    goto :goto_63

    .line 4328
    :cond_7c
    :try_start_7c
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_a7

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_a7

    .line 4329
    sget v3, Lcom/rosteam/gpsemulator/R$string;->encontrado_ubic_rutas:I

    invoke-virtual {p0, v3}, Lcom/rosteam/gpsemulator/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v4, v5}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_e7

    .line 4330
    :cond_a7
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gtz v3, :cond_c4

    .line 4331
    sget v3, Lcom/rosteam/gpsemulator/R$string;->encontrado_rutas:I

    invoke-virtual {p0, v3}, Lcom/rosteam/gpsemulator/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_e7

    .line 4332
    :cond_c4
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gtz v3, :cond_e1

    .line 4333
    sget v3, Lcom/rosteam/gpsemulator/R$string;->encontrado_ubic:I

    invoke-virtual {p0, v3}, Lcom/rosteam/gpsemulator/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_e7

    .line 4335
    :cond_e1
    sget v3, Lcom/rosteam/gpsemulator/R$string;->encontrado_nada:I

    invoke-virtual {p0, v3}, Lcom/rosteam/gpsemulator/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 4339
    :goto_e7
    new-instance v4, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/rosteam/gpsemulator/MainActivity;->ctw:Landroid/view/ContextThemeWrapper;

    sget v6, Lcom/rosteam/gpsemulator/R$style;->CustomAlertDialog:I

    invoke-direct {v4, v5, v6}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    sget v5, Lcom/rosteam/gpsemulator/R$string;->restaurar_marcadores:I

    .line 4342
    invoke-virtual {v4, v5}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v4

    .line 4343
    invoke-virtual {v4, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v3

    .line 4345
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-gtz v4, :cond_112

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_107

    goto :goto_112

    .line 4367
    :cond_107
    sget v1, Lcom/rosteam/gpsemulator/R$string;->cerrar:I

    new-instance v2, Lcom/rosteam/gpsemulator/MainActivity$63;

    invoke-direct {v2, p0}, Lcom/rosteam/gpsemulator/MainActivity$63;-><init>(Lcom/rosteam/gpsemulator/MainActivity;)V

    invoke-virtual {v3, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    goto :goto_127

    .line 4346
    :cond_112
    :goto_112
    sget v4, Lcom/rosteam/gpsemulator/R$string;->reemplazar:I

    new-instance v5, Lcom/rosteam/gpsemulator/MainActivity$62;

    invoke-direct {v5, p0, v1, v2}, Lcom/rosteam/gpsemulator/MainActivity$62;-><init>(Lcom/rosteam/gpsemulator/MainActivity;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-virtual {v3, v4, v5}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v4

    sget v5, Lcom/rosteam/gpsemulator/R$string;->agregar:I

    new-instance v6, Lcom/rosteam/gpsemulator/MainActivity$61;

    invoke-direct {v6, p0, v1, v2}, Lcom/rosteam/gpsemulator/MainActivity$61;-><init>(Lcom/rosteam/gpsemulator/MainActivity;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 4356
    invoke-virtual {v4, v5, v6}, Landroidx/appcompat/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 4372
    :goto_127
    invoke-virtual {v3}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;
    :try_end_12a
    .catchall {:try_start_7c .. :try_end_12a} :catchall_133

    .line 4374
    :try_start_12a
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_12d
    .catchall {:try_start_12a .. :try_end_12d} :catchall_13d

    if-eqz p1, :cond_170

    :try_start_12f
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_132
    .catch Ljava/lang/Exception; {:try_start_12f .. :try_end_132} :catch_149

    goto :goto_170

    :catchall_133
    move-exception v1

    .line 4287
    :try_start_134
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_137
    .catchall {:try_start_134 .. :try_end_137} :catchall_138

    goto :goto_13c

    :catchall_138
    move-exception v0

    :try_start_139
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_13c
    throw v1
    :try_end_13d
    .catchall {:try_start_139 .. :try_end_13d} :catchall_13d

    :catchall_13d
    move-exception v0

    if-eqz p1, :cond_148

    :try_start_140
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_143
    .catchall {:try_start_140 .. :try_end_143} :catchall_144

    goto :goto_148

    :catchall_144
    move-exception p1

    :try_start_145
    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_148
    :goto_148
    throw v0
    :try_end_149
    .catch Ljava/lang/Exception; {:try_start_145 .. :try_end_149} :catch_149

    :catch_149
    move-exception p1

    .line 4375
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/rosteam/gpsemulator/MainActivity;->ctw:Landroid/view/ContextThemeWrapper;

    sget v2, Lcom/rosteam/gpsemulator/R$style;->CustomAlertDialog:I

    invoke-direct {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    sget v1, Lcom/rosteam/gpsemulator/R$string;->restaurar_marcadores:I

    .line 4376
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/rosteam/gpsemulator/R$string;->se_produjo_un_error_al_leer_el_archivo_de_marcadores:I

    .line 4377
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/rosteam/gpsemulator/R$string;->cerrar:I

    new-instance v2, Lcom/rosteam/gpsemulator/MainActivity$64;

    invoke-direct {v2, p0}, Lcom/rosteam/gpsemulator/MainActivity$64;-><init>(Lcom/rosteam/gpsemulator/MainActivity;)V

    .line 4378
    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 4381
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    .line 4382
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_170
    :goto_170
    return-void

    .line 4386
    :cond_171
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity;->ctw:Landroid/view/ContextThemeWrapper;

    sget v1, Lcom/rosteam/gpsemulator/R$style;->CustomAlertDialog:I

    invoke-direct {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    sget v0, Lcom/rosteam/gpsemulator/R$string;->restaurar_marcadores:I

    .line 4387
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    sget v0, Lcom/rosteam/gpsemulator/R$string;->routes_limit_reached_msg:I

    .line 4388
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    sget v0, Lcom/rosteam/gpsemulator/R$string;->accept:I

    new-instance v1, Lcom/rosteam/gpsemulator/MainActivity$66;

    invoke-direct {v1, p0}, Lcom/rosteam/gpsemulator/MainActivity$66;-><init>(Lcom/rosteam/gpsemulator/MainActivity;)V

    .line 4389
    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    sget v0, Lcom/rosteam/gpsemulator/R$string;->proinvitelater:I

    .line 4394
    invoke-virtual {p0, v0}, Lcom/rosteam/gpsemulator/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/rosteam/gpsemulator/MainActivity$65;

    invoke-direct {v1, p0}, Lcom/rosteam/gpsemulator/MainActivity$65;-><init>(Lcom/rosteam/gpsemulator/MainActivity;)V

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 4397
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void
.end method

.method private reemplazarBookmarks(Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/rosteam/gpsemulator/utils/RegUbic;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/rosteam/gpsemulator/utils/RegUbic;",
            ">;Z)V"
        }
    .end annotation

    .line 4405
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_15

    if-eqz p3, :cond_d

    .line 4406
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity;->favorites:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4407
    :cond_d
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity;->favorites:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 4408
    invoke-virtual {p0}, Lcom/rosteam/gpsemulator/MainActivity;->favsToPrefs()V

    .line 4411
    :cond_15
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_3a

    if-eqz p3, :cond_22

    .line 4412
    iget-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity;->rutas:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 4413
    :cond_22
    iget-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity;->rutas:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_30

    iget-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity;->rutas:Ljava/util/ArrayList;

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 4414
    :cond_30
    iget-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity;->rutas:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 4415
    iget-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity;->rutas:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/rosteam/gpsemulator/MainActivity;->rewriteRutasEnPrefs(Ljava/util/ArrayList;)V

    :cond_3a
    return-void
.end method

.method private removeInstallStateUpdateListener()V
    .registers 3

    .line 6399
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity;->appUpdateManager:Lcom/google/android/play/core/appupdate/AppUpdateManager;

    if-eqz v0, :cond_9

    .line 6400
    iget-object v1, p0, Lcom/rosteam/gpsemulator/MainActivity;->installStateUpdatedListener:Lcom/google/android/play/core/install/InstallStateUpdatedListener;

    invoke-interface {v0, v1}, Lcom/google/android/play/core/appupdate/AppUpdateManager;->unregisterListener(Lcom/google/android/play/core/install/InstallStateUpdatedListener;)V

    :cond_9
    return-void
.end method

.method private rewardedNow()Z
    .registers 4

    .line 1546
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "rewardednow"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private setAdBlock()V
    .registers 5

    .line 1504
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1505
    iget-object v2, p0, Lcom/rosteam/gpsemulator/MainActivity;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v3, "blockTime"

    invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 1506
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private setAutomaticMode(Landroid/view/View;)V
    .registers 5

    .line 2964
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity;->rewardedAd:Lcom/google/android/gms/ads/rewarded/RewardedAd;

    if-eqz v0, :cond_41

    invoke-direct {p0}, Lcom/rosteam/gpsemulator/MainActivity;->rewardedNow()Z

    move-result v0

    if-eqz v0, :cond_41

    iget-boolean v0, p0, Lcom/rosteam/gpsemulator/MainActivity;->noAds:Z

    if-nez v0, :cond_41

    .line 2965
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/rosteam/gpsemulator/MainActivity;->ctw:Landroid/view/ContextThemeWrapper;

    sget v2, Lcom/rosteam/gpsemulator/R$style;->CustomAlertDialog:I

    invoke-direct {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    sget v1, Lcom/rosteam/gpsemulator/R$string;->automatic_routes:I

    .line 2966
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/rosteam/gpsemulator/R$string;->rewarded_for_automatic:I

    .line 2967
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/rosteam/gpsemulator/R$string;->watch_ad:I

    new-instance v2, Lcom/rosteam/gpsemulator/MainActivity$52;

    invoke-direct {v2, p0, p1}, Lcom/rosteam/gpsemulator/MainActivity$52;-><init>(Lcom/rosteam/gpsemulator/MainActivity;Landroid/view/View;)V

    .line 2968
    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    sget v0, Lcom/rosteam/gpsemulator/R$string;->upgradepro:I

    .line 2973
    invoke-virtual {p0, v0}, Lcom/rosteam/gpsemulator/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/rosteam/gpsemulator/MainActivity$51;

    invoke-direct {v1, p0}, Lcom/rosteam/gpsemulator/MainActivity$51;-><init>(Lcom/rosteam/gpsemulator/MainActivity;)V

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 2979
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void

    .line 2981
    :cond_41
    invoke-virtual {p0, p1}, Lcom/rosteam/gpsemulator/MainActivity;->switchAtuomatic(Landroid/view/View;)V

    return-void
.end method

.method private setButtonPermissionEnabled(Landroid/widget/LinearLayout;I)V
    .registers 8

    const/16 v0, 0x8

    .line 2482
    const-string v1, "#FFFFFF"

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez p2, :cond_42

    .line 2483
    sget p2, Lcom/rosteam/gpsemulator/R$drawable;->fondoredondo:I

    invoke-virtual {p0, p2}, Lcom/rosteam/gpsemulator/MainActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2484
    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    invoke-virtual {p2, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2485
    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    invoke-virtual {p2, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2486
    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    sget v0, Lcom/rosteam/gpsemulator/R$drawable;->checked_error:I

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2487
    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    return-void

    :cond_42
    if-ne p2, v2, :cond_7f

    const/4 p2, 0x0

    .line 2491
    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2492
    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    invoke-virtual {p2, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/rosteam/gpsemulator/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Lcom/rosteam/gpsemulator/R$color;->gris_unselected:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2493
    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    invoke-virtual {p2, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2494
    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    sget v0, Lcom/rosteam/gpsemulator/R$drawable;->ic_check:I

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2495
    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    return-void

    :cond_7f
    const/4 v0, 0x2

    if-ne p2, v0, :cond_ad

    .line 2498
    sget p2, Lcom/rosteam/gpsemulator/R$drawable;->fondoredondogris:I

    invoke-virtual {p0, p2}, Lcom/rosteam/gpsemulator/MainActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2499
    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    invoke-virtual {p2, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2500
    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    sget v0, Lcom/rosteam/gpsemulator/R$drawable;->checked_error:I

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2501
    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    return-void

    :cond_ad
    const/4 v0, 0x3

    if-ne p2, v0, :cond_ea

    .line 2504
    sget p2, Lcom/rosteam/gpsemulator/R$drawable;->fondoredondo:I

    invoke-virtual {p0, p2}, Lcom/rosteam/gpsemulator/MainActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2505
    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    invoke-virtual {p2, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2506
    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    invoke-virtual {p2, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2507
    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    sget v0, Lcom/rosteam/gpsemulator/R$drawable;->checked_error:I

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2508
    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    return-void

    :cond_ea
    const/4 v0, 0x4

    if-ne p2, v0, :cond_137

    .line 2510
    sget p2, Lcom/rosteam/gpsemulator/R$drawable;->fondoredondo:I

    invoke-virtual {p0, p2}, Lcom/rosteam/gpsemulator/MainActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2511
    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    invoke-virtual {p2, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2512
    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    invoke-virtual {p2, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2513
    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    invoke-virtual {p2, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    const-string v0, "unknown"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2514
    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    sget v0, Lcom/rosteam/gpsemulator/R$drawable;->checked_error:I

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2515
    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    :cond_137
    return-void
.end method

.method private setCircleMode(Landroid/view/View;)V
    .registers 6

    const/16 v0, 0x66

    .line 2926
    iput v0, p0, Lcom/rosteam/gpsemulator/MainActivity;->modoRuta:I

    .line 2927
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity;->favButton:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 2928
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    sget v2, Lcom/rosteam/gpsemulator/R$id;->manual_route:I

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2929
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    sget v3, Lcom/rosteam/gpsemulator/R$id;->automatic_route:I

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 2930
    sget v3, Lcom/rosteam/gpsemulator/R$drawable;->fondoredondo:I

    invoke-virtual {p0, v3}, Lcom/rosteam/gpsemulator/MainActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 v3, 0x0

    .line 2931
    invoke-virtual {v0, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2932
    invoke-virtual {v2, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2933
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 2934
    sget v0, Lcom/rosteam/gpsemulator/R$id;->textoManual:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2935
    sget v0, Lcom/rosteam/gpsemulator/R$id;->textoCircle:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2936
    sget v0, Lcom/rosteam/gpsemulator/R$id;->textoAutomatic:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2937
    sget v0, Lcom/rosteam/gpsemulator/R$id;->contenidoAutomatic:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private setManualMode(Landroid/view/View;)V
    .registers 5

    const/16 v0, 0x64

    .line 2888
    iput v0, p0, Lcom/rosteam/gpsemulator/MainActivity;->modoRuta:I

    .line 2889
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    sget v1, Lcom/rosteam/gpsemulator/R$id;->circle_route:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2890
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    sget v2, Lcom/rosteam/gpsemulator/R$id;->automatic_route:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 2891
    sget v2, Lcom/rosteam/gpsemulator/R$drawable;->fondoredondo:I

    invoke-virtual {p0, v2}, Lcom/rosteam/gpsemulator/MainActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 v2, 0x0

    .line 2892
    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2893
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2894
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 2895
    sget v0, Lcom/rosteam/gpsemulator/R$id;->textoManual:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2896
    sget v0, Lcom/rosteam/gpsemulator/R$id;->textoCircle:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2897
    sget v0, Lcom/rosteam/gpsemulator/R$id;->textoAutomatic:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2898
    sget v0, Lcom/rosteam/gpsemulator/R$id;->contenidoAutomatic:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private setPermissionButtons(Landroid/view/View;)Z
    .registers 15

    .line 2321
    sget v0, Lcom/rosteam/gpsemulator/R$id;->permission01:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 2322
    sget v1, Lcom/rosteam/gpsemulator/R$id;->permission02:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 2323
    sget v2, Lcom/rosteam/gpsemulator/R$id;->permission03:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 2324
    sget v3, Lcom/rosteam/gpsemulator/R$id;->permission04:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 2325
    sget v4, Lcom/rosteam/gpsemulator/R$id;->permission05:I

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 2326
    sget v5, Lcom/rosteam/gpsemulator/R$id;->continuar:I

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    const/4 v5, 0x0

    .line 2328
    invoke-direct {p0, v0, v5}, Lcom/rosteam/gpsemulator/MainActivity;->setButtonPermissionEnabled(Landroid/widget/LinearLayout;I)V

    .line 2329
    invoke-direct {p0, v1, v5}, Lcom/rosteam/gpsemulator/MainActivity;->setButtonPermissionEnabled(Landroid/widget/LinearLayout;I)V

    .line 2330
    invoke-direct {p0, v2, v5}, Lcom/rosteam/gpsemulator/MainActivity;->setButtonPermissionEnabled(Landroid/widget/LinearLayout;I)V

    .line 2331
    invoke-direct {p0, v3, v5}, Lcom/rosteam/gpsemulator/MainActivity;->setButtonPermissionEnabled(Landroid/widget/LinearLayout;I)V

    .line 2333
    new-instance v6, Lcom/rosteam/gpsemulator/MainActivity$24;

    invoke-direct {v6, p0}, Lcom/rosteam/gpsemulator/MainActivity$24;-><init>(Lcom/rosteam/gpsemulator/MainActivity;)V

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2347
    new-instance v6, Lcom/rosteam/gpsemulator/MainActivity$25;

    invoke-direct {v6, p0}, Lcom/rosteam/gpsemulator/MainActivity$25;-><init>(Lcom/rosteam/gpsemulator/MainActivity;)V

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2361
    new-instance v6, Lcom/rosteam/gpsemulator/MainActivity$26;

    invoke-direct {v6, p0}, Lcom/rosteam/gpsemulator/MainActivity$26;-><init>(Lcom/rosteam/gpsemulator/MainActivity;)V

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2368
    new-instance v6, Lcom/rosteam/gpsemulator/MainActivity$27;

    invoke-direct {v6, p0}, Lcom/rosteam/gpsemulator/MainActivity$27;-><init>(Lcom/rosteam/gpsemulator/MainActivity;)V

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2375
    new-instance v6, Lcom/rosteam/gpsemulator/MainActivity$28;

    invoke-direct {v6, p0}, Lcom/rosteam/gpsemulator/MainActivity$28;-><init>(Lcom/rosteam/gpsemulator/MainActivity;)V

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2382
    new-instance v6, Lcom/rosteam/gpsemulator/MainActivity$29;

    invoke-direct {v6, p0}, Lcom/rosteam/gpsemulator/MainActivity$29;-><init>(Lcom/rosteam/gpsemulator/MainActivity;)V

    invoke-virtual {p1, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2393
    const-string v6, "INICIO DE VERIFICACIONES DE PERMISOS"

    const-string v7, "fakeGPS"

    invoke-static {v7, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2394
    new-instance v6, Landroid/content/Intent;

    const-string v8, "android.settings.APPLICATION_DEVELOPMENT_SETTINGS"

    invoke-direct {v6, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2395
    iget-object v8, p0, Lcom/rosteam/gpsemulator/MainActivity;->context:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 2396
    invoke-virtual {v8, v6, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v6

    move v8, v5

    move v9, v8

    .line 2398
    :goto_87
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v10

    const/4 v11, 0x1

    if-ge v8, v10, :cond_a8

    .line 2399
    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/ResolveInfo;

    invoke-virtual {v10}, Landroid/content/pm/ResolveInfo;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    const-string v12, "disabled"

    invoke-virtual {v10, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_a5

    move v9, v11

    :cond_a5
    add-int/lit8 v8, v8, 0x1

    goto :goto_87

    .line 2406
    :cond_a8
    :try_start_a8
    invoke-virtual {p0, p0}, Lcom/rosteam/gpsemulator/MainActivity;->isMockLocationEnabled(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_bb

    .line 2408
    const-string v6, "--- mock locations: enabled"

    invoke-static {v7, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2410
    invoke-direct {p0, v0, v11}, Lcom/rosteam/gpsemulator/MainActivity;->setButtonPermissionEnabled(Landroid/widget/LinearLayout;I)V

    .line 2411
    invoke-direct {p0, v1, v11}, Lcom/rosteam/gpsemulator/MainActivity;->setButtonPermissionEnabled(Landroid/widget/LinearLayout;I)V

    move v0, v5

    goto :goto_10e

    .line 2413
    :cond_bb
    const-string v8, "--- mock locations: disabled"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2416
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_f3

    .line 2417
    const-string v8, "GPS"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "lista"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v9, :cond_eb

    .line 2419
    invoke-direct {p0, v0, v11}, Lcom/rosteam/gpsemulator/MainActivity;->setButtonPermissionEnabled(Landroid/widget/LinearLayout;I)V

    .line 2420
    invoke-direct {p0, v1, v5}, Lcom/rosteam/gpsemulator/MainActivity;->setButtonPermissionEnabled(Landroid/widget/LinearLayout;I)V

    goto :goto_10d

    :cond_eb
    const/4 v6, 0x4

    .line 2423
    invoke-direct {p0, v0, v6}, Lcom/rosteam/gpsemulator/MainActivity;->setButtonPermissionEnabled(Landroid/widget/LinearLayout;I)V

    .line 2424
    invoke-direct {p0, v1, v5}, Lcom/rosteam/gpsemulator/MainActivity;->setButtonPermissionEnabled(Landroid/widget/LinearLayout;I)V

    goto :goto_10d

    .line 2427
    :cond_f3
    invoke-direct {p0, v0, v9}, Lcom/rosteam/gpsemulator/MainActivity;->setButtonPermissionEnabled(Landroid/widget/LinearLayout;I)V

    .line 2428
    invoke-direct {p0, v1, v5}, Lcom/rosteam/gpsemulator/MainActivity;->setButtonPermissionEnabled(Landroid/widget/LinearLayout;I)V
    :try_end_f9
    .catch Ljava/lang/Exception; {:try_start_a8 .. :try_end_f9} :catch_fa

    goto :goto_10d

    :catch_fa
    move-exception v6

    .line 2432
    const-string v8, "--- mock locations: error"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2433
    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2435
    invoke-direct {p0, v0, v9}, Lcom/rosteam/gpsemulator/MainActivity;->setButtonPermissionEnabled(Landroid/widget/LinearLayout;I)V

    .line 2436
    invoke-direct {p0, v1, v5}, Lcom/rosteam/gpsemulator/MainActivity;->setButtonPermissionEnabled(Landroid/widget/LinearLayout;I)V

    :goto_10d
    move v0, v11

    .line 2451
    :goto_10e
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x21

    const/4 v7, 0x3

    if-lt v1, v6, :cond_128

    .line 2452
    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2453
    const-string v1, "android.permission.POST_NOTIFICATIONS"

    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_124

    .line 2454
    invoke-direct {p0, v4, v7}, Lcom/rosteam/gpsemulator/MainActivity;->setButtonPermissionEnabled(Landroid/widget/LinearLayout;I)V

    goto :goto_12d

    .line 2456
    :cond_124
    invoke-direct {p0, v4, v11}, Lcom/rosteam/gpsemulator/MainActivity;->setButtonPermissionEnabled(Landroid/widget/LinearLayout;I)V

    goto :goto_12d

    :cond_128
    const/16 v1, 0x8

    .line 2459
    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2462
    :goto_12d
    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_13a

    .line 2464
    invoke-direct {p0, v2, v5}, Lcom/rosteam/gpsemulator/MainActivity;->setButtonPermissionEnabled(Landroid/widget/LinearLayout;I)V

    move v0, v11

    goto :goto_13d

    .line 2466
    :cond_13a
    invoke-direct {p0, v2, v11}, Lcom/rosteam/gpsemulator/MainActivity;->setButtonPermissionEnabled(Landroid/widget/LinearLayout;I)V

    .line 2469
    :goto_13d
    invoke-virtual {p0}, Lcom/rosteam/gpsemulator/MainActivity;->isPowerRestricted()Z

    move-result v1

    if-eqz v1, :cond_147

    .line 2470
    invoke-direct {p0, v3, v7}, Lcom/rosteam/gpsemulator/MainActivity;->setButtonPermissionEnabled(Landroid/widget/LinearLayout;I)V

    goto :goto_14a

    .line 2472
    :cond_147
    invoke-direct {p0, v3, v11}, Lcom/rosteam/gpsemulator/MainActivity;->setButtonPermissionEnabled(Landroid/widget/LinearLayout;I)V

    :goto_14a
    xor-int/lit8 v1, v0, 0x1

    .line 2475
    invoke-virtual {p1, v1}, Landroid/widget/Button;->setEnabled(Z)V

    return v0
.end method

.method private setRewardedNow()V
    .registers 4

    .line 1550
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "rewardednow"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1551
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private splashNow()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method private switchPinnedList(ZI)V
    .registers 12

    .line 5840
    new-instance v0, Lcom/rosteam/gpsemulator/MainActivity$94;

    invoke-direct {v0, p0, p2}, Lcom/rosteam/gpsemulator/MainActivity$94;-><init>(Lcom/rosteam/gpsemulator/MainActivity;I)V

    invoke-virtual {p0, v0}, Lcom/rosteam/gpsemulator/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 5856
    new-instance v1, Landroid/view/animation/RotateAnimation;

    const/high16 v0, -0x3d4c0000    # -90.0f

    const/4 v8, 0x0

    if-eqz p1, :cond_11

    move v2, v0

    goto :goto_12

    :cond_11
    move v2, v8

    :goto_12
    if-eqz p1, :cond_16

    move v3, v8

    goto :goto_17

    :cond_16
    move v3, v0

    :goto_17
    const/4 v6, 0x1

    const/high16 v7, 0x3f000000    # 0.5f

    const/4 v4, 0x1

    const/high16 v5, 0x3f000000    # 0.5f

    invoke-direct/range {v1 .. v7}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    const-wide/16 v2, 0x12c

    .line 5857
    invoke-virtual {v1, v2, v3}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 5858
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v1, v0}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const/4 v0, 0x1

    .line 5859
    invoke-virtual {v1, v0}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V

    .line 5860
    iget-object v4, p0, Lcom/rosteam/gpsemulator/MainActivity;->pinview:Landroid/widget/ImageView;

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 5865
    iget-object v1, p0, Lcom/rosteam/gpsemulator/MainActivity;->mobileContainer:Landroid/view/View;

    if-eqz p1, :cond_3b

    goto :goto_41

    :cond_3b
    int-to-float p1, p2

    .line 5866
    invoke-virtual {p0, p1}, Lcom/rosteam/gpsemulator/MainActivity;->convertDpToPixel(F)I

    move-result p1

    int-to-float v8, p1

    :goto_41
    new-array p1, v0, [F

    const/4 p2, 0x0

    aput v8, p1, p2

    .line 5865
    const-string p2, "translationY"

    invoke-static {v1, p2, p1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 5867
    invoke-virtual {p1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 5868
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method private transitionNow()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method private transitionShow(Landroid/content/Intent;I)V
    .registers 5

    .line 6147
    invoke-direct {p0}, Lcom/rosteam/gpsemulator/MainActivity;->transitionNow()Z

    move-result v0

    if-eqz v0, :cond_c8

    iget-boolean v0, p0, Lcom/rosteam/gpsemulator/MainActivity;->noAds:Z

    if-nez v0, :cond_c8

    .line 6148
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity;->mInterstitialAd:Lcom/google/android/gms/ads/interstitial/InterstitialAd;

    const-string v1, "transitionShow"

    if-eqz v0, :cond_29

    .line 6149
    const-string v0, "Va AdMob"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6150
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity;->mInterstitialAd:Lcom/google/android/gms/ads/interstitial/InterstitialAd;

    new-instance v1, Lcom/rosteam/gpsemulator/MainActivity$103;

    invoke-direct {v1, p0, p1, p2}, Lcom/rosteam/gpsemulator/MainActivity$103;-><init>(Lcom/rosteam/gpsemulator/MainActivity;Landroid/content/Intent;I)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/interstitial/InterstitialAd;->setFullScreenContentCallback(Lcom/google/android/gms/ads/FullScreenContentCallback;)V

    .line 6182
    invoke-direct {p0}, Lcom/rosteam/gpsemulator/MainActivity;->setAdBlock()V

    .line 6183
    iget-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity;->mInterstitialAd:Lcom/google/android/gms/ads/interstitial/InterstitialAd;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/ads/interstitial/InterstitialAd;->show(Landroid/app/Activity;)V

    goto/16 :goto_cb

    .line 6188
    :cond_29
    iget-boolean v0, p0, Lcom/rosteam/gpsemulator/MainActivity;->unityTransicionReady:Z

    if-eqz v0, :cond_49

    .line 6189
    const-string v0, "Va Unity"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 6190
    iput-boolean v0, p0, Lcom/rosteam/gpsemulator/MainActivity;->unityTransicionReady:Z

    .line 6191
    new-instance v0, Lcom/rosteam/gpsemulator/MainActivity$104;

    invoke-direct {v0, p0, p1, p2}, Lcom/rosteam/gpsemulator/MainActivity$104;-><init>(Lcom/rosteam/gpsemulator/MainActivity;Landroid/content/Intent;I)V

    .line 6214
    invoke-direct {p0}, Lcom/rosteam/gpsemulator/MainActivity;->setAdBlock()V

    .line 6215
    iget-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity;->transicion01Id:Ljava/lang/String;

    new-instance p2, Lcom/unity3d/ads/UnityAdsShowOptions;

    invoke-direct {p2}, Lcom/unity3d/ads/UnityAdsShowOptions;-><init>()V

    invoke-static {p0, p1, p2, v0}, Lcom/unity3d/ads/UnityAds;->show(Landroid/app/Activity;Ljava/lang/String;Lcom/unity3d/ads/UnityAdsShowOptions;Lcom/unity3d/ads/IUnityAdsShowListener;)V

    goto/16 :goto_cb

    .line 6218
    :cond_49
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity;->adgInterstitial:Lcom/socdm/d/adgeneration/interstitial/ADGInterstitial;

    if-eqz v0, :cond_6b

    invoke-virtual {v0}, Lcom/socdm/d/adgeneration/interstitial/ADGInterstitial;->isReady()Z

    move-result v0

    if-eqz v0, :cond_6b

    .line 6219
    const-string v0, "Va adGen"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6220
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity;->adgInterstitial:Lcom/socdm/d/adgeneration/interstitial/ADGInterstitial;

    new-instance v1, Lcom/rosteam/gpsemulator/MainActivity$105;

    invoke-direct {v1, p0, p1, p2}, Lcom/rosteam/gpsemulator/MainActivity$105;-><init>(Lcom/rosteam/gpsemulator/MainActivity;Landroid/content/Intent;I)V

    invoke-virtual {v0, v1}, Lcom/socdm/d/adgeneration/interstitial/ADGInterstitial;->setAdListener(Lcom/socdm/d/adgeneration/interstitial/ADGInterstitialListener;)V

    .line 6232
    invoke-direct {p0}, Lcom/rosteam/gpsemulator/MainActivity;->setAdBlock()V

    .line 6233
    iget-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity;->adgInterstitial:Lcom/socdm/d/adgeneration/interstitial/ADGInterstitial;

    invoke-virtual {p1}, Lcom/socdm/d/adgeneration/interstitial/ADGInterstitial;->show()Z

    goto :goto_cb

    .line 6236
    :cond_6b
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity;->interstitialPangle:Lcom/bytedance/sdk/openadsdk/api/interstitial/PAGInterstitialAd;

    if-eqz v0, :cond_87

    .line 6237
    const-string v0, "Va Pangle"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6238
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity;->interstitialPangle:Lcom/bytedance/sdk/openadsdk/api/interstitial/PAGInterstitialAd;

    new-instance v1, Lcom/rosteam/gpsemulator/MainActivity$106;

    invoke-direct {v1, p0, p1, p2}, Lcom/rosteam/gpsemulator/MainActivity$106;-><init>(Lcom/rosteam/gpsemulator/MainActivity;Landroid/content/Intent;I)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/api/interstitial/PAGInterstitialAd;->setAdInteractionListener(Lcom/bytedance/sdk/openadsdk/api/interstitial/PAGInterstitialAdInteractionListener;)V

    .line 6253
    invoke-direct {p0}, Lcom/rosteam/gpsemulator/MainActivity;->setAdBlock()V

    .line 6254
    iget-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity;->interstitialPangle:Lcom/bytedance/sdk/openadsdk/api/interstitial/PAGInterstitialAd;

    invoke-virtual {p1, p0}, Lcom/bytedance/sdk/openadsdk/api/interstitial/PAGInterstitialAd;->show(Landroid/app/Activity;)V

    goto :goto_cb

    .line 6258
    :cond_87
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity;->interstitialYandex:Lcom/yandex/mobile/ads/interstitial/InterstitialAd;

    if-eqz v0, :cond_a3

    .line 6259
    const-string v0, "Va Yandex"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6260
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity;->interstitialYandex:Lcom/yandex/mobile/ads/interstitial/InterstitialAd;

    new-instance v1, Lcom/rosteam/gpsemulator/MainActivity$107;

    invoke-direct {v1, p0, p1, p2}, Lcom/rosteam/gpsemulator/MainActivity$107;-><init>(Lcom/rosteam/gpsemulator/MainActivity;Landroid/content/Intent;I)V

    invoke-interface {v0, v1}, Lcom/yandex/mobile/ads/interstitial/InterstitialAd;->setAdEventListener(Lcom/yandex/mobile/ads/interstitial/InterstitialAdEventListener;)V

    .line 6288
    invoke-direct {p0}, Lcom/rosteam/gpsemulator/MainActivity;->setAdBlock()V

    .line 6289
    iget-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity;->interstitialYandex:Lcom/yandex/mobile/ads/interstitial/InterstitialAd;

    invoke-interface {p1, p0}, Lcom/yandex/mobile/ads/interstitial/InterstitialAd;->show(Landroid/app/Activity;)V

    goto :goto_cb

    .line 6293
    :cond_a3
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity;->intersVK:Lcom/my/target/ads/InterstitialAd;

    if-eqz v0, :cond_c4

    .line 6294
    const-string v0, "VK"

    const-string v1, "intersVK not null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6295
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity;->intersVK:Lcom/my/target/ads/InterstitialAd;

    new-instance v1, Lcom/rosteam/gpsemulator/MainActivity$108;

    invoke-direct {v1, p0}, Lcom/rosteam/gpsemulator/MainActivity$108;-><init>(Lcom/rosteam/gpsemulator/MainActivity;)V

    invoke-virtual {v0, v1}, Lcom/my/target/ads/InterstitialAd;->setListener(Lcom/my/target/ads/InterstitialAd$InterstitialAdListener;)V

    .line 6331
    invoke-direct {p0}, Lcom/rosteam/gpsemulator/MainActivity;->setAdBlock()V

    .line 6332
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity;->intersVK:Lcom/my/target/ads/InterstitialAd;

    invoke-virtual {v0}, Lcom/my/target/ads/InterstitialAd;->show()V

    .line 6333
    invoke-virtual {p0, p1, p2}, Lcom/rosteam/gpsemulator/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_cb

    .line 6337
    :cond_c4
    invoke-virtual {p0, p1, p2}, Lcom/rosteam/gpsemulator/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_cb

    .line 6340
    :cond_c8
    invoke-virtual {p0, p1, p2}, Lcom/rosteam/gpsemulator/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 6342
    :goto_cb
    invoke-direct {p0}, Lcom/rosteam/gpsemulator/MainActivity;->onetimeSplashLock()V

    return-void
.end method

.method private unlockExitAd()V
    .registers 5

    .line 1492
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1493
    iget-object v2, p0, Lcom/rosteam/gpsemulator/MainActivity;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v3, "exitBlockTime"

    invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 1494
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private unsetRewardedNow()V
    .registers 4

    .line 1556
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "rewardednow"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1557
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private wasLoadTimeLessThanNHoursAgo(J)Z
    .registers 7

    .line 5518
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/rosteam/gpsemulator/MainActivity;->loadTimeExitAd:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x36ee80

    mul-long/2addr p1, v2

    cmp-long p1, v0, p1

    if-gez p1, :cond_16

    const/4 p1, 0x1

    return p1

    :cond_16
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public GetCiudadPais(DDFF)V
    .registers 15

    .line 4091
    new-instance v0, Lcom/rosteam/gpsemulator/MainActivity$1CiudadPaisQuery;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/rosteam/gpsemulator/MainActivity$1CiudadPaisQuery;-><init>(Lcom/rosteam/gpsemulator/MainActivity;DDFF)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/rosteam/gpsemulator/MainActivity$1CiudadPaisQuery;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public GetTime(DDZ)V
    .registers 6

    .line 3926
    iput-wide p1, p0, Lcom/rosteam/gpsemulator/MainActivity;->GetTimeLat:D

    .line 3927
    iput-wide p3, p0, Lcom/rosteam/gpsemulator/MainActivity;->GetTimeLng:D

    .line 3929
    invoke-virtual {p0}, Lcom/rosteam/gpsemulator/MainActivity;->stoptimertask()V

    .line 3930
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "GetTime repetido: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "GPS"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4018
    new-instance p1, Lcom/rosteam/gpsemulator/MainActivity$1TimeZoneDBquery;

    invoke-direct {p1, p0, p5}, Lcom/rosteam/gpsemulator/MainActivity$1TimeZoneDBquery;-><init>(Lcom/rosteam/gpsemulator/MainActivity;Z)V

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/rosteam/gpsemulator/MainActivity$1TimeZoneDBquery;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public addToHis(Lcom/rosteam/gpsemulator/utils/RegUbic;)V
    .registers 10

    .line 3691
    invoke-static {p0}, Lcom/rosteam/gpsemulator/LocationUtils;->loadHisFromPref(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity;->history:Ljava/util/ArrayList;

    .line 3693
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0xc

    if-lt v0, v1, :cond_19

    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity;->history:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3694
    :cond_19
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity;->history:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 3696
    iget-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 3698
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity;->history:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_85

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/rosteam/gpsemulator/utils/RegUbic;

    .line 3699
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "histPosition"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v2, Lcom/rosteam/gpsemulator/utils/RegUbic;->ciudadpais:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "+"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, v2, Lcom/rosteam/gpsemulator/utils/RegUbic;->lat:D

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, v2, Lcom/rosteam/gpsemulator/utils/RegUbic;->lng:D

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v6, v2, Lcom/rosteam/gpsemulator/utils/RegUbic;->zoom:F

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v2, v2, Lcom/rosteam/gpsemulator/utils/RegUbic;->bearing:F

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2b

    .line 3704
    :cond_85
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public checkBatteryPolicy()V
    .registers 4

    .line 1373
    invoke-virtual {p0}, Lcom/rosteam/gpsemulator/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 1376
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    sget v1, Lcom/rosteam/gpsemulator/R$style;->CustomAlertDialog:I

    invoke-direct {v0, p0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    sget v1, Lcom/rosteam/gpsemulator/R$string;->batterysummary:I

    .line 1378
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/rosteam/gpsemulator/MainActivity$11;

    invoke-direct {v1, p0}, Lcom/rosteam/gpsemulator/MainActivity$11;-><init>(Lcom/rosteam/gpsemulator/MainActivity;)V

    .line 1379
    const-string v2, "ok"

    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 1390
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    .line 1391
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->show()V

    return-void
.end method

.method public checkLocationPermission()V
    .registers 4

    .line 1404
    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {p0, v0}, Landroidx/core/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 1407
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    sget v1, Lcom/rosteam/gpsemulator/R$style;->CustomAlertDialog:I

    invoke-direct {v0, p0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    sget v1, Lcom/rosteam/gpsemulator/R$string;->location_permission_titlte:I

    .line 1408
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/rosteam/gpsemulator/R$string;->location_permission_needed:I

    .line 1409
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/rosteam/gpsemulator/MainActivity$12;

    invoke-direct {v1, p0}, Lcom/rosteam/gpsemulator/MainActivity$12;-><init>(Lcom/rosteam/gpsemulator/MainActivity;)V

    .line 1410
    const-string v2, "ok"

    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 1418
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    .line 1419
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->show()V

    return-void

    .line 1421
    :cond_2e
    const-string v1, "GPS"

    const-string v2, "requestLocationPermission should NOT SHOW rationale"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    .line 1422
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/16 v0, 0x63

    invoke-static {p0, v1, v0}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    return-void
.end method

.method public checkNotificationPermission()V
    .registers 4

    .line 1431
    const-string v0, "requestLocationPermission NOT GRANTED"

    const-string v1, "GPS"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1432
    const-string v0, "android.permission.POST_NOTIFICATIONS"

    invoke-static {p0, v0}, Landroidx/core/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_34

    .line 1434
    const-string v0, "requestLocationPermission should show rationale"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1435
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    sget v1, Lcom/rosteam/gpsemulator/R$style;->CustomAlertDialog:I

    invoke-direct {v0, p0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const-string v1, "Notification permission needed to shown the app running"

    .line 1436
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/rosteam/gpsemulator/MainActivity$13;

    invoke-direct {v1, p0}, Lcom/rosteam/gpsemulator/MainActivity$13;-><init>(Lcom/rosteam/gpsemulator/MainActivity;)V

    .line 1437
    const-string v2, "ok"

    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 1445
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    .line 1446
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->show()V

    return-void

    .line 1448
    :cond_34
    const-string v2, "requestLocationPermission should NOT SHOW rationale"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    .line 1449
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/16 v0, 0x62

    invoke-static {p0, v1, v0}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    return-void
.end method

.method public checkOverlayPermission()V
    .registers 3

    .line 6405
    invoke-static {p0}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 6407
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.action.MANAGE_OVERLAY_PERMISSION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6408
    invoke-virtual {p0, v0}, Lcom/rosteam/gpsemulator/MainActivity;->startActivity(Landroid/content/Intent;)V

    :cond_10
    return-void
.end method

.method public convertDpToPixel(F)I
    .registers 4

    .line 6413
    invoke-virtual {p0}, Lcom/rosteam/gpsemulator/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 6414
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 6415
    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v0, v0

    const/high16 v1, 0x43200000    # 160.0f

    div-float/2addr v0, v1

    mul-float/2addr p1, v0

    float-to-int p1, p1

    return p1
.end method

.method public deshabilitarPRO()V
    .registers 1

    return-void
.end method

.method public favsToPrefs()V
    .registers 11

    .line 3726
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    .line 3729
    :goto_8
    iget v3, p0, Lcom/rosteam/gpsemulator/MainActivity;->numerofavoritos:I

    const-string v4, "favPosition"

    if-ge v2, v3, :cond_21

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 3732
    :cond_21
    iget-object v2, p0, Lcom/rosteam/gpsemulator/MainActivity;->favorites:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_27
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_89

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/rosteam/gpsemulator/utils/RegUbic;

    .line 3733
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v3, Lcom/rosteam/gpsemulator/utils/RegUbic;->ciudadpais:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "+"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v8, v3, Lcom/rosteam/gpsemulator/utils/RegUbic;->lat:D

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v8, v3, Lcom/rosteam/gpsemulator/utils/RegUbic;->lng:D

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v8, v3, Lcom/rosteam/gpsemulator/utils/RegUbic;->zoom:F

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v8, v3, Lcom/rosteam/gpsemulator/utils/RegUbic;->bearing:F

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v3, v3, Lcom/rosteam/gpsemulator/utils/RegUbic;->pined:Z

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v5, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    add-int/lit8 v1, v1, 0x1

    goto :goto_27

    .line 3738
    :cond_89
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public getUrl(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)Ljava/lang/String;
    .registers 7

    .line 3142
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "https://maps.googleapis.com/maps/api/directions/json?origin="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p1, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p1, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "&destination="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-wide v2, p2, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-wide v0, p2, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "&sensor=false"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 3145
    iget p2, p0, Lcom/rosteam/gpsemulator/MainActivity;->modoAutomatic:I

    const/16 v0, 0xc8

    if-ne p2, v0, :cond_3e

    const-string p2, "&mode=walking"

    goto :goto_40

    :cond_3e
    const-string p2, "&mode=driving"

    :goto_40
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "&key=AIzaSyBnqca301BLnXE--vOX_lTJWJwY2IrrSSA"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getUrlMapbox(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)Ljava/lang/String;
    .registers 7

    .line 3155
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "https://api.mapbox.com/directions/v5/mapbox/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3156
    iget v1, p0, Lcom/rosteam/gpsemulator/MainActivity;->modoAutomatic:I

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_10

    const-string v1, "walking/"

    goto :goto_12

    :cond_10
    const-string v1, "driving/"

    :goto_12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p1, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p1, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ";"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-wide v2, p2, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-wide v0, p2, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "?alternatives=false&continue_straight=true&geometries=geojson&language=en&overview=full&steps=false&exclude=ferry&access_token=pk.eyJ1IjoiZGlnaXRvb2xzIiwiYSI6ImNtOWs1ZDdtbDBqZXoyaXB4dDNmdGZncGEifQ.xBliBeXmlNZGg83fbCj3MQ"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public goPro()V
    .registers 5

    .line 5568
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "inviteShown: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/rosteam/gpsemulator/MainActivity;->inviteshown:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " usos: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/rosteam/gpsemulator/MainActivity;->cantUsos:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GoPro"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5569
    sget v0, Lcom/rosteam/gpsemulator/R$string;->proinvitemsg:I

    invoke-virtual {p0, v0}, Lcom/rosteam/gpsemulator/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 5571
    iget v1, p0, Lcom/rosteam/gpsemulator/MainActivity;->cantUsos:I

    rem-int/lit8 v1, v1, 0x3

    if-nez v1, :cond_66

    iget-boolean v1, p0, Lcom/rosteam/gpsemulator/MainActivity;->noAds:Z

    if-nez v1, :cond_66

    .line 5572
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/rosteam/gpsemulator/MainActivity;->ctw:Landroid/view/ContextThemeWrapper;

    sget v3, Lcom/rosteam/gpsemulator/R$style;->CustomAlertDialog:I

    invoke-direct {v1, v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    sget v2, Lcom/rosteam/gpsemulator/R$string;->pronvitetitle:I

    .line 5573
    invoke-virtual {p0, v2}, Lcom/rosteam/gpsemulator/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    .line 5574
    invoke-virtual {v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/rosteam/gpsemulator/R$string;->accept:I

    new-instance v2, Lcom/rosteam/gpsemulator/MainActivity$89;

    invoke-direct {v2, p0}, Lcom/rosteam/gpsemulator/MainActivity$89;-><init>(Lcom/rosteam/gpsemulator/MainActivity;)V

    .line 5575
    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/rosteam/gpsemulator/R$string;->proinvitelater:I

    .line 5582
    invoke-virtual {p0, v1}, Lcom/rosteam/gpsemulator/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/rosteam/gpsemulator/MainActivity$88;

    invoke-direct {v2, p0}, Lcom/rosteam/gpsemulator/MainActivity$88;-><init>(Lcom/rosteam/gpsemulator/MainActivity;)V

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 5589
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    :cond_66
    return-void
.end method

.method public habilitarPRO()V
    .registers 2

    .line 6002
    new-instance v0, Lcom/rosteam/gpsemulator/MainActivity$98;

    invoke-direct {v0, p0}, Lcom/rosteam/gpsemulator/MainActivity$98;-><init>(Lcom/rosteam/gpsemulator/MainActivity;)V

    invoke-virtual {p0, v0}, Lcom/rosteam/gpsemulator/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public hacerCompra()V
    .registers 16

    .line 5597
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity;->currentProductDetails:Lcom/android/billingclient/api/ProductDetails;

    if-eqz v0, :cond_1b3

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    move v3, v2

    .line 5599
    :goto_8
    iget-object v4, p0, Lcom/rosteam/gpsemulator/MainActivity;->currentProductDetails:Lcom/android/billingclient/api/ProductDetails;

    invoke-virtual {v4}, Lcom/android/billingclient/api/ProductDetails;->getSubscriptionOfferDetails()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_49

    .line 5600
    iget-object v4, p0, Lcom/rosteam/gpsemulator/MainActivity;->currentProductDetails:Lcom/android/billingclient/api/ProductDetails;

    invoke-virtual {v4}, Lcom/android/billingclient/api/ProductDetails;->getSubscriptionOfferDetails()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/billingclient/api/ProductDetails$SubscriptionOfferDetails;

    invoke-virtual {v4}, Lcom/android/billingclient/api/ProductDetails$SubscriptionOfferDetails;->getBasePlanId()Ljava/lang/String;

    move-result-object v4

    const-string v5, "pro-3months"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2d

    move v2, v1

    .line 5603
    :cond_2d
    iget-object v4, p0, Lcom/rosteam/gpsemulator/MainActivity;->currentProductDetails:Lcom/android/billingclient/api/ProductDetails;

    invoke-virtual {v4}, Lcom/android/billingclient/api/ProductDetails;->getSubscriptionOfferDetails()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/billingclient/api/ProductDetails$SubscriptionOfferDetails;

    invoke-virtual {v4}, Lcom/android/billingclient/api/ProductDetails$SubscriptionOfferDetails;->getBasePlanId()Ljava/lang/String;

    move-result-object v4

    const-string v5, "pro-monthly"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_46

    move v3, v1

    :cond_46
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 5608
    :cond_49
    iget-object v1, p0, Lcom/rosteam/gpsemulator/MainActivity;->currentProductDetails:Lcom/android/billingclient/api/ProductDetails;

    invoke-virtual {v1}, Lcom/android/billingclient/api/ProductDetails;->getSubscriptionOfferDetails()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/billingclient/api/ProductDetails$SubscriptionOfferDetails;

    invoke-virtual {v1}, Lcom/android/billingclient/api/ProductDetails$SubscriptionOfferDetails;->getOfferToken()Ljava/lang/String;

    move-result-object v1

    .line 5610
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 5613
    invoke-static {}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams;->newBuilder()Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;

    move-result-object v5

    iget-object v6, p0, Lcom/rosteam/gpsemulator/MainActivity;->currentProductDetails:Lcom/android/billingclient/api/ProductDetails;

    .line 5614
    invoke-virtual {v5, v6}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;->setProductDetails(Lcom/android/billingclient/api/ProductDetails;)Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;

    move-result-object v5

    .line 5615
    invoke-virtual {v5, v1}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;->setOfferToken(Ljava/lang/String;)Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;

    move-result-object v1

    .line 5616
    invoke-virtual {v1}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;->build()Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams;

    move-result-object v1

    .line 5612
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5618
    invoke-static {}, Lcom/android/billingclient/api/BillingFlowParams;->newBuilder()Lcom/android/billingclient/api/BillingFlowParams$Builder;

    move-result-object v1

    .line 5619
    invoke-virtual {v1, v4}, Lcom/android/billingclient/api/BillingFlowParams$Builder;->setProductDetailsParamsList(Ljava/util/List;)Lcom/android/billingclient/api/BillingFlowParams$Builder;

    move-result-object v1

    .line 5620
    invoke-virtual {v1}, Lcom/android/billingclient/api/BillingFlowParams$Builder;->build()Lcom/android/billingclient/api/BillingFlowParams;

    move-result-object v1

    .line 5623
    iget-object v4, p0, Lcom/rosteam/gpsemulator/MainActivity;->currentProductDetails:Lcom/android/billingclient/api/ProductDetails;

    invoke-virtual {v4}, Lcom/android/billingclient/api/ProductDetails;->getSubscriptionOfferDetails()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/billingclient/api/ProductDetails$SubscriptionOfferDetails;

    invoke-virtual {v4}, Lcom/android/billingclient/api/ProductDetails$SubscriptionOfferDetails;->getOfferToken()Ljava/lang/String;

    move-result-object v4

    .line 5625
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 5628
    invoke-static {}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams;->newBuilder()Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;

    move-result-object v6

    iget-object v7, p0, Lcom/rosteam/gpsemulator/MainActivity;->currentProductDetails:Lcom/android/billingclient/api/ProductDetails;

    .line 5629
    invoke-virtual {v6, v7}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;->setProductDetails(Lcom/android/billingclient/api/ProductDetails;)Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;

    move-result-object v6

    .line 5630
    invoke-virtual {v6, v4}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;->setOfferToken(Ljava/lang/String;)Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;

    move-result-object v4

    .line 5631
    invoke-virtual {v4}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;->build()Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams;

    move-result-object v4

    .line 5627
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5633
    invoke-static {}, Lcom/android/billingclient/api/BillingFlowParams;->newBuilder()Lcom/android/billingclient/api/BillingFlowParams$Builder;

    move-result-object v4

    .line 5634
    invoke-virtual {v4, v5}, Lcom/android/billingclient/api/BillingFlowParams$Builder;->setProductDetailsParamsList(Ljava/util/List;)Lcom/android/billingclient/api/BillingFlowParams$Builder;

    move-result-object v4

    .line 5635
    invoke-virtual {v4}, Lcom/android/billingclient/api/BillingFlowParams$Builder;->build()Lcom/android/billingclient/api/BillingFlowParams;

    move-result-object v4

    const/4 v5, 0x0

    .line 5639
    :try_start_b6
    iget-object v6, p0, Lcom/rosteam/gpsemulator/MainActivity;->currentProductDetails:Lcom/android/billingclient/api/ProductDetails;

    invoke-virtual {v6}, Lcom/android/billingclient/api/ProductDetails;->getSubscriptionOfferDetails()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/billingclient/api/ProductDetails$SubscriptionOfferDetails;

    invoke-virtual {v2}, Lcom/android/billingclient/api/ProductDetails$SubscriptionOfferDetails;->getPricingPhases()Lcom/android/billingclient/api/ProductDetails$PricingPhases;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/billingclient/api/ProductDetails$PricingPhases;->getPricingPhaseList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/billingclient/api/ProductDetails$PricingPhase;
    :try_end_d0
    .catch Ljava/lang/Exception; {:try_start_b6 .. :try_end_d0} :catch_eb

    .line 5640
    :try_start_d0
    iget-object v6, p0, Lcom/rosteam/gpsemulator/MainActivity;->currentProductDetails:Lcom/android/billingclient/api/ProductDetails;

    invoke-virtual {v6}, Lcom/android/billingclient/api/ProductDetails;->getSubscriptionOfferDetails()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/billingclient/api/ProductDetails$SubscriptionOfferDetails;

    invoke-virtual {v3}, Lcom/android/billingclient/api/ProductDetails$SubscriptionOfferDetails;->getPricingPhases()Lcom/android/billingclient/api/ProductDetails$PricingPhases;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/billingclient/api/ProductDetails$PricingPhases;->getPricingPhaseList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/billingclient/api/ProductDetails$PricingPhase;
    :try_end_ea
    .catch Ljava/lang/Exception; {:try_start_d0 .. :try_end_ea} :catch_ec

    goto :goto_ed

    :catch_eb
    move-object v2, v5

    :catch_ec
    move-object v0, v5

    .line 5643
    :goto_ed
    invoke-virtual {p0}, Lcom/rosteam/gpsemulator/MainActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    sget v6, Lcom/rosteam/gpsemulator/R$layout;->purchase:I

    invoke-virtual {v3, v6, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 5644
    sget v5, Lcom/rosteam/gpsemulator/R$id;->three_months:I

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    .line 5645
    sget v6, Lcom/rosteam/gpsemulator/R$id;->text_3months:I

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 5646
    sget v7, Lcom/rosteam/gpsemulator/R$id;->text_saving:I

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 5648
    sget v8, Lcom/rosteam/gpsemulator/R$id;->one_month:I

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    .line 5649
    sget v9, Lcom/rosteam/gpsemulator/R$id;->text_1month:I

    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 5651
    sget v10, Lcom/rosteam/gpsemulator/R$id;->dismiss:I

    invoke-virtual {v3, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout;

    .line 5654
    sget v11, Lcom/rosteam/gpsemulator/R$string;->money_3months:I

    invoke-virtual {v2}, Lcom/android/billingclient/api/ProductDetails$PricingPhase;->getFormattedPrice()Ljava/lang/String;

    move-result-object v12

    filled-new-array {v12}, [Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {p0, v11, v12}, Lcom/rosteam/gpsemulator/MainActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5655
    new-instance v6, Lcom/rosteam/gpsemulator/MainActivity$90;

    invoke-direct {v6, p0, v1}, Lcom/rosteam/gpsemulator/MainActivity$90;-><init>(Lcom/rosteam/gpsemulator/MainActivity;Lcom/android/billingclient/api/BillingFlowParams;)V

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5663
    invoke-virtual {v0}, Lcom/android/billingclient/api/ProductDetails$PricingPhase;->getPriceAmountMicros()J

    move-result-wide v5

    const-wide/16 v11, 0x3e8

    div-long/2addr v5, v11

    const-wide/16 v13, 0x3

    mul-long/2addr v5, v13

    invoke-virtual {v2}, Lcom/android/billingclient/api/ProductDetails$PricingPhase;->getPriceAmountMicros()J

    move-result-wide v1

    div-long/2addr v1, v11

    sub-long/2addr v5, v1

    long-to-float v1, v5

    invoke-virtual {v0}, Lcom/android/billingclient/api/ProductDetails$PricingPhase;->getPriceAmountMicros()J

    move-result-wide v5

    div-long/2addr v5, v11

    mul-long/2addr v5, v13

    long-to-float v2, v5

    div-float/2addr v1, v2

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 5665
    sget v2, Lcom/rosteam/gpsemulator/R$string;->save_money:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Lcom/rosteam/gpsemulator/MainActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5671
    sget v1, Lcom/rosteam/gpsemulator/R$string;->money_month:I

    invoke-virtual {v0}, Lcom/android/billingclient/api/ProductDetails$PricingPhase;->getFormattedPrice()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/rosteam/gpsemulator/MainActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5672
    new-instance v0, Lcom/rosteam/gpsemulator/MainActivity$91;

    invoke-direct {v0, p0, v4}, Lcom/rosteam/gpsemulator/MainActivity$91;-><init>(Lcom/rosteam/gpsemulator/MainActivity;Lcom/android/billingclient/api/BillingFlowParams;)V

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5680
    new-instance v0, Lcom/rosteam/gpsemulator/MainActivity$92;

    invoke-direct {v0, p0}, Lcom/rosteam/gpsemulator/MainActivity$92;-><init>(Lcom/rosteam/gpsemulator/MainActivity;)V

    invoke-virtual {v10, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5688
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/rosteam/gpsemulator/MainActivity;->context:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    sget v2, Lcom/rosteam/gpsemulator/R$style;->CustomAlertDialog:I

    invoke-direct {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    sget v1, Lcom/rosteam/gpsemulator/R$string;->upgradepro:I

    .line 5689
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/rosteam/gpsemulator/R$string;->removeads:I

    .line 5690
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 5691
    invoke-virtual {v0, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 5692
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity;->purchaseDialog:Landroidx/appcompat/app/AlertDialog;

    .line 5693
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->show()V

    :cond_1b3
    return-void
.end method

.method handlePurchase(Lcom/android/billingclient/api/Purchase;)V
    .registers 5

    .line 5963
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "handlePurchase state: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->getPurchaseState()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "fakegps"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5964
    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->getPurchaseState()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_49

    .line 5965
    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->isAcknowledged()Z

    move-result v0

    if-nez v0, :cond_45

    .line 5966
    const-string v0, "vamos a hacer el acknowledgment"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5969
    invoke-static {}, Lcom/android/billingclient/api/AcknowledgePurchaseParams;->newBuilder()Lcom/android/billingclient/api/AcknowledgePurchaseParams$Builder;

    move-result-object v0

    .line 5970
    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->getPurchaseToken()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/billingclient/api/AcknowledgePurchaseParams$Builder;->setPurchaseToken(Ljava/lang/String;)Lcom/android/billingclient/api/AcknowledgePurchaseParams$Builder;

    move-result-object p1

    .line 5971
    invoke-virtual {p1}, Lcom/android/billingclient/api/AcknowledgePurchaseParams$Builder;->build()Lcom/android/billingclient/api/AcknowledgePurchaseParams;

    move-result-object p1

    .line 5972
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity;->billingClient:Lcom/android/billingclient/api/BillingClient;

    new-instance v1, Lcom/rosteam/gpsemulator/MainActivity$97;

    invoke-direct {v1, p0}, Lcom/rosteam/gpsemulator/MainActivity$97;-><init>(Lcom/rosteam/gpsemulator/MainActivity;)V

    invoke-virtual {v0, p1, v1}, Lcom/android/billingclient/api/BillingClient;->acknowledgePurchase(Lcom/android/billingclient/api/AcknowledgePurchaseParams;Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;)V

    return-void

    .line 5990
    :cond_45
    invoke-virtual {p0}, Lcom/rosteam/gpsemulator/MainActivity;->habilitarPRO()V

    return-void

    .line 5992
    :cond_49
    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->getPurchaseState()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ne v0, v1, :cond_5b

    .line 5993
    sget p1, Lcom/rosteam/gpsemulator/R$string;->purchase_pending:I

    invoke-static {p0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 5994
    :cond_5b
    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->getPurchaseState()I

    move-result p1

    if-nez p1, :cond_71

    .line 5995
    invoke-virtual {p0}, Lcom/rosteam/gpsemulator/MainActivity;->deshabilitarPRO()V

    .line 5996
    invoke-virtual {p0}, Lcom/rosteam/gpsemulator/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "Purchase Status Unknown"

    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_71
    return-void
.end method

.method public irUltimaUbicacion()V
    .registers 9

    .line 3861
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity;->history:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4e

    .line 3862
    new-instance v1, Lcom/rosteam/gpsemulator/utils/RegUbic;

    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity;->history:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rosteam/gpsemulator/utils/RegUbic;

    iget-object v0, v0, Lcom/rosteam/gpsemulator/utils/RegUbic;->ciudadpais:Ljava/lang/String;

    iget-object v3, p0, Lcom/rosteam/gpsemulator/MainActivity;->history:Ljava/util/ArrayList;

    .line 3863
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/rosteam/gpsemulator/utils/RegUbic;

    iget-wide v3, v3, Lcom/rosteam/gpsemulator/utils/RegUbic;->lat:D

    iget-object v5, p0, Lcom/rosteam/gpsemulator/MainActivity;->history:Ljava/util/ArrayList;

    .line 3864
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/rosteam/gpsemulator/utils/RegUbic;

    iget-wide v5, v5, Lcom/rosteam/gpsemulator/utils/RegUbic;->lng:D

    iget-object v7, p0, Lcom/rosteam/gpsemulator/MainActivity;->history:Ljava/util/ArrayList;

    .line 3865
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/rosteam/gpsemulator/utils/RegUbic;

    iget v7, v2, Lcom/rosteam/gpsemulator/utils/RegUbic;->zoom:F

    move-object v2, v0

    invoke-direct/range {v1 .. v7}, Lcom/rosteam/gpsemulator/utils/RegUbic;-><init>(Ljava/lang/String;DDF)V

    iput-object v1, p0, Lcom/rosteam/gpsemulator/MainActivity;->ultimaUbic:Lcom/rosteam/gpsemulator/utils/RegUbic;

    .line 3866
    new-instance v0, Lcom/google/android/gms/maps/model/LatLng;

    iget-object v1, p0, Lcom/rosteam/gpsemulator/MainActivity;->ultimaUbic:Lcom/rosteam/gpsemulator/utils/RegUbic;

    iget-wide v1, v1, Lcom/rosteam/gpsemulator/utils/RegUbic;->lat:D

    iget-object v3, p0, Lcom/rosteam/gpsemulator/MainActivity;->ultimaUbic:Lcom/rosteam/gpsemulator/utils/RegUbic;

    iget-wide v3, v3, Lcom/rosteam/gpsemulator/utils/RegUbic;->lng:D

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    iget-object v1, p0, Lcom/rosteam/gpsemulator/MainActivity;->ultimaUbic:Lcom/rosteam/gpsemulator/utils/RegUbic;

    iget v1, v1, Lcom/rosteam/gpsemulator/utils/RegUbic;->zoom:F

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/rosteam/gpsemulator/MainActivity;->moveTo(Lcom/google/android/gms/maps/model/LatLng;FF)V

    :cond_4e
    return-void
.end method

.method public isMockLocationEnabled(Landroid/content/Context;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3832
    const-string v0, "appops"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AppOpsManager;

    .line 3833
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "isMockLocationEnabled standard? "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3834
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    const-string v2, "android:mock_location"

    const-string v3, "com.rosteam.gpsemulator"

    invoke-virtual {p1, v2, v1, v3}, Landroid/app/AppOpsManager;->checkOp(Ljava/lang/String;ILjava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3833
    const-string v1, "fakegps"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3836
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    invoke-virtual {p1, v2, v0, v3}, Landroid/app/AppOpsManager;->checkOp(Ljava/lang/String;ILjava/lang/String;)I

    move-result p1

    if-nez p1, :cond_34

    const/4 p1, 0x1

    return p1

    :cond_34
    const/4 p1, 0x0

    return p1
.end method

.method public isPowerRestricted()Z
    .registers 3

    .line 1367
    invoke-virtual {p0}, Lcom/rosteam/gpsemulator/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 1368
    const-string v1, "com.rosteam.gpsemulator"

    .line 1369
    invoke-virtual {v0, v1}, Landroid/os/PowerManager;->isIgnoringBatteryOptimizations(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method synthetic lambda$checarUpdate$0$com-rosteam-gpsemulator-MainActivity(Lcom/google/android/play/core/install/InstallState;)V
    .registers 4

    .line 6352
    invoke-virtual {p1}, Lcom/google/android/play/core/install/InstallState;->installStatus()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_18

    .line 6353
    invoke-direct {p0}, Lcom/rosteam/gpsemulator/MainActivity;->popupSnackBarForCompleteUpdate()V

    .line 6354
    iget-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity;->map:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz p1, :cond_22

    invoke-virtual {p1}, Lcom/google/android/gms/maps/GoogleMap;->getUiSettings()Lcom/google/android/gms/maps/UiSettings;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/UiSettings;->setZoomControlsEnabled(Z)V

    return-void

    .line 6355
    :cond_18
    invoke-virtual {p1}, Lcom/google/android/play/core/install/InstallState;->installStatus()I

    move-result p1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_22

    .line 6356
    invoke-direct {p0}, Lcom/rosteam/gpsemulator/MainActivity;->removeInstallStateUpdateListener()V

    :cond_22
    return-void
.end method

.method synthetic lambda$checarUpdate$1$com-rosteam-gpsemulator-MainActivity(Lcom/google/android/play/core/appupdate/AppUpdateInfo;)V
    .registers 5

    .line 6368
    invoke-virtual {p1}, Lcom/google/android/play/core/appupdate/AppUpdateInfo;->updateAvailability()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1b

    invoke-virtual {p1, v2}, Lcom/google/android/play/core/appupdate/AppUpdateInfo;->isUpdateTypeAllowed(I)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 6370
    :try_start_e
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity;->appUpdateManager:Lcom/google/android/play/core/appupdate/AppUpdateManager;

    const/16 v1, 0x65

    invoke-interface {v0, p1, v2, p0, v1}, Lcom/google/android/play/core/appupdate/AppUpdateManager;->startUpdateFlowForResult(Lcom/google/android/play/core/appupdate/AppUpdateInfo;ILandroid/app/Activity;I)Z
    :try_end_15
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_e .. :try_end_15} :catch_16

    return-void

    :catch_16
    move-exception p1

    .line 6372
    invoke-virtual {p1}, Landroid/content/IntentSender$SendIntentException;->printStackTrace()V

    goto :goto_31

    .line 6374
    :cond_1b
    invoke-virtual {p1}, Lcom/google/android/play/core/appupdate/AppUpdateInfo;->installStatus()I

    move-result p1

    const/16 v0, 0xb

    if-ne p1, v0, :cond_31

    .line 6375
    invoke-direct {p0}, Lcom/rosteam/gpsemulator/MainActivity;->popupSnackBarForCompleteUpdate()V

    .line 6376
    iget-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity;->map:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz p1, :cond_31

    invoke-virtual {p1}, Lcom/google/android/gms/maps/GoogleMap;->getUiSettings()Lcom/google/android/gms/maps/UiSettings;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/google/android/gms/maps/UiSettings;->setZoomControlsEnabled(Z)V

    :cond_31
    :goto_31
    return-void
.end method

.method synthetic lambda$popupSnackBarForCompleteUpdate$2$com-rosteam-gpsemulator-MainActivity(Landroid/view/View;)V
    .registers 2

    .line 6387
    iget-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity;->appUpdateManager:Lcom/google/android/play/core/appupdate/AppUpdateManager;

    if-eqz p1, :cond_7

    .line 6388
    invoke-interface {p1}, Lcom/google/android/play/core/appupdate/AppUpdateManager;->completeUpdate()Lcom/google/android/gms/tasks/Task;

    :cond_7
    return-void
.end method

.method public limpiarRutas()V
    .registers 7

    .line 3811
    const-string v0, "GPSEmulator"

    const-string v1, "limpiarRutas() inicio"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3812
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity;->preferences:Landroid/content/SharedPreferences;

    .line 3813
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const/4 v1, 0x0

    .line 3817
    :goto_12
    iget-object v2, p0, Lcom/rosteam/gpsemulator/MainActivity;->preferences:Landroid/content/SharedPreferences;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ruta"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, ""

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3818
    invoke-virtual {v2, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_33

    .line 3826
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void

    .line 3822
    :cond_33
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    add-int/lit8 v1, v1, 0x1

    goto :goto_12
.end method

.method public loadFavsFromPref()V
    .registers 5

    .line 3743
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity;->favorites:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3744
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity;->preferences:Landroid/content/SharedPreferences;

    const/4 v0, 0x0

    .line 3746
    :goto_c
    iget v1, p0, Lcom/rosteam/gpsemulator/MainActivity;->numerofavoritos:I

    if-ge v0, v1, :cond_39

    .line 3748
    iget-object v1, p0, Lcom/rosteam/gpsemulator/MainActivity;->preferences:Landroid/content/SharedPreferences;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "favPosition"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3749
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_36

    .line 3750
    iget-object v2, p0, Lcom/rosteam/gpsemulator/MainActivity;->favorites:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/rosteam/gpsemulator/LocationUtils;->parsePrefToUbic(Ljava/lang/String;)Lcom/rosteam/gpsemulator/utils/RegUbic;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_36
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_39
    return-void
.end method

.method public loadForm()V
    .registers 3

    .line 6090
    new-instance v0, Lcom/rosteam/gpsemulator/MainActivity$101;

    invoke-direct {v0, p0}, Lcom/rosteam/gpsemulator/MainActivity$101;-><init>(Lcom/rosteam/gpsemulator/MainActivity;)V

    new-instance v1, Lcom/rosteam/gpsemulator/MainActivity$102;

    invoke-direct {v1, p0}, Lcom/rosteam/gpsemulator/MainActivity$102;-><init>(Lcom/rosteam/gpsemulator/MainActivity;)V

    invoke-static {p0, v0, v1}, Lcom/google/android/ump/UserMessagingPlatform;->loadConsentForm(Landroid/content/Context;Lcom/google/android/ump/UserMessagingPlatform$OnConsentFormLoadSuccessListener;Lcom/google/android/ump/UserMessagingPlatform$OnConsentFormLoadFailureListener;)V

    return-void
.end method

.method public loadPinned()Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/rosteam/gpsemulator/utils/RegUbic;",
            ">;"
        }
    .end annotation

    .line 3756
    const-string v0, "INICIAMOS"

    const-string v1, "loadPinned"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3757
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    .line 3758
    :goto_e
    iget-object v4, p0, Lcom/rosteam/gpsemulator/MainActivity;->favorites:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_30

    .line 3759
    iget-object v4, p0, Lcom/rosteam/gpsemulator/MainActivity;->favorites:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/rosteam/gpsemulator/utils/RegUbic;

    iget-boolean v4, v4, Lcom/rosteam/gpsemulator/utils/RegUbic;->pined:Z

    if-eqz v4, :cond_2d

    iget-object v4, p0, Lcom/rosteam/gpsemulator/MainActivity;->favorites:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/rosteam/gpsemulator/utils/RegUbic;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2d
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 3762
    :cond_30
    :goto_30
    iget-object v3, p0, Lcom/rosteam/gpsemulator/MainActivity;->rutas:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_52

    .line 3763
    iget-object v3, p0, Lcom/rosteam/gpsemulator/MainActivity;->rutas:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/rosteam/gpsemulator/utils/RegUbic;

    iget-boolean v3, v3, Lcom/rosteam/gpsemulator/utils/RegUbic;->pined:Z

    if-eqz v3, :cond_4f

    iget-object v3, p0, Lcom/rosteam/gpsemulator/MainActivity;->rutas:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/rosteam/gpsemulator/utils/RegUbic;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4f
    add-int/lit8 v2, v2, 0x1

    goto :goto_30

    .line 3765
    :cond_52
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "result size: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " data: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public loadRutasFromPref()V
    .registers 9

    .line 3789
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity;->rutas:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3790
    new-instance v1, Lcom/rosteam/gpsemulator/utils/RegUbic;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v2, "hola"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/rosteam/gpsemulator/utils/RegUbic;-><init>(Ljava/lang/String;ILjava/util/List;FFZ)V

    .line 3791
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity;->rutas:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3792
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity;->preferences:Landroid/content/SharedPreferences;

    const/4 v0, 0x0

    .line 3795
    :goto_1d
    iget-object v1, p0, Lcom/rosteam/gpsemulator/MainActivity;->preferences:Landroid/content/SharedPreferences;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ruta"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, ""

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3796
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "vbalue "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3797
    invoke-virtual {v1, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_64

    return-void

    .line 3801
    :cond_64
    invoke-static {v1}, Lcom/rosteam/gpsemulator/LocationUtils;->parseRutaToUbic(Ljava/lang/String;)Lcom/rosteam/gpsemulator/utils/RegUbic;

    move-result-object v1

    .line 3802
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/rosteam/gpsemulator/utils/RegUbic;->prefName:Ljava/lang/String;

    .line 3803
    iget-object v2, p0, Lcom/rosteam/gpsemulator/MainActivity;->rutas:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1d
.end method

.method public miToast(II)V
    .registers 4

    .line 5528
    invoke-virtual {p0}, Lcom/rosteam/gpsemulator/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/rosteam/gpsemulator/MainActivity;->miToast(Ljava/lang/String;I)V

    return-void
.end method

.method public miToast(Ljava/lang/String;I)V
    .registers 9

    .line 5532
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 5534
    iget-boolean v1, p0, Lcom/rosteam/gpsemulator/MainActivity;->toastAnim:Z

    if-nez v1, :cond_6b

    .line 5535
    iget-object v1, p0, Lcom/rosteam/gpsemulator/MainActivity;->miToastView:Landroid/widget/TextView;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 5536
    iget-object v1, p0, Lcom/rosteam/gpsemulator/MainActivity;->miToastView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setScaleX(F)V

    .line 5537
    iget-object v1, p0, Lcom/rosteam/gpsemulator/MainActivity;->miToastView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setScaleY(F)V

    .line 5538
    iget-object v1, p0, Lcom/rosteam/gpsemulator/MainActivity;->miToastView:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5540
    iget-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity;->miToastView:Landroid/widget/TextView;

    const/4 v1, 0x2

    new-array v2, v1, [F

    fill-array-data v2, :array_6c

    const-string v3, "alpha"

    invoke-static {p1, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 5541
    iget-object v2, p0, Lcom/rosteam/gpsemulator/MainActivity;->miToastView:Landroid/widget/TextView;

    new-array v3, v1, [F

    fill-array-data v3, :array_74

    const-string v4, "scaleY"

    invoke-static {v2, v4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 5542
    iget-object v3, p0, Lcom/rosteam/gpsemulator/MainActivity;->miToastView:Landroid/widget/TextView;

    new-array v4, v1, [F

    fill-array-data v4, :array_7c

    const-string v5, "scaleX"

    invoke-static {v3, v5, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    const/4 v4, 0x3

    .line 5543
    new-array v4, v4, [Landroid/animation/Animator;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 p1, 0x1

    aput-object v2, v4, p1

    aput-object v3, v4, v1

    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    mul-int/lit16 p2, p2, 0x47e

    int-to-long p1, p2

    .line 5544
    invoke-virtual {v0, p1, p2}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    const-wide/16 p1, 0x96

    .line 5545
    invoke-virtual {v0, p1, p2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 5547
    new-instance p1, Lcom/rosteam/gpsemulator/MainActivity$87;

    invoke-direct {p1, p0}, Lcom/rosteam/gpsemulator/MainActivity$87;-><init>(Lcom/rosteam/gpsemulator/MainActivity;)V

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 5561
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    :cond_6b
    return-void

    :array_6c
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_74
    .array-data 4
        0x3f800000    # 1.0f
        0x3f000000    # 0.5f
    .end array-data

    :array_7c
    .array-data 4
        0x3f800000    # 1.0f
        0x3f000000    # 0.5f
    .end array-data
.end method

.method public moveTo(Lcom/google/android/gms/maps/model/LatLng;FF)V
    .registers 7

    .line 3624
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity;->map:Lcom/google/android/gms/maps/GoogleMap;

    const/4 v1, 0x1

    if-eqz v0, :cond_31

    .line 3625
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity;->preferences:Landroid/content/SharedPreferences;

    const-string v2, "animate"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_11

    const/16 v1, 0x7d0

    .line 3626
    :cond_11
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity;->map:Lcom/google/android/gms/maps/GoogleMap;

    new-instance v2, Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    invoke-direct {v2}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;-><init>()V

    .line 3627
    invoke-virtual {v2, p1}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->target(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    move-result-object p1

    .line 3628
    invoke-virtual {p1, p2}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->zoom(F)Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    move-result-object p1

    .line 3629
    invoke-virtual {p1, p3}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->bearing(F)Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    move-result-object p1

    .line 3630
    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->build()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object p1

    .line 3626
    invoke-static {p1}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newCameraPosition(Lcom/google/android/gms/maps/model/CameraPosition;)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {v0, p1, v1, p2}, Lcom/google/android/gms/maps/GoogleMap;->animateCamera(Lcom/google/android/gms/maps/CameraUpdate;ILcom/google/android/gms/maps/GoogleMap$CancelableCallback;)V

    return-void

    .line 3633
    :cond_31
    const-string p1, "Map not ready"

    invoke-virtual {p0, p1, v1}, Lcom/rosteam/gpsemulator/MainActivity;->miToast(Ljava/lang/String;I)V

    return-void
.end method

.method public moveToFast(Lcom/google/android/gms/maps/model/LatLng;FF)V
    .registers 6

    .line 3638
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity;->map:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz v0, :cond_24

    .line 3641
    new-instance v1, Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    invoke-direct {v1}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;-><init>()V

    .line 3642
    invoke-virtual {v1, p1}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->target(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    move-result-object p1

    .line 3643
    invoke-virtual {p1, p2}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->zoom(F)Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    move-result-object p1

    .line 3644
    invoke-virtual {p1, p3}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->bearing(F)Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    move-result-object p1

    .line 3645
    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->build()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object p1

    .line 3641
    invoke-static {p1}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newCameraPosition(Lcom/google/android/gms/maps/model/CameraPosition;)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object p1

    const/4 p2, 0x0

    const/16 p3, 0x15e

    invoke-virtual {v0, p1, p3, p2}, Lcom/google/android/gms/maps/GoogleMap;->animateCamera(Lcom/google/android/gms/maps/CameraUpdate;ILcom/google/android/gms/maps/GoogleMap$CancelableCallback;)V

    return-void

    .line 3648
    :cond_24
    const-string p1, "Map not ready"

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Lcom/rosteam/gpsemulator/MainActivity;->miToast(Ljava/lang/String;I)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 7

    .line 5702
    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/app/AppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 5703
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Code: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onActivityResult"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x65

    const/4 v2, 0x1

    if-ne p1, v0, :cond_27

    if-ne p2, v2, :cond_27

    .line 5705
    iget-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity;->consentInformation:Lcom/google/android/ump/ConsentInformation;

    invoke-interface {p1}, Lcom/google/android/ump/ConsentInformation;->reset()V

    .line 5706
    invoke-direct {p0}, Lcom/rosteam/gpsemulator/MainActivity;->consentGDPR_UMP()V

    return-void

    :cond_27
    const/16 v0, 0x138d

    if-ne p1, v0, :cond_4e

    .line 5709
    invoke-virtual {p0}, Lcom/rosteam/gpsemulator/MainActivity;->loadRutasFromPref()V

    .line 5710
    invoke-virtual {p0}, Lcom/rosteam/gpsemulator/MainActivity;->loadFavsFromPref()V

    .line 5711
    invoke-virtual {p0}, Lcom/rosteam/gpsemulator/MainActivity;->loadPinned()Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity;->pinnedTemp:Ljava/util/ArrayList;

    .line 5712
    iget-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity;->miPinnedAdapter:Lcom/rosteam/gpsemulator/MainActivity$PinnedAdapter;

    if-eqz p1, :cond_3e

    invoke-virtual {p1}, Lcom/rosteam/gpsemulator/MainActivity$PinnedAdapter;->notifyDataSetChanged()V

    .line 5716
    :cond_3e
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/rosteam/gpsemulator/MainActivity$93;

    invoke-direct {v0, p0, p3, p2}, Lcom/rosteam/gpsemulator/MainActivity$93;-><init>(Lcom/rosteam/gpsemulator/MainActivity;Landroid/content/Intent;I)V

    const-wide/16 p2, 0x12c

    invoke-virtual {p1, v0, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_4e
    const/16 v0, 0x66

    if-ne p1, v0, :cond_8e

    .line 5744
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "retorno desde search, result = "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "gpsemulator"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_99

    if-eqz p3, :cond_99

    .line 5746
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "busqueda seleccionada cadena: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p2, "cadena"

    invoke-virtual {p3, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5747
    invoke-virtual {p3, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/rosteam/gpsemulator/LocationUtils;->parsePrefToUbic(Ljava/lang/String;)Lcom/rosteam/gpsemulator/utils/RegUbic;

    move-result-object p1

    .line 5748
    invoke-direct {p0, p1}, Lcom/rosteam/gpsemulator/MainActivity;->gotoLocation(Lcom/rosteam/gpsemulator/utils/RegUbic;)V

    return-void

    :cond_8e
    const/4 p1, 0x2

    if-ne p2, p1, :cond_99

    .line 5752
    const-string p1, "open config..."

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5753
    invoke-direct {p0, v2}, Lcom/rosteam/gpsemulator/MainActivity;->launchPermissionDialog(Z)Z

    :cond_99
    return-void
.end method

.method public onAutomaticRouteClick(Landroid/view/View;)V
    .registers 5

    .line 2941
    iget v0, p0, Lcom/rosteam/gpsemulator/MainActivity;->modoRuta:I

    const/16 v1, 0x66

    if-ne v0, v1, :cond_39

    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity;->miCirculo:Lcom/google/android/gms/maps/model/Circle;

    if-eqz v0, :cond_39

    .line 2942
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/rosteam/gpsemulator/MainActivity;->ctw:Landroid/view/ContextThemeWrapper;

    sget v2, Lcom/rosteam/gpsemulator/R$style;->CustomAlertDialog:I

    invoke-direct {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    sget v1, Lcom/rosteam/gpsemulator/R$string;->discard_route:I

    .line 2943
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/rosteam/gpsemulator/R$string;->discard_question:I

    .line 2944
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/rosteam/gpsemulator/R$string;->discard:I

    new-instance v2, Lcom/rosteam/gpsemulator/MainActivity$50;

    invoke-direct {v2, p0, p1}, Lcom/rosteam/gpsemulator/MainActivity$50;-><init>(Lcom/rosteam/gpsemulator/MainActivity;Landroid/view/View;)V

    .line 2945
    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    sget v0, Lcom/rosteam/gpsemulator/R$string;->cancel:I

    new-instance v1, Lcom/rosteam/gpsemulator/MainActivity$49;

    invoke-direct {v1, p0}, Lcom/rosteam/gpsemulator/MainActivity$49;-><init>(Lcom/rosteam/gpsemulator/MainActivity;)V

    .line 2952
    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 2957
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void

    .line 2959
    :cond_39
    invoke-direct {p0, p1}, Lcom/rosteam/gpsemulator/MainActivity;->setAutomaticMode(Landroid/view/View;)V

    return-void
.end method

.method public onBackPressed()V
    .registers 7

    .line 1565
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "noads"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/rosteam/gpsemulator/MainActivity;->noAds:Z

    .line 1566
    sget v0, Lcom/rosteam/gpsemulator/R$id;->drawer_layout:I

    invoke-virtual {p0, v0}, Lcom/rosteam/gpsemulator/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/drawerlayout/widget/DrawerLayout;

    const v1, 0x800003

    .line 1570
    invoke-virtual {v0, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->isDrawerOpen(I)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 1571
    invoke-virtual {v0, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->closeDrawer(I)V

    return-void

    .line 1573
    :cond_20
    iget v0, p0, Lcom/rosteam/gpsemulator/MainActivity;->modoApp:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a0

    .line 1574
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity;->polyline1:Lcom/google/android/gms/maps/model/Polyline;

    if-eqz v0, :cond_33

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Polyline;->getPoints()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_37

    :cond_33
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity;->miCirculo:Lcom/google/android/gms/maps/model/Circle;

    if-eqz v0, :cond_66

    .line 1575
    :cond_37
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/rosteam/gpsemulator/MainActivity;->ctw:Landroid/view/ContextThemeWrapper;

    sget v2, Lcom/rosteam/gpsemulator/R$style;->CustomAlertDialog:I

    invoke-direct {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    sget v1, Lcom/rosteam/gpsemulator/R$string;->discard_route:I

    .line 1576
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/rosteam/gpsemulator/R$string;->discard_question:I

    .line 1577
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/rosteam/gpsemulator/R$string;->discard:I

    new-instance v2, Lcom/rosteam/gpsemulator/MainActivity$15;

    invoke-direct {v2, p0}, Lcom/rosteam/gpsemulator/MainActivity$15;-><init>(Lcom/rosteam/gpsemulator/MainActivity;)V

    .line 1578
    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/rosteam/gpsemulator/R$string;->cancel:I

    new-instance v2, Lcom/rosteam/gpsemulator/MainActivity$14;

    invoke-direct {v2, p0}, Lcom/rosteam/gpsemulator/MainActivity$14;-><init>(Lcom/rosteam/gpsemulator/MainActivity;)V

    .line 1595
    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 1599
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void

    .line 1601
    :cond_66
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity;->polyline1:Lcom/google/android/gms/maps/model/Polyline;

    if-eqz v0, :cond_6d

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Polyline;->remove()V

    .line 1602
    :cond_6d
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity;->polylinePending:Lcom/google/android/gms/maps/model/Polyline;

    if-eqz v0, :cond_74

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Polyline;->remove()V

    .line 1603
    :cond_74
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity;->favButton:Landroid/widget/ImageButton;

    sget v1, Lcom/rosteam/gpsemulator/R$drawable;->botonfav:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1604
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity;->favButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1605
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity;->undoButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1606
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity;->undoButton:Landroid/widget/ImageButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1607
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity;->stopButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1608
    iput v2, p0, Lcom/rosteam/gpsemulator/MainActivity;->modoApp:I

    .line 1609
    sget v0, Lcom/rosteam/gpsemulator/R$id;->createRouteLyt:I

    invoke-virtual {p0, v0}, Lcom/rosteam/gpsemulator/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    .line 1610
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void

    .line 1615
    :cond_a0
    iget-boolean v0, p0, Lcom/rosteam/gpsemulator/MainActivity;->noAds:Z

    if-nez v0, :cond_151

    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity;->adViewAdMobExit:Lcom/google/android/gms/ads/AdView;

    if-nez v0, :cond_b8

    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity;->nativeAdView:Landroid/view/View;

    if-nez v0, :cond_b8

    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity;->bannerYandexExit:Lcom/yandex/mobile/ads/banner/BannerAdView;

    if-nez v0, :cond_b8

    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity;->exitBannerUnity:Lcom/unity3d/services/banners/BannerView;

    if-nez v0, :cond_b8

    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity;->adgExit:Lcom/socdm/d/adgeneration/ADG;

    if-eqz v0, :cond_151

    .line 1620
    :cond_b8
    invoke-direct {p0}, Lcom/rosteam/gpsemulator/MainActivity;->exitAdNow()Z

    move-result v0

    if-eqz v0, :cond_151

    .line 1622
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity;->miExitDialog:Lcom/rosteam/gpsemulator/miBottomSheetDialog;

    const-string v1, "add_photo_dialog_fragment"

    if-nez v0, :cond_12c

    .line 1628
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity;->adViewAdMobExit:Lcom/google/android/gms/ads/AdView;

    const-string v2, "exitSheet"

    if-eqz v0, :cond_d9

    .line 1629
    const-string v0, "mandamos admob"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1630
    new-instance v0, Lcom/rosteam/gpsemulator/miBottomSheetDialog;

    iget-object v2, p0, Lcom/rosteam/gpsemulator/MainActivity;->adViewAdMobExit:Lcom/google/android/gms/ads/AdView;

    invoke-direct {v0, v2}, Lcom/rosteam/gpsemulator/miBottomSheetDialog;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity;->miExitDialog:Lcom/rosteam/gpsemulator/miBottomSheetDialog;

    goto :goto_111

    .line 1633
    :cond_d9
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity;->exitBannerUnity:Lcom/unity3d/services/banners/BannerView;

    if-eqz v0, :cond_ec

    .line 1634
    const-string v0, "mandamos unity"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1635
    new-instance v0, Lcom/rosteam/gpsemulator/miBottomSheetDialog;

    iget-object v2, p0, Lcom/rosteam/gpsemulator/MainActivity;->exitBannerUnity:Lcom/unity3d/services/banners/BannerView;

    invoke-direct {v0, v2}, Lcom/rosteam/gpsemulator/miBottomSheetDialog;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity;->miExitDialog:Lcom/rosteam/gpsemulator/miBottomSheetDialog;

    goto :goto_111

    .line 1639
    :cond_ec
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity;->bannerYandexExit:Lcom/yandex/mobile/ads/banner/BannerAdView;

    if-eqz v0, :cond_ff

    .line 1640
    const-string v0, "mandamos Yandex"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1641
    new-instance v0, Lcom/rosteam/gpsemulator/miBottomSheetDialog;

    iget-object v2, p0, Lcom/rosteam/gpsemulator/MainActivity;->bannerYandexExit:Lcom/yandex/mobile/ads/banner/BannerAdView;

    invoke-direct {v0, v2}, Lcom/rosteam/gpsemulator/miBottomSheetDialog;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity;->miExitDialog:Lcom/rosteam/gpsemulator/miBottomSheetDialog;

    goto :goto_111

    .line 1643
    :cond_ff
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity;->adgExit:Lcom/socdm/d/adgeneration/ADG;

    if-eqz v0, :cond_111

    .line 1644
    const-string v0, "mandamos AdGen"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1645
    new-instance v0, Lcom/rosteam/gpsemulator/miBottomSheetDialog;

    iget-object v2, p0, Lcom/rosteam/gpsemulator/MainActivity;->adgExit:Lcom/socdm/d/adgeneration/ADG;

    invoke-direct {v0, v2}, Lcom/rosteam/gpsemulator/miBottomSheetDialog;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity;->miExitDialog:Lcom/rosteam/gpsemulator/miBottomSheetDialog;

    .line 1649
    :cond_111
    :goto_111
    :try_start_111
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity;->miExitDialog:Lcom/rosteam/gpsemulator/miBottomSheetDialog;

    invoke-virtual {p0}, Lcom/rosteam/gpsemulator/MainActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/rosteam/gpsemulator/miBottomSheetDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V
    :try_end_12b
    .catch Ljava/lang/Exception; {:try_start_111 .. :try_end_12b} :catch_14c

    return-void

    .line 1651
    :cond_12c
    invoke-virtual {v0}, Lcom/rosteam/gpsemulator/miBottomSheetDialog;->isVisible()Z

    move-result v0

    if-nez v0, :cond_14d

    .line 1652
    :try_start_132
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity;->miExitDialog:Lcom/rosteam/gpsemulator/miBottomSheetDialog;

    invoke-virtual {p0}, Lcom/rosteam/gpsemulator/MainActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/rosteam/gpsemulator/miBottomSheetDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V
    :try_end_14c
    .catch Ljava/lang/Exception; {:try_start_132 .. :try_end_14c} :catch_14c

    :catch_14c
    return-void

    .line 1655
    :cond_14d
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onBackPressed()V

    return-void

    .line 1661
    :cond_151
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onBackPressed()V

    return-void
.end method

.method public onCalculateRoute(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)V
    .registers 5

    .line 3124
    invoke-virtual {p0, p1, p2}, Lcom/rosteam/gpsemulator/MainActivity;->getUrlMapbox(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)Ljava/lang/String;

    move-result-object p1

    .line 3125
    new-instance p2, Lcom/rosteam/gpsemulator/MainActivity$FetchUrl;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/rosteam/gpsemulator/MainActivity$FetchUrl;-><init>(Lcom/rosteam/gpsemulator/MainActivity;Lcom/rosteam/gpsemulator/MainActivity-IA;)V

    const/4 v0, 0x1

    .line 3126
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p2, v0}, Lcom/rosteam/gpsemulator/MainActivity$FetchUrl;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public onCircleClick(Landroid/view/View;)V
    .registers 5

    .line 2902
    iget v0, p0, Lcom/rosteam/gpsemulator/MainActivity;->modoRuta:I

    const/16 v1, 0x64

    if-eq v0, v1, :cond_a

    const/16 v1, 0x65

    if-ne v0, v1, :cond_47

    :cond_a
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity;->polyline1:Lcom/google/android/gms/maps/model/Polyline;

    if-eqz v0, :cond_47

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Polyline;->getPoints()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_47

    .line 2903
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/rosteam/gpsemulator/MainActivity;->ctw:Landroid/view/ContextThemeWrapper;

    sget v2, Lcom/rosteam/gpsemulator/R$style;->CustomAlertDialog:I

    invoke-direct {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    sget v1, Lcom/rosteam/gpsemulator/R$string;->discard_route:I

    .line 2904
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/rosteam/gpsemulator/R$string;->discard_question:I

    .line 2905
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/rosteam/gpsemulator/R$string;->discard:I

    new-instance v2, Lcom/rosteam/gpsemulator/MainActivity$48;

    invoke-direct {v2, p0, p1}, Lcom/rosteam/gpsemulator/MainActivity$48;-><init>(Lcom/rosteam/gpsemulator/MainActivity;Landroid/view/View;)V

    .line 2906
    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    sget v0, Lcom/rosteam/gpsemulator/R$string;->cancel:I

    new-instance v1, Lcom/rosteam/gpsemulator/MainActivity$47;

    invoke-direct {v1, p0}, Lcom/rosteam/gpsemulator/MainActivity$47;-><init>(Lcom/rosteam/gpsemulator/MainActivity;)V

    .line 2914
    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 2919
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void

    .line 2921
    :cond_47
    invoke-direct {p0, p1}, Lcom/rosteam/gpsemulator/MainActivity;->setCircleMode(Landroid/view/View;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 10

    .line 375
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 377
    sget p1, Lcom/rosteam/gpsemulator/R$style;->AppTheme_PopupOverlay:I

    invoke-virtual {p0, p1}, Lcom/rosteam/gpsemulator/MainActivity;->setTheme(I)V

    .line 379
    invoke-virtual {p0}, Lcom/rosteam/gpsemulator/MainActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/rosteam/gpsemulator/R$layout;->activity_main:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity;->child:Landroid/view/View;

    .line 380
    invoke-virtual {p0, p1}, Lcom/rosteam/gpsemulator/MainActivity;->setContentView(Landroid/view/View;)V

    .line 384
    iput-object p0, p0, Lcom/rosteam/gpsemulator/MainActivity;->context:Landroid/content/Context;

    .line 385
    new-instance p1, Landroid/view/ContextThemeWrapper;

    sget v0, Lcom/rosteam/gpsemulator/R$style;->Theme_Custom_Dialog:I

    invoke-direct {p1, p0, v0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity;->ctw:Landroid/view/ContextThemeWrapper;

    .line 388
    sget p1, Lcom/rosteam/gpsemulator/R$id;->toolbar:I

    invoke-virtual {p0, p1}, Lcom/rosteam/gpsemulator/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Landroidx/appcompat/widget/Toolbar;

    .line 389
    invoke-virtual {p0, v3}, Lcom/rosteam/gpsemulator/MainActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 392
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity;->preferences:Landroid/content/SharedPreferences;

    .line 393
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iput-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity;->editor:Landroid/content/SharedPreferences$Editor;

    .line 395
    sget p1, Lcom/rosteam/gpsemulator/R$id;->bannerContainerBottom:I

    invoke-virtual {p0, p1}, Lcom/rosteam/gpsemulator/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity;->topBannerContainer:Landroid/widget/LinearLayout;

    .line 397
    sget p1, Lcom/rosteam/gpsemulator/R$id;->drawer_layout:I

    invoke-virtual {p0, p1}, Lcom/rosteam/gpsemulator/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/drawerlayout/widget/DrawerLayout;

    iput-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity;->drawer:Landroidx/drawerlayout/widget/DrawerLayout;

    .line 398
    sget v0, Lcom/rosteam/gpsemulator/R$id;->purchase_pro:I

    invoke-virtual {p1, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity;->purchaseFromDrawerLyt:Landroid/widget/LinearLayout;

    .line 399
    iget-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity;->drawer:Landroidx/drawerlayout/widget/DrawerLayout;

    sget v0, Lcom/rosteam/gpsemulator/R$id;->listpined:I

    invoke-virtual {p1, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity;->pinedList:Landroid/widget/ListView;

    .line 402
    new-instance v0, Landroidx/appcompat/app/ActionBarDrawerToggle;

    iget-object v2, p0, Lcom/rosteam/gpsemulator/MainActivity;->drawer:Landroidx/drawerlayout/widget/DrawerLayout;

    sget v4, Lcom/rosteam/gpsemulator/R$string;->navigation_drawer_open:I

    sget v5, Lcom/rosteam/gpsemulator/R$string;->navigation_drawer_close:I

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroidx/appcompat/app/ActionBarDrawerToggle;-><init>(Landroid/app/Activity;Landroidx/drawerlayout/widget/DrawerLayout;Landroidx/appcompat/widget/Toolbar;II)V

    .line 404
    iget-object p1, v1, Lcom/rosteam/gpsemulator/MainActivity;->drawer:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {p1, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->setDrawerListener(Landroidx/drawerlayout/widget/DrawerLayout$DrawerListener;)V

    .line 405
    invoke-virtual {v0}, Landroidx/appcompat/app/ActionBarDrawerToggle;->syncState()V

    .line 411
    invoke-static {p0}, Lcom/android/billingclient/api/BillingClient;->newBuilder(Landroid/content/Context;)Lcom/android/billingclient/api/BillingClient$Builder;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/billingclient/api/BillingClient$Builder;->setListener(Lcom/android/billingclient/api/PurchasesUpdatedListener;)Lcom/android/billingclient/api/BillingClient$Builder;

    move-result-object p1

    .line 412
    invoke-static {}, Lcom/android/billingclient/api/PendingPurchasesParams;->newBuilder()Lcom/android/billingclient/api/PendingPurchasesParams$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/billingclient/api/PendingPurchasesParams$Builder;->enableOneTimeProducts()Lcom/android/billingclient/api/PendingPurchasesParams$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/billingclient/api/PendingPurchasesParams$Builder;->build()Lcom/android/billingclient/api/PendingPurchasesParams;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/billingclient/api/BillingClient$Builder;->enablePendingPurchases(Lcom/android/billingclient/api/PendingPurchasesParams;)Lcom/android/billingclient/api/BillingClient$Builder;

    move-result-object p1

    .line 413
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingClient$Builder;->build()Lcom/android/billingclient/api/BillingClient;

    move-result-object p1

    iput-object p1, v1, Lcom/rosteam/gpsemulator/MainActivity;->billingClient:Lcom/android/billingclient/api/BillingClient;

    .line 415
    new-instance v0, Lcom/rosteam/gpsemulator/MainActivity$1;

    invoke-direct {v0, p0}, Lcom/rosteam/gpsemulator/MainActivity$1;-><init>(Lcom/rosteam/gpsemulator/MainActivity;)V

    invoke-virtual {p1, v0}, Lcom/android/billingclient/api/BillingClient;->startConnection(Lcom/android/billingclient/api/BillingClientStateListener;)V

    .line 612
    iget-object p1, v1, Lcom/rosteam/gpsemulator/MainActivity;->preferences:Landroid/content/SharedPreferences;

    const-string v0, "noads"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, v1, Lcom/rosteam/gpsemulator/MainActivity;->noAds:Z

    .line 613
    iget-object p1, v1, Lcom/rosteam/gpsemulator/MainActivity;->preferences:Landroid/content/SharedPreferences;

    const-string v0, "numerofavoritos"

    const/16 v3, 0xa

    invoke-interface {p1, v0, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, v1, Lcom/rosteam/gpsemulator/MainActivity;->numerofavoritos:I

    .line 614
    iget-object p1, v1, Lcom/rosteam/gpsemulator/MainActivity;->preferences:Landroid/content/SharedPreferences;

    const-string v0, "downloads"

    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, v1, Lcom/rosteam/gpsemulator/MainActivity;->cantUsos:I

    .line 620
    iget-object p1, v1, Lcom/rosteam/gpsemulator/MainActivity;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v4, "appstartvisible"

    invoke-interface {p1, v4, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 621
    iget-object p1, v1, Lcom/rosteam/gpsemulator/MainActivity;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 624
    invoke-direct {p0}, Lcom/rosteam/gpsemulator/MainActivity;->unlockExitAd()V

    .line 625
    invoke-direct {p0}, Lcom/rosteam/gpsemulator/MainActivity;->rateThisApp()V

    .line 630
    invoke-static {p0}, Lcom/google/firebase/FirebaseApp;->initializeApp(Landroid/content/Context;)Lcom/google/firebase/FirebaseApp;

    .line 631
    invoke-static {p0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object p1

    iput-object p1, v1, Lcom/rosteam/gpsemulator/MainActivity;->mFirebaseAnalytics:Lcom/google/firebase/analytics/FirebaseAnalytics;

    .line 634
    iget-boolean p1, v1, Lcom/rosteam/gpsemulator/MainActivity;->noAds:Z

    const/4 v4, 0x1

    if-nez p1, :cond_18c

    .line 635
    invoke-virtual {p0}, Lcom/rosteam/gpsemulator/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v5, v1, Lcom/rosteam/gpsemulator/MainActivity;->unityGameID:Ljava/lang/String;

    invoke-static {p1, v5, p0}, Lcom/unity3d/ads/UnityAds;->initialize(Landroid/content/Context;Ljava/lang/String;Lcom/unity3d/ads/IUnityAdsInitializationListener;)V

    .line 638
    iget-object p1, v1, Lcom/rosteam/gpsemulator/MainActivity;->preferences:Landroid/content/SharedPreferences;

    const-string v5, "isEEA"

    invoke-interface {p1, v5, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    .line 639
    iget-object v5, v1, Lcom/rosteam/gpsemulator/MainActivity;->preferences:Landroid/content/SharedPreferences;

    const-string v6, "consent_status"

    const/4 v7, -0x1

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    if-eqz p1, :cond_105

    const/4 p1, 0x3

    if-ne v5, p1, :cond_101

    move p1, v4

    goto :goto_102

    :cond_101
    move p1, v2

    .line 642
    :goto_102
    invoke-static {p1}, Lcom/my/target/common/MyTargetPrivacy;->setUserConsent(Z)V

    .line 645
    :cond_105
    invoke-virtual {p0}, Lcom/rosteam/gpsemulator/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    new-instance v5, Lcom/rosteam/gpsemulator/MainActivity$2;

    invoke-direct {v5, p0}, Lcom/rosteam/gpsemulator/MainActivity$2;-><init>(Lcom/rosteam/gpsemulator/MainActivity;)V

    const-string v6, "668a93b9b8c631b497b71bff"

    invoke-static {p1, v6, v5}, Lcom/vungle/ads/VungleAds;->init(Landroid/content/Context;Ljava/lang/String;Lcom/vungle/ads/InitializationListener;)V

    .line 711
    new-instance p1, Lcom/socdm/d/adgeneration/interstitial/ADGInterstitial;

    invoke-direct {p1, p0}, Lcom/socdm/d/adgeneration/interstitial/ADGInterstitial;-><init>(Landroid/content/Context;)V

    iput-object p1, v1, Lcom/rosteam/gpsemulator/MainActivity;->adgInterstitial:Lcom/socdm/d/adgeneration/interstitial/ADGInterstitial;

    .line 713
    const-string v5, "184967"

    invoke-virtual {p1, v5}, Lcom/socdm/d/adgeneration/interstitial/ADGInterstitial;->setLocationId(Ljava/lang/String;)V

    .line 714
    iget-object p1, v1, Lcom/rosteam/gpsemulator/MainActivity;->adgInterstitial:Lcom/socdm/d/adgeneration/interstitial/ADGInterstitial;

    new-instance v5, Lcom/rosteam/gpsemulator/MainActivity$3;

    invoke-direct {v5, p0}, Lcom/rosteam/gpsemulator/MainActivity$3;-><init>(Lcom/rosteam/gpsemulator/MainActivity;)V

    invoke-virtual {p1, v5}, Lcom/socdm/d/adgeneration/interstitial/ADGInterstitial;->setAdListener(Lcom/socdm/d/adgeneration/interstitial/ADGInterstitialListener;)V

    .line 731
    iget-object p1, v1, Lcom/rosteam/gpsemulator/MainActivity;->adgInterstitial:Lcom/socdm/d/adgeneration/interstitial/ADGInterstitial;

    invoke-virtual {p1}, Lcom/socdm/d/adgeneration/interstitial/ADGInterstitial;->preload()V

    .line 735
    const-string p1, "[myTarget]"

    const-string v5, "INICIALIZAMOS MYTARGET"

    invoke-static {p1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    new-instance p1, Lcom/my/target/ads/InterstitialAd;

    const v5, 0x1c5e15

    invoke-direct {p1, v5, p0}, Lcom/my/target/ads/InterstitialAd;-><init>(ILandroid/content/Context;)V

    .line 748
    new-instance v5, Lcom/rosteam/gpsemulator/MainActivity$4;

    invoke-direct {v5, p0}, Lcom/rosteam/gpsemulator/MainActivity$4;-><init>(Lcom/rosteam/gpsemulator/MainActivity;)V

    invoke-virtual {p1, v5}, Lcom/my/target/ads/InterstitialAd;->setListener(Lcom/my/target/ads/InterstitialAd$InterstitialAdListener;)V

    .line 786
    invoke-virtual {p1}, Lcom/my/target/ads/InterstitialAd;->load()V

    .line 790
    invoke-direct {p0}, Lcom/rosteam/gpsemulator/MainActivity;->splashNow()Z

    move-result p1

    if-eqz p1, :cond_168

    iget p1, v1, Lcom/rosteam/gpsemulator/MainActivity;->cantUsos:I

    if-lt p1, v4, :cond_168

    if-eq p1, v3, :cond_168

    const/4 v3, 0x2

    if-eq p1, v3, :cond_168

    .line 792
    new-instance p1, Lcom/rosteam/gpsemulator/MainActivity$checkAdAvailability;

    invoke-direct {p1, p0}, Lcom/rosteam/gpsemulator/MainActivity$checkAdAvailability;-><init>(Lcom/rosteam/gpsemulator/MainActivity;)V

    new-array v3, v4, [Ljava/lang/Integer;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v2

    invoke-virtual {p1, v3}, Lcom/rosteam/gpsemulator/MainActivity$checkAdAvailability;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_17c

    .line 794
    :cond_168
    iget-object p1, v1, Lcom/rosteam/gpsemulator/MainActivity;->child:Landroid/view/View;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {p1, v3}, Landroid/view/View;->setAlpha(F)V

    .line 795
    const-string p1, "GPS"

    const-string v3, "CARGAR EXIT Y TRANS"

    invoke-static {p1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 796
    invoke-direct {p0}, Lcom/rosteam/gpsemulator/MainActivity;->cargarBannerExit()V

    .line 797
    invoke-direct {p0}, Lcom/rosteam/gpsemulator/MainActivity;->cargarTransitionAdmob()V

    .line 801
    :goto_17c
    iget-boolean p1, v1, Lcom/rosteam/gpsemulator/MainActivity;->seAgregoBanner:Z

    if-nez p1, :cond_185

    .line 802
    invoke-direct {p0}, Lcom/rosteam/gpsemulator/MainActivity;->cargarBannerAdmob()V

    .line 803
    iput-boolean v4, v1, Lcom/rosteam/gpsemulator/MainActivity;->seAgregoBanner:Z

    .line 807
    :cond_185
    invoke-direct {p0}, Lcom/rosteam/gpsemulator/MainActivity;->cargarRewarded()V

    .line 812
    invoke-direct {p0}, Lcom/rosteam/gpsemulator/MainActivity;->consentGDPR_UMP()V

    goto :goto_1ba

    .line 815
    :cond_18c
    :try_start_18c
    iget-object p1, v1, Lcom/rosteam/gpsemulator/MainActivity;->topBannerContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 816
    iput v2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 817
    iget-object v3, v1, Lcom/rosteam/gpsemulator/MainActivity;->topBannerContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, p1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 818
    iget-object p1, v1, Lcom/rosteam/gpsemulator/MainActivity;->topBannerContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 819
    const-string p1, "myGPS"

    const-string v3, "eliminamos banner cuando no va splash x noAds"

    invoke-static {p1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    iput-boolean v2, v1, Lcom/rosteam/gpsemulator/MainActivity;->seAgregoBanner:Z

    .line 821
    iget-object p1, v1, Lcom/rosteam/gpsemulator/MainActivity;->child:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/ViewParent;->requestLayout()V
    :try_end_1b0
    .catch Ljava/lang/Exception; {:try_start_18c .. :try_end_1b0} :catch_1b1

    goto :goto_1ba

    .line 823
    :catch_1b1
    iget-object p1, v1, Lcom/rosteam/gpsemulator/MainActivity;->child:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/ViewParent;->requestLayout()V

    .line 827
    :goto_1ba
    invoke-virtual {p0}, Lcom/rosteam/gpsemulator/MainActivity;->stoptimertask()V

    .line 829
    sget p1, Lcom/rosteam/gpsemulator/R$id;->stop_test_button:I

    invoke-virtual {p0, p1}, Lcom/rosteam/gpsemulator/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, v1, Lcom/rosteam/gpsemulator/MainActivity;->stopButton:Landroid/widget/ImageButton;

    .line 830
    sget p1, Lcom/rosteam/gpsemulator/R$id;->start_continuous_button:I

    invoke-virtual {p0, p1}, Lcom/rosteam/gpsemulator/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, v1, Lcom/rosteam/gpsemulator/MainActivity;->startButton:Landroid/widget/ImageButton;

    .line 831
    sget p1, Lcom/rosteam/gpsemulator/R$id;->favorite_button:I

    invoke-virtual {p0, p1}, Lcom/rosteam/gpsemulator/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, v1, Lcom/rosteam/gpsemulator/MainActivity;->favButton:Landroid/widget/ImageButton;

    .line 832
    sget p1, Lcom/rosteam/gpsemulator/R$id;->bttn_undo:I

    invoke-virtual {p0, p1}, Lcom/rosteam/gpsemulator/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, v1, Lcom/rosteam/gpsemulator/MainActivity;->undoButton:Landroid/widget/ImageButton;

    .line 833
    sget p1, Lcom/rosteam/gpsemulator/R$id;->textHoraFake:I

    invoke-virtual {p0, p1}, Lcom/rosteam/gpsemulator/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, v1, Lcom/rosteam/gpsemulator/MainActivity;->textHoraFake:Landroid/widget/TextView;

    .line 834
    sget p1, Lcom/rosteam/gpsemulator/R$id;->customtoast:I

    invoke-virtual {p0, p1}, Lcom/rosteam/gpsemulator/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, v1, Lcom/rosteam/gpsemulator/MainActivity;->miToastView:Landroid/widget/TextView;

    .line 836
    iget-object p1, v1, Lcom/rosteam/gpsemulator/MainActivity;->stopButton:Landroid/widget/ImageButton;

    invoke-virtual {p1, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 837
    iget-object p1, v1, Lcom/rosteam/gpsemulator/MainActivity;->startButton:Landroid/widget/ImageButton;

    invoke-virtual {p1, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 838
    iget-object p1, v1, Lcom/rosteam/gpsemulator/MainActivity;->favButton:Landroid/widget/ImageButton;

    invoke-virtual {p1, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 840
    const-string p1, "input_method"

    invoke-virtual {p0, p1}, Lcom/rosteam/gpsemulator/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    iput-object p1, v1, Lcom/rosteam/gpsemulator/MainActivity;->imm:Landroid/view/inputmethod/InputMethodManager;

    .line 842
    new-instance p1, Lcom/rosteam/gpsemulator/MainActivity$5;

    invoke-direct {p1, p0}, Lcom/rosteam/gpsemulator/MainActivity$5;-><init>(Lcom/rosteam/gpsemulator/MainActivity;)V

    .line 1001
    invoke-virtual {p0}, Lcom/rosteam/gpsemulator/MainActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    sget v3, Lcom/rosteam/gpsemulator/R$id;->map:I

    invoke-virtual {v2, v3}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/maps/SupportMapFragment;

    invoke-virtual {v2, p1}, Lcom/google/android/gms/maps/SupportMapFragment;->getMapAsync(Lcom/google/android/gms/maps/OnMapReadyCallback;)V

    .line 1010
    iget-object p1, v1, Lcom/rosteam/gpsemulator/MainActivity;->drawer:Landroidx/drawerlayout/widget/DrawerLayout;

    sget v2, Lcom/rosteam/gpsemulator/R$id;->pined:I

    invoke-virtual {p1, v2}, Landroidx/drawerlayout/widget/DrawerLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v2, Lcom/rosteam/gpsemulator/MainActivity$6;

    invoke-direct {v2, p0}, Lcom/rosteam/gpsemulator/MainActivity$6;-><init>(Lcom/rosteam/gpsemulator/MainActivity;)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1047
    iget-object p1, v1, Lcom/rosteam/gpsemulator/MainActivity;->drawer:Landroidx/drawerlayout/widget/DrawerLayout;

    sget v2, Lcom/rosteam/gpsemulator/R$id;->containerMovil:I

    invoke-virtual {p1, v2}, Landroidx/drawerlayout/widget/DrawerLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, v1, Lcom/rosteam/gpsemulator/MainActivity;->mobileContainer:Landroid/view/View;

    .line 1049
    iget-object p1, v1, Lcom/rosteam/gpsemulator/MainActivity;->drawer:Landroidx/drawerlayout/widget/DrawerLayout;

    sget v2, Lcom/rosteam/gpsemulator/R$id;->bookmarkslyt:I

    invoke-virtual {p1, v2}, Landroidx/drawerlayout/widget/DrawerLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v2, Lcom/rosteam/gpsemulator/MainActivity$7;

    invoke-direct {v2, p0}, Lcom/rosteam/gpsemulator/MainActivity$7;-><init>(Lcom/rosteam/gpsemulator/MainActivity;)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1068
    iget-object p1, v1, Lcom/rosteam/gpsemulator/MainActivity;->drawer:Landroidx/drawerlayout/widget/DrawerLayout;

    sget v2, Lcom/rosteam/gpsemulator/R$id;->newroutelyt:I

    invoke-virtual {p1, v2}, Landroidx/drawerlayout/widget/DrawerLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v2, Lcom/rosteam/gpsemulator/MainActivity$8;

    invoke-direct {v2, p0}, Lcom/rosteam/gpsemulator/MainActivity$8;-><init>(Lcom/rosteam/gpsemulator/MainActivity;)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1075
    iget-object p1, v1, Lcom/rosteam/gpsemulator/MainActivity;->purchaseFromDrawerLyt:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/rosteam/gpsemulator/MainActivity$9;

    invoke-direct {v2, p0}, Lcom/rosteam/gpsemulator/MainActivity$9;-><init>(Lcom/rosteam/gpsemulator/MainActivity;)V

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1089
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, v1, Lcom/rosteam/gpsemulator/MainActivity;->history:Ljava/util/ArrayList;

    .line 1090
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, v1, Lcom/rosteam/gpsemulator/MainActivity;->favorites:Ljava/util/ArrayList;

    .line 1091
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, v1, Lcom/rosteam/gpsemulator/MainActivity;->rutas:Ljava/util/ArrayList;

    .line 1092
    invoke-virtual {p0}, Lcom/rosteam/gpsemulator/MainActivity;->loadFavsFromPref()V

    .line 1093
    invoke-virtual {p0}, Lcom/rosteam/gpsemulator/MainActivity;->loadRutasFromPref()V

    .line 1094
    invoke-static {p0}, Lcom/rosteam/gpsemulator/LocationUtils;->loadHisFromPref(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, v1, Lcom/rosteam/gpsemulator/MainActivity;->history:Ljava/util/ArrayList;

    .line 1095
    invoke-virtual {p0}, Lcom/rosteam/gpsemulator/MainActivity;->loadPinned()Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, v1, Lcom/rosteam/gpsemulator/MainActivity;->pinnedTemp:Ljava/util/ArrayList;

    .line 1099
    new-instance p1, Landroid/content/Intent;

    const-class v2, Lcom/rosteam/gpsemulator/servicex2484;

    invoke-direct {p1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object p1, v1, Lcom/rosteam/gpsemulator/MainActivity;->mRequestIntent:Landroid/content/Intent;

    .line 1103
    iget p1, v1, Lcom/rosteam/gpsemulator/MainActivity;->cantUsos:I

    if-nez p1, :cond_2c1

    .line 1104
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v2, v1, Lcom/rosteam/gpsemulator/MainActivity;->ctw:Landroid/view/ContextThemeWrapper;

    sget v3, Lcom/rosteam/gpsemulator/R$style;->CustomAlertDialog:I

    invoke-direct {p1, v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    sget v2, Lcom/rosteam/gpsemulator/R$string;->importanttitle:I

    .line 1105
    invoke-virtual {p1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    sget v2, Lcom/rosteam/gpsemulator/R$string;->importantmessage:I

    .line 1106
    invoke-virtual {p1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    sget v2, Lcom/rosteam/gpsemulator/R$string;->importantagree:I

    new-instance v3, Lcom/rosteam/gpsemulator/MainActivity$10;

    invoke-direct {v3, p0}, Lcom/rosteam/gpsemulator/MainActivity$10;-><init>(Lcom/rosteam/gpsemulator/MainActivity;)V

    .line 1107
    invoke-virtual {p1, v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 1110
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    .line 1117
    :cond_2c1
    iget p1, v1, Lcom/rosteam/gpsemulator/MainActivity;->cantUsos:I

    const/16 v2, 0x3e8

    if-le p1, v2, :cond_2cb

    const/16 p1, 0x1f4

    .line 1118
    iput p1, v1, Lcom/rosteam/gpsemulator/MainActivity;->cantUsos:I

    .line 1120
    :cond_2cb
    iget-object p1, v1, Lcom/rosteam/gpsemulator/MainActivity;->editor:Landroid/content/SharedPreferences$Editor;

    iget v2, v1, Lcom/rosteam/gpsemulator/MainActivity;->cantUsos:I

    add-int/2addr v2, v4

    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1121
    iget-object p1, v1, Lcom/rosteam/gpsemulator/MainActivity;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1122
    invoke-direct {p0}, Lcom/rosteam/gpsemulator/MainActivity;->checarUpdate()V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4

    .line 1668
    invoke-virtual {p0}, Lcom/rosteam/gpsemulator/MainActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    sget v1, Lcom/rosteam/gpsemulator/R$menu;->main:I

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onDestroy()V
    .registers 1

    .line 3882
    invoke-virtual {p0}, Lcom/rosteam/gpsemulator/MainActivity;->stoptimertask()V

    .line 3883
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    return-void
.end method

.method public onDrivingClick(Landroid/view/View;)V
    .registers 5

    const/16 v0, 0xc9

    .line 3116
    iput v0, p0, Lcom/rosteam/gpsemulator/MainActivity;->modoAutomatic:I

    .line 3117
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3118
    check-cast p1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/rosteam/gpsemulator/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/rosteam/gpsemulator/R$color;->colorAccent:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 3119
    check-cast v0, Landroid/widget/ImageView;

    const-string p1, "#999999"

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setColorFilter(I)V

    return-void
.end method

.method public onFavButtonClick(Landroid/view/View;)V
    .registers 11

    .line 2619
    iget p1, p0, Lcom/rosteam/gpsemulator/MainActivity;->modoApp:I

    const-wide/16 v0, 0xc8

    const/high16 v2, 0x1040000

    const v3, 0x104000a

    const/16 v4, 0x2000

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-nez p1, :cond_ed

    .line 2620
    iget-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity;->favButton:Landroid/widget/ImageButton;

    invoke-virtual {p1}, Landroid/widget/ImageButton;->isHapticFeedbackEnabled()Z

    move-result p1

    if-eqz p1, :cond_46

    .line 2621
    iget-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity;->favButton:Landroid/widget/ImageButton;

    sget v0, Lcom/rosteam/gpsemulator/R$drawable;->botonfav:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 2622
    iget-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity;->favButton:Landroid/widget/ImageButton;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setHapticFeedbackEnabled(Z)V

    .line 2623
    iget-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity;->favorites:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_32

    iget-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity;->favorites:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2624
    :cond_32
    invoke-virtual {p0}, Lcom/rosteam/gpsemulator/MainActivity;->favsToPrefs()V

    .line 2625
    sget p1, Lcom/rosteam/gpsemulator/R$string;->favorite_deleted:I

    invoke-virtual {p0, p1, v7}, Lcom/rosteam/gpsemulator/MainActivity;->miToast(II)V

    .line 2626
    iget-boolean p1, p0, Lcom/rosteam/gpsemulator/MainActivity;->pinedClosed:Z

    if-nez p1, :cond_1ac

    .line 2627
    iput-boolean v7, p0, Lcom/rosteam/gpsemulator/MainActivity;->pinedClosed:Z

    const/16 p1, 0x3c

    .line 2628
    invoke-direct {p0, v7, p1}, Lcom/rosteam/gpsemulator/MainActivity;->switchPinnedList(ZI)V

    return-void

    .line 2631
    :cond_46
    iget-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity;->favorites:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iget v8, p0, Lcom/rosteam/gpsemulator/MainActivity;->numerofavoritos:I

    if-ge p1, v8, :cond_d5

    .line 2632
    iget-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity;->favButton:Landroid/widget/ImageButton;

    invoke-virtual {p1, v7}, Landroid/widget/ImageButton;->setHapticFeedbackEnabled(Z)V

    .line 2633
    iget-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity;->favButton:Landroid/widget/ImageButton;

    sget v6, Lcom/rosteam/gpsemulator/R$drawable;->botonfavchecked:I

    invoke-virtual {p1, v6}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 2635
    invoke-virtual {p0}, Lcom/rosteam/gpsemulator/MainActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    sget v6, Lcom/rosteam/gpsemulator/R$layout;->addfav_layout:I

    invoke-virtual {p1, v6, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 2637
    sget v5, Lcom/rosteam/gpsemulator/R$id;->edit_name:I

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    .line 2638
    iget-object v6, p0, Lcom/rosteam/gpsemulator/MainActivity;->ultimaUbic:Lcom/rosteam/gpsemulator/utils/RegUbic;

    if-eqz v6, :cond_75

    iget-object v6, v6, Lcom/rosteam/gpsemulator/utils/RegUbic;->ciudadpais:Ljava/lang/String;

    goto :goto_77

    :cond_75
    const-string v6, ""

    :goto_77
    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2640
    invoke-virtual {v5, v4}, Landroid/widget/EditText;->setInputType(I)V

    .line 2641
    invoke-virtual {p0}, Lcom/rosteam/gpsemulator/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v6, Lcom/rosteam/gpsemulator/R$color;->edit_text:I

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v5, v4}, Landroid/widget/EditText;->setTextColor(I)V

    .line 2642
    new-instance v4, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/rosteam/gpsemulator/MainActivity;->ctw:Landroid/view/ContextThemeWrapper;

    sget v7, Lcom/rosteam/gpsemulator/R$style;->CustomAlertDialog:I

    invoke-direct {v4, v6, v7}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    sget v6, Lcom/rosteam/gpsemulator/R$string;->add_to_favs:I

    .line 2643
    invoke-virtual {p0, v6}, Lcom/rosteam/gpsemulator/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v4

    .line 2644
    invoke-virtual {v4, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v4, Lcom/rosteam/gpsemulator/MainActivity$35;

    invoke-direct {v4, p0, v5}, Lcom/rosteam/gpsemulator/MainActivity$35;-><init>(Lcom/rosteam/gpsemulator/MainActivity;Landroid/widget/EditText;)V

    .line 2645
    invoke-virtual {p1, v3, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v3, Lcom/rosteam/gpsemulator/MainActivity$34;

    invoke-direct {v3, p0, v5}, Lcom/rosteam/gpsemulator/MainActivity$34;-><init>(Lcom/rosteam/gpsemulator/MainActivity;Landroid/widget/EditText;)V

    .line 2661
    invoke-virtual {p1, v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v2, Lcom/rosteam/gpsemulator/MainActivity$33;

    invoke-direct {v2, p0, v5}, Lcom/rosteam/gpsemulator/MainActivity$33;-><init>(Lcom/rosteam/gpsemulator/MainActivity;Landroid/widget/EditText;)V

    .line 2669
    invoke-virtual {p1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 2678
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    .line 2682
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 2683
    new-instance v2, Lcom/rosteam/gpsemulator/MainActivity$36;

    invoke-direct {v2, p0, v5}, Lcom/rosteam/gpsemulator/MainActivity$36;-><init>(Lcom/rosteam/gpsemulator/MainActivity;Landroid/widget/EditText;)V

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2692
    new-instance p1, Lcom/rosteam/gpsemulator/MainActivity$37;

    invoke-direct {p1, p0}, Lcom/rosteam/gpsemulator/MainActivity$37;-><init>(Lcom/rosteam/gpsemulator/MainActivity;)V

    invoke-virtual {p0, p1}, Lcom/rosteam/gpsemulator/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    .line 2707
    :cond_d5
    invoke-virtual {p0}, Lcom/rosteam/gpsemulator/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/rosteam/gpsemulator/R$string;->only_n_favs:I

    iget v1, p0, Lcom/rosteam/gpsemulator/MainActivity;->numerofavoritos:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v6}, Lcom/rosteam/gpsemulator/MainActivity;->miToast(Ljava/lang/String;I)V

    return-void

    :cond_ed
    if-ne p1, v7, :cond_1a6

    .line 2714
    invoke-virtual {p0}, Lcom/rosteam/gpsemulator/MainActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    sget v6, Lcom/rosteam/gpsemulator/R$layout;->addroute_layout:I

    invoke-virtual {p1, v6, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 2715
    sget v5, Lcom/rosteam/gpsemulator/R$id;->edit_name:I

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    .line 2716
    invoke-virtual {p0}, Lcom/rosteam/gpsemulator/MainActivity;->loadRutasFromPref()V

    .line 2717
    iget v6, p0, Lcom/rosteam/gpsemulator/MainActivity;->modoRuta:I

    const/16 v7, 0x66

    if-eq v6, v7, :cond_130

    const/16 v7, 0x67

    if-ne v6, v7, :cond_10f

    goto :goto_130

    .line 2720
    :cond_10f
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget v7, Lcom/rosteam/gpsemulator/R$string;->route:I

    invoke-virtual {p0, v7}, Lcom/rosteam/gpsemulator/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/rosteam/gpsemulator/MainActivity;->rutas:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_14f

    .line 2718
    :cond_130
    :goto_130
    invoke-virtual {p0}, Lcom/rosteam/gpsemulator/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/rosteam/gpsemulator/R$string;->circlenro:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/rosteam/gpsemulator/MainActivity;->rutas:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2722
    :goto_14f
    invoke-virtual {v5, v4}, Landroid/widget/EditText;->setInputType(I)V

    .line 2723
    invoke-virtual {p0}, Lcom/rosteam/gpsemulator/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v6, Lcom/rosteam/gpsemulator/R$color;->edit_text:I

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v5, v4}, Landroid/widget/EditText;->setTextColor(I)V

    .line 2724
    new-instance v4, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/rosteam/gpsemulator/MainActivity;->ctw:Landroid/view/ContextThemeWrapper;

    sget v7, Lcom/rosteam/gpsemulator/R$style;->CustomAlertDialog:I

    invoke-direct {v4, v6, v7}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    sget v6, Lcom/rosteam/gpsemulator/R$string;->save_route:I

    .line 2725
    invoke-virtual {v4, v6}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v4

    .line 2726
    invoke-virtual {v4, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v4, Lcom/rosteam/gpsemulator/MainActivity$40;

    invoke-direct {v4, p0, v5}, Lcom/rosteam/gpsemulator/MainActivity$40;-><init>(Lcom/rosteam/gpsemulator/MainActivity;Landroid/widget/EditText;)V

    .line 2727
    invoke-virtual {p1, v3, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v3, Lcom/rosteam/gpsemulator/MainActivity$39;

    invoke-direct {v3, p0, v5}, Lcom/rosteam/gpsemulator/MainActivity$39;-><init>(Lcom/rosteam/gpsemulator/MainActivity;Landroid/widget/EditText;)V

    .line 2773
    invoke-virtual {p1, v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v2, Lcom/rosteam/gpsemulator/MainActivity$38;

    invoke-direct {v2, p0, v5}, Lcom/rosteam/gpsemulator/MainActivity$38;-><init>(Lcom/rosteam/gpsemulator/MainActivity;Landroid/widget/EditText;)V

    .line 2779
    invoke-virtual {p1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 2786
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    .line 2789
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 2790
    new-instance v2, Lcom/rosteam/gpsemulator/MainActivity$41;

    invoke-direct {v2, p0, v5}, Lcom/rosteam/gpsemulator/MainActivity$41;-><init>(Lcom/rosteam/gpsemulator/MainActivity;Landroid/widget/EditText;)V

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2800
    new-instance p1, Lcom/rosteam/gpsemulator/MainActivity$42;

    invoke-direct {p1, p0}, Lcom/rosteam/gpsemulator/MainActivity$42;-><init>(Lcom/rosteam/gpsemulator/MainActivity;)V

    invoke-virtual {p0, p1}, Lcom/rosteam/gpsemulator/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :cond_1a6
    if-eq p1, v6, :cond_1ad

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1ac

    goto :goto_1ad

    :cond_1ac
    return-void

    .line 2816
    :cond_1ad
    :goto_1ad
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity;->ctw:Landroid/view/ContextThemeWrapper;

    sget v1, Lcom/rosteam/gpsemulator/R$style;->CustomAlertDialog:I

    invoke-direct {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    sget v0, Lcom/rosteam/gpsemulator/R$string;->delete_route:I

    .line 2817
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    sget v0, Lcom/rosteam/gpsemulator/R$string;->delete_route_question:I

    .line 2818
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    sget v0, Lcom/rosteam/gpsemulator/R$string;->delete:I

    new-instance v1, Lcom/rosteam/gpsemulator/MainActivity$44;

    invoke-direct {v1, p0}, Lcom/rosteam/gpsemulator/MainActivity$44;-><init>(Lcom/rosteam/gpsemulator/MainActivity;)V

    .line 2819
    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    sget v0, Lcom/rosteam/gpsemulator/R$string;->cancel:I

    new-instance v1, Lcom/rosteam/gpsemulator/MainActivity$43;

    invoke-direct {v1, p0}, Lcom/rosteam/gpsemulator/MainActivity$43;-><init>(Lcom/rosteam/gpsemulator/MainActivity;)V

    .line 2856
    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 2860
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void
.end method

.method public onInitializationComplete()V
    .registers 3

    .line 3560
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity;->splashId:Ljava/lang/String;

    iget-object v1, p0, Lcom/rosteam/gpsemulator/MainActivity;->loadListener:Lcom/unity3d/ads/IUnityAdsLoadListener;

    invoke-static {v0, v1}, Lcom/unity3d/ads/UnityAds;->load(Ljava/lang/String;Lcom/unity3d/ads/IUnityAdsLoadListener;)V

    .line 3561
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity;->transicion01Id:Ljava/lang/String;

    iget-object v1, p0, Lcom/rosteam/gpsemulator/MainActivity;->loadListener:Lcom/unity3d/ads/IUnityAdsLoadListener;

    invoke-static {v0, v1}, Lcom/unity3d/ads/UnityAds;->load(Ljava/lang/String;Lcom/unity3d/ads/IUnityAdsLoadListener;)V

    .line 3562
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity;->stopId:Ljava/lang/String;

    iget-object v1, p0, Lcom/rosteam/gpsemulator/MainActivity;->loadListener:Lcom/unity3d/ads/IUnityAdsLoadListener;

    invoke-static {v0, v1}, Lcom/unity3d/ads/UnityAds;->load(Ljava/lang/String;Lcom/unity3d/ads/IUnityAdsLoadListener;)V

    return-void
.end method

.method public onInitializationFailed(Lcom/unity3d/ads/UnityAds$UnityAdsInitializationError;Ljava/lang/String;)V
    .registers 3

    return-void
.end method

.method public onManualRouteClick(Landroid/view/View;)V
    .registers 5

    .line 2865
    iget v0, p0, Lcom/rosteam/gpsemulator/MainActivity;->modoRuta:I

    const/16 v1, 0x66

    if-ne v0, v1, :cond_39

    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity;->miCirculo:Lcom/google/android/gms/maps/model/Circle;

    if-eqz v0, :cond_39

    .line 2866
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/rosteam/gpsemulator/MainActivity;->ctw:Landroid/view/ContextThemeWrapper;

    sget v2, Lcom/rosteam/gpsemulator/R$style;->CustomAlertDialog:I

    invoke-direct {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    sget v1, Lcom/rosteam/gpsemulator/R$string;->discard_route:I

    .line 2867
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/rosteam/gpsemulator/R$string;->discard_question:I

    .line 2868
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/rosteam/gpsemulator/R$string;->discard:I

    new-instance v2, Lcom/rosteam/gpsemulator/MainActivity$46;

    invoke-direct {v2, p0, p1}, Lcom/rosteam/gpsemulator/MainActivity$46;-><init>(Lcom/rosteam/gpsemulator/MainActivity;Landroid/view/View;)V

    .line 2869
    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    sget v0, Lcom/rosteam/gpsemulator/R$string;->cancel:I

    new-instance v1, Lcom/rosteam/gpsemulator/MainActivity$45;

    invoke-direct {v1, p0}, Lcom/rosteam/gpsemulator/MainActivity$45;-><init>(Lcom/rosteam/gpsemulator/MainActivity;)V

    .line 2876
    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 2881
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void

    .line 2883
    :cond_39
    invoke-direct {p0, p1}, Lcom/rosteam/gpsemulator/MainActivity;->setManualMode(Landroid/view/View;)V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 4

    .line 4105
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 4107
    invoke-virtual {p0, p1}, Lcom/rosteam/gpsemulator/MainActivity;->setIntent(Landroid/content/Intent;)V

    .line 4108
    const-string p1, "FAKEGPS"

    const-string v0, "recibimos intent!!!!!"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4110
    iget-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity;->map:Lcom/google/android/gms/maps/GoogleMap;

    if-nez p1, :cond_26

    .line 4111
    new-instance p1, Lcom/rosteam/gpsemulator/MainActivity$60;

    invoke-direct {p1, p0}, Lcom/rosteam/gpsemulator/MainActivity$60;-><init>(Lcom/rosteam/gpsemulator/MainActivity;)V

    .line 4125
    invoke-virtual {p0}, Lcom/rosteam/gpsemulator/MainActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    sget v1, Lcom/rosteam/gpsemulator/R$id;->map:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/SupportMapFragment;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/SupportMapFragment;->getMapAsync(Lcom/google/android/gms/maps/OnMapReadyCallback;)V

    return-void

    .line 4128
    :cond_26
    invoke-direct {p0}, Lcom/rosteam/gpsemulator/MainActivity;->processIntent()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4

    .line 1675
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 1677
    sget v1, Lcom/rosteam/gpsemulator/R$id;->action_search:I

    if-ne v0, v1, :cond_b

    .line 1678
    invoke-direct {p0}, Lcom/rosteam/gpsemulator/MainActivity;->openSearch()V

    .line 1681
    :cond_b
    sget v1, Lcom/rosteam/gpsemulator/R$id;->action_settings:I

    if-ne v0, v1, :cond_1b

    .line 1682
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/rosteam/gpsemulator/SettingsActivity2;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0x65

    .line 1683
    invoke-direct {p0, v0, v1}, Lcom/rosteam/gpsemulator/MainActivity;->transitionShow(Landroid/content/Intent;I)V

    .line 1686
    :cond_1b
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method protected onPause()V
    .registers 3

    .line 4826
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onPause()V

    .line 4827
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity;->miExitDialog:Lcom/rosteam/gpsemulator/miBottomSheetDialog;

    if-eqz v0, :cond_d

    .line 4828
    invoke-virtual {v0}, Lcom/rosteam/gpsemulator/miBottomSheetDialog;->dismiss()V

    const/4 v0, 0x0

    .line 4829
    iput-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity;->miExitDialog:Lcom/rosteam/gpsemulator/miBottomSheetDialog;

    .line 4832
    :cond_d
    invoke-static {}, Lcom/rosteam/gpsemulator/App;->activityPaused()V

    .line 4833
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/rosteam/gpsemulator/MainActivity;->stopMessageReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 4834
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/rosteam/gpsemulator/MainActivity;->updateMessageReceiverUpdate:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onPurchasesUpdated(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/billingclient/api/BillingResult;",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/Purchase;",
            ">;)V"
        }
    .end annotation

    .line 5898
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v0

    if-nez v0, :cond_24

    if-eqz p2, :cond_24

    .line 5900
    new-instance p1, Lcom/rosteam/gpsemulator/MainActivity$95;

    invoke-direct {p1, p0}, Lcom/rosteam/gpsemulator/MainActivity$95;-><init>(Lcom/rosteam/gpsemulator/MainActivity;)V

    invoke-virtual {p0, p1}, Lcom/rosteam/gpsemulator/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 5907
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_14
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/billingclient/api/Purchase;

    .line 5908
    invoke-virtual {p0, p2}, Lcom/rosteam/gpsemulator/MainActivity;->handlePurchase(Lcom/android/billingclient/api/Purchase;)V

    goto :goto_14

    .line 5912
    :cond_24
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result p2

    const/4 v0, 0x7

    if-ne p2, v0, :cond_44

    .line 5914
    iget-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity;->billingClient:Lcom/android/billingclient/api/BillingClient;

    .line 5915
    invoke-static {}, Lcom/android/billingclient/api/QueryPurchasesParams;->newBuilder()Lcom/android/billingclient/api/QueryPurchasesParams$Builder;

    move-result-object p2

    const-string v0, "subs"

    invoke-virtual {p2, v0}, Lcom/android/billingclient/api/QueryPurchasesParams$Builder;->setProductType(Ljava/lang/String;)Lcom/android/billingclient/api/QueryPurchasesParams$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/billingclient/api/QueryPurchasesParams$Builder;->build()Lcom/android/billingclient/api/QueryPurchasesParams;

    move-result-object p2

    new-instance v0, Lcom/rosteam/gpsemulator/MainActivity$96;

    invoke-direct {v0, p0}, Lcom/rosteam/gpsemulator/MainActivity$96;-><init>(Lcom/rosteam/gpsemulator/MainActivity;)V

    .line 5914
    invoke-virtual {p1, p2, v0}, Lcom/android/billingclient/api/BillingClient;->queryPurchasesAsync(Lcom/android/billingclient/api/QueryPurchasesParams;Lcom/android/billingclient/api/PurchasesResponseListener;)V

    return-void

    .line 5953
    :cond_44
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_4c

    :cond_4b
    return-void

    .line 5958
    :cond_4c
    invoke-virtual {p0}, Lcom/rosteam/gpsemulator/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getDebugMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p2, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .registers 6

    .line 1458
    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/app/AppCompatActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    const/16 p2, 0x63

    if-eq p1, p2, :cond_8

    goto :goto_45

    .line 1461
    :cond_8
    array-length p1, p3

    if-lez p1, :cond_45

    .line 1462
    const-string p1, "request permission results received"

    const-string p2, "GPS"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 1463
    aget v0, p3, p1

    if-nez v0, :cond_23

    .line 1464
    const-string p1, "request permission GRANTED"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1465
    iget-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity;->map:Lcom/google/android/gms/maps/GoogleMap;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/google/android/gms/maps/GoogleMap;->setMyLocationEnabled(Z)V

    return-void

    .line 1468
    :cond_23
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "request permission NOT GRANTED "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget p1, p3, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1470
    const-string p1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {p0, p1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_45

    .line 1473
    sget p1, Lcom/rosteam/gpsemulator/R$string;->location_permission_needed:I

    const/4 p2, 0x2

    invoke-virtual {p0, p1, p2}, Lcom/rosteam/gpsemulator/MainActivity;->miToast(II)V

    :cond_45
    :goto_45
    return-void
.end method

.method protected onRestart()V
    .registers 8

    .line 4525
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onRestart()V

    .line 4526
    invoke-static {}, Lcom/rosteam/gpsemulator/App;->activityResumed()V

    .line 4529
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "accion"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v0, v4, :cond_1a

    if-eq v0, v3, :cond_16

    goto :goto_1d

    .line 4535
    :cond_16
    invoke-virtual {p0}, Lcom/rosteam/gpsemulator/MainActivity;->reiniciarMap()V

    goto :goto_1d

    .line 4532
    :cond_1a
    invoke-virtual {p0}, Lcom/rosteam/gpsemulator/MainActivity;->resetAll()V

    .line 4541
    :goto_1d
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 4542
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 4543
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 4545
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "noads"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/rosteam/gpsemulator/MainActivity;->noAds:Z

    .line 4546
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "numerofavoritos"

    const/16 v2, 0xa

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/rosteam/gpsemulator/MainActivity;->numerofavoritos:I

    .line 4547
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onRestart, no ads? "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/rosteam/gpsemulator/MainActivity;->noAds:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "fakegps"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4548
    iget-boolean v0, p0, Lcom/rosteam/gpsemulator/MainActivity;->noAds:Z

    if-eqz v0, :cond_5c

    invoke-virtual {p0}, Lcom/rosteam/gpsemulator/MainActivity;->habilitarPRO()V

    .line 4549
    :cond_5c
    const-class v0, Lcom/rosteam/gpsemulator/servicex2484;

    invoke-direct {p0, v0}, Lcom/rosteam/gpsemulator/MainActivity;->isMyServiceRunning(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_6d

    iget v0, p0, Lcom/rosteam/gpsemulator/MainActivity;->modoApp:I

    if-eq v0, v4, :cond_6d

    if-eq v0, v3, :cond_6d

    .line 4551
    invoke-virtual {p0, v4}, Lcom/rosteam/gpsemulator/MainActivity;->onStopClickStep2(Z)V

    .line 4552
    :cond_6d
    iget-boolean v0, p0, Lcom/rosteam/gpsemulator/MainActivity;->noAds:Z

    if-nez v0, :cond_83

    const-wide/16 v5, 0x1

    invoke-direct {p0, v5, v6}, Lcom/rosteam/gpsemulator/MainActivity;->wasLoadTimeLessThanNHoursAgo(J)Z

    move-result v0

    if-nez v0, :cond_83

    .line 4553
    const-string v0, "onRestart"

    const-string v5, "cargarBannerExit() de NUEVO"

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4554
    invoke-direct {p0}, Lcom/rosteam/gpsemulator/MainActivity;->cargarBannerExit()V

    .line 4557
    :cond_83
    iget-boolean v0, p0, Lcom/rosteam/gpsemulator/MainActivity;->noAds:Z

    if-nez v0, :cond_c7

    invoke-direct {p0}, Lcom/rosteam/gpsemulator/MainActivity;->splashNow()Z

    move-result v0

    if-eqz v0, :cond_c7

    iget v0, p0, Lcom/rosteam/gpsemulator/MainActivity;->cantUsos:I

    if-lt v0, v4, :cond_c7

    if-eq v0, v2, :cond_c7

    if-eq v0, v3, :cond_c7

    .line 4559
    const-string v0, "Va app open return"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4560
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity;->child:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 4561
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 4562
    iget-object v1, p0, Lcom/rosteam/gpsemulator/MainActivity;->child:Landroid/view/View;

    new-array v2, v3, [F

    fill-array-data v2, :array_c8

    const-string v3, "alpha"

    invoke-static {v1, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 4563
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    const-wide/16 v1, 0x96

    .line 4564
    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    const-wide/16 v1, 0x15e

    .line 4565
    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 4567
    new-instance v1, Lcom/rosteam/gpsemulator/MainActivity$68;

    invoke-direct {v1, p0, v0}, Lcom/rosteam/gpsemulator/MainActivity$68;-><init>(Lcom/rosteam/gpsemulator/MainActivity;Landroid/animation/AnimatorSet;)V

    invoke-virtual {p0, v1}, Lcom/rosteam/gpsemulator/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_c7
    return-void

    :array_c8
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method protected onResume()V
    .registers 5

    .line 4844
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    .line 4845
    const-string v0, "fakegps"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4846
    invoke-static {}, Lcom/rosteam/gpsemulator/App;->activityResumed()V

    .line 4848
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/rosteam/gpsemulator/MainActivity;->stopMessageReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "detener"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 4849
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/rosteam/gpsemulator/MainActivity;->updateMessageReceiverUpdate:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "update"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 4850
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity;->permissionDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz v0, :cond_3c

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity;->permisosLayout:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/rosteam/gpsemulator/MainActivity;->setPermissionButtons(Landroid/view/View;)Z

    :cond_3c
    return-void
.end method

.method public onRewardedClick(Landroid/view/View;)V
    .registers 4

    .line 3001
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity;->rewardedAd:Lcom/google/android/gms/ads/rewarded/RewardedAd;

    if-eqz v0, :cond_1a

    .line 3002
    new-instance v1, Lcom/rosteam/gpsemulator/MainActivity$53;

    invoke-direct {v1, p0}, Lcom/rosteam/gpsemulator/MainActivity$53;-><init>(Lcom/rosteam/gpsemulator/MainActivity;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/rewarded/RewardedAd;->setFullScreenContentCallback(Lcom/google/android/gms/ads/FullScreenContentCallback;)V

    .line 3035
    invoke-direct {p0}, Lcom/rosteam/gpsemulator/MainActivity;->setAdBlock()V

    .line 3036
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity;->rewardedAd:Lcom/google/android/gms/ads/rewarded/RewardedAd;

    new-instance v1, Lcom/rosteam/gpsemulator/MainActivity$54;

    invoke-direct {v1, p0, p1}, Lcom/rosteam/gpsemulator/MainActivity$54;-><init>(Lcom/rosteam/gpsemulator/MainActivity;Landroid/view/View;)V

    invoke-virtual {v0, p0, v1}, Lcom/google/android/gms/ads/rewarded/RewardedAd;->show(Landroid/app/Activity;Lcom/google/android/gms/ads/OnUserEarnedRewardListener;)V

    return-void

    .line 3104
    :cond_1a
    invoke-virtual {p0, p1}, Lcom/rosteam/gpsemulator/MainActivity;->switchAtuomatic(Landroid/view/View;)V

    return-void
.end method

.method public onStartContinuousButtonClick(Landroid/view/View;)V
    .registers 24

    move-object/from16 v0, p0

    .line 1765
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "modoApp "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v0, Lcom/rosteam/gpsemulator/MainActivity;->modoApp:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "onStartContin"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1767
    iget-object v1, v0, Lcom/rosteam/gpsemulator/MainActivity;->map:Lcom/google/android/gms/maps/GoogleMap;

    if-nez v1, :cond_1e

    goto/16 :goto_33e

    .line 1768
    :cond_1e
    iget-object v1, v0, Lcom/rosteam/gpsemulator/MainActivity;->startButton:Landroid/widget/ImageButton;

    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1770
    iget v1, v0, Lcom/rosteam/gpsemulator/MainActivity;->modoApp:I

    const-wide/16 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v8, 0x1

    if-ne v1, v8, :cond_333

    .line 1771
    const-string v1, "fakeGPS"

    const-string v6, "CREAR RUTA"

    invoke-static {v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1773
    iget v1, v0, Lcom/rosteam/gpsemulator/MainActivity;->modoRuta:I

    const/16 v6, 0x66

    const/4 v9, 0x0

    const/high16 v10, 0x40800000    # 4.0f

    if-eq v1, v6, :cond_299

    .line 1774
    iget-object v1, v0, Lcom/rosteam/gpsemulator/MainActivity;->polyline1:Lcom/google/android/gms/maps/model/Polyline;

    if-nez v1, :cond_180

    .line 1775
    iget-object v1, v0, Lcom/rosteam/gpsemulator/MainActivity;->rutas:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v8, :cond_52

    sget v1, Lcom/rosteam/gpsemulator/R$string;->ruta_paso_02:I

    invoke-virtual {v0, v1}, Lcom/rosteam/gpsemulator/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Lcom/rosteam/gpsemulator/MainActivity;->miToast(Ljava/lang/String;I)V

    .line 1777
    :cond_52
    iget-object v1, v0, Lcom/rosteam/gpsemulator/MainActivity;->map:Lcom/google/android/gms/maps/GoogleMap;

    new-instance v2, Lcom/google/android/gms/maps/model/PolylineOptions;

    invoke-direct {v2}, Lcom/google/android/gms/maps/model/PolylineOptions;-><init>()V

    .line 1778
    invoke-virtual {v2, v7}, Lcom/google/android/gms/maps/model/PolylineOptions;->clickable(Z)Lcom/google/android/gms/maps/model/PolylineOptions;

    move-result-object v2

    new-array v3, v5, [Lcom/google/android/gms/maps/model/PatternItem;

    new-instance v4, Lcom/google/android/gms/maps/model/Gap;

    const/high16 v6, 0x40a00000    # 5.0f

    .line 1779
    invoke-virtual {v0, v6}, Lcom/rosteam/gpsemulator/MainActivity;->convertDpToPixel(F)I

    move-result v6

    int-to-float v6, v6

    invoke-direct {v4, v6}, Lcom/google/android/gms/maps/model/Gap;-><init>(F)V

    aput-object v4, v3, v7

    new-instance v4, Lcom/google/android/gms/maps/model/Dash;

    const/high16 v6, 0x41700000    # 15.0f

    invoke-virtual {v0, v6}, Lcom/rosteam/gpsemulator/MainActivity;->convertDpToPixel(F)I

    move-result v6

    int-to-float v6, v6

    invoke-direct {v4, v6}, Lcom/google/android/gms/maps/model/Dash;-><init>(F)V

    aput-object v4, v3, v8

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/maps/model/PolylineOptions;->pattern(Ljava/util/List;)Lcom/google/android/gms/maps/model/PolylineOptions;

    move-result-object v2

    new-array v3, v5, [Lcom/google/android/gms/maps/model/LatLng;

    new-instance v4, Lcom/google/android/gms/maps/model/LatLng;

    iget-object v6, v0, Lcom/rosteam/gpsemulator/MainActivity;->map:Lcom/google/android/gms/maps/GoogleMap;

    .line 1780
    invoke-virtual {v6}, Lcom/google/android/gms/maps/GoogleMap;->getCameraPosition()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v6

    iget-object v6, v6, Lcom/google/android/gms/maps/model/CameraPosition;->target:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v11, v6, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    iget-object v6, v0, Lcom/rosteam/gpsemulator/MainActivity;->map:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v6}, Lcom/google/android/gms/maps/GoogleMap;->getCameraPosition()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v6

    iget-object v6, v6, Lcom/google/android/gms/maps/model/CameraPosition;->target:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v13, v6, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-direct {v4, v11, v12, v13, v14}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    aput-object v4, v3, v7

    new-instance v4, Lcom/google/android/gms/maps/model/LatLng;

    iget-object v6, v0, Lcom/rosteam/gpsemulator/MainActivity;->map:Lcom/google/android/gms/maps/GoogleMap;

    .line 1781
    invoke-virtual {v6}, Lcom/google/android/gms/maps/GoogleMap;->getCameraPosition()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v6

    iget-object v6, v6, Lcom/google/android/gms/maps/model/CameraPosition;->target:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v11, v6, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    iget-object v6, v0, Lcom/rosteam/gpsemulator/MainActivity;->map:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v6}, Lcom/google/android/gms/maps/GoogleMap;->getCameraPosition()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v6

    iget-object v6, v6, Lcom/google/android/gms/maps/model/CameraPosition;->target:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v13, v6, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-direct {v4, v11, v12, v13, v14}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    aput-object v4, v3, v8

    .line 1780
    invoke-virtual {v2, v3}, Lcom/google/android/gms/maps/model/PolylineOptions;->add([Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/PolylineOptions;

    move-result-object v2

    .line 1777
    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/GoogleMap;->addPolyline(Lcom/google/android/gms/maps/model/PolylineOptions;)Lcom/google/android/gms/maps/model/Polyline;

    move-result-object v1

    iput-object v1, v0, Lcom/rosteam/gpsemulator/MainActivity;->polylinePending:Lcom/google/android/gms/maps/model/Polyline;

    .line 1783
    invoke-virtual {v0}, Lcom/rosteam/gpsemulator/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/rosteam/gpsemulator/R$color;->colorRuta:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/model/Polyline;->setColor(I)V

    .line 1784
    iget-object v1, v0, Lcom/rosteam/gpsemulator/MainActivity;->polylinePending:Lcom/google/android/gms/maps/model/Polyline;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-virtual {v0, v2}, Lcom/rosteam/gpsemulator/MainActivity;->convertDpToPixel(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/model/Polyline;->setWidth(F)V

    .line 1787
    iget-object v1, v0, Lcom/rosteam/gpsemulator/MainActivity;->map:Lcom/google/android/gms/maps/GoogleMap;

    new-instance v2, Lcom/google/android/gms/maps/model/PolylineOptions;

    invoke-direct {v2}, Lcom/google/android/gms/maps/model/PolylineOptions;-><init>()V

    .line 1788
    invoke-virtual {v2, v7}, Lcom/google/android/gms/maps/model/PolylineOptions;->clickable(Z)Lcom/google/android/gms/maps/model/PolylineOptions;

    move-result-object v2

    .line 1789
    invoke-virtual {v2, v8}, Lcom/google/android/gms/maps/model/PolylineOptions;->geodesic(Z)Lcom/google/android/gms/maps/model/PolylineOptions;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/maps/model/LatLng;

    iget-object v4, v0, Lcom/rosteam/gpsemulator/MainActivity;->map:Lcom/google/android/gms/maps/GoogleMap;

    .line 1790
    invoke-virtual {v4}, Lcom/google/android/gms/maps/GoogleMap;->getCameraPosition()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v4

    iget-object v4, v4, Lcom/google/android/gms/maps/model/CameraPosition;->target:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v11, v4, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    iget-object v4, v0, Lcom/rosteam/gpsemulator/MainActivity;->map:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v4}, Lcom/google/android/gms/maps/GoogleMap;->getCameraPosition()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v4

    iget-object v4, v4, Lcom/google/android/gms/maps/model/CameraPosition;->target:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v13, v4, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-direct {v3, v11, v12, v13, v14}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {v2, v3}, Lcom/google/android/gms/maps/model/PolylineOptions;->add(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/PolylineOptions;

    move-result-object v2

    .line 1787
    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/GoogleMap;->addPolyline(Lcom/google/android/gms/maps/model/PolylineOptions;)Lcom/google/android/gms/maps/model/Polyline;

    move-result-object v1

    iput-object v1, v0, Lcom/rosteam/gpsemulator/MainActivity;->polyline1:Lcom/google/android/gms/maps/model/Polyline;

    .line 1793
    new-instance v2, Lcom/google/android/gms/maps/model/CustomCap;

    sget v3, Lcom/rosteam/gpsemulator/R$drawable;->arrow2:I

    invoke-static {v3}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->fromResource(I)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v3

    const/high16 v4, 0x40c00000    # 6.0f

    invoke-virtual {v0, v4}, Lcom/rosteam/gpsemulator/MainActivity;->convertDpToPixel(F)I

    move-result v4

    int-to-float v4, v4

    invoke-direct {v2, v3, v4}, Lcom/google/android/gms/maps/model/CustomCap;-><init>(Lcom/google/android/gms/maps/model/BitmapDescriptor;F)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/model/Polyline;->setEndCap(Lcom/google/android/gms/maps/model/Cap;)V

    .line 1796
    iget-object v1, v0, Lcom/rosteam/gpsemulator/MainActivity;->polyline1:Lcom/google/android/gms/maps/model/Polyline;

    new-instance v2, Lcom/google/android/gms/maps/model/RoundCap;

    invoke-direct {v2}, Lcom/google/android/gms/maps/model/RoundCap;-><init>()V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/model/Polyline;->setStartCap(Lcom/google/android/gms/maps/model/Cap;)V

    .line 1797
    iget-object v1, v0, Lcom/rosteam/gpsemulator/MainActivity;->polyline1:Lcom/google/android/gms/maps/model/Polyline;

    invoke-virtual {v0, v10}, Lcom/rosteam/gpsemulator/MainActivity;->convertDpToPixel(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/model/Polyline;->setWidth(F)V

    .line 1798
    iget-object v1, v0, Lcom/rosteam/gpsemulator/MainActivity;->polyline1:Lcom/google/android/gms/maps/model/Polyline;

    invoke-virtual {v0}, Lcom/rosteam/gpsemulator/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/rosteam/gpsemulator/R$color;->colorRuta:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/model/Polyline;->setColor(I)V

    .line 1799
    iget-object v1, v0, Lcom/rosteam/gpsemulator/MainActivity;->polyline1:Lcom/google/android/gms/maps/model/Polyline;

    invoke-virtual {v1, v5}, Lcom/google/android/gms/maps/model/Polyline;->setJointType(I)V

    .line 1801
    iget-object v1, v0, Lcom/rosteam/gpsemulator/MainActivity;->map:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v1}, Lcom/google/android/gms/maps/GoogleMap;->getCameraPosition()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v1

    invoke-static {v1, v9}, Lcom/rosteam/gpsemulator/LocationUtils;->getDelta(Lcom/google/android/gms/maps/model/CameraPosition;F)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v1

    iget-object v2, v0, Lcom/rosteam/gpsemulator/MainActivity;->map:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v2}, Lcom/google/android/gms/maps/GoogleMap;->getCameraPosition()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v2

    iget v2, v2, Lcom/google/android/gms/maps/model/CameraPosition;->zoom:F

    iget-object v3, v0, Lcom/rosteam/gpsemulator/MainActivity;->map:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v3}, Lcom/google/android/gms/maps/GoogleMap;->getCameraPosition()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v3

    iget v3, v3, Lcom/google/android/gms/maps/model/CameraPosition;->bearing:F

    invoke-virtual {v0, v1, v2, v3}, Lcom/rosteam/gpsemulator/MainActivity;->moveToFast(Lcom/google/android/gms/maps/model/LatLng;FF)V

    .line 1804
    iget-object v1, v0, Lcom/rosteam/gpsemulator/MainActivity;->undoButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v8}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1805
    iget-object v1, v0, Lcom/rosteam/gpsemulator/MainActivity;->undoButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v7}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1806
    iget-object v1, v0, Lcom/rosteam/gpsemulator/MainActivity;->undoButton:Landroid/widget/ImageButton;

    new-instance v2, Lcom/rosteam/gpsemulator/MainActivity$18;

    invoke-direct {v2, v0}, Lcom/rosteam/gpsemulator/MainActivity$18;-><init>(Lcom/rosteam/gpsemulator/MainActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_32d

    .line 1829
    :cond_180
    invoke-virtual {v1}, Lcom/google/android/gms/maps/model/Polyline;->getPoints()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v8, :cond_19b

    iget-object v1, v0, Lcom/rosteam/gpsemulator/MainActivity;->rutas:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v8, :cond_19b

    sget v1, Lcom/rosteam/gpsemulator/R$string;->ruta_paso_03:I

    invoke-virtual {v0, v1}, Lcom/rosteam/gpsemulator/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Lcom/rosteam/gpsemulator/MainActivity;->miToast(Ljava/lang/String;I)V

    .line 1831
    :cond_19b
    iget-object v1, v0, Lcom/rosteam/gpsemulator/MainActivity;->polyline1:Lcom/google/android/gms/maps/model/Polyline;

    invoke-virtual {v1}, Lcom/google/android/gms/maps/model/Polyline;->getPoints()Ljava/util/List;

    move-result-object v1

    .line 1833
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    int-to-long v2, v2

    sget-wide v9, Lcom/rosteam/gpsemulator/MainActivity;->COMPLEXIDAD_MAX_RUTA:J

    cmp-long v2, v2, v9

    if-gez v2, :cond_28e

    .line 1834
    iget-object v2, v0, Lcom/rosteam/gpsemulator/MainActivity;->polylinePending:Lcom/google/android/gms/maps/model/Polyline;

    invoke-virtual {v2}, Lcom/google/android/gms/maps/model/Polyline;->getPoints()Ljava/util/List;

    move-result-object v2

    .line 1836
    new-instance v3, Lcom/google/android/gms/maps/model/LatLng;

    iget-object v4, v0, Lcom/rosteam/gpsemulator/MainActivity;->map:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v4}, Lcom/google/android/gms/maps/GoogleMap;->getCameraPosition()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v4

    iget-object v4, v4, Lcom/google/android/gms/maps/model/CameraPosition;->target:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v9, v4, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    iget-object v4, v0, Lcom/rosteam/gpsemulator/MainActivity;->map:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v4}, Lcom/google/android/gms/maps/GoogleMap;->getCameraPosition()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v4

    iget-object v4, v4, Lcom/google/android/gms/maps/model/CameraPosition;->target:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v11, v4, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-direct {v3, v9, v10, v11, v12}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1838
    new-instance v3, Lcom/google/android/gms/maps/model/LatLng;

    iget-object v4, v0, Lcom/rosteam/gpsemulator/MainActivity;->map:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v4}, Lcom/google/android/gms/maps/GoogleMap;->getCameraPosition()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v4

    iget-object v4, v4, Lcom/google/android/gms/maps/model/CameraPosition;->target:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v9, v4, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    iget-object v4, v0, Lcom/rosteam/gpsemulator/MainActivity;->map:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v4}, Lcom/google/android/gms/maps/GoogleMap;->getCameraPosition()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v4

    iget-object v4, v4, Lcom/google/android/gms/maps/model/CameraPosition;->target:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v11, v4, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-direct {v3, v9, v10, v11, v12}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-interface {v2, v7, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1839
    new-instance v3, Lcom/google/android/gms/maps/model/LatLng;

    iget-object v4, v0, Lcom/rosteam/gpsemulator/MainActivity;->map:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v4}, Lcom/google/android/gms/maps/GoogleMap;->getCameraPosition()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v4

    iget-object v4, v4, Lcom/google/android/gms/maps/model/CameraPosition;->target:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v9, v4, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    iget-object v4, v0, Lcom/rosteam/gpsemulator/MainActivity;->map:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v4}, Lcom/google/android/gms/maps/GoogleMap;->getCameraPosition()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v4

    iget-object v4, v4, Lcom/google/android/gms/maps/model/CameraPosition;->target:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v11, v4, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-direct {v3, v9, v10, v11, v12}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-interface {v2, v8, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1840
    iget-object v3, v0, Lcom/rosteam/gpsemulator/MainActivity;->polylinePending:Lcom/google/android/gms/maps/model/Polyline;

    invoke-virtual {v3, v2}, Lcom/google/android/gms/maps/model/Polyline;->setPoints(Ljava/util/List;)V

    .line 1842
    iget v2, v0, Lcom/rosteam/gpsemulator/MainActivity;->modoRuta:I

    const/16 v3, 0x64

    if-ne v2, v3, :cond_216

    .line 1843
    iget-object v2, v0, Lcom/rosteam/gpsemulator/MainActivity;->polyline1:Lcom/google/android/gms/maps/model/Polyline;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/maps/model/Polyline;->setPoints(Ljava/util/List;)V

    .line 1844
    :cond_216
    iget v2, v0, Lcom/rosteam/gpsemulator/MainActivity;->modoRuta:I

    const/16 v3, 0x65

    if-ne v2, v3, :cond_276

    .line 1848
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v5

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/maps/model/LatLng;

    .line 1849
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v8

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/maps/model/LatLng;

    .line 1847
    invoke-virtual {v0, v2, v3}, Lcom/rosteam/gpsemulator/MainActivity;->onCalculateRoute(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)V

    .line 1851
    invoke-direct {v0}, Lcom/rosteam/gpsemulator/MainActivity;->setRewardedNow()V

    .line 1852
    iget-boolean v2, v0, Lcom/rosteam/gpsemulator/MainActivity;->noAds:Z

    if-nez v2, :cond_276

    .line 1853
    iget v2, v0, Lcom/rosteam/gpsemulator/MainActivity;->rewardedAutomaticRoutes:I

    sub-int/2addr v2, v8

    iput v2, v0, Lcom/rosteam/gpsemulator/MainActivity;->rewardedAutomaticRoutes:I

    if-gtz v2, :cond_257

    .line 1855
    iput v7, v0, Lcom/rosteam/gpsemulator/MainActivity;->rewardedAutomaticRoutes:I

    .line 1856
    iget-object v2, v0, Lcom/rosteam/gpsemulator/MainActivity;->rewardedAd:Lcom/google/android/gms/ads/rewarded/RewardedAd;

    if-nez v2, :cond_24c

    invoke-direct {v0}, Lcom/rosteam/gpsemulator/MainActivity;->cargarRewarded()V

    .line 1857
    :cond_24c
    iget-object v2, v0, Lcom/rosteam/gpsemulator/MainActivity;->createRouteLyt:Landroid/widget/LinearLayout;

    sget v3, Lcom/rosteam/gpsemulator/R$id;->manual_route:I

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/rosteam/gpsemulator/MainActivity;->onManualRouteClick(Landroid/view/View;)V

    .line 1860
    :cond_257
    iget-object v2, v0, Lcom/rosteam/gpsemulator/MainActivity;->automaticRouteText:Landroid/widget/TextView;

    .line 1861
    invoke-virtual {v0}, Lcom/rosteam/gpsemulator/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/rosteam/gpsemulator/R$string;->automatic:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget v4, v0, Lcom/rosteam/gpsemulator/MainActivity;->rewardedAutomaticRoutes:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "%s (%d)"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1860
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1867
    :cond_276
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v8, :cond_281

    iget-object v2, v0, Lcom/rosteam/gpsemulator/MainActivity;->favButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v8}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1868
    :cond_281
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_32d

    iget-object v1, v0, Lcom/rosteam/gpsemulator/MainActivity;->undoButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v7}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto/16 :goto_32d

    .line 1870
    :cond_28e
    sget v1, Lcom/rosteam/gpsemulator/R$string;->route_too_long:I

    invoke-virtual {v0, v1}, Lcom/rosteam/gpsemulator/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Lcom/rosteam/gpsemulator/MainActivity;->miToast(Ljava/lang/String;I)V

    goto/16 :goto_32d

    .line 1874
    :cond_299
    iget-object v1, v0, Lcom/rosteam/gpsemulator/MainActivity;->miCirculo:Lcom/google/android/gms/maps/model/Circle;

    if-nez v1, :cond_324

    .line 1875
    const-string v1, "GPSEMU"

    const-string v4, "set en modo RUTA_CIRCULO"

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1876
    new-instance v1, Lcom/google/android/gms/maps/model/CircleOptions;

    invoke-direct {v1}, Lcom/google/android/gms/maps/model/CircleOptions;-><init>()V

    new-instance v4, Lcom/google/android/gms/maps/model/LatLng;

    iget-object v5, v0, Lcom/rosteam/gpsemulator/MainActivity;->map:Lcom/google/android/gms/maps/GoogleMap;

    .line 1877
    invoke-virtual {v5}, Lcom/google/android/gms/maps/GoogleMap;->getCameraPosition()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v5

    iget-object v5, v5, Lcom/google/android/gms/maps/model/CameraPosition;->target:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v5, v5, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    iget-object v11, v0, Lcom/rosteam/gpsemulator/MainActivity;->map:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v11}, Lcom/google/android/gms/maps/GoogleMap;->getCameraPosition()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v11

    iget-object v11, v11, Lcom/google/android/gms/maps/model/CameraPosition;->target:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v11, v11, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-direct {v4, v5, v6, v11, v12}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {v1, v4}, Lcom/google/android/gms/maps/model/CircleOptions;->center(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/CircleOptions;

    move-result-object v1

    .line 1878
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/maps/model/CircleOptions;->radius(D)Lcom/google/android/gms/maps/model/CircleOptions;

    move-result-object v1

    .line 1879
    invoke-virtual {v0, v10}, Lcom/rosteam/gpsemulator/MainActivity;->convertDpToPixel(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/model/CircleOptions;->strokeWidth(F)Lcom/google/android/gms/maps/model/CircleOptions;

    move-result-object v1

    .line 1880
    invoke-virtual {v0}, Lcom/rosteam/gpsemulator/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/rosteam/gpsemulator/R$color;->colorRuta:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/model/CircleOptions;->strokeColor(I)Lcom/google/android/gms/maps/model/CircleOptions;

    move-result-object v1

    .line 1881
    invoke-virtual {v1, v8}, Lcom/google/android/gms/maps/model/CircleOptions;->clickable(Z)Lcom/google/android/gms/maps/model/CircleOptions;

    move-result-object v1

    .line 1882
    iget-object v2, v0, Lcom/rosteam/gpsemulator/MainActivity;->map:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/maps/GoogleMap;->addCircle(Lcom/google/android/gms/maps/model/CircleOptions;)Lcom/google/android/gms/maps/model/Circle;

    move-result-object v1

    iput-object v1, v0, Lcom/rosteam/gpsemulator/MainActivity;->miCirculo:Lcom/google/android/gms/maps/model/Circle;

    .line 1883
    iget-object v1, v0, Lcom/rosteam/gpsemulator/MainActivity;->map:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v1}, Lcom/google/android/gms/maps/GoogleMap;->getCameraPosition()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v1

    invoke-static {v1, v9}, Lcom/rosteam/gpsemulator/LocationUtils;->getDelta(Lcom/google/android/gms/maps/model/CameraPosition;F)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v1

    iget-object v2, v0, Lcom/rosteam/gpsemulator/MainActivity;->map:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v2}, Lcom/google/android/gms/maps/GoogleMap;->getCameraPosition()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v2

    iget v2, v2, Lcom/google/android/gms/maps/model/CameraPosition;->zoom:F

    iget-object v3, v0, Lcom/rosteam/gpsemulator/MainActivity;->map:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v3}, Lcom/google/android/gms/maps/GoogleMap;->getCameraPosition()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v3

    iget v3, v3, Lcom/google/android/gms/maps/model/CameraPosition;->bearing:F

    invoke-virtual {v0, v1, v2, v3}, Lcom/rosteam/gpsemulator/MainActivity;->moveToFast(Lcom/google/android/gms/maps/model/LatLng;FF)V

    .line 1884
    iget-object v1, v0, Lcom/rosteam/gpsemulator/MainActivity;->favButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v8}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1886
    iget-object v1, v0, Lcom/rosteam/gpsemulator/MainActivity;->undoButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v8}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1887
    iget-object v1, v0, Lcom/rosteam/gpsemulator/MainActivity;->undoButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v7}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1888
    iget-object v1, v0, Lcom/rosteam/gpsemulator/MainActivity;->undoButton:Landroid/widget/ImageButton;

    new-instance v2, Lcom/rosteam/gpsemulator/MainActivity$19;

    invoke-direct {v2, v0}, Lcom/rosteam/gpsemulator/MainActivity$19;-><init>(Lcom/rosteam/gpsemulator/MainActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_32d

    :cond_324
    const/16 v1, 0x67

    .line 1908
    iput v1, v0, Lcom/rosteam/gpsemulator/MainActivity;->modoRuta:I

    .line 1911
    iget-object v1, v0, Lcom/rosteam/gpsemulator/MainActivity;->favButton:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->callOnClick()Z

    .line 1918
    :cond_32d
    :goto_32d
    iget-object v1, v0, Lcom/rosteam/gpsemulator/MainActivity;->startButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v8}, Landroid/widget/ImageButton;->setEnabled(Z)V

    return-void

    .line 1923
    :cond_333
    iget-object v1, v0, Lcom/rosteam/gpsemulator/MainActivity;->startButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v8}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1924
    invoke-direct {v0, v7}, Lcom/rosteam/gpsemulator/MainActivity;->launchPermissionDialog(Z)Z

    move-result v1

    if-eqz v1, :cond_33f

    :goto_33e
    return-void

    .line 1927
    :cond_33f
    iget-wide v9, v0, Lcom/rosteam/gpsemulator/MainActivity;->currentLat:D

    new-array v1, v5, [D

    aput-wide v9, v1, v7

    aput-wide v9, v1, v8

    iput-object v1, v0, Lcom/rosteam/gpsemulator/MainActivity;->lat:[D

    .line 1928
    iget-wide v9, v0, Lcom/rosteam/gpsemulator/MainActivity;->currentLong:D

    new-array v1, v5, [D

    aput-wide v9, v1, v7

    aput-wide v9, v1, v8

    iput-object v1, v0, Lcom/rosteam/gpsemulator/MainActivity;->lng:[D

    .line 1930
    iget v1, v0, Lcom/rosteam/gpsemulator/MainActivity;->modoApp:I

    const-string v9, "velocidad"

    const/4 v10, 0x0

    const/4 v11, 0x4

    if-nez v1, :cond_3a7

    if-eqz p1, :cond_375

    .line 1947
    iget-object v1, v0, Lcom/rosteam/gpsemulator/MainActivity;->map:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v1}, Lcom/google/android/gms/maps/GoogleMap;->getCameraPosition()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/maps/model/CameraPosition;->target:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v1, v1, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    iput-wide v1, v0, Lcom/rosteam/gpsemulator/MainActivity;->currentLat:D

    .line 1948
    iget-object v1, v0, Lcom/rosteam/gpsemulator/MainActivity;->map:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v1}, Lcom/google/android/gms/maps/GoogleMap;->getCameraPosition()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/maps/model/CameraPosition;->target:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v1, v1, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    iput-wide v1, v0, Lcom/rosteam/gpsemulator/MainActivity;->currentLong:D

    .line 1954
    :cond_375
    iget-object v1, v0, Lcom/rosteam/gpsemulator/MainActivity;->lat:[D

    iget-wide v2, v0, Lcom/rosteam/gpsemulator/MainActivity;->currentLat:D

    double-to-float v4, v2

    float-to-double v12, v4

    aput-wide v12, v1, v7

    .line 1955
    iget-object v4, v0, Lcom/rosteam/gpsemulator/MainActivity;->lng:[D

    iget-wide v12, v0, Lcom/rosteam/gpsemulator/MainActivity;->currentLong:D

    double-to-float v6, v12

    float-to-double v14, v6

    aput-wide v14, v4, v7

    double-to-float v2, v2

    float-to-double v2, v2

    .line 1956
    aput-wide v2, v1, v8

    double-to-float v1, v12

    float-to-double v1, v1

    .line 1957
    aput-wide v1, v4, v8

    const v1, 0x3ce38e3a

    .line 1958
    iput v1, v0, Lcom/rosteam/gpsemulator/MainActivity;->velocidad:F

    .line 1959
    iput v5, v0, Lcom/rosteam/gpsemulator/MainActivity;->loopMode:I

    .line 1961
    iget-object v1, v0, Lcom/rosteam/gpsemulator/MainActivity;->favButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v8}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1962
    iget-object v1, v0, Lcom/rosteam/gpsemulator/MainActivity;->favButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v7}, Landroid/widget/ImageButton;->setHapticFeedbackEnabled(Z)V

    .line 1963
    iget-object v1, v0, Lcom/rosteam/gpsemulator/MainActivity;->favButton:Landroid/widget/ImageButton;

    sget v2, Lcom/rosteam/gpsemulator/R$drawable;->botonfav:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto/16 :goto_44a

    :cond_3a7
    if-eq v1, v5, :cond_5b6

    if-ne v1, v4, :cond_3ad

    goto/16 :goto_5b6

    :cond_3ad
    const/4 v2, 0x5

    if-ne v1, v2, :cond_41f

    .line 2202
    iget-object v1, v0, Lcom/rosteam/gpsemulator/MainActivity;->miCirculo:Lcom/google/android/gms/maps/model/Circle;

    if-eqz v1, :cond_3c3

    .line 2203
    invoke-virtual {v1}, Lcom/google/android/gms/maps/model/Circle;->getCenter()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v1

    iget-object v2, v0, Lcom/rosteam/gpsemulator/MainActivity;->miCirculo:Lcom/google/android/gms/maps/model/Circle;

    invoke-virtual {v2}, Lcom/google/android/gms/maps/model/Circle;->getRadius()D

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/rosteam/gpsemulator/LocationUtils;->generateCirclePoints(Lcom/google/android/gms/maps/model/LatLng;D)Ljava/util/List;

    move-result-object v1

    goto :goto_3c9

    .line 2205
    :cond_3c3
    iget-object v1, v0, Lcom/rosteam/gpsemulator/MainActivity;->polyline1:Lcom/google/android/gms/maps/model/Polyline;

    invoke-virtual {v1}, Lcom/google/android/gms/maps/model/Polyline;->getPoints()Ljava/util/List;

    move-result-object v1

    .line 2208
    :goto_3c9
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [D

    iput-object v2, v0, Lcom/rosteam/gpsemulator/MainActivity;->lat:[D

    .line 2209
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [D

    iput-object v2, v0, Lcom/rosteam/gpsemulator/MainActivity;->lng:[D

    move v2, v7

    .line 2210
    :goto_3da
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3ff

    .line 2211
    iget-object v3, v0, Lcom/rosteam/gpsemulator/MainActivity;->lat:[D

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v4, v4, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    double-to-float v4, v4

    float-to-double v4, v4

    aput-wide v4, v3, v2

    .line 2212
    iget-object v3, v0, Lcom/rosteam/gpsemulator/MainActivity;->lng:[D

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v4, v4, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    double-to-float v4, v4

    float-to-double v4, v4

    aput-wide v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3da

    .line 2216
    :cond_3ff
    iget-object v1, v0, Lcom/rosteam/gpsemulator/MainActivity;->startButton:Landroid/widget/ImageButton;

    sget v2, Lcom/rosteam/gpsemulator/R$drawable;->ic_pause:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 2217
    iput v11, v0, Lcom/rosteam/gpsemulator/MainActivity;->modoApp:I

    .line 2219
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "velocidad: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v0, Lcom/rosteam/gpsemulator/MainActivity;->velocidad:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "fakegps"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_44a

    :cond_41f
    if-ne v1, v11, :cond_44a

    .line 2222
    iget-object v1, v0, Lcom/rosteam/gpsemulator/MainActivity;->startButton:Landroid/widget/ImageButton;

    sget v2, Lcom/rosteam/gpsemulator/R$drawable;->ic_play:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 2223
    iget-object v1, v0, Lcom/rosteam/gpsemulator/MainActivity;->favButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v8}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 2224
    iput v4, v0, Lcom/rosteam/gpsemulator/MainActivity;->modoApp:I

    .line 2225
    sget v1, Lcom/rosteam/gpsemulator/R$string;->route_paused:I

    invoke-virtual {v0, v1}, Lcom/rosteam/gpsemulator/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v8}, Lcom/rosteam/gpsemulator/MainActivity;->miToast(Ljava/lang/String;I)V

    .line 2226
    iget-object v1, v0, Lcom/rosteam/gpsemulator/MainActivity;->mRequestIntent:Landroid/content/Intent;

    const-string v2, "ACTION_PAUSE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2227
    iget-object v1, v0, Lcom/rosteam/gpsemulator/MainActivity;->mRequestIntent:Landroid/content/Intent;

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->startForegroundService(Landroid/content/Context;Landroid/content/Intent;)V

    .line 2228
    iget-object v1, v0, Lcom/rosteam/gpsemulator/MainActivity;->startButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v8}, Landroid/widget/ImageButton;->setEnabled(Z)V

    return-void

    .line 2233
    :cond_44a
    :goto_44a
    iget-object v1, v0, Lcom/rosteam/gpsemulator/MainActivity;->map:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v1}, Lcom/google/android/gms/maps/GoogleMap;->getCameraPosition()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v1

    iget v5, v1, Lcom/google/android/gms/maps/model/CameraPosition;->zoom:F

    .line 2235
    iget-object v1, v0, Lcom/rosteam/gpsemulator/MainActivity;->lat:[D

    aget-wide v2, v1, v7

    iget-object v1, v0, Lcom/rosteam/gpsemulator/MainActivity;->lng:[D

    aget-wide v12, v1, v7

    iget-object v1, v0, Lcom/rosteam/gpsemulator/MainActivity;->map:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v1}, Lcom/google/android/gms/maps/GoogleMap;->getCameraPosition()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v1

    iget v6, v1, Lcom/google/android/gms/maps/model/CameraPosition;->bearing:F

    move-wide v1, v2

    move-wide v3, v12

    invoke-virtual/range {v0 .. v6}, Lcom/rosteam/gpsemulator/MainActivity;->GetCiudadPais(DDFF)V

    .line 2237
    iget-object v1, v0, Lcom/rosteam/gpsemulator/MainActivity;->preferences:Landroid/content/SharedPreferences;

    const-string v2, "decimal_places"

    const-string v3, "-1"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 2239
    iget v2, v0, Lcom/rosteam/gpsemulator/MainActivity;->velocidad:F

    const v3, 0x3e8e38e4

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_488

    .line 2240
    sget v2, Lcom/rosteam/gpsemulator/R$string;->route_initiated:I

    invoke-virtual {v0, v2}, Lcom/rosteam/gpsemulator/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v8}, Lcom/rosteam/gpsemulator/MainActivity;->miToast(Ljava/lang/String;I)V

    goto :goto_4b0

    :cond_488
    if-ltz v1, :cond_4ab

    .line 2243
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/rosteam/gpsemulator/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/rosteam/gpsemulator/R$string;->location_set_to:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n(truncated)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v8}, Lcom/rosteam/gpsemulator/MainActivity;->miToast(Ljava/lang/String;I)V

    goto :goto_4b0

    .line 2245
    :cond_4ab
    sget v2, Lcom/rosteam/gpsemulator/R$string;->location_set_to:I

    invoke-virtual {v0, v2, v8}, Lcom/rosteam/gpsemulator/MainActivity;->miToast(II)V

    .line 2250
    :goto_4b0
    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {v0, v2}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_4bd

    .line 2253
    sget v2, Lcom/rosteam/gpsemulator/R$string;->location_permission_needed:I

    invoke-virtual {v0, v2, v8}, Lcom/rosteam/gpsemulator/MainActivity;->miToast(II)V

    .line 2257
    :cond_4bd
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "lat: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v3, v0, Lcom/rosteam/gpsemulator/MainActivity;->currentLat:D

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " long: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, v0, Lcom/rosteam/gpsemulator/MainActivity;->currentLong:D

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "GPSemu"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2260
    iget v2, v0, Lcom/rosteam/gpsemulator/MainActivity;->modoApp:I

    const-string v3, "com.example.android.mocklocation.LONGITUDE"

    const-string v4, "com.example.android.mocklocation.LATITUDE"

    const-string v5, "uy.digitools.RUTA"

    if-ne v2, v11, :cond_510

    .line 2261
    iget-object v2, v0, Lcom/rosteam/gpsemulator/MainActivity;->miCirculo:Lcom/google/android/gms/maps/model/Circle;

    if-eqz v2, :cond_508

    .line 2262
    iget-object v2, v0, Lcom/rosteam/gpsemulator/MainActivity;->mRequestIntent:Landroid/content/Intent;

    invoke-virtual {v2, v5}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 2263
    iget-object v2, v0, Lcom/rosteam/gpsemulator/MainActivity;->mRequestIntent:Landroid/content/Intent;

    iget-object v5, v0, Lcom/rosteam/gpsemulator/MainActivity;->lat:[D

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[D)Landroid/content/Intent;

    .line 2264
    iget-object v2, v0, Lcom/rosteam/gpsemulator/MainActivity;->mRequestIntent:Landroid/content/Intent;

    iget-object v4, v0, Lcom/rosteam/gpsemulator/MainActivity;->lng:[D

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[D)Landroid/content/Intent;

    .line 2265
    iget-object v2, v0, Lcom/rosteam/gpsemulator/MainActivity;->miCirculo:Lcom/google/android/gms/maps/model/Circle;

    invoke-virtual {v2}, Lcom/google/android/gms/maps/model/Circle;->remove()V

    .line 2266
    iput-object v10, v0, Lcom/rosteam/gpsemulator/MainActivity;->miCirculo:Lcom/google/android/gms/maps/model/Circle;

    goto :goto_523

    .line 2268
    :cond_508
    iget-object v2, v0, Lcom/rosteam/gpsemulator/MainActivity;->mRequestIntent:Landroid/content/Intent;

    iget-object v3, v0, Lcom/rosteam/gpsemulator/MainActivity;->currentRuta:Ljava/lang/String;

    invoke-virtual {v2, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_523

    .line 2271
    :cond_510
    iget-object v2, v0, Lcom/rosteam/gpsemulator/MainActivity;->mRequestIntent:Landroid/content/Intent;

    invoke-virtual {v2, v5}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 2272
    iget-object v2, v0, Lcom/rosteam/gpsemulator/MainActivity;->mRequestIntent:Landroid/content/Intent;

    iget-object v5, v0, Lcom/rosteam/gpsemulator/MainActivity;->lat:[D

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[D)Landroid/content/Intent;

    .line 2273
    iget-object v2, v0, Lcom/rosteam/gpsemulator/MainActivity;->mRequestIntent:Landroid/content/Intent;

    iget-object v4, v0, Lcom/rosteam/gpsemulator/MainActivity;->lng:[D

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[D)Landroid/content/Intent;

    .line 2276
    :goto_523
    iget-object v2, v0, Lcom/rosteam/gpsemulator/MainActivity;->mRequestIntent:Landroid/content/Intent;

    const-string v3, "com.example.android.mocklocation.CIUDADPAIS"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2277
    iget-object v2, v0, Lcom/rosteam/gpsemulator/MainActivity;->mRequestIntent:Landroid/content/Intent;

    iget v3, v0, Lcom/rosteam/gpsemulator/MainActivity;->velocidad:F

    invoke-virtual {v2, v9, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    .line 2278
    iget-object v2, v0, Lcom/rosteam/gpsemulator/MainActivity;->mRequestIntent:Landroid/content/Intent;

    const-string v3, "loopMode"

    iget v4, v0, Lcom/rosteam/gpsemulator/MainActivity;->loopMode:I

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2279
    iget-object v2, v0, Lcom/rosteam/gpsemulator/MainActivity;->mRequestIntent:Landroid/content/Intent;

    const-string v3, "ACTION_START_CONTINUOUS"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2281
    iget-object v2, v0, Lcom/rosteam/gpsemulator/MainActivity;->mRequestIntent:Landroid/content/Intent;

    invoke-static {v0, v2}, Landroidx/core/content/ContextCompat;->startForegroundService(Landroid/content/Context;Landroid/content/Intent;)V

    .line 2286
    iget-object v2, v0, Lcom/rosteam/gpsemulator/MainActivity;->currentMark:Lcom/google/android/gms/maps/model/Marker;

    if-eqz v2, :cond_54f

    invoke-virtual {v2}, Lcom/google/android/gms/maps/model/Marker;->remove()V

    .line 2291
    :cond_54f
    iget-object v2, v0, Lcom/rosteam/gpsemulator/MainActivity;->map:Lcom/google/android/gms/maps/GoogleMap;

    new-instance v3, Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct {v3}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    new-instance v4, Lcom/google/android/gms/maps/model/LatLng;

    iget-object v5, v0, Lcom/rosteam/gpsemulator/MainActivity;->lat:[D

    aget-wide v9, v5, v7

    iget-object v5, v0, Lcom/rosteam/gpsemulator/MainActivity;->lng:[D

    aget-wide v11, v5, v7

    invoke-direct {v4, v9, v10, v11, v12}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 2292
    invoke-virtual {v3, v4}, Lcom/google/android/gms/maps/model/MarkerOptions;->position(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v0, Lcom/rosteam/gpsemulator/MainActivity;->lat:[D

    aget-wide v9, v5, v7

    .line 2293
    invoke-static {v9, v10, v1}, Lcom/rosteam/gpsemulator/LocationUtils;->trunc(DI)D

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/rosteam/gpsemulator/MainActivity;->lng:[D

    aget-wide v6, v5, v7

    invoke-static {v6, v7, v1}, Lcom/rosteam/gpsemulator/LocationUtils;->trunc(DI)D

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/google/android/gms/maps/model/MarkerOptions;->title(Ljava/lang/String;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v1

    const/high16 v3, 0x41200000    # 10.0f

    .line 2294
    invoke-virtual {v1, v3}, Lcom/google/android/gms/maps/model/MarkerOptions;->zIndex(F)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v1

    sget v3, Lcom/rosteam/gpsemulator/R$drawable;->fakegpsmarker:I

    .line 2295
    invoke-static {v3}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->fromResource(I)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/android/gms/maps/model/MarkerOptions;->icon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v1

    .line 2291
    invoke-virtual {v2, v1}, Lcom/google/android/gms/maps/GoogleMap;->addMarker(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/Marker;

    move-result-object v1

    iput-object v1, v0, Lcom/rosteam/gpsemulator/MainActivity;->currentMark:Lcom/google/android/gms/maps/model/Marker;

    .line 2298
    iget-object v1, v0, Lcom/rosteam/gpsemulator/MainActivity;->stopButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v8}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 2299
    iget-object v1, v0, Lcom/rosteam/gpsemulator/MainActivity;->startButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v8}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 2301
    invoke-virtual {v0}, Lcom/rosteam/gpsemulator/MainActivity;->goPro()V

    return-void

    .line 1967
    :cond_5b6
    :goto_5b6
    iget-object v1, v0, Lcom/rosteam/gpsemulator/MainActivity;->preferences:Landroid/content/SharedPreferences;

    const-string v4, "distance_units"

    const-string v5, "0"

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1968
    iput-boolean v8, v0, Lcom/rosteam/gpsemulator/MainActivity;->metric:Z

    .line 1969
    invoke-virtual {v1, v5}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5f2

    .line 1970
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    .line 1971
    const-string v4, "US"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5db

    .line 1973
    iput-boolean v7, v0, Lcom/rosteam/gpsemulator/MainActivity;->metric:Z

    goto :goto_607

    .line 1974
    :cond_5db
    const-string v4, "LR"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5e6

    .line 1976
    iput-boolean v7, v0, Lcom/rosteam/gpsemulator/MainActivity;->metric:Z

    goto :goto_607

    .line 1977
    :cond_5e6
    const-string v4, "MM"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5ef

    goto :goto_607

    .line 1981
    :cond_5ef
    iput-boolean v8, v0, Lcom/rosteam/gpsemulator/MainActivity;->metric:Z

    goto :goto_607

    .line 1983
    :cond_5f2
    const-string v4, "1"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5fd

    .line 1984
    iput-boolean v8, v0, Lcom/rosteam/gpsemulator/MainActivity;->metric:Z

    goto :goto_607

    .line 1985
    :cond_5fd
    const-string v4, "2"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_607

    .line 1986
    iput-boolean v7, v0, Lcom/rosteam/gpsemulator/MainActivity;->metric:Z

    .line 1990
    :cond_607
    :goto_607
    invoke-virtual {v0}, Lcom/rosteam/gpsemulator/MainActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    sget v4, Lcom/rosteam/gpsemulator/R$layout;->playroute_layout:I

    invoke-virtual {v1, v4, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 1991
    sget v4, Lcom/rosteam/gpsemulator/R$id;->speed_text:I

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 1992
    sget v5, Lcom/rosteam/gpsemulator/R$id;->length_text:I

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 1993
    sget v6, Lcom/rosteam/gpsemulator/R$id;->traveltime_text:I

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 1994
    sget v6, Lcom/rosteam/gpsemulator/R$id;->group_loop:I

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RadioGroup;

    .line 1995
    sget v10, Lcom/rosteam/gpsemulator/R$id;->seek_speed:I

    invoke-virtual {v1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/SeekBar;

    .line 1996
    sget v11, Lcom/rosteam/gpsemulator/R$id;->editSpeedLayout:I

    invoke-virtual {v1, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 2000
    sget v12, Lcom/rosteam/gpsemulator/R$id;->opcStop:I

    invoke-virtual {v1, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/RadioButton;

    .line 2001
    sget v13, Lcom/rosteam/gpsemulator/R$id;->opcReverse:I

    invoke-virtual {v1, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/RadioButton;

    .line 2002
    sget v14, Lcom/rosteam/gpsemulator/R$id;->opcRestart:I

    invoke-virtual {v1, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/RadioButton;

    .line 2005
    iget-object v14, v0, Lcom/rosteam/gpsemulator/MainActivity;->preferences:Landroid/content/SharedPreferences;

    const-string v15, "loopmode"

    sget v2, Lcom/rosteam/gpsemulator/R$id;->opcStop:I

    invoke-interface {v14, v15, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 2006
    sget v3, Lcom/rosteam/gpsemulator/R$id;->opcStop:I

    if-eq v2, v3, :cond_671

    sget v3, Lcom/rosteam/gpsemulator/R$id;->opcReverse:I

    if-eq v2, v3, :cond_671

    sget v3, Lcom/rosteam/gpsemulator/R$id;->opcRestart:I

    if-eq v2, v3, :cond_671

    sget v2, Lcom/rosteam/gpsemulator/R$id;->opcStop:I

    .line 2007
    :cond_671
    invoke-virtual {v6, v2}, Landroid/widget/RadioGroup;->check(I)V

    .line 2009
    iget-object v2, v0, Lcom/rosteam/gpsemulator/MainActivity;->preferences:Landroid/content/SharedPreferences;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-interface {v2, v9, v3}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v2

    iput v2, v0, Lcom/rosteam/gpsemulator/MainActivity;->misKMxHora:F

    .line 2013
    iget-boolean v2, v0, Lcom/rosteam/gpsemulator/MainActivity;->metric:Z

    const v3, 0x3f1f122f

    if-eqz v2, :cond_696

    sget v2, Lcom/rosteam/gpsemulator/R$string;->speed:I

    iget v9, v0, Lcom/rosteam/gpsemulator/MainActivity;->misKMxHora:F

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    filled-new-array {v9}, [Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v0, v2, v9}, Lcom/rosteam/gpsemulator/MainActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_6a7

    :cond_696
    sget v2, Lcom/rosteam/gpsemulator/R$string;->speed_mph:I

    iget v9, v0, Lcom/rosteam/gpsemulator/MainActivity;->misKMxHora:F

    mul-float/2addr v9, v3

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    filled-new-array {v9}, [Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v0, v2, v9}, Lcom/rosteam/gpsemulator/MainActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_6a7
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2014
    iget v2, v0, Lcom/rosteam/gpsemulator/MainActivity;->misKMxHora:F

    const/high16 v9, 0x42c80000    # 100.0f

    mul-float/2addr v2, v9

    sub-float/2addr v2, v9

    sget v9, Lcom/rosteam/gpsemulator/MainActivity;->VEL_MAX_KM:I

    sub-int/2addr v9, v8

    int-to-float v9, v9

    div-float/2addr v2, v9

    float-to-int v2, v2

    invoke-virtual {v10, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 2019
    :try_start_6b9
    iget-object v2, v0, Lcom/rosteam/gpsemulator/MainActivity;->miCirculo:Lcom/google/android/gms/maps/model/Circle;

    if-eqz v2, :cond_6cf

    .line 2020
    invoke-virtual {v2}, Lcom/google/android/gms/maps/model/Circle;->getRadius()D

    move-result-wide v14

    const-wide v16, 0x401921fb54442d18L    # 6.283185307179586

    mul-double v14, v14, v16

    move/from16 p1, v3

    move/from16 v19, v8

    :goto_6cc
    move-object v3, v6

    goto/16 :goto_74e

    .line 2022
    :cond_6cf
    iget-object v2, v0, Lcom/rosteam/gpsemulator/MainActivity;->polyline1:Lcom/google/android/gms/maps/model/Polyline;

    invoke-virtual {v2}, Lcom/google/android/gms/maps/model/Polyline;->getPoints()Ljava/util/List;

    move-result-object v2

    .line 2023
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v9

    new-array v14, v9, [D

    .line 2024
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v15

    new-array v15, v15, [D

    move/from16 p1, v3

    move v3, v7

    .line 2025
    :goto_6e4
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7
    :try_end_6e8
    .catch Ljava/lang/Exception; {:try_start_6b9 .. :try_end_6e8} :catch_7b6

    if-ge v3, v7, :cond_712

    .line 2026
    :try_start_6ea
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/maps/model/LatLng;
    :try_end_6f0
    .catch Ljava/lang/Exception; {:try_start_6ea .. :try_end_6f0} :catch_70d

    move/from16 v19, v8

    move/from16 v20, v9

    :try_start_6f4
    iget-wide v8, v7, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    double-to-float v7, v8

    float-to-double v7, v7

    aput-wide v7, v14, v3

    .line 2027
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v7, v7, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    double-to-float v7, v7

    float-to-double v7, v7

    aput-wide v7, v15, v3

    add-int/lit8 v3, v3, 0x1

    move/from16 v8, v19

    move/from16 v9, v20

    goto :goto_6e4

    :catch_70d
    move/from16 v19, v8

    :catch_70f
    move-object v3, v6

    goto/16 :goto_7b9

    :cond_712
    move/from16 v19, v8

    move/from16 v20, v9

    const-wide/16 v2, 0x0

    const/4 v7, 0x0

    :goto_719
    add-int/lit8 v9, v20, -0x1

    if-ge v7, v9, :cond_748

    .line 2031
    new-instance v8, Lcom/google/android/gms/maps/model/LatLng;

    move-wide/from16 v16, v2

    aget-wide v2, v14, v7

    move-object v9, v14

    move-object/from16 v18, v15

    aget-wide v14, v18, v7

    invoke-direct {v8, v2, v3, v14, v15}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    new-instance v2, Lcom/google/android/gms/maps/model/LatLng;

    add-int/lit8 v7, v7, 0x1

    aget-wide v14, v9, v7
    :try_end_731
    .catch Ljava/lang/Exception; {:try_start_6f4 .. :try_end_731} :catch_70f

    move-object v3, v6

    move/from16 v21, v7

    :try_start_734
    aget-wide v6, v18, v21

    invoke-direct {v2, v14, v15, v6, v7}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-static {v8, v2}, Lcom/google/maps/android/SphericalUtil;->computeDistanceBetween(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)D

    move-result-wide v6

    add-double v6, v16, v6

    move-wide v14, v6

    move-object v6, v3

    move-wide v2, v14

    move-object v14, v9

    move-object/from16 v15, v18

    move/from16 v7, v21

    goto :goto_719

    :cond_748
    move-wide/from16 v16, v2

    move-wide/from16 v14, v16

    goto/16 :goto_6cc

    .line 2038
    :goto_74e
    iget-boolean v2, v0, Lcom/rosteam/gpsemulator/MainActivity;->metric:Z

    const-wide v6, 0x408f400000000000L    # 1000.0

    if-eqz v2, :cond_780

    cmpg-double v2, v14, v6

    if-gez v2, :cond_76d

    .line 2040
    sget v2, Lcom/rosteam/gpsemulator/R$string;->distance_meters:I

    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0, v2, v6}, Lcom/rosteam/gpsemulator/MainActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7b9

    .line 2042
    :cond_76d
    sget v2, Lcom/rosteam/gpsemulator/R$string;->distance_kilometers:I

    div-double/2addr v14, v6

    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0, v2, v6}, Lcom/rosteam/gpsemulator/MainActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7b9

    :cond_780
    div-double v6, v14, v6

    double-to-float v2, v6

    mul-float v2, v2, p1

    const v6, 0x3dcccccd    # 0.1f

    cmpg-float v6, v2, v6

    if-gez v6, :cond_7a4

    .line 2047
    sget v2, Lcom/rosteam/gpsemulator/R$string;->distance_feet:I

    const-wide v6, 0x400a3f2900000000L    # 3.2808399200439453

    mul-double/2addr v14, v6

    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0, v2, v6}, Lcom/rosteam/gpsemulator/MainActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7b9

    .line 2049
    :cond_7a4
    sget v6, Lcom/rosteam/gpsemulator/R$string;->distance_miles:I

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v6, v2}, Lcom/rosteam/gpsemulator/MainActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_7b5
    .catch Ljava/lang/Exception; {:try_start_734 .. :try_end_7b5} :catch_7b9

    goto :goto_7b9

    :catch_7b6
    move-object v3, v6

    move/from16 v19, v8

    .line 2057
    :catch_7b9
    :goto_7b9
    new-instance v2, Lcom/rosteam/gpsemulator/MainActivity$20;

    invoke-direct {v2, v0, v4, v10}, Lcom/rosteam/gpsemulator/MainActivity$20;-><init>(Lcom/rosteam/gpsemulator/MainActivity;Landroid/widget/TextView;Landroid/widget/SeekBar;)V

    invoke-virtual {v11, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2103
    new-instance v2, Lcom/rosteam/gpsemulator/MainActivity$21;

    invoke-direct {v2, v0, v10, v4}, Lcom/rosteam/gpsemulator/MainActivity$21;-><init>(Lcom/rosteam/gpsemulator/MainActivity;Landroid/widget/SeekBar;Landroid/widget/TextView;)V

    invoke-virtual {v10, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 2130
    new-instance v2, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v4, v0, Lcom/rosteam/gpsemulator/MainActivity;->ctw:Landroid/view/ContextThemeWrapper;

    sget v5, Lcom/rosteam/gpsemulator/R$style;->CustomAlertDialog:I

    invoke-direct {v2, v4, v5}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    sget v4, Lcom/rosteam/gpsemulator/R$string;->play_route:I

    .line 2131
    invoke-virtual {v2, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v2

    .line 2132
    invoke-virtual {v2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lcom/rosteam/gpsemulator/R$string;->play:I

    new-instance v4, Lcom/rosteam/gpsemulator/MainActivity$23;

    invoke-direct {v4, v0, v12, v13, v3}, Lcom/rosteam/gpsemulator/MainActivity$23;-><init>(Lcom/rosteam/gpsemulator/MainActivity;Landroid/widget/RadioButton;Landroid/widget/RadioButton;Landroid/widget/RadioGroup;)V

    .line 2133
    invoke-virtual {v1, v2, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/rosteam/gpsemulator/MainActivity$22;

    invoke-direct {v2, v0}, Lcom/rosteam/gpsemulator/MainActivity$22;-><init>(Lcom/rosteam/gpsemulator/MainActivity;)V

    const/high16 v3, 0x1040000

    .line 2192
    invoke-virtual {v1, v3, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    .line 2195
    invoke-virtual {v1}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    .line 2196
    iget-object v1, v0, Lcom/rosteam/gpsemulator/MainActivity;->startButton:Landroid/widget/ImageButton;

    move/from16 v2, v19

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    return-void
.end method

.method public onStopButtonClick(Landroid/view/View;)V
    .registers 5

    .line 2520
    iget p1, p0, Lcom/rosteam/gpsemulator/MainActivity;->modoApp:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_28

    .line 2521
    const-string p1, "onStop"

    const-string v1, "va unity interstitial..."

    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2522
    iget-boolean p1, p0, Lcom/rosteam/gpsemulator/MainActivity;->noAds:Z

    if-nez p1, :cond_28

    invoke-direct {p0}, Lcom/rosteam/gpsemulator/MainActivity;->splashNow()Z

    move-result p1

    if-eqz p1, :cond_28

    iget-boolean p1, p0, Lcom/rosteam/gpsemulator/MainActivity;->unityStopReady:Z

    if-eqz p1, :cond_28

    .line 2523
    invoke-direct {p0}, Lcom/rosteam/gpsemulator/MainActivity;->setAdBlock()V

    .line 2524
    iget-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity;->stopId:Ljava/lang/String;

    new-instance v1, Lcom/unity3d/ads/UnityAdsShowOptions;

    invoke-direct {v1}, Lcom/unity3d/ads/UnityAdsShowOptions;-><init>()V

    const/4 v2, 0x0

    invoke-static {p0, p1, v1, v2}, Lcom/unity3d/ads/UnityAds;->show(Landroid/app/Activity;Ljava/lang/String;Lcom/unity3d/ads/UnityAdsShowOptions;Lcom/unity3d/ads/IUnityAdsShowListener;)V

    .line 2527
    :cond_28
    invoke-virtual {p0, v0}, Lcom/rosteam/gpsemulator/MainActivity;->onStopClickStep2(Z)V

    return-void
.end method

.method public onStopClickStep2(Z)V
    .registers 6

    .line 2531
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "en modo ruta: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/rosteam/gpsemulator/MainActivity;->modoApp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onStop 2"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2532
    iget v0, p0, Lcom/rosteam/gpsemulator/MainActivity;->modoApp:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_9d

    .line 2533
    iget-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity;->polyline1:Lcom/google/android/gms/maps/model/Polyline;

    if-eqz p1, :cond_58

    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/Polyline;->getPoints()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_58

    .line 2534
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity;->ctw:Landroid/view/ContextThemeWrapper;

    sget v1, Lcom/rosteam/gpsemulator/R$style;->CustomAlertDialog:I

    invoke-direct {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    sget v0, Lcom/rosteam/gpsemulator/R$string;->discard_route:I

    .line 2535
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    sget v0, Lcom/rosteam/gpsemulator/R$string;->discard_question:I

    .line 2536
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    sget v0, Lcom/rosteam/gpsemulator/R$string;->discard:I

    new-instance v1, Lcom/rosteam/gpsemulator/MainActivity$31;

    invoke-direct {v1, p0}, Lcom/rosteam/gpsemulator/MainActivity$31;-><init>(Lcom/rosteam/gpsemulator/MainActivity;)V

    .line 2537
    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    sget v0, Lcom/rosteam/gpsemulator/R$string;->cancel:I

    new-instance v1, Lcom/rosteam/gpsemulator/MainActivity$30;

    invoke-direct {v1, p0}, Lcom/rosteam/gpsemulator/MainActivity$30;-><init>(Lcom/rosteam/gpsemulator/MainActivity;)V

    .line 2553
    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 2557
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void

    .line 2559
    :cond_58
    iget-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity;->polyline1:Lcom/google/android/gms/maps/model/Polyline;

    if-eqz p1, :cond_5f

    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/Polyline;->remove()V

    .line 2560
    :cond_5f
    iget-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity;->polylinePending:Lcom/google/android/gms/maps/model/Polyline;

    if-eqz p1, :cond_66

    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/Polyline;->remove()V

    .line 2562
    :cond_66
    iget-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity;->miCirculo:Lcom/google/android/gms/maps/model/Circle;

    if-eqz p1, :cond_6d

    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/Circle;->remove()V

    :cond_6d
    const/4 p1, 0x0

    .line 2563
    iput-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity;->miCirculo:Lcom/google/android/gms/maps/model/Circle;

    .line 2565
    iget-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity;->favButton:Landroid/widget/ImageButton;

    sget v0, Lcom/rosteam/gpsemulator/R$drawable;->botonfav:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 2566
    iget-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity;->favButton:Landroid/widget/ImageButton;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 2567
    iget-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity;->undoButton:Landroid/widget/ImageButton;

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 2568
    iget-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity;->undoButton:Landroid/widget/ImageButton;

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 2569
    iget-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity;->stopButton:Landroid/widget/ImageButton;

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 2570
    iput v0, p0, Lcom/rosteam/gpsemulator/MainActivity;->modoApp:I

    .line 2571
    sget p1, Lcom/rosteam/gpsemulator/R$id;->createRouteLyt:I

    invoke-virtual {p0, p1}, Lcom/rosteam/gpsemulator/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    .line 2572
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void

    .line 2575
    :cond_9d
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity;->mRequestIntent:Landroid/content/Intent;

    const-string v1, "ACTION_STOP_MAIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2581
    :try_start_a4
    const-class v0, Lcom/rosteam/gpsemulator/servicex2484;

    invoke-direct {p0, v0}, Lcom/rosteam/gpsemulator/MainActivity;->isMyServiceRunning(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_b1

    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity;->mRequestIntent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/rosteam/gpsemulator/MainActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_b1
    .catch Ljava/lang/Exception; {:try_start_a4 .. :try_end_b1} :catch_b1

    .line 2585
    :catch_b1
    :cond_b1
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 2586
    new-instance v1, Lcom/rosteam/gpsemulator/MainActivity$32;

    invoke-direct {v1, p0, p1}, Lcom/rosteam/gpsemulator/MainActivity$32;-><init>(Lcom/rosteam/gpsemulator/MainActivity;Z)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onTrimMemory(I)V
    .registers 2

    .line 4839
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onTrimMemory(I)V

    return-void
.end method

.method public onWalkingClick(Landroid/view/View;)V
    .registers 5

    const/16 v0, 0xc8

    .line 3109
    iput v0, p0, Lcom/rosteam/gpsemulator/MainActivity;->modoAutomatic:I

    .line 3110
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3111
    check-cast p1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/rosteam/gpsemulator/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/rosteam/gpsemulator/R$color;->colorAccent:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 3112
    check-cast v0, Landroid/widget/ImageView;

    const-string p1, "#999999"

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setColorFilter(I)V

    return-void
.end method

.method public reanudar()V
    .registers 8

    .line 3843
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity;->preferences:Landroid/content/SharedPreferences;

    .line 3844
    const-string v1, "lastloc"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eq v0, v2, :cond_56

    .line 3846
    invoke-static {v0}, Lcom/rosteam/gpsemulator/LocationUtils;->parsePrefToUbic(Ljava/lang/String;)Lcom/rosteam/gpsemulator/utils/RegUbic;

    move-result-object v0

    iput-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity;->ultimaUbic:Lcom/rosteam/gpsemulator/utils/RegUbic;

    .line 3847
    new-instance v0, Lcom/google/android/gms/maps/model/LatLng;

    iget-object v1, p0, Lcom/rosteam/gpsemulator/MainActivity;->ultimaUbic:Lcom/rosteam/gpsemulator/utils/RegUbic;

    iget-wide v1, v1, Lcom/rosteam/gpsemulator/utils/RegUbic;->lat:D

    iget-object v3, p0, Lcom/rosteam/gpsemulator/MainActivity;->ultimaUbic:Lcom/rosteam/gpsemulator/utils/RegUbic;

    iget-wide v3, v3, Lcom/rosteam/gpsemulator/utils/RegUbic;->lng:D

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    iget-object v1, p0, Lcom/rosteam/gpsemulator/MainActivity;->ultimaUbic:Lcom/rosteam/gpsemulator/utils/RegUbic;

    iget v1, v1, Lcom/rosteam/gpsemulator/utils/RegUbic;->zoom:F

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/rosteam/gpsemulator/MainActivity;->moveTo(Lcom/google/android/gms/maps/model/LatLng;FF)V

    .line 3849
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity;->ultimaUbic:Lcom/rosteam/gpsemulator/utils/RegUbic;

    iget-wide v2, v0, Lcom/rosteam/gpsemulator/utils/RegUbic;->lat:D

    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity;->ultimaUbic:Lcom/rosteam/gpsemulator/utils/RegUbic;

    iget-wide v4, v0, Lcom/rosteam/gpsemulator/utils/RegUbic;->lng:D

    const/4 v6, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/rosteam/gpsemulator/MainActivity;->GetTime(DDZ)V

    .line 3852
    iget-object v0, v1, Lcom/rosteam/gpsemulator/MainActivity;->stopButton:Landroid/widget/ImageButton;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 3853
    iget-object v0, v1, Lcom/rosteam/gpsemulator/MainActivity;->startButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 3854
    iget-object v0, v1, Lcom/rosteam/gpsemulator/MainActivity;->favButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 3855
    iget-object v0, v1, Lcom/rosteam/gpsemulator/MainActivity;->favButton:Landroid/widget/ImageButton;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setHapticFeedbackEnabled(Z)V

    .line 3856
    iget-object v0, v1, Lcom/rosteam/gpsemulator/MainActivity;->favButton:Landroid/widget/ImageButton;

    sget v2, Lcom/rosteam/gpsemulator/R$drawable;->botonfav:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    return-void

    :cond_56
    move-object v1, p0

    return-void
.end method

.method public reiniciarMap()V
    .registers 4

    .line 4452
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "map_mode"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity;->mapTypeValue:Ljava/lang/String;

    .line 4471
    iget-object v1, p0, Lcom/rosteam/gpsemulator/MainActivity;->map:Lcom/google/android/gms/maps/GoogleMap;

    if-nez v1, :cond_25

    .line 4472
    new-instance v0, Lcom/rosteam/gpsemulator/MainActivity$67;

    invoke-direct {v0, p0}, Lcom/rosteam/gpsemulator/MainActivity$67;-><init>(Lcom/rosteam/gpsemulator/MainActivity;)V

    .line 4494
    invoke-virtual {p0}, Lcom/rosteam/gpsemulator/MainActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    sget v2, Lcom/rosteam/gpsemulator/R$id;->map:I

    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/maps/SupportMapFragment;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/maps/SupportMapFragment;->getMapAsync(Lcom/google/android/gms/maps/OnMapReadyCallback;)V

    return-void

    .line 4496
    :cond_25
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_40

    if-eq v0, v1, :cond_39

    const/4 v1, 0x2

    if-eq v0, v1, :cond_32

    return-void

    .line 4504
    :cond_32
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity;->map:Lcom/google/android/gms/maps/GoogleMap;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMap;->setMapType(I)V

    return-void

    .line 4501
    :cond_39
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity;->map:Lcom/google/android/gms/maps/GoogleMap;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMap;->setMapType(I)V

    return-void

    .line 4498
    :cond_40
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity;->map:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMap;->setMapType(I)V

    return-void
.end method

.method public resetAll()V
    .registers 4

    .line 4422
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 4423
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 4425
    invoke-virtual {p0}, Lcom/rosteam/gpsemulator/MainActivity;->stoptimertask()V

    .line 4427
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 4428
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity;->favorites:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4429
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity;->history:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4432
    new-instance v0, Lcom/google/android/gms/maps/model/LatLng;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2, v1, v2}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lcom/rosteam/gpsemulator/MainActivity;->moveTo(Lcom/google/android/gms/maps/model/LatLng;FF)V

    .line 4434
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity;->mRequestIntent:Landroid/content/Intent;

    const-string v1, "ACTION_STOP"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4435
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity;->mRequestIntent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/rosteam/gpsemulator/MainActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 4437
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity;->currentMark:Lcom/google/android/gms/maps/model/Marker;

    if-eqz v0, :cond_37

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Marker;->remove()V

    .line 4439
    :cond_37
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity;->stopButton:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 4440
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity;->startButton:Landroid/widget/ImageButton;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 4441
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity;->favButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 4442
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity;->favButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setHapticFeedbackEnabled(Z)V

    .line 4443
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity;->favButton:Landroid/widget/ImageButton;

    sget v1, Lcom/rosteam/gpsemulator/R$drawable;->botonfav:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 4446
    invoke-virtual {p0}, Lcom/rosteam/gpsemulator/MainActivity;->reiniciarMap()V

    .line 4448
    sget v0, Lcom/rosteam/gpsemulator/R$string;->all_values_reset:I

    invoke-virtual {p0, v0, v2}, Lcom/rosteam/gpsemulator/MainActivity;->miToast(II)V

    return-void
.end method

.method public rewriteRutasEnPrefs(Ljava/util/ArrayList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/rosteam/gpsemulator/utils/RegUbic;",
            ">;)V"
        }
    .end annotation

    .line 3781
    invoke-virtual {p0}, Lcom/rosteam/gpsemulator/MainActivity;->limpiarRutas()V

    const/4 v0, 0x0

    .line 3782
    :goto_4
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1a

    .line 3783
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/rosteam/gpsemulator/utils/RegUbic;

    invoke-static {v1}, Lcom/rosteam/gpsemulator/LocationUtils;->rutaToString(Lcom/rosteam/gpsemulator/utils/RegUbic;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/rosteam/gpsemulator/MainActivity;->rutaToPrefs(Ljava/lang/String;I)Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_1a
    return-void
.end method

.method public rutaToPrefs(Ljava/lang/String;I)Ljava/lang/String;
    .registers 6

    .line 3774
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3775
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ruta"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3776
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 3777
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public searchPlace(Ljava/lang/String;I)V
    .registers 11

    .line 3476
    const-string v0, "Search..."

    const-string v1, "GPS"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3479
    const-string v0, "[-+]?\\d{1,3}([.]\\d+)?, *[-+]?\\d{1,3}([.]\\d+)?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 3480
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 3482
    const-string v2, "[-+]?\\d{1,3}([.]\\d+)?\u3001*[-+]?\\d{1,3}([.]\\d+)?"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 3483
    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 3485
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    const/high16 v4, 0x41400000    # 12.0f

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v3, :cond_6d

    .line 3486
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "es longitud y latitud "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3487
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object p1

    const-string p2, ","

    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    aget-object p1, p1, v6

    invoke-static {p1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 3488
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    aget-object p2, p2, v7

    invoke-static {p2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    .line 3489
    new-instance v0, Lcom/google/android/gms/maps/model/LatLng;

    float-to-double v1, p1

    float-to-double p1, p2

    invoke-direct {v0, v1, v2, p1, p2}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {p0, v0, v4, v5}, Lcom/rosteam/gpsemulator/MainActivity;->moveTo(Lcom/google/android/gms/maps/model/LatLng;FF)V

    return-void

    .line 3490
    :cond_6d
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_ba

    .line 3491
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "es longitud y latitud COMMA JP "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3492
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object p1

    const-string p2, "\u3001"

    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    aget-object p1, p1, v6

    invoke-static {p1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 3493
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    aget-object p2, p2, v7

    invoke-static {p2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    .line 3494
    new-instance v0, Lcom/google/android/gms/maps/model/LatLng;

    float-to-double v1, p1

    float-to-double p1, p2

    invoke-direct {v0, v1, v2, p1, p2}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {p0, v0, v4, v5}, Lcom/rosteam/gpsemulator/MainActivity;->moveTo(Lcom/google/android/gms/maps/model/LatLng;FF)V

    return-void

    .line 3503
    :cond_ba
    new-instance v0, Landroid/location/Geocoder;

    invoke-virtual {p0}, Lcom/rosteam/gpsemulator/MainActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;)V

    .line 3505
    :try_start_c3
    invoke-virtual {v0, p1, p2}, Landroid/location/Geocoder;->getFromLocationName(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity;->addresses:Ljava/util/List;

    if-eqz p1, :cond_160

    .line 3513
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ne p1, v7, :cond_f3

    .line 3514
    new-instance p1, Lcom/google/android/gms/maps/model/LatLng;

    iget-object p2, p0, Lcom/rosteam/gpsemulator/MainActivity;->addresses:Ljava/util/List;

    invoke-interface {p2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/location/Address;

    invoke-virtual {p2}, Landroid/location/Address;->getLatitude()D

    move-result-wide v0

    iget-object p2, p0, Lcom/rosteam/gpsemulator/MainActivity;->addresses:Ljava/util/List;

    invoke-interface {p2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/location/Address;

    invoke-virtual {p2}, Landroid/location/Address;->getLongitude()D

    move-result-wide v2

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    const/high16 p2, 0x41700000    # 15.0f

    invoke-virtual {p0, p1, p2, v5}, Lcom/rosteam/gpsemulator/MainActivity;->moveTo(Lcom/google/android/gms/maps/model/LatLng;FF)V

    .line 3517
    :cond_f3
    iget-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity;->addresses:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-le p1, v7, :cond_14d

    .line 3518
    new-instance p1, Landroidx/appcompat/app/AppCompatDialog;

    invoke-direct {p1, p0}, Landroidx/appcompat/app/AppCompatDialog;-><init>(Landroid/content/Context;)V

    .line 3520
    sget p2, Lcom/rosteam/gpsemulator/R$string;->selectlocation:I

    invoke-virtual {p0, p2}, Lcom/rosteam/gpsemulator/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/appcompat/app/AppCompatDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 3522
    new-instance p2, Landroid/widget/ListView;

    invoke-direct {p2, p0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 3523
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity;->addresses:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    move v1, v6

    .line 3525
    :goto_117
    iget-object v2, p0, Lcom/rosteam/gpsemulator/MainActivity;->addresses:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_130

    .line 3530
    iget-object v2, p0, Lcom/rosteam/gpsemulator/MainActivity;->addresses:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/Address;

    invoke-virtual {v2, v6}, Landroid/location/Address;->getAddressLine(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_117

    .line 3533
    :cond_130
    new-instance v1, Landroid/widget/ArrayAdapter;

    const v2, 0x1090003

    const v3, 0x1020014

    invoke-direct {v1, p0, v2, v3, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    .line 3534
    invoke-virtual {p2, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 3536
    new-instance v0, Lcom/rosteam/gpsemulator/MainActivity$55;

    invoke-direct {v0, p0, p1}, Lcom/rosteam/gpsemulator/MainActivity$55;-><init>(Lcom/rosteam/gpsemulator/MainActivity;Landroidx/appcompat/app/AppCompatDialog;)V

    invoke-virtual {p2, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 3544
    invoke-virtual {p1, p2}, Landroidx/appcompat/app/AppCompatDialog;->setContentView(Landroid/view/View;)V

    .line 3545
    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatDialog;->show()V

    return-void

    .line 3547
    :cond_14d
    iget-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity;->addresses:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_160

    .line 3548
    sget p1, Lcom/rosteam/gpsemulator/R$string;->place_not_found:I

    invoke-virtual {p0, p1, v7}, Lcom/rosteam/gpsemulator/MainActivity;->miToast(II)V
    :try_end_15a
    .catch Ljava/io/IOException; {:try_start_c3 .. :try_end_15a} :catch_15b

    return-void

    .line 3552
    :catch_15b
    sget p1, Lcom/rosteam/gpsemulator/R$string;->internet_connection_needed:I

    invoke-virtual {p0, p1, v7}, Lcom/rosteam/gpsemulator/MainActivity;->miToast(II)V

    :cond_160
    return-void
.end method

.method public stoptimertask()V
    .registers 3

    .line 4095
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity;->timer:Ljava/util/Timer;

    if-eqz v0, :cond_18

    .line 4096
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    .line 4097
    iput-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity;->timer:Ljava/util/Timer;

    .line 4098
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity;->textHoraFake:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4099
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity;->textHoraFake:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_18
    return-void
.end method

.method public switchAtuomatic(Landroid/view/View;)V
    .registers 5

    const/16 v0, 0x65

    .line 2986
    iput v0, p0, Lcom/rosteam/gpsemulator/MainActivity;->modoRuta:I

    .line 2987
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    sget v1, Lcom/rosteam/gpsemulator/R$id;->manual_route:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2988
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    sget v2, Lcom/rosteam/gpsemulator/R$id;->circle_route:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 2989
    sget v2, Lcom/rosteam/gpsemulator/R$drawable;->fondoredondo:I

    invoke-virtual {p0, v2}, Lcom/rosteam/gpsemulator/MainActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 v2, 0x0

    .line 2990
    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2991
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2992
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 2993
    sget v0, Lcom/rosteam/gpsemulator/R$id;->textoManual:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2994
    sget v0, Lcom/rosteam/gpsemulator/R$id;->textoCircle:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2995
    sget v0, Lcom/rosteam/gpsemulator/R$id;->textoAutomatic:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2996
    sget v0, Lcom/rosteam/gpsemulator/R$id;->contenidoAutomatic:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public updateLastLoc(Lcom/rosteam/gpsemulator/utils/RegUbic;)V
    .registers 7

    .line 3681
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3682
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lcom/rosteam/gpsemulator/utils/RegUbic;->ciudadpais:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v3, p1, Lcom/rosteam/gpsemulator/utils/RegUbic;->lat:D

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v3, p1, Lcom/rosteam/gpsemulator/utils/RegUbic;->lng:D

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget p1, p1, Lcom/rosteam/gpsemulator/utils/RegUbic;->zoom:F

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "lastloc"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3684
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method
