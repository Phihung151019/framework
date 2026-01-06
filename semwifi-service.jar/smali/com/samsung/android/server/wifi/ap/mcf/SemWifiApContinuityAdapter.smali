.class public Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter$AutoHotspotHandler;
    }
.end annotation


# static fields
.field public static final APP_ID:I = 0x4

.field static final BIND_TIMEOUT_MS:J = 0x1388L

.field private static final EVENT_BIND:I = 0x3

.field private static final EVENT_BIND_TIMEOUT:I = 0x5

.field private static final EVENT_CONTINUITY_SETTINGS_DISABLED:I = 0xa

.field private static final EVENT_CONTINUITY_SETTINGS_ENABLED:I = 0x9

.field private static final EVENT_REGISTER_MESSAGE_LISTNER:I = 0x6

.field private static final EVENT_REGISTER_MESSAGE_LISTNER_TIMEOUT:I = 0x8

.field private static final EVENT_SA_SIGN_IN:I = 0x1

.field private static final EVENT_SA_SIGN_OUT:I = 0x2

.field private static final EVENT_UNBIND:I = 0x4

.field private static final EVENT_UNREGISTER_MESSAGE_LISTNER:I = 0x7

.field static final MCF_SERVICE_PERMISSION:Ljava/lang/String; = "com.samsung.android.mcfds.permission.START_SERVICE"

.field static final MCF_SERVICE_STARTED:Ljava/lang/String; = "com.samsung.android.mcfds.SERVICE_STARTED"

.field static final MCF_SERVICE_STOPPED:Ljava/lang/String; = "com.samsung.android.mcfds.SERVICE_STOPPED"

.field static final SA_SIGN_IN_ACTION:Ljava/lang/String; = "com.samsung.account.SAMSUNGACCOUNT_SIGNIN_COMPLETED"

.field static final SA_SIGN_OUT_ACTION:Ljava/lang/String; = "com.samsung.account.SAMSUNGACCOUNT_SIGNOUT_COMPLETED"

.field static final SETTING_ID_CONTINUITY:Ljava/lang/String; = "mcf_continuity"

.field private static final TAG:Ljava/lang/String; = "MHSMcf:Adapter"


# instance fields
.field private adapter:Lcom/samsung/android/mcf/continuity/api/ContinuityAdapter;

.field private isBound:Z

.field private isRegisteredMessageListner:Z

.field private isSamsungAccountSignedIn:Z

.field private mAutoHotspotHandler:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter$AutoHotspotHandler;

.field private final mContext:Landroid/content/Context;

.field private mWifiApContinuityUtil:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityUtil;

.field private retryCount:I

.field private retryCountRegisteredMessageListner:I

.field private final serviceConnection:Lcom/samsung/android/mcf/continuity/api/ContinuityAdapter$ServiceStateListener;


