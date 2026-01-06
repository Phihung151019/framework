.class public Lcom/android/internal/telephony/data/DataSettingsManager;
.super Landroid/os/Handler;
.source "DataSettingsManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/data/DataSettingsManager$DataSettingsManagerCallback;,
        Lcom/android/internal/telephony/data/DataSettingsManager$ActiveDataSubIdListener;
    }
.end annotation


# static fields
.field public static final blacklist ACTION_CARRIER_CHANGED:Ljava/lang/String; = "com.samsung.carrier.action.CARRIER_CHANGED"

.field public static final blacklist EXTRA_CARRIER_STATE:Ljava/lang/String; = "com.samsung.carrier.extra.CARRIER_STATE"


# instance fields
.field private final blacklist mActiveDataSubIdListener:Lcom/android/internal/telephony/data/DataSettingsManager$ActiveDataSubIdListener;

.field private final blacklist mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

.field private final blacklist mDataEnabledSettings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mDataSettingsManagerCallbacks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/internal/telephony/data/DataSettingsManager$DataSettingsManagerCallback;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mEnabledMobileDataPolicy:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

.field private blacklist mInitialized:Z

.field private blacklist mIsDataEnabled:Z

.field private blacklist mIsFactoryReset:Z

.field private final blacklist mLocalLog:Lcom/android/internal/telephony/LocalLog;

.field private final blacklist mLogTag:Ljava/lang/String;

.field private final blacklist mPhone:Lcom/android/internal/telephony/Phone;

.field private final blacklist mResolver:Landroid/content/ContentResolver;

.field private final blacklist mSettingsObserver:Lcom/android/internal/telephony/SettingsObserver;

.field private blacklist mSubId:I


