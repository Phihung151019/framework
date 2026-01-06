.class public Lcom/sec/android/pmssdk/PmsSDK;
.super Ljava/lang/Object;
.source "PmsSDK.java"


# static fields
.field public static final ACTION_DISPLAY_ASSISTANT_READY:Ljava/lang/String; = "android.intent.action.ACTION_DISPLAY_ASSISTANT_READY"

.field private static final ACTION_KEEP_SCREEN_ON_EXPIRED:Ljava/lang/String; = "android.intent.action.KEEP_SCREEN_ON_EXPIRED"

.field public static final ACTION_RESET_BRIGHTNESS_CONFIGURATION:Ljava/lang/String; = "android.intent.action.RESET_BRIGHTNESS_CONFIGURATION"

.field public static final ACTION_SCREEN_ON_KEEPER_DISABLED:Ljava/lang/String; = "android.intent.action.SCREEN_ON_KEEPER_DISABLED"

.field public static final BRIGHTENING_RATE_RATIO:Ljava/lang/String; = "brightening_rate_ratio"

.field public static final DARKENING_RATE_RATIO:Ljava/lang/String; = "darkening_rate_ratio"

.field private static final DISABLED_REASON_ANOTHER_WAKE_LOCK_EXIST:I = 0x3

.field public static final DISABLED_REASON_BATTERY_LOW:I = 0x1

.field public static final DISABLED_REASON_SCREEN_OFF:I = 0x0

.field public static final DISABLED_REASON_USER_SWITCHED:I = 0x2

.field public static final EXTRA_DISABLED_REASON:Ljava/lang/String; = "reason"

.field public static final SCREEN_ON_KEEPER:Ljava/lang/String; = "screen_on_keeper"

.field public static final SCREEN_ON_KEEPER_DISABLED:Ljava/lang/String; = "0"

.field public static final SCREEN_ON_KEEPER_ENABLED:Ljava/lang/String; = "1"

.field private static final TAG:Ljava/lang/String;

.field private static final VERSION_CODE:I = 0xa0

.field private static final VERSION_NAME:Ljava/lang/String; = "1.6.0"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDisplayManagerService:Landroid/hardware/display/IDisplayManager;

.field private mPowerManagerService:Landroid/os/IPowerManager;


