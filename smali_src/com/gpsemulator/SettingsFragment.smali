.class public Lcom/rosteam/gpsemulator/SettingsFragment;
.super Landroidx/preference/PreferenceFragmentCompat;
.source "SettingsFragment.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Lcom/android/billingclient/api/PurchasesUpdatedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rosteam/gpsemulator/SettingsFragment$InputFilterMinMax;
    }
.end annotation


# instance fields
.field activity:Landroid/app/Activity;

.field billingClient:Lcom/android/billingclient/api/BillingClient;

.field context:Landroid/content/Context;

.field editor:Landroid/content/SharedPreferences$Editor;

.field manageSubs:Landroidx/preference/Preference;

.field noAds:Z

.field prefGoPRO:Landroidx/preference/Preference;

.field prefHideNotif:Landroidx/preference/SwitchPreference;

.field prefRandomize:Landroidx/preference/SwitchPreference;

.field prefRoundUp:Landroidx/preference/DropDownPreference;

.field prefStart:Landroidx/preference/SwitchPreference;

.field prefStop:Landroidx/preference/SwitchPreference;

.field preferences:Landroid/content/SharedPreferences;

.field productDetails:Lcom/android/billingclient/api/ProductDetails;

.field purchaseDialog:Landroidx/appcompat/app/AlertDialog;


