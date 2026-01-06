.class public Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataManager;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# static fields
.field private static final ACTION_USE_APP_FEATURE_SURVEY:Ljava/lang/String; = "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

.field private static final ACTION_USE_MULTI_APP_FEATURE_SURVEY:Ljava/lang/String; = "com.samsung.android.providers.context.log.action.USE_MULTI_APP_FEATURE_SURVEY"

.field public static final APP_ID:Ljava/lang/String; = "android.net.wifi"

.field private static final ARGS_APP_ID_STR:Ljava/lang/String; = "app_id"

.field private static final ARGS_DATA_STR:Ljava/lang/String; = "data"

.field private static final ARGS_EXTRA_STR:Ljava/lang/String; = "extra"

.field private static final ARGS_FEATURE_NAME:Ljava/lang/String; = "feature"

.field private static final ARGS_VALUE_STR:Ljava/lang/String; = "value"

.field private static DBG:Z = false

.field public static final ENABLE_SURVEY_MODE:Z

.field public static final ENABLE_UNIFIED_HQM_SERVER:Z = true

.field public static final FEATURE_MIWC:Ljava/lang/String; = "MIWC"

.field private static final PACKAGE_NAME_SURVEY:Ljava/lang/String; = "com.samsung.android.providers.context"

.field private static final TAG:Ljava/lang/String; = "SemIwcBigDataManager"


# instance fields
.field public final mBigDataFeatures:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataFeature;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mSemHqmManager:Landroid/os/SemHqmManager;