# direct methods
.method public static synthetic blacklist $r8$lambda$7BJP4CCaqIz14lIbBM2Xq8SFxFo(ZILcom/android/internal/telephony/data/DataSettingsManager$DataSettingsManagerCallback;)V
    .locals 1

    .line 1062
    new-instance v0, Lcom/android/internal/telephony/data/DataSettingsManager$$ExternalSyntheticLambda10;

    invoke-direct {v0, p2, p0, p1}, Lcom/android/internal/telephony/data/DataSettingsManager$$ExternalSyntheticLambda10;-><init>(Lcom/android/internal/telephony/data/DataSettingsManager$DataSettingsManagerCallback;ZI)V

    invoke-virtual {p2, v0}, Lcom/android/internal/telephony/data/DataCallback;->invokeFromExecutor(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$Fn79WJcBX667TkouCEAHC07q5Zo(Lcom/android/internal/telephony/data/DataSettingsManager$DataSettingsManagerCallback;Z)V
    .locals 0

    .line 774
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/DataSettingsManager$DataSettingsManagerCallback;->onDataRoamingEnabledChanged(Z)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$JRahrLntf21lY34T2Bi_Y7ShCIw(ZLjava/lang/String;Lcom/android/internal/telephony/data/DataSettingsManager$DataSettingsManagerCallback;)V
    .locals 1

    .line 610
    new-instance v0, Lcom/android/internal/telephony/data/DataSettingsManager$$ExternalSyntheticLambda9;

    invoke-direct {v0, p2, p0, p1}, Lcom/android/internal/telephony/data/DataSettingsManager$$ExternalSyntheticLambda9;-><init>(Lcom/android/internal/telephony/data/DataSettingsManager$DataSettingsManagerCallback;ZLjava/lang/String;)V

    invoke-virtual {p2, v0}, Lcom/android/internal/telephony/data/DataCallback;->invokeFromExecutor(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$Jmk3Z7ZPXEVUeDU6K6DWcnoAEjY(Lcom/android/internal/telephony/data/DataSettingsManager$DataSettingsManagerCallback;ZI)V
    .locals 0

    .line 1063
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/data/DataSettingsManager$DataSettingsManagerCallback;->onDataEnabledOverrideChanged(ZI)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$c4V_xkcFpFpeCSzSDdkutbnnisg(Lcom/android/internal/telephony/data/DataSettingsManager$DataSettingsManagerCallback;ZLjava/lang/String;)V
    .locals 0

    .line 611
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/data/DataSettingsManager$DataSettingsManagerCallback;->onUserDataEnabledChanged(ZLjava/lang/String;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$kb2w6PJhbRuqdNuYuNhXfcAnOsI(Lcom/android/internal/telephony/data/DataSettingsManager$DataSettingsManagerCallback;ZILjava/lang/String;)V
    .locals 0

    .line 1055
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/data/DataSettingsManager$DataSettingsManagerCallback;->onDataEnabledChanged(ZILjava/lang/String;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$ngl0PFSCMfW75YYqA6AqgIC_Ago(Ljava/util/Map$Entry;)Ljava/lang/String;
    .locals 2

    .line 1245
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/android/internal/telephony/data/DataSettingsManager;->dataEnabledChangedReasonToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$pOMrdJZfGKgOTfsxULrHkxPh-Gg(ZILjava/lang/String;Lcom/android/internal/telephony/data/DataSettingsManager$DataSettingsManagerCallback;)V
    .locals 1

    .line 1054
    new-instance v0, Lcom/android/internal/telephony/data/DataSettingsManager$$ExternalSyntheticLambda8;

    invoke-direct {v0, p3, p0, p1, p2}, Lcom/android/internal/telephony/data/DataSettingsManager$$ExternalSyntheticLambda8;-><init>(Lcom/android/internal/telephony/data/DataSettingsManager$DataSettingsManagerCallback;ZILjava/lang/String;)V

    invoke-virtual {p3, v0}, Lcom/android/internal/telephony/data/DataCallback;->invokeFromExecutor(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$wdxSCdThUs3U8IecpFkVrVJQtqs(ZLcom/android/internal/telephony/data/DataSettingsManager$DataSettingsManagerCallback;)V
    .locals 1

    .line 773
    new-instance v0, Lcom/android/internal/telephony/data/DataSettingsManager$$ExternalSyntheticLambda7;

    invoke-direct {v0, p1, p0}, Lcom/android/internal/telephony/data/DataSettingsManager$$ExternalSyntheticLambda7;-><init>(Lcom/android/internal/telephony/data/DataSettingsManager$DataSettingsManagerCallback;Z)V

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/data/DataCallback;->invokeFromExecutor(Ljava/lang/Runnable;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDataConfigManager(Lcom/android/internal/telephony/data/DataSettingsManager;)Lcom/android/internal/telephony/data/DataConfigManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsDataEnabled(Lcom/android/internal/telephony/data/DataSettingsManager;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mIsDataEnabled:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPhone(Lcom/android/internal/telephony/data/DataSettingsManager;)Lcom/android/internal/telephony/Phone;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSubId(Lcom/android/internal/telephony/data/DataSettingsManager;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mSubId:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIsDataEnabled(Lcom/android/internal/telephony/data/DataSettingsManager;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mIsDataEnabled:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSubId(Lcom/android/internal/telephony/data/DataSettingsManager;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mSubId:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mcopyDataRoamingForDds(Lcom/android/internal/telephony/data/DataSettingsManager;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataSettingsManager;->copyDataRoamingForDds()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mloadCarrierConfig(Lcom/android/internal/telephony/data/DataSettingsManager;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataSettingsManager;->loadCarrierConfig()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mlog(Lcom/android/internal/telephony/data/DataSettingsManager;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataSettingsManager;->log(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mupdateDataEnabledAndNotify(Lcom/android/internal/telephony/data/DataSettingsManager;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataSettingsManager;->updateDataEnabledAndNotify(I)V

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/data/DataNetworkController;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;Landroid/os/Looper;Lcom/android/internal/telephony/data/DataSettingsManager$DataSettingsManagerCallback;)V
    .locals 6

    .line 239
    invoke-direct {p0, p4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 140
    new-instance p4, Lcom/android/internal/telephony/LocalLog;

    const/16 v0, 0x80

    invoke-direct {p4, v0}, Lcom/android/internal/telephony/LocalLog;-><init>(I)V

    iput-object p4, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    .line 141
    new-instance p4, Ljava/util/HashSet;

    invoke-direct {p4}, Ljava/util/HashSet;-><init>()V

    iput-object p4, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mEnabledMobileDataPolicy:Ljava/util/Set;

    .line 150
    new-instance p4, Landroid/util/ArraySet;

    invoke-direct {p4}, Landroid/util/ArraySet;-><init>()V

    iput-object p4, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mDataSettingsManagerCallbacks:Ljava/util/Set;

    .line 154
    new-instance p4, Landroid/util/ArrayMap;

    invoke-direct {p4}, Landroid/util/ArrayMap;-><init>()V

    iput-object p4, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mDataEnabledSettings:Ljava/util/Map;

    const/4 v0, 0x0

    .line 166
    iput-boolean v0, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mInitialized:Z

    .line 223
    iput-boolean v0, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mIsFactoryReset:Z

    .line 240
    iput-object p1, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 241
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p3, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

    iput-object p3, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

    .line 242
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "DSMGR-"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mLogTag:Ljava/lang/String;

    .line 243
    const-string p3, "DataSettingsManager created."

    invoke-direct {p0, p3}, Lcom/android/internal/telephony/data/DataSettingsManager;->log(Ljava/lang/String;)V

    .line 244
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p3

    iput p3, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mSubId:I

    .line 245
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    iput-object p3, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mResolver:Landroid/content/ContentResolver;

    .line 246
    invoke-virtual {p0, p5}, Lcom/android/internal/telephony/data/DataSettingsManager;->registerCallback(Lcom/android/internal/telephony/data/DataSettingsManager$DataSettingsManagerCallback;)V

    .line 247
    invoke-virtual {p2}, Lcom/android/internal/telephony/data/DataNetworkController;->getDataConfigManager()Lcom/android/internal/telephony/data/DataConfigManager;

    move-result-object p2

    iput-object p2, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

    .line 248
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataSettingsManager;->refreshEnabledMobileDataPolicy()V

    .line 249
    new-instance p2, Lcom/android/internal/telephony/SettingsObserver;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p2, p3, p0}, Lcom/android/internal/telephony/SettingsObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mSettingsObserver:Lcom/android/internal/telephony/SettingsObserver;

    const/4 p2, 0x1

    .line 250
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    sget-object p3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p4, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p2, 0x2

    .line 251
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p4, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p2, 0x3

    .line 252
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p4, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p2, 0x5

    .line 254
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p4, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 p2, 0xb

    .line 259
    invoke-virtual {p0, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 261
    new-instance p2, Lcom/android/internal/telephony/data/DataSettingsManager$ActiveDataSubIdListener;

    invoke-direct {p2, p0}, Lcom/android/internal/telephony/data/DataSettingsManager$ActiveDataSubIdListener;-><init>(Lcom/android/internal/telephony/data/DataSettingsManager;)V

    iput-object p2, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mActiveDataSubIdListener:Lcom/android/internal/telephony/data/DataSettingsManager$ActiveDataSubIdListener;

    .line 265
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 266
    const-string p2, "com.samsung.carrier.action.CARRIER_CHANGED"

    invoke-virtual {v2, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 267
    const-string p2, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-virtual {v2, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 268
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/data/DataSettingsManager$1;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/data/DataSettingsManager$1;-><init>(Lcom/android/internal/telephony/data/DataSettingsManager;)V

    const/4 v3, 0x0

    const/4 v5, 0x2

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    return-void
.end method

.method private blacklist IgnoreDataEnabledOnRoaming()Z
    .locals 1

    .line 1313
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataSettingsManager;->isKorCountry()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 1314
    invoke-interface {p0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist broadcastPolicyDataEnabled(Z)V
    .locals 2

    .line 1324
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "broadcastPolicyDataEnabled: DATAUSAGE_REACH_TO_LIMIT = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataSettingsManager;->log(Ljava/lang/String;)V

    .line 1325
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.intent.action.DATAUSAGE_REACH_TO_LIMIT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x1000000

    .line 1326
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    xor-int/lit8 p1, p1, 0x1

    .line 1328
    const-string v1, "policyData"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1329
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p0

    sget-object p1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v1, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    invoke-virtual {p0, v0, p1, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    return-void
.end method

.method private blacklist clearSingleRoamingDatas()V
    .locals 1

    .line 883
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 884
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 886
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "data_roaming_is_user_setting_key"

    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private blacklist copyDataRoamingForDds()V
    .locals 4

    .line 743
    invoke-static {}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getInstance()Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getDefaultDataSubId()I

    move-result v0

    iget v1, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mSubId:I

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 747
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mSubId:I

    .line 748
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataSettingsManager;->isDefaultDataRoamingEnabled()Z

    move-result v2

    .line 747
    const-string v3, "data_roaming"

    invoke-static {v0, v3, v1, v2}, Lcom/android/internal/telephony/GlobalSettingsHelper;->getBoolean(Landroid/content/Context;Ljava/lang/String;IZ)Z

    move-result v0

    .line 749
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, -0x1

    invoke-static {v1, v3, v2, v0}, Lcom/android/internal/telephony/GlobalSettingsHelper;->setBoolean(Landroid/content/Context;Ljava/lang/String;IZ)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 753
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set DATA_ROAMING to roaming value of dds. roamingEnabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataSettingsManager;->logl(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private static blacklist dataEnabledChangedReasonToString(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_5

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    .line 1175
    const-string p0, "UNKNOWN"

    return-object p0

    .line 1173
    :cond_0
    const-string p0, "NETWORKSCAN"

    return-object p0

    .line 1171
    :cond_1
    const-string p0, "OVERRIDE"

    return-object p0

    .line 1170
    :cond_2
    const-string p0, "THERMAL"

    return-object p0

    .line 1169
    :cond_3
    const-string p0, "CARRIER"

    return-object p0

    .line 1168
    :cond_4
    const-string p0, "POLICY"

    return-object p0

    .line 1167
    :cond_5
    const-string p0, "USER"

    return-object p0
.end method

.method private blacklist getCountryName()Ljava/lang/String;
    .locals 1

    .line 1445
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SemPhoneInternal;->getDataUtils()Lcom/android/internal/telephony/data/SemDataUtils;

    move-result-object v0

    iget-object p0, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/data/SemDataUtils;->getCountryName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private blacklist getMainOperatorName()Ljava/lang/String;
    .locals 1

    .line 1449
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SemPhoneInternal;->getDataUtils()Lcom/android/internal/telephony/data/SemDataUtils;

    move-result-object v0

    iget-object p0, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/data/SemDataUtils;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private blacklist getSalesCode()Ljava/lang/String;
    .locals 0

    .line 1453
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/SemPhoneInternal;->getDataUtils()Lcom/android/internal/telephony/data/SemDataUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/data/SemDataUtils;->getSalesCode()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private blacklist hasCalling()Z
    .locals 2

    .line 373
    invoke-static {}, Lcom/android/internal/telephony/SemTelephonyHelper;->enforceCallingFeature()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 375
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyCapabilities;->minimalTelephonyCdmCheck(Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 376
    :cond_1
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "android.hardware.telephony.calling"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private blacklist isAttDshDevice(Ljava/lang/String;)Z
    .locals 0

    .line 1415
    const-string p0, "ATT"

    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "DSH"

    .line 1416
    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "DSG"

    .line 1417
    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private blacklist isDataEnabledOverriddenForApn(I)Z
    .locals 6

    const/4 v0, 0x2

    .line 1119
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/DataSettingsManager;->isMobileDataPolicyEnabled(I)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    if-ne p1, v0, :cond_0

    move p1, v2

    goto :goto_0

    :cond_0
    move p1, v3

    .line 1123
    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v0

    invoke-static {}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getInstance()Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    move-result-object v1

    .line 1124
    invoke-virtual {v1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getDefaultDataSubId()I

    move-result v1

    if-eq v0, v1, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v3

    .line 1126
    :goto_1
    invoke-static {}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getInstance()Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    move-result-object v1

    .line 1127
    invoke-static {}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getInstance()Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    move-result-object v4

    .line 1128
    invoke-virtual {v4}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getDefaultDataSubId()I

    move-result v4

    .line 1127
    invoke-virtual {v1, v4}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getPhoneId(I)I

    move-result v1

    .line 1126
    invoke-static {v1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1129
    invoke-interface {v1}, Lcom/android/internal/telephony/PhoneInternalInterface;->isUserDataEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    goto :goto_2

    :cond_2
    move v1, v3

    .line 1132
    :goto_2
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/data/DataSettingsManager;->isMobileDataPolicyEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_4

    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    .line 1134
    iget-object v4, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 1135
    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v4, v5, :cond_3

    move v4, v2

    goto :goto_3

    :cond_3
    move v4, v3

    :goto_3
    or-int/2addr p1, v4

    :cond_4
    const/4 v4, 0x3

    .line 1139
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/data/DataSettingsManager;->isMobileDataPolicyEnabled(I)Z

    move-result p0

    if-eqz p0, :cond_6

    if-eqz v0, :cond_5

    if-eqz v1, :cond_5

    goto :goto_4

    :cond_5
    move v2, v3

    :goto_4
    or-int p0, p1, v2

    return p0

    :cond_6
    return p1
.end method

.method private blacklist isDataRoamingFromUserAction()Z
    .locals 11

    .line 901
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "data_roaming_is_user_setting_key"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 902
    iget-object v2, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 903
    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 906
    invoke-interface {v2, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_4

    .line 907
    invoke-static {}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getInstance()Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getDefaultDataSubId()I

    move-result v3

    iget v6, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mSubId:I

    if-ne v3, v6, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    move v3, v5

    .line 908
    :goto_0
    invoke-interface {v2, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 911
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "subId: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mSubId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " was used in both single and dual roaming cases."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/data/DataSettingsManager;->log(Ljava/lang/String;)V

    .line 912
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6, v0, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_1

    :cond_1
    if-eqz v3, :cond_3

    .line 915
    invoke-interface {v2, v1, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 917
    iget-object v7, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 918
    invoke-virtual {v7}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v7

    const/4 v8, -0x1

    .line 919
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataSettingsManager;->isDefaultDataRoamingEnabled()Z

    move-result v9

    .line 917
    const-string v10, "data_roaming"

    invoke-static {v7, v10, v8, v9}, Lcom/android/internal/telephony/GlobalSettingsHelper;->getBoolean(Landroid/content/Context;Ljava/lang/String;IZ)Z

    move-result v7

    .line 920
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Previous roamingEnabled value: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, " is set for subId: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mSubId:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/data/DataSettingsManager;->log(Ljava/lang/String;)V

    .line 922
    invoke-direct {p0, v7}, Lcom/android/internal/telephony/data/DataSettingsManager;->setDataRoamingEnabledInternal(Z)V

    .line 924
    :cond_2
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    invoke-interface {v7, v0, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_1

    .line 926
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Force to turn off roaming value for non default data subId: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mSubId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/data/DataSettingsManager;->log(Ljava/lang/String;)V

    .line 927
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/data/DataSettingsManager;->setDataRoamingEnabledInternal(Z)V

    .line 928
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6, v0, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :goto_1
    if-eqz v3, :cond_4

    .line 931
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataSettingsManager;->clearSingleRoamingDatas()V

    .line 932
    const-string v3, "Clearing values used in single data roaming cases."

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/data/DataSettingsManager;->log(Ljava/lang/String;)V

    .line 938
    :cond_4
    invoke-interface {v2, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 939
    invoke-interface {v2, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 940
    const-string v1, "Reusing previous roaming from user action value for backwards compatibility."

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/data/DataSettingsManager;->log(Ljava/lang/String;)V

    .line 941
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, v0, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_2

    .line 943
    :cond_5
    const-string v1, "Clearing roaming from user action value for new or upgrading devices."

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/data/DataSettingsManager;->log(Ljava/lang/String;)V

    .line 944
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, v0, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 948
    :cond_6
    :goto_2
    invoke-interface {v2, v0, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 949
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isDataRoamingFromUserAction: key="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", isUserSetting="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataSettingsManager;->log(Ljava/lang/String;)V

    return v1
.end method

.method private blacklist isKorCountry()Z
    .locals 1

    .line 1307
    const-string v0, "KOR"

    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataSettingsManager;->getCountryName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private blacklist isProvisioningDataEnabled()Z
    .locals 5

    .line 528
    const-string v0, "ro.com.android.prov_mobiledata"

    .line 529
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataSettingsManager;->useUserDataEnabledInProvisioning()Ljava/lang/String;

    move-result-object v1

    .line 528
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 531
    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    .line 533
    iget-object v2, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mResolver:Landroid/content/ContentResolver;

    const-string v3, "device_provisioning_mobile_data"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 537
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDataEnabled during provisioning retVal="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " - ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataSettingsManager;->log(Ljava/lang/String;)V

    return v2
.end method

.method private blacklist isStandAloneOpportunistic(I)Z
    .locals 0

    .line 589
    invoke-static {}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getInstance()Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    move-result-object p0

    .line 590
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getSubscriptionInfoInternal(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 591
    invoke-virtual {p0}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->isOpportunistic()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 592
    invoke-virtual {p0}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->getGroupUuid()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist loadCarrierConfig()V
    .locals 2

    .line 457
    const-string v0, "loadCarrierConfig"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataSettingsManager;->log(Ljava/lang/String;)V

    .line 459
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    .line 460
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "26201"

    .line 461
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "26206"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 462
    :cond_0
    const-string v0, "DT set tcp_ecn"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataSettingsManager;->log(Ljava/lang/String;)V

    .line 463
    const-string v0, "ril.test.tcp_ecn"

    const-string v1, "true"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataSettingsManager;->setDefaultDataRoamingEnabled()V

    return-void
.end method

.method private blacklist localLogV(Ljava/lang/String;)V
    .locals 2

    .line 1294
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 1295
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataSettingsManager;->skipStubMethodElements([Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1297
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " - "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    return-void

    .line 1301
    :cond_0
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist log(Ljava/lang/String;)V
    .locals 0

    .line 1195
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mLogTag:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist loge(Ljava/lang/String;)V
    .locals 0

    .line 1203
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mLogTag:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist logl(Ljava/lang/String;)V
    .locals 0

    .line 1211
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataSettingsManager;->log(Ljava/lang/String;)V

    .line 1216
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataSettingsManager;->localLogV(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist metricsRecordSetMobileDataPolicy(I)V
    .locals 0

    const/4 p0, 0x3

    if-ne p1, p0, :cond_0

    .line 1037
    invoke-static {}, Lcom/android/internal/telephony/metrics/DeviceTelephonyPropertiesStats;->recordAutoDataSwitchFeatureToggle()V

    :cond_0
    return-void
.end method

.method private blacklist notifyDataEnabledChanged(ZILjava/lang/String;)V
    .locals 2

    .line 1052
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyDataEnabledChanged: enabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1053
    invoke-static {p2}, Lcom/android/internal/telephony/data/DataSettingsManager;->dataEnabledChangedReasonToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", callingPackage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1052
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataSettingsManager;->logl(Ljava/lang/String;)V

    .line 1054
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mDataSettingsManagerCallbacks:Ljava/util/Set;

    new-instance v1, Lcom/android/internal/telephony/data/DataSettingsManager$$ExternalSyntheticLambda4;

    invoke-direct {v1, p1, p2, p3}, Lcom/android/internal/telephony/data/DataSettingsManager$$ExternalSyntheticLambda4;-><init>(ZILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    .line 1056
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/Phone;->notifyDataEnabled(ZI)V

    return-void
.end method

.method private blacklist notifyDataEnabledOverrideChanged(ZI)V
    .locals 2

    .line 1061
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyDataEnabledOverrideChanged: enabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataSettingsManager;->logl(Ljava/lang/String;)V

    .line 1062
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mDataSettingsManagerCallbacks:Ljava/util/Set;

    new-instance v0, Lcom/android/internal/telephony/data/DataSettingsManager$$ExternalSyntheticLambda6;

    invoke-direct {v0, p1, p2}, Lcom/android/internal/telephony/data/DataSettingsManager$$ExternalSyntheticLambda6;-><init>(ZI)V

    invoke-interface {p0, v0}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private blacklist onInitialize()V
    .locals 7

    .line 384
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

    new-instance v1, Lcom/android/internal/telephony/data/DataSettingsManager$2;

    new-instance v2, Lcom/android/internal/telephony/data/DataSettingsManager$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/data/DataSettingsManager$$ExternalSyntheticLambda5;-><init>(Lcom/android/internal/telephony/data/DataSettingsManager;)V

    invoke-direct {v1, p0, v2}, Lcom/android/internal/telephony/data/DataSettingsManager$2;-><init>(Lcom/android/internal/telephony/data/DataSettingsManager;Ljava/util/concurrent/Executor;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/data/DataConfigManager;->registerCallback(Lcom/android/internal/telephony/data/DataConfigManager$DataConfigManagerCallback;)V

    .line 392
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mSettingsObserver:Lcom/android/internal/telephony/SettingsObserver;

    const-string v1, "device_provisioned"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/SettingsObserver;->observe(Landroid/net/Uri;I)V

    .line 394
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mSettingsObserver:Lcom/android/internal/telephony/SettingsObserver;

    const-string v1, "device_provisioning_mobile_data"

    .line 395
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/16 v2, 0xa

    .line 394
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/SettingsObserver;->observe(Landroid/net/Uri;I)V

    .line 397
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataSettingsManager;->hasCalling()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eqz v0, :cond_0

    .line 398
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v0

    invoke-virtual {v0, p0, v2, v1}, Lcom/android/internal/telephony/CallTracker;->registerForVoiceCallStarted(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 400
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v0

    invoke-virtual {v0, p0, v2, v1}, Lcom/android/internal/telephony/CallTracker;->registerForVoiceCallEnded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 402
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataSettingsManager;->hasCalling()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 403
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v0

    invoke-virtual {v0, p0, v2, v1}, Lcom/android/internal/telephony/CallTracker;->registerForVoiceCallStarted(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 405
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v0

    invoke-virtual {v0, p0, v2, v1}, Lcom/android/internal/telephony/CallTracker;->registerForVoiceCallEnded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 408
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/telephony/TelephonyRegistryManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyRegistryManager;

    new-instance v1, Lcom/android/internal/telephony/data/DataSettingsManager$3;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/data/DataSettingsManager$3;-><init>(Lcom/android/internal/telephony/data/DataSettingsManager;)V

    new-instance v2, Lcom/android/internal/telephony/DisplayInfoController$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/android/internal/telephony/DisplayInfoController$$ExternalSyntheticLambda0;-><init>()V

    .line 409
    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyRegistryManager;->addOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;Ljava/util/concurrent/Executor;)V

    .line 421
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, v0, v2

    if-eqz v3, :cond_2

    .line 422
    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v4

    iget-object v5, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v5

    if-eq v4, v5, :cond_2

    .line 423
    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getDataSettingsManager()Lcom/android/internal/telephony/data/DataSettingsManager;

    move-result-object v4

    new-instance v5, Lcom/android/internal/telephony/data/DataSettingsManager$4;

    new-instance v6, Lcom/android/internal/telephony/data/DataSettingsManager$$ExternalSyntheticLambda5;

    invoke-direct {v6, p0}, Lcom/android/internal/telephony/data/DataSettingsManager$$ExternalSyntheticLambda5;-><init>(Lcom/android/internal/telephony/data/DataSettingsManager;)V

    invoke-direct {v5, p0, v6, v3}, Lcom/android/internal/telephony/data/DataSettingsManager$4;-><init>(Lcom/android/internal/telephony/data/DataSettingsManager;Ljava/util/concurrent/Executor;Lcom/android/internal/telephony/Phone;)V

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/data/DataSettingsManager;->registerCallback(Lcom/android/internal/telephony/data/DataSettingsManager$DataSettingsManagerCallback;)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 437
    :cond_3
    invoke-static {}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getInstance()Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/data/DataSettingsManager$5;

    new-instance v2, Lcom/android/internal/telephony/data/DataSettingsManager$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/data/DataSettingsManager$$ExternalSyntheticLambda5;-><init>(Lcom/android/internal/telephony/data/DataSettingsManager;)V

    invoke-direct {v1, p0, v2}, Lcom/android/internal/telephony/data/DataSettingsManager$5;-><init>(Lcom/android/internal/telephony/data/DataSettingsManager;Ljava/util/concurrent/Executor;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->registerCallback(Lcom/android/internal/telephony/subscription/SubscriptionManagerService$SubscriptionManagerServiceCallback;)V

    const/4 v0, -0x1

    .line 447
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataSettingsManager;->updateDataEnabledAndNotify(I)V

    .line 449
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iget-object p0, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mActiveDataSubIdListener:Lcom/android/internal/telephony/data/DataSettingsManager$ActiveDataSubIdListener;

    const/high16 v1, 0x400000

    invoke-virtual {v0, p0, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    return-void
.end method

.method private blacklist onSetMobileDataPolicy(IZ)V
    .locals 3

    .line 1010
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/DataSettingsManager;->isMobileDataPolicyEnabled(I)Z

    move-result v0

    if-ne p2, v0, :cond_0

    return-void

    .line 1013
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataSettingsManager;->metricsRecordSetMobileDataPolicy(I)V

    if-eqz p2, :cond_1

    .line 1016
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mEnabledMobileDataPolicy:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1018
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mEnabledMobileDataPolicy:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1021
    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mEnabledMobileDataPolicy:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/SimultaneousCallingTracker$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/internal/telephony/SimultaneousCallingTracker$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    const-string v1, ","

    .line 1022
    invoke-static {v1}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1023
    invoke-static {}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getInstance()Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mSubId:I

    invoke-virtual {v1, v2, v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->setEnabledMobileDataPolicies(ILjava/lang/String;)V

    .line 1025
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/android/internal/telephony/util/TelephonyUtils;->mobileDataPolicyToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " changed to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataSettingsManager;->logl(Ljava/lang/String;)V

    const/4 v0, 0x4

    .line 1027
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataSettingsManager;->updateDataEnabledAndNotify(I)V

    .line 1028
    invoke-direct {p0, p2, p1}, Lcom/android/internal/telephony/data/DataSettingsManager;->notifyDataEnabledOverrideChanged(ZI)V

    return-void
.end method

.method private blacklist parsePolicyFrom(Ljava/lang/String;)I
    .locals 2

    .line 1101
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    .line 1104
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "parsePolicyFrom: invalid mobile data policy format: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataSettingsManager;->loge(Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0
.end method

.method private blacklist refreshEnabledMobileDataPolicy()V
    .locals 2

    .line 978
    invoke-static {}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getInstance()Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mSubId:I

    .line 979
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getSubscriptionInfoInternal(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 982
    invoke-virtual {v0}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->getEnabledMobileDataPolicies()Ljava/lang/String;

    move-result-object v0

    .line 981
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/DataSettingsManager;->getMobileDataPolicyEnabled(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mEnabledMobileDataPolicy:Ljava/util/Set;

    :cond_0
    return-void
.end method

.method private blacklist setCarrierDataEnabled(ZLjava/lang/String;)V
    .locals 4

    .line 693
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mDataEnabledSettings:Ljava/util/Map;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 694
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CarrierDataEnabled changed to "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", callingPackage="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataSettingsManager;->logl(Ljava/lang/String;)V

    .line 695
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mDataEnabledSettings:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    .line 696
    invoke-direct {p0, v1, p2, p1}, Lcom/android/internal/telephony/data/DataSettingsManager;->updateDataEnabledAndNotify(ILjava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method private blacklist setDataRoamingEnabledInternal(Z)V
    .locals 3

    .line 764
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "data_roaming"

    iget v2, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mSubId:I

    invoke-static {v0, v1, v2, p1}, Lcom/android/internal/telephony/GlobalSettingsHelper;->setBoolean(Landroid/content/Context;Ljava/lang/String;IZ)Z

    move-result v0

    .line 767
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataSettingsManager;->copyDataRoamingForDds()V

    .line 770
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DataRoamingEnabled set to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " on sub "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mSubId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", changed="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/data/DataSettingsManager;->logl(Ljava/lang/String;)V

    if-eqz v0, :cond_0

    .line 773
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mDataSettingsManagerCallbacks:Ljava/util/Set;

    new-instance v1, Lcom/android/internal/telephony/data/DataSettingsManager$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1}, Lcom/android/internal/telephony/data/DataSettingsManager$$ExternalSyntheticLambda2;-><init>(Z)V

    invoke-interface {v0, v1}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    .line 778
    :cond_0
    const-string p1, "ro.csc.sales_code"

    const-string v0, ""

    invoke-static {p1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 779
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataSettingsManager;->getMainOperatorName()Ljava/lang/String;

    move-result-object v0

    .line 781
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataSettingsManager;->isAttDshDevice(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 782
    const-string v1, "USC"

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 784
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    .line 785
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/DataSettingsManager;->setUsccDataRoamingSetting(Z)V

    .line 787
    :cond_2
    const-string p1, "DSG"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    const-string p1, "ATT"

    .line 788
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "DSH"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    return-void

    .line 789
    :cond_4
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataSettingsManager;->setDsh5GDataRoamingSetting()V

    return-void
.end method

.method private blacklist setDataRoamingFromUserAction(Z)V
    .locals 3

    .line 968
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "data_roaming_is_user_setting_key"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 969
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDataRoamingFromUserAction: key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", userAction="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/data/DataSettingsManager;->log(Ljava/lang/String;)V

    .line 970
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 971
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 972
    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private blacklist setNetworkScanDataEnabled(ZLjava/lang/String;)V
    .locals 4

    .line 717
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mDataEnabledSettings:Ljava/util/Map;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 718
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NetworkScanDataEnabled changed to "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", callingPackage="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataSettingsManager;->logl(Ljava/lang/String;)V

    .line 719
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mDataEnabledSettings:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    .line 720
    invoke-direct {p0, v1, p2, p1}, Lcom/android/internal/telephony/data/DataSettingsManager;->updateDataEnabledAndNotify(ILjava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method private blacklist setPolicyDataEnabled(ZLjava/lang/String;)V
    .locals 4

    .line 676
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mDataEnabledSettings:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 677
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PolicyDataEnabled changed to "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", callingPackage="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataSettingsManager;->logl(Ljava/lang/String;)V

    .line 678
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mDataEnabledSettings:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 679
    invoke-direct {p0, v1, p2, v0}, Lcom/android/internal/telephony/data/DataSettingsManager;->updateDataEnabledAndNotify(ILjava/lang/String;Z)V

    .line 682
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataSettingsManager;->broadcastPolicyDataEnabled(Z)V

    :cond_0
    return-void
.end method

.method private blacklist setThermalDataEnabled(ZLjava/lang/String;)V
    .locals 4

    .line 707
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mDataEnabledSettings:Ljava/util/Map;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 708
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ThermalDataEnabled changed to "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", callingPackage="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataSettingsManager;->logl(Ljava/lang/String;)V

    .line 709
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mDataEnabledSettings:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    .line 710
    invoke-direct {p0, v1, p2, p1}, Lcom/android/internal/telephony/data/DataSettingsManager;->updateDataEnabledAndNotify(ILjava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method private blacklist setUserDataEnabled(ZLjava/lang/String;)V
    .locals 3

    .line 602
    iget v0, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mSubId:I

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataSettingsManager;->isStandAloneOpportunistic(I)Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    goto/16 :goto_0

    .line 603
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mSubId:I

    const-string v2, "mobile_data"

    invoke-static {v0, v2, v1, p1}, Lcom/android/internal/telephony/GlobalSettingsHelper;->setInt(Landroid/content/Context;Ljava/lang/String;II)Z

    move-result v0

    .line 605
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set user data enabled to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " on sub "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mSubId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", changed="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", callingPackage="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/data/DataSettingsManager;->logl(Ljava/lang/String;)V

    if-eqz v0, :cond_2

    .line 608
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UserDataEnabled changed to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataSettingsManager;->logl(Ljava/lang/String;)V

    .line 609
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/Phone;->notifyUserMobileDataStateChanged(Z)V

    .line 610
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mDataSettingsManagerCallbacks:Ljava/util/Set;

    new-instance v1, Lcom/android/internal/telephony/data/DataSettingsManager$$ExternalSyntheticLambda3;

    invoke-direct {v1, p1, p2}, Lcom/android/internal/telephony/data/DataSettingsManager$$ExternalSyntheticLambda3;-><init>(ZLjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    .line 613
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataSettingsManager;->isKorCountry()Z

    move-result v0

    const/4 v1, 0x0

    .line 612
    invoke-direct {p0, v1, p2, v0}, Lcom/android/internal/telephony/data/DataSettingsManager;->updateDataEnabledAndNotify(ILjava/lang/String;Z)V

    .line 616
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v2, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 617
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_2

    .line 618
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    sub-int/2addr v2, v0

    .line 619
    invoke-static {v2}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 621
    const-string v2, "setUserDataEnabled(): handle on other phone for opportunistic network"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/data/DataSettingsManager;->log(Ljava/lang/String;)V

    .line 622
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/Phone;->notifyUserMobileDataStateChanged(Z)V

    .line 623
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getDataSettingsManager()Lcom/android/internal/telephony/data/DataSettingsManager;

    move-result-object p0

    .line 624
    invoke-direct {p0, v1, p2, v1}, Lcom/android/internal/telephony/data/DataSettingsManager;->updateDataEnabledAndNotify(ILjava/lang/String;Z)V

    return-void

    .line 627
    :cond_1
    const-string p1, "setUserDataEnabled(): oppositePhone is null"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataSettingsManager;->log(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private blacklist skipStubMethodElements([Ljava/lang/StackTraceElement;)Ljava/lang/String;
    .locals 4

    .line 1276
    array-length p0, p1

    add-int/lit8 p0, p0, -0x1

    :goto_0
    if-ltz p0, :cond_1

    .line 1277
    aget-object v0, p1, p0

    .line 1278
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v1

    .line 1279
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v2

    .line 1280
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v0

    if-eqz v1, :cond_0

    .line 1281
    const-string v3, "Binder"

    .line 1282
    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "DataSettingsManager"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v2, :cond_0

    const-string v1, "$Stub"

    .line 1284
    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "PhoneInterfaceManager"

    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "java.lang.Thread"

    .line 1285
    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1286
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    add-int/lit8 p0, p0, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private blacklist updateDataEnabledAndNotify(I)V
    .locals 2

    .line 501
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/telephony/data/DataSettingsManager;->updateDataEnabledAndNotify(ILjava/lang/String;Z)V

    return-void
.end method

.method private blacklist updateDataEnabledAndNotify(ILjava/lang/String;Z)V
    .locals 3

    .line 506
    iget-boolean v0, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mIsDataEnabled:Z

    const/16 v1, 0xff

    .line 507
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/data/DataSettingsManager;->isDataEnabled(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mIsDataEnabled:Z

    .line 508
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIsDataEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mIsDataEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", prevDataEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/data/DataSettingsManager;->log(Ljava/lang/String;)V

    .line 509
    iget-boolean v1, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mInitialized:Z

    if-eqz v1, :cond_1

    if-nez p3, :cond_1

    iget-boolean p3, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mIsDataEnabled:Z

    if-eq v0, p3, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    if-nez v1, :cond_2

    const/4 p3, 0x1

    .line 510
    iput-boolean p3, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mInitialized:Z

    .line 511
    :cond_2
    iget-boolean p3, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mIsDataEnabled:Z

    invoke-direct {p0, p3, p1, p2}, Lcom/android/internal/telephony/data/DataSettingsManager;->notifyDataEnabledChanged(ZILjava/lang/String;)V

    return-void
.end method

.method private blacklist useUserDataEnabledInProvisioning()Ljava/lang/String;
    .locals 2

    .line 1335
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mResolver:Landroid/content/ContentResolver;

    const-string v0, "mobile_data"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    .line 1336
    const-string p0, "true"

    return-object p0

    :cond_0
    const-string p0, "false"

    return-object p0
.end method


# virtual methods
.method public blacklist dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4

    .line 1228
    new-instance v0, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p2, v1}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 1229
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/android/internal/telephony/data/DataSettingsManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1230
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 1231
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mIsDataEnabled="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mIsDataEnabled:Z

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1232
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isDataEnabled(internet)="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x11

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/data/DataSettingsManager;->isDataEnabled(I)Z

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1233
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isDataEnabled(mms)="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/data/DataSettingsManager;->isDataEnabled(I)Z

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1234
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isUserDataEnabled="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataSettingsManager;->isUserDataEnabled()Z

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1235
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isDataRoamingEnabled="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataSettingsManager;->isDataRoamingEnabled()Z

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1236
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isDefaultDataRoamingEnabled="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataSettingsManager;->isDefaultDataRoamingEnabled()Z

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1237
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isDataRoamingFromUserAction="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataSettingsManager;->isDataRoamingFromUserAction()Z

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1238
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "device_provisioned="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "device_provisioned"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1240
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isProvisioningDataEnabled="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataSettingsManager;->isProvisioningDataEnabled()Z

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1241
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "data_stall_recovery_on_bad_network="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "data_stall_recovery_on_bad_network"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1243
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mDataEnabledSettings="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mDataEnabledSettings:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/internal/telephony/data/DataSettingsManager$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/android/internal/telephony/data/DataSettingsManager$$ExternalSyntheticLambda0;-><init>()V

    .line 1244
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    const-string v2, ", "

    .line 1246
    invoke-static {v2}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1243
    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1247
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mEnabledMobileDataPolicy="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mEnabledMobileDataPolicy:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/internal/telephony/data/DataSettingsManager$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lcom/android/internal/telephony/data/DataSettingsManager$$ExternalSyntheticLambda1;-><init>()V

    .line 1248
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    const-string v2, ","

    invoke-static {v2}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1247
    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1249
    const-string p2, "Local logs:"

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1250
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 1251
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {p0, p1, v0, p3}, Lcom/android/internal/telephony/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1252
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 1253
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    return-void
.end method

.method public blacklist getMobileDataPolicyEnabled(Ljava/lang/String;)Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1075
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1076
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string v1, "\\s*,\\s*"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 1077
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    .line 1078
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1079
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/data/DataSettingsManager;->parsePolicyFrom(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 1081
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 290
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    .line 367
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown msg.what: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataSettingsManager;->loge(Ljava/lang/String;)V

    return-void

    .line 363
    :pswitch_1
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataSettingsManager;->onInitialize()V

    return-void

    :pswitch_2
    const/4 p1, -0x1

    .line 359
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataSettingsManager;->updateDataEnabledAndNotify(I)V

    return-void

    .line 352
    :pswitch_3
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 353
    iget p1, p1, Landroid/os/Message;->arg2:I

    if-ne p1, v2, :cond_0

    move v1, v2

    .line 354
    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/data/DataSettingsManager;->onSetMobileDataPolicy(IZ)V

    return-void

    .line 332
    :pswitch_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 333
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataSettingsManager;->setDataRoamingEnabledInternal(Z)V

    .line 336
    iget-boolean p1, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mIsFactoryReset:Z

    if-nez p1, :cond_1

    .line 337
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/data/DataSettingsManager;->setDataRoamingFromUserAction(Z)V

    goto :goto_0

    .line 340
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/data/DataSettingsManager;->setDataRoamingFromUserAction(Z)V

    .line 341
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/data/DataSettingsManager;->setFactoryReset(Z)V

    .line 345
    :goto_0
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataSettingsManager;->isKorCountry()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 346
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v1, p1, v2}, Lcom/android/internal/telephony/data/DataSettingsManager;->updateDataEnabledAndNotify(ILjava/lang/String;Z)V

    :cond_2
    return-void

    .line 304
    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 305
    iget v3, p1, Landroid/os/Message;->arg2:I

    if-ne v3, v2, :cond_3

    move v1, v2

    .line 306
    :cond_3
    iget v3, p1, Landroid/os/Message;->arg1:I

    if-eqz v3, :cond_8

    if-eq v3, v2, :cond_7

    const/4 v2, 0x2

    if-eq v3, v2, :cond_6

    const/4 v2, 0x3

    if-eq v3, v2, :cond_5

    const/4 v2, 0x5

    if-eq v3, v2, :cond_4

    .line 325
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot set data enabled for reason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 326
    invoke-static {p1}, Lcom/android/internal/telephony/data/DataSettingsManager;->dataEnabledChangedReasonToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 325
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataSettingsManager;->log(Ljava/lang/String;)V

    return-void

    .line 321
    :cond_4
    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/data/DataSettingsManager;->setNetworkScanDataEnabled(ZLjava/lang/String;)V

    return-void

    .line 317
    :cond_5
    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/data/DataSettingsManager;->setThermalDataEnabled(ZLjava/lang/String;)V

    return-void

    .line 311
    :cond_6
    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/data/DataSettingsManager;->setCarrierDataEnabled(ZLjava/lang/String;)V

    return-void

    .line 314
    :cond_7
    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/data/DataSettingsManager;->setPolicyDataEnabled(ZLjava/lang/String;)V

    return-void

    .line 308
    :cond_8
    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/data/DataSettingsManager;->setUserDataEnabled(ZLjava/lang/String;)V

    return-void

    .line 296
    :pswitch_6
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataSettingsManager;->refreshEnabledMobileDataPolicy()V

    .line 297
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 298
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object p1

    iget v0, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mSubId:I

    .line 299
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    .line 297
    invoke-direct {p0, v1, p1, v0}, Lcom/android/internal/telephony/data/DataSettingsManager;->updateDataEnabledAndNotify(ILjava/lang/String;Z)V

    .line 300
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataSettingsManager;->isUserDataEnabled()Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/Phone;->notifyUserMobileDataStateChanged(Z)V

    return-void

    :pswitch_7
    const/4 p1, 0x4

    .line 292
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataSettingsManager;->updateDataEnabledAndNotify(I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public blacklist isDataEnabled()Z
    .locals 0

    .line 549
    iget-boolean p0, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mIsDataEnabled:Z

    return p0
.end method

.method public blacklist isDataEnabled(I)Z
    .locals 3

    .line 570
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "device_provisioned"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    .line 571
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataSettingsManager;->isProvisioningDataEnabled()Z

    move-result p0

    return p0

    .line 573
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataSettingsManager;->isUserDataEnabled()Z

    move-result v0

    .line 575
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataSettingsManager;->isDataEnabledOverriddenForApn(I)Z

    move-result p1

    if-nez v0, :cond_1

    if-eqz p1, :cond_2

    .line 578
    :cond_1
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mDataEnabledSettings:Ljava/util/Map;

    const/4 v0, 0x1

    .line 579
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mDataEnabledSettings:Ljava/util/Map;

    const/4 v1, 0x2

    .line 580
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mDataEnabledSettings:Ljava/util/Map;

    const/4 v1, 0x3

    .line 581
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mDataEnabledSettings:Ljava/util/Map;

    const/4 p1, 0x5

    .line 583
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public blacklist isDataEnabledForReason(I)Z
    .locals 0

    if-nez p1, :cond_0

    .line 494
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataSettingsManager;->isUserDataEnabled()Z

    move-result p0

    return p0

    .line 496
    :cond_0
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mDataEnabledSettings:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public blacklist isDataInitialized()Z
    .locals 0

    .line 561
    iget-boolean p0, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mInitialized:Z

    return p0
.end method

.method public blacklist isDataRoamingEnabled()Z
    .locals 5

    .line 814
    const-string v0, "ro.csc.sales_code"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 815
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataSettingsManager;->getMainOperatorName()Ljava/lang/String;

    move-result-object v1

    .line 816
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataSettingsManager;->isAttDshDevice(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_4

    .line 817
    const-string v2, "USC"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 818
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 819
    :cond_0
    const-string v0, "isDataRoamingEnabled: USC operator. Need use other value for roaming"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataSettingsManager;->log(Ljava/lang/String;)V

    .line 820
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 821
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getDataRoamingType()I

    move-result v0

    .line 822
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isDataRoamingEnabled: USC operator. Roaming. Type :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/data/DataSettingsManager;->log(Ljava/lang/String;)V

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    .line 824
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 825
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 827
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataSettingsManager;->isDefaultDataRoamingEnabled()Z

    move-result v1

    .line 824
    const-string v4, "uscc_user_data_roam_setting_international"

    invoke-static {v0, v4, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 828
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isDataRoamingEnabled: USC operator. Roaming. intRoam :"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/data/DataSettingsManager;->log(Ljava/lang/String;)V

    if-ne v0, v3, :cond_1

    return v3

    :cond_1
    return v2

    :cond_2
    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 831
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 832
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 834
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataSettingsManager;->isDefaultDataRoamingEnabled()Z

    move-result v1

    .line 831
    const-string v4, "uscc_user_data_roam_setting_domestic"

    invoke-static {v0, v4, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 835
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isDataRoamingEnabled: USC operator. Roaming. domRoam :"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/data/DataSettingsManager;->log(Ljava/lang/String;)V

    if-ne v0, v3, :cond_3

    return v3

    :cond_3
    return v2

    .line 844
    :cond_4
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->isUsingNonTerrestrialNetwork()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 845
    const-string v0, "isDataRoamingEnabled: Data Romaing enabled for satellite"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataSettingsManager;->log(Ljava/lang/String;)V

    return v3

    .line 850
    :cond_5
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mSubId:I

    .line 851
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataSettingsManager;->isDefaultDataRoamingEnabled()Z

    move-result p0

    .line 850
    const-string v2, "data_roaming"

    invoke-static {v0, v2, v1, p0}, Lcom/android/internal/telephony/GlobalSettingsHelper;->getBoolean(Landroid/content/Context;Ljava/lang/String;IZ)Z

    move-result p0

    return p0
.end method

.method public blacklist isDataRoamingEnabledInternal()Z
    .locals 4

    .line 1421
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataSettingsManager;->isDataRoamingEnabled()Z

    move-result v0

    .line 1422
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataSettingsManager;->getSalesCode()Ljava/lang/String;

    move-result-object v1

    .line 1424
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/data/DataSettingsManager;->isAttDshDevice(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-nez v0, :cond_0

    const-string v2, "USC"

    .line 1425
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataSettingsManager;->getMainOperatorName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 1426
    invoke-interface {v2}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 1427
    invoke-interface {v2}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getDataRoamingType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 1429
    const-string v0, "isDataRoamingEnabledInternal: USC domestic roaming always true in ATT device."

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataSettingsManager;->log(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 1433
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isDataRoamingEnabledInternal: phoneSubId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " isDataRoamingEnabled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " isAttDshDevice="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1435
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/data/DataSettingsManager;->isAttDshDevice(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " roaming="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 1436
    invoke-interface {v1}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " roamingtype="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 1437
    invoke-interface {v1}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getDataRoamingType()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1433
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/data/DataSettingsManager;->log(Ljava/lang/String;)V

    return v0
.end method

.method public blacklist isDefaultDataRoamingEnabled()Z
    .locals 2

    .line 861
    const-string v0, "ro.com.android.dataroaming"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 862
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getDataNetworkController()Lcom/android/internal/telephony/data/DataNetworkController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataNetworkController;->getDataConfigManager()Lcom/android/internal/telephony/data/DataConfigManager;

    move-result-object p0

    .line 863
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataConfigManager;->isDataRoamingEnabledByDefault()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public blacklist isMobileDataPolicyEnabled(I)Z
    .locals 0

    .line 990
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mEnabledMobileDataPolicy:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public blacklist isNetworkScanEnabled()Z
    .locals 1

    .line 666
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mDataEnabledSettings:Ljava/util/Map;

    const/4 v0, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public blacklist isRecoveryOnBadNetworkEnabled()Z
    .locals 2

    .line 1046
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mResolver:Landroid/content/ContentResolver;

    const-string v0, "data_stall_recovery_on_bad_network"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v1, :cond_0

    return v1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist isUserDataEnabled()Z
    .locals 3

    .line 639
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "device_provisioned"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    .line 640
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataSettingsManager;->isProvisioningDataEnabled()Z

    move-result p0

    return p0

    .line 644
    :cond_0
    iget v0, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mSubId:I

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataSettingsManager;->isStandAloneOpportunistic(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    return p0

    .line 648
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataSettingsManager;->IgnoreDataEnabledOnRoaming()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 649
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataSettingsManager;->isDataRoamingEnabled()Z

    move-result p0

    return p0

    .line 653
    :cond_2
    invoke-static {}, Landroid/internal/telephony/sysprop/TelephonyProperties;->mobile_data()Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 655
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "mobile_data"

    iget p0, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mSubId:I

    invoke-static {v1, v2, p0, v0}, Lcom/android/internal/telephony/GlobalSettingsHelper;->getBoolean(Landroid/content/Context;Ljava/lang/String;IZ)Z

    move-result p0

    return p0
.end method

.method public blacklist registerCallback(Lcom/android/internal/telephony/data/DataSettingsManager$DataSettingsManagerCallback;)V
    .locals 0

    .line 1152
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mDataSettingsManagerCallbacks:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public blacklist setDataEnabled(IZLjava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    .line 480
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDataEnabled reason : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/internal/telephony/data/DataSettingsManager;->dataEnabledChangedReasonToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " try to change "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", calling package="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataSettingsManager;->localLogV(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x5

    .line 484
    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 485
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public blacklist setDataRoamingEnabled(Z)V
    .locals 1

    .line 731
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 v0, 0x6

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public blacklist setDefaultDataRoamingEnabled()V
    .locals 1

    .line 872
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 876
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataSettingsManager;->isDataRoamingFromUserAction()Z

    move-result v0

    if-nez v0, :cond_1

    .line 877
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataSettingsManager;->isDefaultDataRoamingEnabled()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataSettingsManager;->setDataRoamingEnabledInternal(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public blacklist setDsh5GDataRoamingSetting()V
    .locals 3

    .line 1387
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getDataRoamingType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 1389
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "dsg_user_data_roam_setting_international"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1391
    const-string v1, "setDsh5GDataRoamingSetting: Roaming Type international"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/data/DataSettingsManager;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1395
    :cond_0
    const-string v0, "setDsh5GDataRoamingSetting: Roaming Type not international, do nothing"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataSettingsManager;->log(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 1397
    :goto_0
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "data_roaming"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public blacklist setFactoryReset(Z)V
    .locals 0

    .line 736
    iput-boolean p1, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mIsFactoryReset:Z

    return-void
.end method

.method public blacklist setMobileDataPolicy(IZ)V
    .locals 1

    const/4 v0, 0x7

    .line 999
    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    .line 1000
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public blacklist setUsccDataRoamingSetting(Z)V
    .locals 9

    .line 1341
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    .line 1342
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    if-eq v0, v1, :cond_0

    return-void

    .line 1344
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 1345
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    .line 1346
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataSettingsManager;->isDefaultDataRoamingEnabled()Z

    move-result v2

    .line 1344
    const-string v3, "data_roaming"

    invoke-static {v0, v3, v1, v2}, Lcom/android/internal/telephony/GlobalSettingsHelper;->getBoolean(Landroid/content/Context;Ljava/lang/String;IZ)Z

    move-result v0

    .line 1347
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getDataRoamingType()I

    move-result v1

    .line 1348
    iget-object v2, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mResolver:Landroid/content/ContentResolver;

    const/4 v4, 0x0

    const-string v5, "uscc_user_data_roam_setting_international"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 1350
    iget-object v4, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mResolver:Landroid/content/ContentResolver;

    const/4 v6, 0x1

    const-string v7, "uscc_user_data_roam_setting_domestic"

    invoke-static {v4, v7, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 1352
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setUsccDataRoamingSetting: dataRoaming="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", roamingType="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", userInternational="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", userDomestic="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/data/DataSettingsManager;->log(Ljava/lang/String;)V

    const/4 v6, 0x2

    if-ne v1, v6, :cond_2

    if-eqz p1, :cond_1

    .line 1356
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mResolver:Landroid/content/ContentResolver;

    invoke-static {p1, v7, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1358
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setUsccDataRoamingSetting: set Domestic Setting as dataRoaming="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataSettingsManager;->log(Ljava/lang/String;)V

    return-void

    .line 1361
    :cond_1
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mResolver:Landroid/content/ContentResolver;

    invoke-static {p1, v3, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1363
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setUsccDataRoamingSetting: set Data Roaming Setting as userDomestic="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataSettingsManager;->log(Ljava/lang/String;)V

    return-void

    :cond_2
    const/4 v4, 0x3

    if-ne v1, v4, :cond_4

    if-eqz p1, :cond_3

    .line 1368
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mResolver:Landroid/content/ContentResolver;

    invoke-static {p1, v5, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1370
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setUsccDataRoamingSetting: set International Setting as dataRoaming="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataSettingsManager;->log(Ljava/lang/String;)V

    return-void

    .line 1373
    :cond_3
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mResolver:Landroid/content/ContentResolver;

    invoke-static {p1, v3, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1375
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setUsccDataRoamingSetting: set Data Roaming Setting as userInternational="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataSettingsManager;->log(Ljava/lang/String;)V

    return-void

    .line 1379
    :cond_4
    const-string p1, "setUsccDataRoamingSetting: Roaming Type unknown, do nothing"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataSettingsManager;->log(Ljava/lang/String;)V

    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 1181
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[isUserDataEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataSettingsManager;->isUserDataEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isProvisioningDataEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1182
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataSettingsManager;->isProvisioningDataEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mIsDataEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mIsDataEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mDataEnabledSettings="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mDataEnabledSettings:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mEnabledMobileDataPolicy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mEnabledMobileDataPolicy:Ljava/util/Set;

    .line 1185
    invoke-interface {p0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v1, Lcom/android/internal/telephony/data/DataSettingsManager$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/android/internal/telephony/data/DataSettingsManager$$ExternalSyntheticLambda1;-><init>()V

    .line 1186
    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    const-string v1, ","

    invoke-static {v1}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist unregisterCallback(Lcom/android/internal/telephony/data/DataSettingsManager$DataSettingsManagerCallback;)V
    .locals 0

    .line 1161
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataSettingsManager;->mDataSettingsManagerCallbacks:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method