# direct methods
.method static bridge synthetic -$$Nest$fgetisBound(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;->isBound:Z

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetisRegisteredMessageListner(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;->isRegisteredMessageListner:Z

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetisSamsungAccountSignedIn(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;->isSamsungAccountSignedIn:Z

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetretryCount(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;->retryCount:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetretryCountRegisteredMessageListner(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;->retryCountRegisteredMessageListner:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fputisBound(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;->isBound:Z

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputisSamsungAccountSignedIn(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;->isSamsungAccountSignedIn:Z

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputretryCount(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;->retryCount:I

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputretryCountRegisteredMessageListner(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;->retryCountRegisteredMessageListner:I

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$mbind(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;->bind()Z

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$mgetWifiApUtil(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;)Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityUtil;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;->getWifiApUtil()Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityUtil;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static bridge synthetic -$$Nest$misEnabledContinuitySettings(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;->isEnabledContinuitySettings()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static bridge synthetic -$$Nest$munbind(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;->unbind()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;->isBound:Z

    .line 6
    .line 7
    iput v0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;->retryCount:I

    .line 8
    .line 9
    iput v0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;->retryCountRegisteredMessageListner:I

    .line 10
    .line 11
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;->isRegisteredMessageListner:Z

    .line 12
    .line 13
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;->isSamsungAccountSignedIn:Z

    .line 14
    .line 15
    new-instance v0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter$3;

    .line 16
    .line 17
    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter$3;-><init>(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;)V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;->serviceConnection:Lcom/samsung/android/mcf/continuity/api/ContinuityAdapter$ServiceStateListener;

    .line 21
    .line 22
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;->mContext:Landroid/content/Context;

    .line 23
    .line 24
    return-void
.end method

.method private bind()Z
    .locals 3

    .line 1
    const-string v0, "MHSMcf:Adapter"

    .line 2
    .line 3
    const-string v1, "bind fuction"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;->getContinuityAdapter()Lcom/samsung/android/mcf/continuity/api/ContinuityAdapter;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;->mContext:Landroid/content/Context;

    .line 13
    .line 14
    const/4 v2, 0x4

    .line 15
    check-cast v0, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAbstractAdapterImpl;

    .line 16
    .line 17
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAbstractAdapterImpl;->initialize(Landroid/content/Context;I)I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    const/16 v1, 0x384

    .line 22
    .line 23
    if-ne v0, v1, :cond_0

    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;->getContinuityAdapter()Lcom/samsung/android/mcf/continuity/api/ContinuityAdapter;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;->mContext:Landroid/content/Context;

    .line 30
    .line 31
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;->serviceConnection:Lcom/samsung/android/mcf/continuity/api/ContinuityAdapter$ServiceStateListener;

    .line 32
    .line 33
    check-cast v0, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAbstractAdapterImpl;

    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    new-instance v2, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAbstractAdapterImpl$$ExternalSyntheticLambda3;

    .line 39
    .line 40
    invoke-direct {v2, v1, p0, v0}, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAbstractAdapterImpl$$ExternalSyntheticLambda3;-><init>(Landroid/content/Context;Lcom/samsung/android/mcf/continuity/api/ContinuityAbstractAdapter$ServiceStateListener;Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAbstractAdapterImpl;)V

    .line 41
    .line 42
    .line 43
    invoke-static {v2}, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->executeOnMain(Ljava/lang/Runnable;)Z

    .line 44
    .line 45
    .line 46
    const/4 p0, 0x1

    .line 47
    return p0

    .line 48
    :cond_0
    const/4 p0, 0x0

    .line 49
    return p0
.end method

.method private getWifiApUtil()Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityUtil;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;->mWifiApContinuityUtil:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityUtil;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApContinuityUtil()Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityUtil;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;->mWifiApContinuityUtil:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityUtil;

    .line 14
    .line 15
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;->mWifiApContinuityUtil:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityUtil;

    .line 16
    .line 17
    return-object p0
.end method

.method private isEnabledContinuitySettings()Z
    .locals 3

    .line 1
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getFrameworkFacade()Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;->mContext:Landroid/content/Context;

    .line 10
    .line 11
    const-string v1, "mcf_continuity"

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-virtual {v0, p0, v1, v2}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getSystemIntegerSetting(Landroid/content/Context;Ljava/lang/String;I)I

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    const/4 v0, 0x1

    .line 19
    if-ne p0, v0, :cond_0

    .line 20
    .line 21
    return v0

    .line 22
    :cond_0
    return v2
.end method

.method private registerBroadcast()V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/IntentFilter;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "com.samsung.account.SAMSUNGACCOUNT_SIGNIN_COMPLETED"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v1, "com.samsung.account.SAMSUNGACCOUNT_SIGNOUT_COMPLETED"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;->mContext:Landroid/content/Context;

    .line 17
    .line 18
    new-instance v2, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter$1;

    .line 19
    .line 20
    invoke-direct {v2, p0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter$1;-><init>(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;)V

    .line 21
    .line 22
    .line 23
    const/4 p0, 0x2

    .line 24
    invoke-virtual {v1, v2, v0, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method private registerContentObserver()V
    .locals 5

    .line 1
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getFrameworkFacade()Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;->mContext:Landroid/content/Context;

    .line 10
    .line 11
    const-string v2, "mcf_continuity"

    .line 12
    .line 13
    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    new-instance v3, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter$5;

    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;->getHandler()Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter$AutoHotspotHandler;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    invoke-direct {v3, p0, v4}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter$5;-><init>(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;Landroid/os/Handler;)V

    .line 24
    .line 25
    .line 26
    const/4 p0, 0x1

    .line 27
    invoke-virtual {v0, v1, v2, p0, v3}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->registerContentObserver(Landroid/content/Context;Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method private registerMcfBroadcast()V
    .locals 6

    .line 1
    new-instance v2, Landroid/content/IntentFilter;

    .line 2
    .line 3
    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v0, "com.samsung.android.mcfds.SERVICE_STARTED"

    .line 7
    .line 8
    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "com.samsung.android.mcfds.SERVICE_STOPPED"

    .line 12
    .line 13
    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;->mContext:Landroid/content/Context;

    .line 17
    .line 18
    new-instance v1, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter$2;

    .line 19
    .line 20
    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter$2;-><init>(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;->getHandler()Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter$AutoHotspotHandler;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    const/4 v5, 0x2

    .line 28
    const-string v3, "com.samsung.android.mcfds.permission.START_SERVICE"

    .line 29
    .line 30
    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method private unbind()V
    .locals 4

    .line 1
    const-string v0, "MHSMcf:Adapter"

    .line 2
    .line 3
    const-string v1, "unbind"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;->unregisterMessageListener()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;->getContinuityAdapter()Lcom/samsung/android/mcf/continuity/api/ContinuityAdapter;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;->getContinuityAdapter()Lcom/samsung/android/mcf/continuity/api/ContinuityAdapter;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;->mContext:Landroid/content/Context;

    .line 22
    .line 23
    check-cast v0, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAbstractAdapterImpl;

    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    new-instance v2, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAbstractAdapterImpl$$ExternalSyntheticLambda1;

    .line 29
    .line 30
    const/4 v3, 0x1

    .line 31
    invoke-direct {v2, v0, v1, v3}, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAbstractAdapterImpl$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 32
    .line 33
    .line 34
    invoke-static {v2}, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->executeOnMain(Ljava/lang/Runnable;)Z

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;->getContinuityAdapter()Lcom/samsung/android/mcf/continuity/api/ContinuityAdapter;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;->mContext:Landroid/content/Context;

    .line 42
    .line 43
    check-cast v0, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAbstractAdapterImpl;

    .line 44
    .line 45
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    .line 47
    .line 48
    new-instance v2, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAbstractAdapterImpl$$ExternalSyntheticLambda1;

    .line 49
    .line 50
    const/4 v3, 0x0

    .line 51
    invoke-direct {v2, v0, v1, v3}, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAbstractAdapterImpl$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 52
    .line 53
    .line 54
    invoke-static {v2}, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->executeOnMain(Ljava/lang/Runnable;)Z

    .line 55
    .line 56
    .line 57
    :cond_0
    const/4 v0, 0x0

    .line 58
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;->isBound:Z

    .line 59
    .line 60
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;->getHandler()Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter$AutoHotspotHandler;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    const/4 v1, 0x5

    .line 65
    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 66
    .line 67
    .line 68
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApContinuityMHS()Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    if-eqz p0, :cond_1

    .line 77
    .line 78
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApContinuityMHS()Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;->setServiceBinded(Z)V

    .line 87
    .line 88
    .line 89
    :cond_1
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 90
    .line 91
    .line 92
    move-result-object p0

    .line 93
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApContinuityClient()Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClient;

    .line 94
    .line 95
    .line 96
    move-result-object p0

    .line 97
    if-eqz p0, :cond_2

    .line 98
    .line 99
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 100
    .line 101
    .line 102
    move-result-object p0

    .line 103
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApContinuityClient()Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClient;

    .line 104
    .line 105
    .line 106
    move-result-object p0

    .line 107
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClient;->setServiceBinded(Z)V

    .line 108
    .line 109
    .line 110
    :cond_2
    return-void
.end method


# virtual methods
.method public getContinuityAdapter()Lcom/samsung/android/mcf/continuity/api/ContinuityAdapter;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;->adapter:Lcom/samsung/android/mcf/continuity/api/ContinuityAdapter;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/samsung/android/mcf/continuity/impl/mydevice/ContinuityAdapterImpl;->getInstance()Lcom/samsung/android/mcf/continuity/impl/mydevice/ContinuityAdapterImpl;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;->adapter:Lcom/samsung/android/mcf/continuity/api/ContinuityAdapter;

    .line 10
    .line 11
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;->adapter:Lcom/samsung/android/mcf/continuity/api/ContinuityAdapter;

    .line 12
    .line 13
    return-object p0
.end method

.method public getDiscoveryManager()Lcom/samsung/android/mcf/continuity/api/ContinuityDiscoveryManager;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;->isBound:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;->getContinuityAdapter()Lcom/samsung/android/mcf/continuity/api/ContinuityAdapter;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lcom/samsung/android/mcf/continuity/impl/mydevice/ContinuityAdapterImpl;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/samsung/android/mcf/continuity/impl/mydevice/ContinuityAdapterImpl;->getContinuityDiscoveryManager()Lcom/samsung/android/mcf/continuity/api/ContinuityDiscoveryManager;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0

    .line 16
    :cond_0
    const/4 p0, 0x0

    .line 17
    return-object p0
.end method

.method public getHandler()Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter$AutoHotspotHandler;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;->mAutoHotspotHandler:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter$AutoHotspotHandler;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter$AutoHotspotHandler;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-direct {v0, p0, v1}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter$AutoHotspotHandler;-><init>(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;I)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;->mAutoHotspotHandler:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter$AutoHotspotHandler;

    .line 12
    .line 13
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;->mAutoHotspotHandler:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter$AutoHotspotHandler;

    .line 14
    .line 15
    return-object p0
.end method

.method public handleBootCompleted()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApContinuityMHS()Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;->handleBootCompleted()V

    .line 10
    .line 11
    .line 12
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;->registerBroadcast()V

    .line 13
    .line 14
    .line 15
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;->registerMcfBroadcast()V

    .line 16
    .line 17
    .line 18
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;->registerContentObserver()V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public registerMessageListener()I
    .locals 6

    .line 1
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApContinuityAdapter()Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;->getDiscoveryManager()Lcom/samsung/android/mcf/continuity/api/ContinuityDiscoveryManager;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const-string v1, "MHSMcf:Adapter"

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    const-string p0, "registerMessageListener, discoveryManager is null"

    .line 18
    .line 19
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    const/4 p0, -0x1

    .line 23
    return p0

    .line 24
    :cond_0
    invoke-interface {v0}, Lcom/samsung/android/mcf/continuity/api/ContinuityMyDeviceDiscoveryManager;->getContinuitySimpleMessageManager()Lcom/samsung/android/mcf/continuity/impl/common/ContinuitySimpleMessageManagerImpl;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    if-nez v0, :cond_1

    .line 29
    .line 30
    const-string p0, "registerMessageListener, simpleMessageManager is null"

    .line 31
    .line 32
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    const/4 p0, -0x2

    .line 36
    return p0

    .line 37
    :cond_1
    iget-boolean v2, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;->isRegisteredMessageListner:Z

    .line 38
    .line 39
    if-eqz v2, :cond_2

    .line 40
    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    const-string v2, "registerMessageListener,  already isRegisteredMessageListner:"

    .line 44
    .line 45
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;->isRegisteredMessageListner:Z

    .line 49
    .line 50
    invoke-static {v0, p0, v1}, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 51
    .line 52
    .line 53
    const/4 p0, -0x3

    .line 54
    return p0

    .line 55
    :cond_2
    new-instance v2, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter$4;

    .line 56
    .line 57
    invoke-direct {v2, p0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter$4;-><init>(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;)V

    .line 58
    .line 59
    .line 60
    const-string v3, "ContinuitySimpleMessageManagerImpl"

    .line 61
    .line 62
    const-string v4, "registerMessageListener"

    .line 63
    .line 64
    const-string v5, "-"

    .line 65
    .line 66
    invoke-static {v3, v4, v5}, Lcom/samsung/android/mcf/continuity/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    new-instance v3, Lcom/samsung/android/mcf/continuity/impl/common/ContinuitySimpleMessageManagerImpl$$ExternalSyntheticLambda0;

    .line 70
    .line 71
    invoke-direct {v3, v0, v2}, Lcom/samsung/android/mcf/continuity/impl/common/ContinuitySimpleMessageManagerImpl$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/mcf/continuity/impl/common/ContinuitySimpleMessageManagerImpl;Lcom/samsung/android/mcf/continuity/api/ContinuityMessageManager$MessageListener;)V

    .line 72
    .line 73
    .line 74
    invoke-static {v3}, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->executeOnMain(Ljava/lang/Runnable;)Z

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    const/4 v2, 0x0

    .line 79
    if-eqz v0, :cond_3

    .line 80
    .line 81
    const/4 v0, 0x1

    .line 82
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;->isRegisteredMessageListner:Z

    .line 83
    .line 84
    const-string p0, "registerMessageListener is done"

    .line 85
    .line 86
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    .line 88
    .line 89
    return v2

    .line 90
    :cond_3
    iput-boolean v2, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;->isRegisteredMessageListner:Z

    .line 91
    .line 92
    const-string p0, "registerMessageListener is failed -4"

    .line 93
    .line 94
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    .line 96
    .line 97
    const/4 p0, -0x4

    .line 98
    return p0
.end method

.method public unregisterMessageListener()V
    .locals 6

    .line 1
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApContinuityAdapter()Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;->getDiscoveryManager()Lcom/samsung/android/mcf/continuity/api/ContinuityDiscoveryManager;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const/4 v1, 0x0

    .line 14
    const-string v2, "MHSMcf:Adapter"

    .line 15
    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    const-string v0, "unregisterMessageListener, discoveryManager = null"

    .line 19
    .line 20
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;->isRegisteredMessageListner:Z

    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    invoke-interface {v0}, Lcom/samsung/android/mcf/continuity/api/ContinuityMyDeviceDiscoveryManager;->getContinuitySimpleMessageManager()Lcom/samsung/android/mcf/continuity/impl/common/ContinuitySimpleMessageManagerImpl;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iget-boolean v3, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;->isRegisteredMessageListner:Z

    .line 31
    .line 32
    if-eqz v3, :cond_1

    .line 33
    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    const-string v3, "ContinuitySimpleMessageManagerImpl"

    .line 37
    .line 38
    const-string v4, "unregisterMessageListener"

    .line 39
    .line 40
    const-string v5, "-"

    .line 41
    .line 42
    invoke-static {v3, v4, v5}, Lcom/samsung/android/mcf/continuity/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    new-instance v3, Lcom/samsung/android/mcf/continuity/impl/common/ContinuitySimpleMessageManagerImpl$$ExternalSyntheticLambda1;

    .line 46
    .line 47
    invoke-direct {v3, v0}, Lcom/samsung/android/mcf/continuity/impl/common/ContinuitySimpleMessageManagerImpl$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/mcf/continuity/impl/common/ContinuitySimpleMessageManagerImpl;)V

    .line 48
    .line 49
    .line 50
    invoke-static {v3}, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->executeOnMain(Ljava/lang/Runnable;)Z

    .line 51
    .line 52
    .line 53
    :cond_1
    const-string v0, "unregisterMessageListener "

    .line 54
    .line 55
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;->isRegisteredMessageListner:Z

    .line 59
    .line 60
    return-void
.end method