.field private final mWifiDriverVersionProvider:Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sput-boolean v0, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataManager;->DBG:Z

    .line 6
    .line 7
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const-string v1, "TRUE"

    .line 18
    .line 19
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    sput-boolean v0, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataManager;->ENABLE_SURVEY_MODE:Z

    .line 24
    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataManager;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiVersionProvider()Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataManager;->mWifiDriverVersionProvider:Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;

    .line 15
    .line 16
    new-instance v0, Ljava/util/HashMap;

    .line 17
    .line 18
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataManager;->mBigDataFeatures:Ljava/util/HashMap;

    .line 22
    .line 23
    const-string v0, "HqmManagerService"

    .line 24
    .line 25
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    check-cast p1, Landroid/os/SemHqmManager;

    .line 30
    .line 31
    iput-object p1, p0, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataManager;->mSemHqmManager:Landroid/os/SemHqmManager;

    .line 32
    .line 33
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataManager;->initialize()V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method private initialize()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataManager;->mBigDataFeatures:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataManager;->mBigDataFeatures:Ljava/util/HashMap;

    .line 7
    .line 8
    new-instance v0, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataMIWC;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataMIWC;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v1, "MIWC"

    .line 14
    .line 15
    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method private sendBroadcastToContextFramework(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 5

    .line 1
    const-string v0, "{"

    sget-boolean v1, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataManager;->DBG:Z

    const-string v2, "SemIwcBigDataManager"

    if-eqz v1, :cond_0

    const-string v1, "sendBroadcastToContextFramework - feature : "

    const-string v3, ", extra : "

    const-string v4, ", value : "

    .line 2
    invoke-static {v1, p1, v3, p2, v4}, Lcom/samsung/android/mcf/continuity/streaming/ContinuityStreamingJSONHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3
    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    :cond_0
    :try_start_0
    sget-boolean v1, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataManager;->ENABLE_SURVEY_MODE:Z

    if-nez v1, :cond_1

    .line 5
    sget-boolean p0, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataManager;->DBG:Z

    if-eqz p0, :cond_6

    const-string p0, "survey mode is not enabled"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_1
    if-nez p1, :cond_2

    .line 6
    sget-boolean p0, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataManager;->DBG:Z

    if-eqz p0, :cond_6

    const-string p0, "feature is not enabled"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 7
    :cond_2
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 8
    const-string v3, "app_id"

    const-string v4, "android.net.wifi"

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    const-string v3, "feature"

    invoke-virtual {v1, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_4

    .line 10
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_4

    const/4 p1, 0x0

    .line 11
    invoke-virtual {p2, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v3, 0x7b

    const-string v4, "extra"

    if-ne p1, v3, :cond_3

    .line 12
    :try_start_1
    invoke-virtual {v1, v4, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 13
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "}"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_0
    const-wide/16 p1, -0x1

    cmp-long p1, p3, p1

    if-eqz p1, :cond_5

    .line 14
    const-string p1, "value"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 15
    :cond_5
    new-instance p1, Landroid/content/Intent;

    const-string p2, "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 16
    const-string p2, "data"

    invoke-virtual {p1, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 17
    const-string p2, "com.samsung.android.providers.context"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 18
    iget-object p0, p0, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataManager;->mContext:Landroid/content/Context;

    sget-object p2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    .line 19
    :goto_1
    const-string p1, "Exception occured on sendBroadcastToContextFramework:"

    .line 20
    invoke-static {p1, p0}, Lcom/samsung/android/server/wifi/SemL4sController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p1

    .line 21
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_6
    return-void
.end method

.method private sendBroadcastToContextFramework([Ljava/lang/String;[Ljava/lang/String;[J)V
    .locals 8

    .line 33
    const-string v0, "SemIwcBigDataManager"

    const-string v1, "sendBroadcastToContextFramework - features : "

    :try_start_0
    sget-boolean v2, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataManager;->DBG:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v1, p1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", extras : "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, p2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", values : "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, p3

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_0
    move-exception p0

    goto/16 :goto_3

    .line 34
    :cond_0
    :goto_0
    sget-boolean v1, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataManager;->ENABLE_SURVEY_MODE:Z

    if-nez v1, :cond_1

    .line 35
    sget-boolean p0, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataManager;->DBG:Z

    if-eqz p0, :cond_7

    const-string p0, "survey mode is not enabled"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    if-nez p1, :cond_2

    .line 36
    sget-boolean p0, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataManager;->DBG:Z

    if-eqz p0, :cond_7

    const-string p0, "feature is not enabled"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 37
    :cond_2
    array-length v1, p2

    new-array v1, v1, [Landroid/content/ContentValues;

    const/4 v2, 0x0

    move v3, v2

    .line 38
    :goto_1
    array-length v4, p1

    if-ge v3, v4, :cond_6

    .line 39
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    aput-object v4, v1, v3

    .line 40
    const-string v5, "app_id"

    const-string v6, "android.net.wifi"

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    aget-object v4, v1, v3

    const-string v5, "feature"

    aget-object v6, p1, v3

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    aget-object v4, p2, v3

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_4

    .line 43
    aget-object v4, p2, v3

    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v5, 0x7b

    const-string v6, "extra"

    if-ne v4, v5, :cond_3

    .line 44
    :try_start_1
    aget-object v4, v1, v3

    aget-object v5, p2, v3

    invoke-virtual {v4, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 45
    :cond_3
    aget-object v4, v1, v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "{"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v7, p2, v3

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "}"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    :cond_4
    :goto_2
    aget-wide v4, p3, v3

    const-wide/16 v6, -0x1

    cmp-long v6, v4, v6

    if-eqz v6, :cond_5

    .line 47
    aget-object v6, v1, v3

    const-string v7, "value"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v6, v7, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 48
    :cond_6
    new-instance p1, Landroid/content/Intent;

    const-string p2, "com.samsung.android.providers.context.log.action.USE_MULTI_APP_FEATURE_SURVEY"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 49
    const-string p2, "data"

    invoke-virtual {p1, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 50
    const-string p2, "com.samsung.android.providers.context"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 51
    iget-object p0, p0, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    .line 52
    :goto_3
    const-string p1, "Exception occured on sendBroadcastToContextFramework:"

    .line 53
    invoke-static {p1, p0}, Lcom/samsung/android/server/wifi/SemL4sController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p1

    .line 54
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_7
    return-void
.end method

.method private sendHWParamToHQMwithAppId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataManager;->mSemHqmManager:Landroid/os/SemHqmManager;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    sget-boolean v0, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataManager;->DBG:Z

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    const-string v0, "send H/W Parameters to HQM with appid - feature : "

    .line 13
    .line 14
    const-string v1, ", logmaps : "

    .line 15
    .line 16
    invoke-static {v0, p1, v1, p3}, Lcom/samsung/android/mcf/continuity/streaming/ContinuityStreamingJSONHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const-string v1, "SemIwcBigDataManager"

    .line 21
    .line 22
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataManager;->mWifiDriverVersionProvider:Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->getWifiChipVendor()Lcom/samsung/android/server/wifi/driver/WifiChipVendor;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v7

    .line 35
    iget-object v0, p0, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataManager;->mWifiDriverVersionProvider:Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;

    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->getCidInfo()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v6

    .line 41
    iget-object v1, p0, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataManager;->mSemHqmManager:Landroid/os/SemHqmManager;

    .line 42
    .line 43
    const-string v11, "android.net.wifi"

    .line 44
    .line 45
    const/4 v2, 0x0

    .line 46
    const-string v3, "WiFi"

    .line 47
    .line 48
    const-string v8, ""

    .line 49
    .line 50
    const-string v10, ""

    .line 51
    .line 52
    move-object v4, p1

    .line 53
    move-object v5, p2

    .line 54
    move-object v9, p3

    .line 55
    invoke-virtual/range {v1 .. v11}, Landroid/os/SemHqmManager;->sendHWParamToHQMwithAppId(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 56
    .line 57
    .line 58
    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public addOrUpdateFeatureAllValue(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataManager;->mBigDataFeatures:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object p0, p0, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataManager;->mBigDataFeatures:Ljava/util/HashMap;

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    check-cast p0, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataFeature;

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataFeature;->addOrUpdateAllValue()V

    .line 18
    .line 19
    .line 20
    const/4 p0, 0x1

    .line 21
    return p0

    .line 22
    :cond_0
    const/4 p0, 0x0

    .line 23
    return p0
.end method

.method public addOrUpdateFeatureValue(Ljava/lang/String;Ljava/lang/String;D)Z
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataManager;->mBigDataFeatures:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    iget-object p0, p0, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataManager;->mBigDataFeatures:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataFeature;

    invoke-virtual {p0, p2, p3, p4}, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataFeature;->addOrUpdateValue(Ljava/lang/String;D)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public addOrUpdateFeatureValue(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataManager;->mBigDataFeatures:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataManager;->mBigDataFeatures:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataFeature;

    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataFeature;->addOrUpdateValue(Ljava/lang/String;I)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public addOrUpdateFeatureValue(Ljava/lang/String;Ljava/lang/String;J)Z
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataManager;->mBigDataFeatures:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object p0, p0, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataManager;->mBigDataFeatures:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataFeature;

    invoke-virtual {p0, p2, p3, p4}, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataFeature;->addOrUpdateValue(Ljava/lang/String;J)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public addOrUpdateFeatureValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataManager;->mBigDataFeatures:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10
    iget-object p0, p0, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataManager;->mBigDataFeatures:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataFeature;

    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataFeature;->addOrUpdateValue(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public addOrUpdateFeatureValue(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataManager;->mBigDataFeatures:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8
    iget-object p0, p0, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataManager;->mBigDataFeatures:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataFeature;

    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataFeature;->addOrUpdateValue(Ljava/lang/String;Z)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public addOrUpdateFeatureValue(Ljava/lang/String;Ljava/util/HashMap;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 11
    iget-object v0, p0, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataManager;->mBigDataFeatures:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 12
    iget-object p0, p0, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataManager;->mBigDataFeatures:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataFeature;

    invoke-virtual {p0, p2}, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataFeature;->addOrUpdateValues(Ljava/util/HashMap;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public clearAllFeatures()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataManager;->mBigDataFeatures:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object p0, p0, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataManager;->mBigDataFeatures:Ljava/util/HashMap;

    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataFeature;

    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataFeature;->resetData()V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const/4 p0, 0x0

    .line 36
    return p0
.end method

.method public clearFeature(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataManager;->mBigDataFeatures:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object p0, p0, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataManager;->mBigDataFeatures:Ljava/util/HashMap;

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    check-cast p0, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataFeature;

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataFeature;->resetData()V

    .line 18
    .line 19
    .line 20
    const/4 p0, 0x1

    .line 21
    return p0

    .line 22
    :cond_0
    const/4 p0, 0x0

    .line 23
    return p0
.end method

.method public getBigDataFeature(Ljava/lang/String;)Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataFeature;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataManager;->mBigDataFeatures:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object p0, p0, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataManager;->mBigDataFeatures:Ljava/util/HashMap;

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    check-cast p0, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataFeature;

    .line 16
    .line 17
    return-object p0

    .line 18
    :cond_0
    const/4 p0, 0x0

    .line 19
    return-object p0
.end method

.method public insertLog(Ljava/lang/String;)V
    .locals 2

    const-wide/16 v0, -0x1

    .line 1
    invoke-virtual {p0, p1, v0, v1}, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataManager;->insertLog(Ljava/lang/String;J)V

    return-void
.end method

.method public insertLog(Ljava/lang/String;J)V
    .locals 3

    const-wide/16 v0, 0x3

    cmp-long v0, p2, v0

    if-nez v0, :cond_0

    .line 2
    const-string v0, "sm"

    goto :goto_0

    .line 3
    :cond_0
    const-string v0, "ph"

    .line 4
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataManager;->mBigDataFeatures:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 5
    iget-object v1, p0, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataManager;->mBigDataFeatures:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataFeature;

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataFeature;->getJsonFormat()Ljava/lang/String;

    move-result-object v1

    .line 6
    iget-object v2, p0, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataManager;->mBigDataFeatures:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataFeature;

    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataFeature;->getIsDqaEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 7
    iget-object v2, p0, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataManager;->mBigDataFeatures:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataFeature;

    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataFeature;->getDqaFeatureName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 8
    iget-object v2, p0, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataManager;->mBigDataFeatures:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataFeature;

    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataFeature;->getDqaFeatureName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v0, v1}, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataManager;->sendHWParamToHQMwithAppId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 9
    :cond_1
    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataManager;->sendHWParamToHQMwithAppId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    :cond_2
    :goto_1
    invoke-direct {p0, p1, v1, p2, p3}, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataManager;->sendBroadcastToContextFramework(Ljava/lang/String;Ljava/lang/String;J)V

    :cond_3
    return-void
.end method

.method public insertLog(Ljava/lang/String;Z)V
    .locals 6

    if-eqz p2, :cond_2

    .line 11
    iget-object p2, p0, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataManager;->mBigDataFeatures:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 12
    iget-object p2, p0, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataManager;->mBigDataFeatures:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataFeature;

    invoke-virtual {p2}, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataFeature;->getJsonFormatArray()[Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 13
    array-length v0, p2

    new-array v1, v0, [Ljava/lang/String;

    .line 14
    array-length v2, p2

    new-array v2, v2, [J

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    .line 15
    aput-object p1, v1, v3

    const-wide/16 v4, -0x1

    .line 16
    aput-wide v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 17
    :cond_0
    invoke-direct {p0, v1, p2, v2}, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataManager;->sendBroadcastToContextFramework([Ljava/lang/String;[Ljava/lang/String;[J)V

    :cond_1
    return-void

    .line 18
    :cond_2
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataManager;->insertLog(Ljava/lang/String;)V

    return-void
.end method

.method public insertLog(Ljava/lang/String;[Ljava/lang/String;Z)V
    .locals 5

    .line 19
    sget-boolean v0, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataManager;->ENABLE_SURVEY_MODE:Z

    const-string v1, "SemIwcBigDataManager"

    if-nez v0, :cond_0

    .line 20
    sget-boolean p0, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataManager;->DBG:Z

    if-eqz p0, :cond_4

    const-string p0, "survey mode is not enabled"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 21
    sget-boolean p0, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataManager;->DBG:Z

    if-eqz p0, :cond_4

    const-string p0, "feature is not enabled"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    if-nez p2, :cond_2

    goto :goto_1

    .line 22
    :cond_2
    array-length v0, p2

    new-array v1, v0, [Ljava/lang/String;

    .line 23
    array-length v2, p2

    new-array v2, v2, [J

    if-eqz p3, :cond_5

    .line 24
    iget-object p3, p0, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataManager;->mBigDataFeatures:Ljava/util/HashMap;

    invoke-virtual {p3, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_4

    const/4 p3, 0x0

    :goto_0
    if-ge p3, v0, :cond_3

    .line 25
    aput-object p1, v1, p3

    const-wide/16 v3, -0x1

    .line 26
    aput-wide v3, v2, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 27
    :cond_3
    invoke-direct {p0, v1, p2, v2}, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataManager;->sendBroadcastToContextFramework([Ljava/lang/String;[Ljava/lang/String;[J)V

    :cond_4
    :goto_1
    return-void

    .line 28
    :cond_5
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataManager;->insertLog(Ljava/lang/String;)V

    return-void
.end method