# direct methods
.method static bridge synthetic -$$Nest$mescribirEnDocumentos(Lcom/rosteam/gpsemulator/SettingsFragment;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/rosteam/gpsemulator/SettingsFragment;->escribirEnDocumentos(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$minitiatePurchase(Lcom/rosteam/gpsemulator/SettingsFragment;)V
    .registers 1

    invoke-direct {p0}, Lcom/rosteam/gpsemulator/SettingsFragment;->initiatePurchase()V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 73
    invoke-direct {p0}, Landroidx/preference/PreferenceFragmentCompat;-><init>()V

    return-void
.end method

.method private escribirEnDocumentos(Ljava/lang/String;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 684
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "export_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".gpsemu"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 688
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    const-string v3, "EscribirFILE"

    const/4 v4, 0x0

    if-lt v1, v2, :cond_96

    .line 690
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 691
    const-string v2, "_display_name"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 692
    const-string v2, "mime_type"

    const-string v5, "application/octet-stream"

    invoke-virtual {v1, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 693
    const-string v2, "relative_path"

    sget-object v5, Landroid/os/Environment;->DIRECTORY_DOCUMENTS:Ljava/lang/String;

    invoke-virtual {v1, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 695
    invoke-virtual {p0}, Lcom/rosteam/gpsemulator/SettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "external"

    invoke-static {v5}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v2, v5, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    .line 696
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Landroid/os/Environment;->DIRECTORY_DOCUMENTS:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "/"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v1, :cond_104

    .line 699
    :try_start_67
    invoke-virtual {p0}, Lcom/rosteam/gpsemulator/SettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v2
    :try_end_73
    .catch Ljava/io/IOException; {:try_start_67 .. :try_end_73} :catch_8f

    .line 700
    :try_start_73
    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_7c
    .catchall {:try_start_73 .. :try_end_7c} :catchall_83

    if-eqz v2, :cond_104

    .line 701
    :try_start_7e
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_81
    .catch Ljava/io/IOException; {:try_start_7e .. :try_end_81} :catch_8f

    goto/16 :goto_104

    :catchall_83
    move-exception p1

    if-eqz v2, :cond_8e

    .line 699
    :try_start_86
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_89
    .catchall {:try_start_86 .. :try_end_89} :catchall_8a

    goto :goto_8e

    :catchall_8a
    move-exception v2

    :try_start_8b
    invoke-virtual {p1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_8e
    :goto_8e
    throw p1
    :try_end_8f
    .catch Ljava/io/IOException; {:try_start_8b .. :try_end_8f} :catch_8f

    :catch_8f
    move-exception p1

    .line 702
    const-string v2, "Error en MediaStore"

    invoke-static {v3, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_104

    .line 707
    :cond_96
    sget-object v1, Landroid/os/Environment;->DIRECTORY_DOCUMENTS:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 708
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_a5

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 710
    :cond_a5
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 711
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 713
    :try_start_ae
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_b3
    .catch Ljava/io/IOException; {:try_start_ae .. :try_end_b3} :catch_db

    .line 714
    :try_start_b3
    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 716
    invoke-virtual {p0}, Lcom/rosteam/gpsemulator/SettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-static {p1, v5, v4, v4}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V
    :try_end_cd
    .catchall {:try_start_b3 .. :try_end_cd} :catchall_d1

    .line 717
    :try_start_cd
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_d0
    .catch Ljava/io/IOException; {:try_start_cd .. :try_end_d0} :catch_db

    goto :goto_e1

    :catchall_d1
    move-exception p1

    .line 713
    :try_start_d2
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_d5
    .catchall {:try_start_d2 .. :try_end_d5} :catchall_d6

    goto :goto_da

    :catchall_d6
    move-exception v1

    :try_start_d7
    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_da
    throw p1
    :try_end_db
    .catch Ljava/io/IOException; {:try_start_d7 .. :try_end_db} :catch_db

    :catch_db
    move-exception p1

    .line 718
    const-string v1, "Error en File"

    invoke-static {v3, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 723
    :goto_e1
    invoke-virtual {p0}, Lcom/rosteam/gpsemulator/SettingsFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 724
    invoke-virtual {p0}, Lcom/rosteam/gpsemulator/SettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ".fileprovider"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 722
    invoke-static {p1, v1, v2}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    :cond_104
    :goto_104
    if-eqz v1, :cond_13f

    .line 731
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/rosteam/gpsemulator/SettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {p1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v2, Lcom/rosteam/gpsemulator/R$string;->backup_app_data:I

    .line 732
    invoke-virtual {p0, v2}, Lcom/rosteam/gpsemulator/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    sget v2, Lcom/rosteam/gpsemulator/R$string;->backup_file_saved_to_s:I

    .line 733
    invoke-virtual {p0, v2}, Lcom/rosteam/gpsemulator/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    sget v0, Lcom/rosteam/gpsemulator/R$string;->share:I

    new-instance v2, Lcom/rosteam/gpsemulator/SettingsFragment$22;

    invoke-direct {v2, p0, v1}, Lcom/rosteam/gpsemulator/SettingsFragment$22;-><init>(Lcom/rosteam/gpsemulator/SettingsFragment;Landroid/net/Uri;)V

    .line 734
    invoke-virtual {p1, v0, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    sget v0, Lcom/rosteam/gpsemulator/R$string;->cerrar:I

    .line 746
    invoke-virtual {p1, v0, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 747
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    :cond_13f
    return-void
.end method

.method private escribirEnDocumentos2(Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    return-void
.end method

.method private initiatePurchase()V
    .registers 16

    .line 885
    const-string v0, "GPSemu"

    const-string v1, "initiate purchase"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 889
    iget-object v0, p0, Lcom/rosteam/gpsemulator/SettingsFragment;->productDetails:Lcom/android/billingclient/api/ProductDetails;

    if-eqz v0, :cond_1b6

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    move v3, v2

    .line 890
    :goto_f
    iget-object v4, p0, Lcom/rosteam/gpsemulator/SettingsFragment;->productDetails:Lcom/android/billingclient/api/ProductDetails;

    invoke-virtual {v4}, Lcom/android/billingclient/api/ProductDetails;->getSubscriptionOfferDetails()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_50

    .line 891
    iget-object v4, p0, Lcom/rosteam/gpsemulator/SettingsFragment;->productDetails:Lcom/android/billingclient/api/ProductDetails;

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

    if-eqz v4, :cond_34

    move v2, v1

    .line 894
    :cond_34
    iget-object v4, p0, Lcom/rosteam/gpsemulator/SettingsFragment;->productDetails:Lcom/android/billingclient/api/ProductDetails;

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

    if-eqz v4, :cond_4d

    move v3, v1

    :cond_4d
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 899
    :cond_50
    iget-object v1, p0, Lcom/rosteam/gpsemulator/SettingsFragment;->productDetails:Lcom/android/billingclient/api/ProductDetails;

    invoke-virtual {v1}, Lcom/android/billingclient/api/ProductDetails;->getSubscriptionOfferDetails()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/billingclient/api/ProductDetails$SubscriptionOfferDetails;

    invoke-virtual {v1}, Lcom/android/billingclient/api/ProductDetails$SubscriptionOfferDetails;->getOfferToken()Ljava/lang/String;

    move-result-object v1

    .line 901
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 904
    invoke-static {}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams;->newBuilder()Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;

    move-result-object v5

    iget-object v6, p0, Lcom/rosteam/gpsemulator/SettingsFragment;->productDetails:Lcom/android/billingclient/api/ProductDetails;

    .line 905
    invoke-virtual {v5, v6}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;->setProductDetails(Lcom/android/billingclient/api/ProductDetails;)Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;

    move-result-object v5

    .line 906
    invoke-virtual {v5, v1}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;->setOfferToken(Ljava/lang/String;)Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;

    move-result-object v1

    .line 907
    invoke-virtual {v1}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;->build()Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams;

    move-result-object v1

    .line 903
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 909
    invoke-static {}, Lcom/android/billingclient/api/BillingFlowParams;->newBuilder()Lcom/android/billingclient/api/BillingFlowParams$Builder;

    move-result-object v1

    .line 910
    invoke-virtual {v1, v4}, Lcom/android/billingclient/api/BillingFlowParams$Builder;->setProductDetailsParamsList(Ljava/util/List;)Lcom/android/billingclient/api/BillingFlowParams$Builder;

    move-result-object v1

    .line 911
    invoke-virtual {v1}, Lcom/android/billingclient/api/BillingFlowParams$Builder;->build()Lcom/android/billingclient/api/BillingFlowParams;

    move-result-object v1

    .line 914
    iget-object v4, p0, Lcom/rosteam/gpsemulator/SettingsFragment;->productDetails:Lcom/android/billingclient/api/ProductDetails;

    invoke-virtual {v4}, Lcom/android/billingclient/api/ProductDetails;->getSubscriptionOfferDetails()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/billingclient/api/ProductDetails$SubscriptionOfferDetails;

    invoke-virtual {v4}, Lcom/android/billingclient/api/ProductDetails$SubscriptionOfferDetails;->getOfferToken()Ljava/lang/String;

    move-result-object v4

    .line 916
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 919
    invoke-static {}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams;->newBuilder()Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;

    move-result-object v6

    iget-object v7, p0, Lcom/rosteam/gpsemulator/SettingsFragment;->productDetails:Lcom/android/billingclient/api/ProductDetails;

    .line 920
    invoke-virtual {v6, v7}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;->setProductDetails(Lcom/android/billingclient/api/ProductDetails;)Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;

    move-result-object v6

    .line 921
    invoke-virtual {v6, v4}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;->setOfferToken(Ljava/lang/String;)Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;

    move-result-object v4

    .line 922
    invoke-virtual {v4}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;->build()Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams;

    move-result-object v4

    .line 918
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 924
    invoke-static {}, Lcom/android/billingclient/api/BillingFlowParams;->newBuilder()Lcom/android/billingclient/api/BillingFlowParams$Builder;

    move-result-object v4

    .line 925
    invoke-virtual {v4, v5}, Lcom/android/billingclient/api/BillingFlowParams$Builder;->setProductDetailsParamsList(Ljava/util/List;)Lcom/android/billingclient/api/BillingFlowParams$Builder;

    move-result-object v4

    .line 926
    invoke-virtual {v4}, Lcom/android/billingclient/api/BillingFlowParams$Builder;->build()Lcom/android/billingclient/api/BillingFlowParams;

    move-result-object v4

    const/4 v5, 0x0

    .line 930
    :try_start_bd
    iget-object v6, p0, Lcom/rosteam/gpsemulator/SettingsFragment;->productDetails:Lcom/android/billingclient/api/ProductDetails;

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
    :try_end_d7
    .catch Ljava/lang/Exception; {:try_start_bd .. :try_end_d7} :catch_f2

    .line 931
    :try_start_d7
    iget-object v6, p0, Lcom/rosteam/gpsemulator/SettingsFragment;->productDetails:Lcom/android/billingclient/api/ProductDetails;

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
    :try_end_f1
    .catch Ljava/lang/Exception; {:try_start_d7 .. :try_end_f1} :catch_f3

    goto :goto_f4

    :catch_f2
    move-object v2, v5

    :catch_f3
    move-object v0, v5

    .line 934
    :goto_f4
    invoke-virtual {p0}, Lcom/rosteam/gpsemulator/SettingsFragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    sget v6, Lcom/rosteam/gpsemulator/R$layout;->purchase:I

    invoke-virtual {v3, v6, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 935
    sget v5, Lcom/rosteam/gpsemulator/R$id;->three_months:I

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    .line 936
    sget v6, Lcom/rosteam/gpsemulator/R$id;->text_3months:I

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 937
    sget v7, Lcom/rosteam/gpsemulator/R$id;->text_saving:I

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 939
    sget v8, Lcom/rosteam/gpsemulator/R$id;->one_month:I

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    .line 940
    sget v9, Lcom/rosteam/gpsemulator/R$id;->text_1month:I

    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 942
    sget v10, Lcom/rosteam/gpsemulator/R$id;->dismiss:I

    invoke-virtual {v3, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout;

    .line 944
    sget v11, Lcom/rosteam/gpsemulator/R$string;->money_3months:I

    invoke-virtual {v2}, Lcom/android/billingclient/api/ProductDetails$PricingPhase;->getFormattedPrice()Ljava/lang/String;

    move-result-object v12

    filled-new-array {v12}, [Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {p0, v11, v12}, Lcom/rosteam/gpsemulator/SettingsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 945
    new-instance v6, Lcom/rosteam/gpsemulator/SettingsFragment$24;

    invoke-direct {v6, p0, v1}, Lcom/rosteam/gpsemulator/SettingsFragment$24;-><init>(Lcom/rosteam/gpsemulator/SettingsFragment;Lcom/android/billingclient/api/BillingFlowParams;)V

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 953
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

    .line 955
    sget v2, Lcom/rosteam/gpsemulator/R$string;->save_money:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Lcom/rosteam/gpsemulator/SettingsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 957
    sget v1, Lcom/rosteam/gpsemulator/R$string;->money_month:I

    invoke-virtual {v0}, Lcom/android/billingclient/api/ProductDetails$PricingPhase;->getFormattedPrice()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/rosteam/gpsemulator/SettingsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 958
    new-instance v0, Lcom/rosteam/gpsemulator/SettingsFragment$25;

    invoke-direct {v0, p0, v4}, Lcom/rosteam/gpsemulator/SettingsFragment$25;-><init>(Lcom/rosteam/gpsemulator/SettingsFragment;Lcom/android/billingclient/api/BillingFlowParams;)V

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 966
    new-instance v0, Lcom/rosteam/gpsemulator/SettingsFragment$26;

    invoke-direct {v0, p0}, Lcom/rosteam/gpsemulator/SettingsFragment$26;-><init>(Lcom/rosteam/gpsemulator/SettingsFragment;)V

    invoke-virtual {v10, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 974
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/rosteam/gpsemulator/SettingsFragment;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/rosteam/gpsemulator/R$string;->upgradepro:I

    .line 975
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/rosteam/gpsemulator/R$string;->removeads:I

    .line 976
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 977
    invoke-virtual {v0, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 978
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/rosteam/gpsemulator/SettingsFragment;->purchaseDialog:Landroidx/appcompat/app/AlertDialog;

    .line 979
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->show()V

    :cond_1b6
    return-void
.end method


# virtual methods
.method public dejarPendiente()V
    .registers 3

    .line 1111
    iget-object v0, p0, Lcom/rosteam/gpsemulator/SettingsFragment;->prefGoPRO:Landroidx/preference/Preference;

    if-nez v0, :cond_c

    const-string v0, "gopro"

    invoke-virtual {p0, v0}, Lcom/rosteam/gpsemulator/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/rosteam/gpsemulator/SettingsFragment;->prefGoPRO:Landroidx/preference/Preference;

    .line 1113
    :cond_c
    :try_start_c
    iget-object v0, p0, Lcom/rosteam/gpsemulator/SettingsFragment;->prefGoPRO:Landroidx/preference/Preference;

    sget v1, Lcom/rosteam/gpsemulator/R$string;->purchase_pending:I

    invoke-virtual {p0, v1}, Lcom/rosteam/gpsemulator/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1114
    iget-object v0, p0, Lcom/rosteam/gpsemulator/SettingsFragment;->prefGoPRO:Landroidx/preference/Preference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_1d} :catch_1d

    :catch_1d
    return-void
.end method

.method public deshabilitarPRO()V
    .registers 1

    return-void
.end method

.method public habilitarPRO()V
    .registers 4

    .line 1081
    const-string v0, "pref_group_general"

    invoke-virtual {p0, v0}, Lcom/rosteam/gpsemulator/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceGroup;

    .line 1082
    iget-object v1, p0, Lcom/rosteam/gpsemulator/SettingsFragment;->prefGoPRO:Landroidx/preference/Preference;

    if-nez v1, :cond_14

    const-string v1, "gopro"

    invoke-virtual {p0, v1}, Lcom/rosteam/gpsemulator/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/rosteam/gpsemulator/SettingsFragment;->prefGoPRO:Landroidx/preference/Preference;

    :cond_14
    const/4 v1, 0x1

    .line 1083
    iput-boolean v1, p0, Lcom/rosteam/gpsemulator/SettingsFragment;->noAds:Z

    .line 1084
    iget-object v2, p0, Lcom/rosteam/gpsemulator/SettingsFragment;->prefGoPRO:Landroidx/preference/Preference;

    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 1085
    iget-object v0, p0, Lcom/rosteam/gpsemulator/SettingsFragment;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v2, "noads"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1086
    iget-object v0, p0, Lcom/rosteam/gpsemulator/SettingsFragment;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "numerofavoritos"

    const/16 v2, 0x3e8

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1087
    iget-object v0, p0, Lcom/rosteam/gpsemulator/SettingsFragment;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public hacerCompra()V
    .registers 3

    .line 857
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "HACER COMPRA Billing Client Ready: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/rosteam/gpsemulator/SettingsFragment;->billingClient:Lcom/android/billingclient/api/BillingClient;

    invoke-virtual {v1}, Lcom/android/billingclient/api/BillingClient;->isReady()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FakeGPS"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 858
    iget-object v0, p0, Lcom/rosteam/gpsemulator/SettingsFragment;->billingClient:Lcom/android/billingclient/api/BillingClient;

    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingClient;->isReady()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 859
    invoke-direct {p0}, Lcom/rosteam/gpsemulator/SettingsFragment;->initiatePurchase()V

    return-void

    .line 861
    :cond_26
    iget-object v0, p0, Lcom/rosteam/gpsemulator/SettingsFragment;->activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/billingclient/api/BillingClient;->newBuilder(Landroid/content/Context;)Lcom/android/billingclient/api/BillingClient$Builder;

    move-result-object v0

    .line 862
    invoke-virtual {v0, p0}, Lcom/android/billingclient/api/BillingClient$Builder;->setListener(Lcom/android/billingclient/api/PurchasesUpdatedListener;)Lcom/android/billingclient/api/BillingClient$Builder;

    move-result-object v0

    .line 863
    invoke-static {}, Lcom/android/billingclient/api/PendingPurchasesParams;->newBuilder()Lcom/android/billingclient/api/PendingPurchasesParams$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/billingclient/api/PendingPurchasesParams$Builder;->enableOneTimeProducts()Lcom/android/billingclient/api/PendingPurchasesParams$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/billingclient/api/PendingPurchasesParams$Builder;->build()Lcom/android/billingclient/api/PendingPurchasesParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/BillingClient$Builder;->enablePendingPurchases(Lcom/android/billingclient/api/PendingPurchasesParams;)Lcom/android/billingclient/api/BillingClient$Builder;

    move-result-object v0

    .line 864
    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingClient$Builder;->build()Lcom/android/billingclient/api/BillingClient;

    move-result-object v0

    iput-object v0, p0, Lcom/rosteam/gpsemulator/SettingsFragment;->billingClient:Lcom/android/billingclient/api/BillingClient;

    .line 866
    new-instance v1, Lcom/rosteam/gpsemulator/SettingsFragment$23;

    invoke-direct {v1, p0}, Lcom/rosteam/gpsemulator/SettingsFragment$23;-><init>(Lcom/rosteam/gpsemulator/SettingsFragment;)V

    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/BillingClient;->startConnection(Lcom/android/billingclient/api/BillingClientStateListener;)V

    return-void
.end method

.method handlePurchase(Lcom/android/billingclient/api/Purchase;)V
    .registers 5

    .line 1051
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

    .line 1052
    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->getPurchaseState()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_49

    .line 1053
    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->isAcknowledged()Z

    move-result v0

    if-nez v0, :cond_45

    .line 1054
    const-string v0, "vamos a hacer el acknowledgment"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1056
    invoke-static {}, Lcom/android/billingclient/api/AcknowledgePurchaseParams;->newBuilder()Lcom/android/billingclient/api/AcknowledgePurchaseParams$Builder;

    move-result-object v0

    .line 1057
    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->getPurchaseToken()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/billingclient/api/AcknowledgePurchaseParams$Builder;->setPurchaseToken(Ljava/lang/String;)Lcom/android/billingclient/api/AcknowledgePurchaseParams$Builder;

    move-result-object p1

    .line 1058
    invoke-virtual {p1}, Lcom/android/billingclient/api/AcknowledgePurchaseParams$Builder;->build()Lcom/android/billingclient/api/AcknowledgePurchaseParams;

    move-result-object p1

    .line 1059
    iget-object v0, p0, Lcom/rosteam/gpsemulator/SettingsFragment;->billingClient:Lcom/android/billingclient/api/BillingClient;

    new-instance v1, Lcom/rosteam/gpsemulator/SettingsFragment$28;

    invoke-direct {v1, p0}, Lcom/rosteam/gpsemulator/SettingsFragment$28;-><init>(Lcom/rosteam/gpsemulator/SettingsFragment;)V

    invoke-virtual {v0, p1, v1}, Lcom/android/billingclient/api/BillingClient;->acknowledgePurchase(Lcom/android/billingclient/api/AcknowledgePurchaseParams;Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;)V

    return-void

    .line 1068
    :cond_45
    invoke-virtual {p0}, Lcom/rosteam/gpsemulator/SettingsFragment;->habilitarPRO()V

    return-void

    .line 1070
    :cond_49
    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->getPurchaseState()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ne v0, v1, :cond_60

    .line 1071
    iget-object p1, p0, Lcom/rosteam/gpsemulator/SettingsFragment;->activity:Landroid/app/Activity;

    sget v0, Lcom/rosteam/gpsemulator/R$string;->purchase_pending:I

    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 1072
    invoke-virtual {p0}, Lcom/rosteam/gpsemulator/SettingsFragment;->dejarPendiente()V

    return-void

    .line 1073
    :cond_60
    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->getPurchaseState()I

    move-result p1

    if-nez p1, :cond_74

    .line 1074
    invoke-virtual {p0}, Lcom/rosteam/gpsemulator/SettingsFragment;->deshabilitarPRO()V

    .line 1075
    iget-object p1, p0, Lcom/rosteam/gpsemulator/SettingsFragment;->activity:Landroid/app/Activity;

    const-string v0, "Purchase Status Unknown"

    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_74
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 95
    invoke-super {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 8

    .line 119
    sget p1, Lcom/rosteam/gpsemulator/R$xml;->pref_general_dark_theme:I

    invoke-virtual {p0, p1, p2}, Lcom/rosteam/gpsemulator/SettingsFragment;->setPreferencesFromResource(ILjava/lang/String;)V

    .line 121
    invoke-virtual {p0}, Lcom/rosteam/gpsemulator/SettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/rosteam/gpsemulator/SettingsFragment;->context:Landroid/content/Context;

    .line 122
    invoke-virtual {p0}, Lcom/rosteam/gpsemulator/SettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/rosteam/gpsemulator/SettingsFragment;->activity:Landroid/app/Activity;

    .line 123
    iget-object p1, p0, Lcom/rosteam/gpsemulator/SettingsFragment;->context:Landroid/content/Context;

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/rosteam/gpsemulator/SettingsFragment;->preferences:Landroid/content/SharedPreferences;

    .line 124
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iput-object p1, p0, Lcom/rosteam/gpsemulator/SettingsFragment;->editor:Landroid/content/SharedPreferences$Editor;

    .line 125
    iget-object p1, p0, Lcom/rosteam/gpsemulator/SettingsFragment;->preferences:Landroid/content/SharedPreferences;

    const-string p2, "noads"

    const/4 v0, 0x0

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/rosteam/gpsemulator/SettingsFragment;->noAds:Z

    .line 126
    const-string p1, "gopro"

    invoke-virtual {p0, p1}, Lcom/rosteam/gpsemulator/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p2

    iput-object p2, p0, Lcom/rosteam/gpsemulator/SettingsFragment;->prefGoPRO:Landroidx/preference/Preference;

    .line 127
    const-string p2, "mngsubs"

    invoke-virtual {p0, p2}, Lcom/rosteam/gpsemulator/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p2

    iput-object p2, p0, Lcom/rosteam/gpsemulator/SettingsFragment;->manageSubs:Landroidx/preference/Preference;

    .line 129
    iget-boolean p2, p0, Lcom/rosteam/gpsemulator/SettingsFragment;->noAds:Z

    if-eqz p2, :cond_4b

    .line 130
    const-string p2, "pref_group_general"

    invoke-virtual {p0, p2}, Lcom/rosteam/gpsemulator/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p2

    check-cast p2, Landroidx/preference/PreferenceGroup;

    .line 131
    iget-object v1, p0, Lcom/rosteam/gpsemulator/SettingsFragment;->prefGoPRO:Landroidx/preference/Preference;

    invoke-virtual {p2, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 135
    :cond_4b
    iget-boolean p2, p0, Lcom/rosteam/gpsemulator/SettingsFragment;->noAds:Z

    const-string v1, "esSubs"

    const/4 v2, 0x1

    if-eqz p2, :cond_60

    iget-object p2, p0, Lcom/rosteam/gpsemulator/SettingsFragment;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {p2, v1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_60

    .line 136
    iget-object p1, p0, Lcom/rosteam/gpsemulator/SettingsFragment;->manageSubs:Landroidx/preference/Preference;

    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_94

    .line 137
    :cond_60
    iget-boolean p2, p0, Lcom/rosteam/gpsemulator/SettingsFragment;->noAds:Z

    if-eqz p2, :cond_84

    iget-object p2, p0, Lcom/rosteam/gpsemulator/SettingsFragment;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {p2, v1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-nez p2, :cond_84

    .line 138
    const-string p2, "pref_group_doyoulike"

    invoke-virtual {p0, p2}, Lcom/rosteam/gpsemulator/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p2

    check-cast p2, Landroidx/preference/PreferenceGroup;

    .line 139
    iget-object v1, p0, Lcom/rosteam/gpsemulator/SettingsFragment;->manageSubs:Landroidx/preference/Preference;

    if-nez v1, :cond_7e

    invoke-virtual {p0, p1}, Lcom/rosteam/gpsemulator/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/rosteam/gpsemulator/SettingsFragment;->manageSubs:Landroidx/preference/Preference;

    .line 140
    :cond_7e
    iget-object p1, p0, Lcom/rosteam/gpsemulator/SettingsFragment;->manageSubs:Landroidx/preference/Preference;

    invoke-virtual {p2, p1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_94

    .line 142
    :cond_84
    iget-object p1, p0, Lcom/rosteam/gpsemulator/SettingsFragment;->manageSubs:Landroidx/preference/Preference;

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 143
    iget-object p1, p0, Lcom/rosteam/gpsemulator/SettingsFragment;->manageSubs:Landroidx/preference/Preference;

    sget p2, Lcom/rosteam/gpsemulator/R$string;->manage_subs_unavailable:I

    invoke-virtual {p0, p2}, Lcom/rosteam/gpsemulator/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 146
    :goto_94
    iget-object p1, p0, Lcom/rosteam/gpsemulator/SettingsFragment;->manageSubs:Landroidx/preference/Preference;

    new-instance p2, Lcom/rosteam/gpsemulator/SettingsFragment$1;

    invoke-direct {p2, p0}, Lcom/rosteam/gpsemulator/SettingsFragment$1;-><init>(Lcom/rosteam/gpsemulator/SettingsFragment;)V

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 157
    const-string p1, "launchonstop"

    invoke-virtual {p0, p1}, Lcom/rosteam/gpsemulator/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SwitchPreference;

    iput-object p1, p0, Lcom/rosteam/gpsemulator/SettingsFragment;->prefStop:Landroidx/preference/SwitchPreference;

    .line 158
    new-instance p2, Lcom/rosteam/gpsemulator/SettingsFragment$2;

    invoke-direct {p2, p0}, Lcom/rosteam/gpsemulator/SettingsFragment$2;-><init>(Lcom/rosteam/gpsemulator/SettingsFragment;)V

    invoke-virtual {p1, p2}, Landroidx/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 180
    const-string p1, "startlastlocation"

    invoke-virtual {p0, p1}, Lcom/rosteam/gpsemulator/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SwitchPreference;

    iput-object p1, p0, Lcom/rosteam/gpsemulator/SettingsFragment;->prefStart:Landroidx/preference/SwitchPreference;

    .line 181
    new-instance p2, Lcom/rosteam/gpsemulator/SettingsFragment$3;

    invoke-direct {p2, p0}, Lcom/rosteam/gpsemulator/SettingsFragment$3;-><init>(Lcom/rosteam/gpsemulator/SettingsFragment;)V

    invoke-virtual {p1, p2}, Landroidx/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 205
    const-string p1, "hidenotif"

    invoke-virtual {p0, p1}, Lcom/rosteam/gpsemulator/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SwitchPreference;

    iput-object p1, p0, Lcom/rosteam/gpsemulator/SettingsFragment;->prefHideNotif:Landroidx/preference/SwitchPreference;

    .line 206
    new-instance p2, Lcom/rosteam/gpsemulator/SettingsFragment$4;

    invoke-direct {p2, p0}, Lcom/rosteam/gpsemulator/SettingsFragment$4;-><init>(Lcom/rosteam/gpsemulator/SettingsFragment;)V

    invoke-virtual {p1, p2}, Landroidx/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 230
    const-string p1, "randomize"

    invoke-virtual {p0, p1}, Lcom/rosteam/gpsemulator/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SwitchPreference;

    iput-object p1, p0, Lcom/rosteam/gpsemulator/SettingsFragment;->prefRandomize:Landroidx/preference/SwitchPreference;

    .line 231
    new-instance p2, Lcom/rosteam/gpsemulator/SettingsFragment$5;

    invoke-direct {p2, p0}, Lcom/rosteam/gpsemulator/SettingsFragment$5;-><init>(Lcom/rosteam/gpsemulator/SettingsFragment;)V

    invoke-virtual {p1, p2}, Landroidx/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 252
    const-string p1, "decimal_places"

    invoke-virtual {p0, p1}, Lcom/rosteam/gpsemulator/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/DropDownPreference;

    iput-object p1, p0, Lcom/rosteam/gpsemulator/SettingsFragment;->prefRoundUp:Landroidx/preference/DropDownPreference;

    .line 253
    new-instance p2, Lcom/rosteam/gpsemulator/SettingsFragment$6;

    invoke-direct {p2, p0}, Lcom/rosteam/gpsemulator/SettingsFragment$6;-><init>(Lcom/rosteam/gpsemulator/SettingsFragment;)V

    invoke-virtual {p1, p2}, Landroidx/preference/DropDownPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 275
    const-string p1, "altitude"

    invoke-virtual {p0, p1}, Lcom/rosteam/gpsemulator/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SeekBarPreference;

    .line 276
    sget p2, Lcom/rosteam/gpsemulator/R$string;->altitude_formatted:I

    iget-object v1, p0, Lcom/rosteam/gpsemulator/SettingsFragment;->preferences:Landroid/content/SharedPreferences;

    const-string v3, "altitude2"

    const/4 v4, 0x0

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, p2, v1}, Lcom/rosteam/gpsemulator/SettingsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/preference/SeekBarPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 277
    invoke-virtual {p1, v2}, Landroidx/preference/SeekBarPreference;->setUpdatesContinuously(Z)V

    .line 278
    new-instance p2, Lcom/rosteam/gpsemulator/SettingsFragment$7;

    invoke-direct {p2, p0, p1}, Lcom/rosteam/gpsemulator/SettingsFragment$7;-><init>(Lcom/rosteam/gpsemulator/SettingsFragment;Landroidx/preference/SeekBarPreference;)V

    invoke-virtual {p1, p2}, Landroidx/preference/SeekBarPreference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 308
    new-instance p2, Lcom/rosteam/gpsemulator/SettingsFragment$8;

    invoke-direct {p2, p0, p1}, Lcom/rosteam/gpsemulator/SettingsFragment$8;-><init>(Lcom/rosteam/gpsemulator/SettingsFragment;Landroidx/preference/SeekBarPreference;)V

    invoke-virtual {p1, p2}, Landroidx/preference/SeekBarPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 323
    const-string p1, "accuracy"

    invoke-virtual {p0, p1}, Lcom/rosteam/gpsemulator/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SeekBarPreference;

    .line 324
    sget p2, Lcom/rosteam/gpsemulator/R$string;->accuracy_formatted:I

    iget-object v1, p0, Lcom/rosteam/gpsemulator/SettingsFragment;->preferences:Landroid/content/SharedPreferences;

    const-string v3, "accuracy2"

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, p2, v1}, Lcom/rosteam/gpsemulator/SettingsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/preference/SeekBarPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 325
    invoke-virtual {p1, v2}, Landroidx/preference/SeekBarPreference;->setUpdatesContinuously(Z)V

    .line 326
    new-instance p2, Lcom/rosteam/gpsemulator/SettingsFragment$9;

    invoke-direct {p2, p0, p1}, Lcom/rosteam/gpsemulator/SettingsFragment$9;-><init>(Lcom/rosteam/gpsemulator/SettingsFragment;Landroidx/preference/SeekBarPreference;)V

    invoke-virtual {p1, p2}, Landroidx/preference/SeekBarPreference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 353
    new-instance p2, Lcom/rosteam/gpsemulator/SettingsFragment$10;

    invoke-direct {p2, p0, p1}, Lcom/rosteam/gpsemulator/SettingsFragment$10;-><init>(Lcom/rosteam/gpsemulator/SettingsFragment;Landroidx/preference/SeekBarPreference;)V

    invoke-virtual {p1, p2}, Landroidx/preference/SeekBarPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 369
    iget-object p1, p0, Lcom/rosteam/gpsemulator/SettingsFragment;->activity:Landroid/app/Activity;

    invoke-static {p1}, Lcom/android/billingclient/api/BillingClient;->newBuilder(Landroid/content/Context;)Lcom/android/billingclient/api/BillingClient$Builder;

    move-result-object p1

    .line 370
    invoke-virtual {p1, p0}, Lcom/android/billingclient/api/BillingClient$Builder;->setListener(Lcom/android/billingclient/api/PurchasesUpdatedListener;)Lcom/android/billingclient/api/BillingClient$Builder;

    move-result-object p1

    .line 371
    invoke-static {}, Lcom/android/billingclient/api/PendingPurchasesParams;->newBuilder()Lcom/android/billingclient/api/PendingPurchasesParams$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/billingclient/api/PendingPurchasesParams$Builder;->enableOneTimeProducts()Lcom/android/billingclient/api/PendingPurchasesParams$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/billingclient/api/PendingPurchasesParams$Builder;->build()Lcom/android/billingclient/api/PendingPurchasesParams;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/billingclient/api/BillingClient$Builder;->enablePendingPurchases(Lcom/android/billingclient/api/PendingPurchasesParams;)Lcom/android/billingclient/api/BillingClient$Builder;

    move-result-object p1

    .line 372
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingClient$Builder;->build()Lcom/android/billingclient/api/BillingClient;

    move-result-object p1

    iput-object p1, p0, Lcom/rosteam/gpsemulator/SettingsFragment;->billingClient:Lcom/android/billingclient/api/BillingClient;

    .line 374
    new-instance p2, Lcom/rosteam/gpsemulator/SettingsFragment$11;

    invoke-direct {p2, p0}, Lcom/rosteam/gpsemulator/SettingsFragment$11;-><init>(Lcom/rosteam/gpsemulator/SettingsFragment;)V

    invoke-virtual {p1, p2}, Lcom/android/billingclient/api/BillingClient;->startConnection(Lcom/android/billingclient/api/BillingClientStateListener;)V

    .line 456
    const-string p1, "policy"

    invoke-virtual {p0, p1}, Lcom/rosteam/gpsemulator/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    .line 457
    new-instance p2, Lcom/rosteam/gpsemulator/SettingsFragment$12;

    invoke-direct {p2, p0}, Lcom/rosteam/gpsemulator/SettingsFragment$12;-><init>(Lcom/rosteam/gpsemulator/SettingsFragment;)V

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 468
    const-string p1, "gdpr"

    invoke-virtual {p0, p1}, Lcom/rosteam/gpsemulator/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    .line 469
    iget-object p2, p0, Lcom/rosteam/gpsemulator/SettingsFragment;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "isEEA"

    invoke-interface {p2, v1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_1ab

    iget-boolean p2, p0, Lcom/rosteam/gpsemulator/SettingsFragment;->noAds:Z

    if-eqz p2, :cond_1ae

    :cond_1ab
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 470
    :cond_1ae
    new-instance p2, Lcom/rosteam/gpsemulator/SettingsFragment$13;

    invoke-direct {p2, p0}, Lcom/rosteam/gpsemulator/SettingsFragment$13;-><init>(Lcom/rosteam/gpsemulator/SettingsFragment;)V

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 479
    const-string p1, "mocklocation"

    invoke-virtual {p0, p1}, Lcom/rosteam/gpsemulator/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    .line 480
    new-instance p2, Lcom/rosteam/gpsemulator/SettingsFragment$14;

    invoke-direct {p2, p0}, Lcom/rosteam/gpsemulator/SettingsFragment$14;-><init>(Lcom/rosteam/gpsemulator/SettingsFragment;)V

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 509
    const-string p1, "backup"

    invoke-virtual {p0, p1}, Lcom/rosteam/gpsemulator/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    .line 510
    new-instance p2, Lcom/rosteam/gpsemulator/SettingsFragment$15;

    invoke-direct {p2, p0}, Lcom/rosteam/gpsemulator/SettingsFragment$15;-><init>(Lcom/rosteam/gpsemulator/SettingsFragment;)V

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 564
    const-string p1, "map_mode"

    invoke-virtual {p0, p1}, Lcom/rosteam/gpsemulator/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    .line 565
    new-instance p2, Lcom/rosteam/gpsemulator/SettingsFragment$16;

    invoke-direct {p2, p0}, Lcom/rosteam/gpsemulator/SettingsFragment$16;-><init>(Lcom/rosteam/gpsemulator/SettingsFragment;)V

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 574
    const-string p1, "resetall"

    invoke-virtual {p0, p1}, Lcom/rosteam/gpsemulator/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    .line 575
    new-instance p2, Lcom/rosteam/gpsemulator/SettingsFragment$17;

    invoke-direct {p2, p0}, Lcom/rosteam/gpsemulator/SettingsFragment$17;-><init>(Lcom/rosteam/gpsemulator/SettingsFragment;)V

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 607
    iget-object p1, p0, Lcom/rosteam/gpsemulator/SettingsFragment;->prefGoPRO:Landroidx/preference/Preference;

    new-instance p2, Lcom/rosteam/gpsemulator/SettingsFragment$18;

    invoke-direct {p2, p0}, Lcom/rosteam/gpsemulator/SettingsFragment$18;-><init>(Lcom/rosteam/gpsemulator/SettingsFragment;)V

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 615
    const-string p1, "tellfriends"

    invoke-virtual {p0, p1}, Lcom/rosteam/gpsemulator/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    .line 616
    new-instance p2, Lcom/rosteam/gpsemulator/SettingsFragment$19;

    invoke-direct {p2, p0}, Lcom/rosteam/gpsemulator/SettingsFragment$19;-><init>(Lcom/rosteam/gpsemulator/SettingsFragment;)V

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 627
    const-string p1, "rateus"

    invoke-virtual {p0, p1}, Lcom/rosteam/gpsemulator/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    .line 628
    new-instance p2, Lcom/rosteam/gpsemulator/SettingsFragment$20;

    invoke-direct {p2, p0}, Lcom/rosteam/gpsemulator/SettingsFragment$20;-><init>(Lcom/rosteam/gpsemulator/SettingsFragment;)V

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 645
    const-string p1, "qrtools"

    invoke-virtual {p0, p1}, Lcom/rosteam/gpsemulator/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    .line 646
    new-instance p2, Lcom/rosteam/gpsemulator/SettingsFragment$21;

    invoke-direct {p2, p0}, Lcom/rosteam/gpsemulator/SettingsFragment$21;-><init>(Lcom/rosteam/gpsemulator/SettingsFragment;)V

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    return-void
.end method

.method public onPause()V
    .registers 2

    .line 107
    invoke-super {p0}, Landroidx/preference/PreferenceFragmentCompat;->onPause()V

    .line 108
    invoke-virtual {p0}, Lcom/rosteam/gpsemulator/SettingsFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 109
    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

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

    .line 988
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v0

    if-nez v0, :cond_23

    if-eqz p2, :cond_23

    .line 989
    iget-object p1, p0, Lcom/rosteam/gpsemulator/SettingsFragment;->purchaseDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz p1, :cond_f

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->dismiss()V

    .line 990
    :cond_f
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_13
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/billingclient/api/Purchase;

    .line 991
    invoke-virtual {p0, p2}, Lcom/rosteam/gpsemulator/SettingsFragment;->handlePurchase(Lcom/android/billingclient/api/Purchase;)V

    goto :goto_13

    .line 995
    :cond_23
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result p2

    const/4 v0, 0x7

    if-ne p2, v0, :cond_43

    .line 1007
    iget-object p1, p0, Lcom/rosteam/gpsemulator/SettingsFragment;->billingClient:Lcom/android/billingclient/api/BillingClient;

    .line 1008
    invoke-static {}, Lcom/android/billingclient/api/QueryPurchasesParams;->newBuilder()Lcom/android/billingclient/api/QueryPurchasesParams$Builder;

    move-result-object p2

    const-string v0, "subs"

    invoke-virtual {p2, v0}, Lcom/android/billingclient/api/QueryPurchasesParams$Builder;->setProductType(Ljava/lang/String;)Lcom/android/billingclient/api/QueryPurchasesParams$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/billingclient/api/QueryPurchasesParams$Builder;->build()Lcom/android/billingclient/api/QueryPurchasesParams;

    move-result-object p2

    new-instance v0, Lcom/rosteam/gpsemulator/SettingsFragment$27;

    invoke-direct {v0, p0}, Lcom/rosteam/gpsemulator/SettingsFragment$27;-><init>(Lcom/rosteam/gpsemulator/SettingsFragment;)V

    .line 1007
    invoke-virtual {p1, p2, v0}, Lcom/android/billingclient/api/BillingClient;->queryPurchasesAsync(Lcom/android/billingclient/api/QueryPurchasesParams;Lcom/android/billingclient/api/PurchasesResponseListener;)V

    return-void

    .line 1041
    :cond_43
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_4b

    :cond_4a
    return-void

    .line 1046
    :cond_4b
    iget-object p2, p0, Lcom/rosteam/gpsemulator/SettingsFragment;->activity:Landroid/app/Activity;

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

.method public onResume()V
    .registers 2

    .line 100
    invoke-super {p0}, Landroidx/preference/PreferenceFragmentCompat;->onResume()V

    .line 101
    invoke-virtual {p0}, Lcom/rosteam/gpsemulator/SettingsFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 102
    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .registers 4

    .line 839
    const-string p1, "dark_mode"

    invoke-virtual {p2, p1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_29

    .line 840
    iget-object p2, p0, Lcom/rosteam/gpsemulator/SettingsFragment;->preferences:Landroid/content/SharedPreferences;

    const-string v0, "0"

    invoke-interface {p2, p1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 841
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_25

    const/4 p2, 0x2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_21

    if-eq p1, p2, :cond_1d

    goto :goto_29

    .line 849
    :cond_1d
    invoke-static {v0}, Landroidx/appcompat/app/AppCompatDelegate;->setDefaultNightMode(I)V

    return-void

    .line 846
    :cond_21
    invoke-static {p2}, Landroidx/appcompat/app/AppCompatDelegate;->setDefaultNightMode(I)V

    return-void

    :cond_25
    const/4 p1, -0x1

    .line 843
    invoke-static {p1}, Landroidx/appcompat/app/AppCompatDelegate;->setDefaultNightMode(I)V

    :cond_29
    :goto_29
    return-void
.end method