# direct methods
.method public static synthetic $r8$lambda$gx_tOT1vzMjyG9nqCNmgbHDZWMI(Lcom/sec/android/pmssdk/PmsSDK;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/pmssdk/PmsSDK;->lambda$getDisplayManagerService$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$ky00LreudRnIhCu4QAokQtVD1Co(Lcom/sec/android/pmssdk/PmsSDK;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/pmssdk/PmsSDK;->lambda$getPowerManagerService$0()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 31
    const-class v0, Lcom/sec/android/pmssdk/PmsSDK;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/pmssdk/PmsSDK;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/pmssdk/PmsSDK;->mContext:Landroid/content/Context;

    .line 40
    return-void
.end method

.method private declared-synchronized getDisplayManagerService()Landroid/hardware/display/IDisplayManager;
    .locals 3

    monitor-enter p0

    .line 146
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/pmssdk/PmsSDK;->mDisplayManagerService:Landroid/hardware/display/IDisplayManager;

    if-nez v0, :cond_0

    .line 147
    const-string v0, "display"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 148
    .local v0, "binder":Landroid/os/IBinder;
    if-eqz v0, :cond_0

    .line 149
    invoke-static {v0}, Landroid/hardware/display/IDisplayManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/display/IDisplayManager;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/pmssdk/PmsSDK;->mDisplayManagerService:Landroid/hardware/display/IDisplayManager;

    .line 150
    iget-object v1, p0, Lcom/sec/android/pmssdk/PmsSDK;->mDisplayManagerService:Landroid/hardware/display/IDisplayManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 152
    :try_start_1
    new-instance v1, Lcom/sec/android/pmssdk/PmsSDK$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/sec/android/pmssdk/PmsSDK$$ExternalSyntheticLambda1;-><init>(Lcom/sec/android/pmssdk/PmsSDK;)V

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 159
    goto :goto_0

    .line 157
    .end local p0    # "this":Lcom/sec/android/pmssdk/PmsSDK;
    :catch_0
    move-exception v1

    .line 158
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 163
    .end local v0    # "binder":Landroid/os/IBinder;
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sec/android/pmssdk/PmsSDK;->mDisplayManagerService:Landroid/hardware/display/IDisplayManager;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    .line 145
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method private declared-synchronized getPowerManagerService()Landroid/os/IPowerManager;
    .locals 3

    monitor-enter p0

    .line 125
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/pmssdk/PmsSDK;->mPowerManagerService:Landroid/os/IPowerManager;

    if-nez v0, :cond_0

    .line 126
    const-string v0, "power"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 127
    .local v0, "binder":Landroid/os/IBinder;
    if-eqz v0, :cond_0

    .line 128
    invoke-static {v0}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/pmssdk/PmsSDK;->mPowerManagerService:Landroid/os/IPowerManager;

    .line 129
    iget-object v1, p0, Lcom/sec/android/pmssdk/PmsSDK;->mPowerManagerService:Landroid/os/IPowerManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 131
    :try_start_1
    new-instance v1, Lcom/sec/android/pmssdk/PmsSDK$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/sec/android/pmssdk/PmsSDK$$ExternalSyntheticLambda0;-><init>(Lcom/sec/android/pmssdk/PmsSDK;)V

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 138
    goto :goto_0

    .line 136
    .end local p0    # "this":Lcom/sec/android/pmssdk/PmsSDK;
    :catch_0
    move-exception v1

    .line 137
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 142
    .end local v0    # "binder":Landroid/os/IBinder;
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sec/android/pmssdk/PmsSDK;->mPowerManagerService:Landroid/os/IPowerManager;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    .line 124
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public static getVersionCode()I
    .locals 1

    .line 47
    const/16 v0, 0xa0

    return v0
.end method

.method public static getVersionName()Ljava/lang/String;
    .locals 1

    .line 43
    const-string v0, "1.6.0"

    return-object v0
.end method

.method private synthetic lambda$getDisplayManagerService$1()V
    .locals 1

    .line 153
    monitor-enter p0

    .line 154
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/sec/android/pmssdk/PmsSDK;->mDisplayManagerService:Landroid/hardware/display/IDisplayManager;

    .line 155
    monitor-exit p0

    .line 156
    return-void

    .line 155
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private synthetic lambda$getPowerManagerService$0()V
    .locals 1

    .line 132
    monitor-enter p0

    .line 133
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/sec/android/pmssdk/PmsSDK;->mPowerManagerService:Landroid/os/IPowerManager;

    .line 134
    monitor-exit p0

    .line 135
    return-void

    .line 134
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public addAdaptiveScreenOffTimeoutConfig(Landroid/util/ArrayMap;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 232
    .local p1, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-direct {p0}, Lcom/sec/android/pmssdk/PmsSDK;->getPowerManagerService()Landroid/os/IPowerManager;

    move-result-object v0

    .line 233
    .local v0, "service":Landroid/os/IPowerManager;
    if-eqz v0, :cond_1

    .line 235
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 237
    .local v1, "config":Ljava/util/List;, "Ljava/util/List<Landroid/os/PowerManager$AdaptiveScreenOffTimeoutConfig;>;"
    invoke-virtual {p1}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 238
    .local v3, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    new-instance v4, Landroid/os/PowerManager$AdaptiveScreenOffTimeoutConfig;

    .line 239
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-direct {v4, v5, v6, v7}, Landroid/os/PowerManager$AdaptiveScreenOffTimeoutConfig;-><init>(Ljava/lang/String;J)V

    .line 238
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 240
    nop

    .end local v3    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    goto :goto_0

    .line 241
    :cond_0
    nop

    .line 242
    invoke-static {v1}, Landroid/os/PowerManager$AdaptiveScreenOffTimeoutConfig;->toParcelable(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 241
    invoke-interface {v0, v2}, Landroid/os/IPowerManager;->addAdaptiveScreenOffTimeoutConfig(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 245
    .end local v1    # "config":Ljava/util/List;, "Ljava/util/List<Landroid/os/PowerManager$AdaptiveScreenOffTimeoutConfig;>;"
    goto :goto_1

    .line 243
    :catch_0
    move-exception v1

    .line 244
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 247
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_1
    return-void
.end method

.method public getAdaptiveScreenOffTimeoutConfig()Landroid/util/ArrayMap;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 275
    invoke-direct {p0}, Lcom/sec/android/pmssdk/PmsSDK;->getPowerManagerService()Landroid/os/IPowerManager;

    move-result-object v0

    .line 276
    .local v0, "service":Landroid/os/IPowerManager;
    if-eqz v0, :cond_1

    .line 278
    nop

    .line 280
    :try_start_0
    invoke-interface {v0}, Landroid/os/IPowerManager;->getAdaptiveScreenOffTimeoutConfig()Ljava/util/List;

    move-result-object v1

    .line 279
    invoke-static {v1}, Landroid/os/PowerManager$AdaptiveScreenOffTimeoutConfig;->fromParcelable(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 281
    .local v1, "config":Ljava/util/List;, "Ljava/util/List<Landroid/os/PowerManager$AdaptiveScreenOffTimeoutConfig;>;"
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    .line 282
    .local v2, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PowerManager$AdaptiveScreenOffTimeoutConfig;

    .line 283
    .local v4, "c":Landroid/os/PowerManager$AdaptiveScreenOffTimeoutConfig;
    invoke-virtual {v4}, Landroid/os/PowerManager$AdaptiveScreenOffTimeoutConfig;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 284
    .local v5, "packageName":Ljava/lang/String;
    invoke-virtual {v4}, Landroid/os/PowerManager$AdaptiveScreenOffTimeoutConfig;->getScreenOffTimeout()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 285
    .local v6, "screenOffTimeout":Ljava/lang/Long;
    invoke-virtual {v2, v5, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 286
    nop

    .end local v4    # "c":Landroid/os/PowerManager$AdaptiveScreenOffTimeoutConfig;
    .end local v5    # "packageName":Ljava/lang/String;
    .end local v6    # "screenOffTimeout":Ljava/lang/Long;
    goto :goto_0

    .line 287
    :cond_0
    return-object v2

    .line 288
    .end local v1    # "config":Ljava/util/List;, "Ljava/util/List<Landroid/os/PowerManager$AdaptiveScreenOffTimeoutConfig;>;"
    .end local v2    # "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Long;>;"
    :catch_0
    move-exception v1

    .line 289
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 292
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public getPackageNameOnScreenCurtain()Ljava/lang/String;
    .locals 2

    .line 212
    invoke-direct {p0}, Lcom/sec/android/pmssdk/PmsSDK;->getPowerManagerService()Landroid/os/IPowerManager;

    move-result-object v0

    .line 213
    .local v0, "service":Landroid/os/IPowerManager;
    if-eqz v0, :cond_0

    .line 215
    :try_start_0
    invoke-interface {v0}, Landroid/os/IPowerManager;->getPackageNameOnScreenCurtain()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 216
    :catch_0
    move-exception v1

    .line 217
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 220
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public isScreenCurtainEnabled()Z
    .locals 2

    .line 194
    invoke-direct {p0}, Lcom/sec/android/pmssdk/PmsSDK;->getPowerManagerService()Landroid/os/IPowerManager;

    move-result-object v0

    .line 195
    .local v0, "service":Landroid/os/IPowerManager;
    if-eqz v0, :cond_0

    .line 197
    :try_start_0
    invoke-interface {v0}, Landroid/os/IPowerManager;->isScreenCurtainEnabled()Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 198
    :catch_0
    move-exception v1

    .line 199
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 202
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public removeAdaptiveScreenOffTimeoutConfig(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 258
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/sec/android/pmssdk/PmsSDK;->getPowerManagerService()Landroid/os/IPowerManager;

    move-result-object v0

    .line 259
    .local v0, "service":Landroid/os/IPowerManager;
    if-eqz v0, :cond_0

    .line 261
    :try_start_0
    invoke-interface {v0, p1}, Landroid/os/IPowerManager;->removeAdaptiveScreenOffTimeoutConfig(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 264
    goto :goto_0

    .line 262
    :catch_0
    move-exception v1

    .line 263
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 266
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public resetBrightnessConfiguration()V
    .locals 3

    .line 302
    invoke-direct {p0}, Lcom/sec/android/pmssdk/PmsSDK;->getDisplayManagerService()Landroid/hardware/display/IDisplayManager;

    move-result-object v0

    .line 303
    .local v0, "service":Landroid/hardware/display/IDisplayManager;
    if-eqz v0, :cond_0

    .line 305
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/pmssdk/PmsSDK;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/pmssdk/PmsSDK;->mContext:Landroid/content/Context;

    .line 306
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 305
    invoke-interface {v0, v1, v2}, Landroid/hardware/display/IDisplayManager;->resetBrightnessConfigurationForUser(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 309
    goto :goto_0

    .line 307
    :catch_0
    move-exception v1

    .line 308
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 311
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public setScreenCurtainEnabled(Landroid/os/IBinder;ZI)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "enabled"    # Z
    .param p3, "displayState"    # I

    .line 177
    invoke-direct {p0}, Lcom/sec/android/pmssdk/PmsSDK;->getPowerManagerService()Landroid/os/IPowerManager;

    move-result-object v0

    .line 178
    .local v0, "service":Landroid/os/IPowerManager;
    if-eqz v0, :cond_0

    .line 180
    :try_start_0
    invoke-interface {v0, p1, p2, p3}, Landroid/os/IPowerManager;->setScreenCurtainEnabled(Landroid/os/IBinder;ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    goto :goto_0

    .line 181
    :catch_0
    move-exception v1

    .line 182
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 185
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method
