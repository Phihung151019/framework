.class public Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalReceiver;
.super Ljava/lang/Object;
.source "SemInputExternalReceiver.java"

# interfaces
.implements Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$IExternalEventRegister;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalReceiver$BroadcastSet;
    }
.end annotation


# static fields
.field private static final COVER_ATTACH_CHANGED_INTENT:Ljava/lang/String; = "com.samsung.android.intent.action.COVER_ATTACH_CHANGED"

.field private static final EXTRA_COVER_ATTACH:Ljava/lang/String; = "attach"

.field private static final EXTRA_REAL_COVER_TYPE:Ljava/lang/String; = "real_cover_type"

.field private static final GOS_INTENT:Ljava/lang/String; = "com.samsung.android.game.gos.action.TSP"

.field private static final RF_FIELD_OFF:Ljava/lang/String; = "com.android.nfc_extras.action.RF_FIELD_OFF_DETECTED"

.field private static final RF_FIELD_ON:Ljava/lang/String; = "com.android.nfc_extras.action.RF_FIELD_ON_DETECTED"

.field private static final SET_FAST_RESPONSE:Ljava/lang/String; = "set_fast_response"

.field private static final SET_GAME_MODE:Ljava/lang/String; = "set_game_mode"

.field private static final SET_SCAN_RATE:Ljava/lang/String; = "set_scan_rate"

.field private static final TAG:Ljava/lang/String; = "SemInputExternalReceiver"


# instance fields
.field private final chargerBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private context:Landroid/content/Context;

.field private final coverBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final extraChargerBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final gameServiceBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final lazyBootCompleteBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mainHandler:Landroid/os/Handler;

.field private final nfcRFBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final registeredList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;",
            "Ljava/util/ArrayList;",
            ">;"
        }
    .end annotation
.end field

.field private final shutdownBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final supportList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;",
            "Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalReceiver$BroadcastSet;",
            ">;"
        }
    .end annotation
.end field

.field private final userSwitchedBroadcastReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static bridge synthetic -$$Nest$fgetregisteredList(Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalReceiver;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalReceiver;->registeredList:Ljava/util/Map;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalReceiver;->context:Landroid/content/Context;

    .line 31
    iput-object v0, p0, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalReceiver;->mainHandler:Landroid/os/Handler;

    .line 32
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalReceiver;->registeredList:Ljava/util/Map;

    .line 33
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalReceiver;->supportList:Ljava/util/Map;

    .line 115
    new-instance v1, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalReceiver$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalReceiver$1;-><init>(Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalReceiver;)V

    iput-object v1, p0, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalReceiver;->chargerBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 141
    new-instance v1, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalReceiver$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalReceiver$2;-><init>(Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalReceiver;)V

    iput-object v1, p0, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalReceiver;->extraChargerBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 165
    new-instance v1, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalReceiver$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalReceiver$3;-><init>(Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalReceiver;)V

    iput-object v1, p0, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalReceiver;->shutdownBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 181
    new-instance v1, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalReceiver$4;

    invoke-direct {v1, p0}, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalReceiver$4;-><init>(Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalReceiver;)V

    iput-object v1, p0, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalReceiver;->lazyBootCompleteBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 197
    new-instance v1, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalReceiver$5;

    invoke-direct {v1, p0}, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalReceiver$5;-><init>(Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalReceiver;)V

    iput-object v1, p0, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalReceiver;->gameServiceBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 219
    new-instance v1, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalReceiver$6;

    invoke-direct {v1, p0}, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalReceiver$6;-><init>(Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalReceiver;)V

    iput-object v1, p0, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalReceiver;->coverBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 239
    new-instance v1, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalReceiver$7;

    invoke-direct {v1, p0}, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalReceiver$7;-><init>(Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalReceiver;)V

    iput-object v1, p0, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalReceiver;->userSwitchedBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 255
    new-instance v1, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalReceiver$8;

    invoke-direct {v1, p0}, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalReceiver$8;-><init>(Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalReceiver;)V

    iput-object v1, p0, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalReceiver;->nfcRFBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 36
    iput-object p1, p0, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalReceiver;->context:Landroid/content/Context;

    .line 37
    iput-object p2, p0, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalReceiver;->mainHandler:Landroid/os/Handler;

    .line 39
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalReceiver;->supportList:Ljava/util/Map;

    sget-object v2, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;->BROADCAST_BATTERY:Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;

    new-instance v3, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalReceiver$BroadcastSet;

    iget-object v4, p0, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalReceiver;->chargerBroadcastReceiver:Landroid/content/BroadcastReceiver;

    const-string v5, "android.intent.action.BATTERY_CHANGED"

    const/4 v6, 0x1

    invoke-direct {v3, v5, v0, v4, v6}, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalReceiver$BroadcastSet;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/BroadcastReceiver;Z)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalReceiver;->supportList:Ljava/util/Map;

    sget-object v2, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;->BROADCAST_BATTERY_EXTRA:Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;

    new-instance v3, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalReceiver$BroadcastSet;

    const-string v4, "com.samsung.server.BatteryService.action.SEC_BATTERY_EVENT"

    iget-object v5, p0, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalReceiver;->extraChargerBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-direct {v3, v4, v0, v5, v6}, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalReceiver$BroadcastSet;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/BroadcastReceiver;Z)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalReceiver;->supportList:Ljava/util/Map;

    sget-object v2, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;->BROADCAST_SHUTDOWN:Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;

    new-instance v3, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalReceiver$BroadcastSet;

    iget-object v4, p0, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalReceiver;->shutdownBroadcastReceiver:Landroid/content/BroadcastReceiver;

    const-string v5, "android.intent.action.ACTION_SHUTDOWN"

    const/4 v7, 0x0

    invoke-direct {v3, v5, v0, v4, v7}, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalReceiver$BroadcastSet;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/BroadcastReceiver;Z)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalReceiver;->supportList:Ljava/util/Map;

    sget-object v2, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;->BROADCAST_LAZY_BOOT:Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;

    new-instance v3, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalReceiver$BroadcastSet;

    const-string v4, "com.samsung.intent.action.LAZY_BOOT_COMPLETE"

    iget-object v5, p0, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalReceiver;->lazyBootCompleteBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-direct {v3, v4, v0, v5, v6}, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalReceiver$BroadcastSet;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/BroadcastReceiver;Z)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalReceiver;->supportList:Ljava/util/Map;

    sget-object v2, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;->BROADCAST_USER_SWITCHED:Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;

    new-instance v3, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalReceiver$BroadcastSet;

    const-string v4, "android.intent.action.USER_SWITCHED"

    iget-object v5, p0, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalReceiver;->userSwitchedBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-direct {v3, v4, v0, v5, v6}, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalReceiver$BroadcastSet;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/BroadcastReceiver;Z)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-boolean v1, Lcom/samsung/android/hardware/secinputdev/utils/SemInputFeatures;->IS_WEAROS:Z

    if-eqz v1, :cond_0

    .line 45
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalReceiver;->supportList:Ljava/util/Map;

    sget-object v2, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;->BROADCAST_RF_DETECTED:Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;

    new-instance v3, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalReceiver$BroadcastSet;

    const-string v4, "com.android.nfc_extras.action.RF_FIELD_ON_DETECTED"

    iget-object v5, p0, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalReceiver;->nfcRFBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-direct {v3, v4, v0, v5, v7}, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalReceiver$BroadcastSet;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/BroadcastReceiver;Z)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalReceiver;->supportList:Ljava/util/Map;

    sget-object v2, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;->BROADCAST_RF_OFF_DETECTED:Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;

    new-instance v3, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalReceiver$BroadcastSet;

    const-string v4, "com.android.nfc_extras.action.RF_FIELD_OFF_DETECTED"

    iget-object v5, p0, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalReceiver;->nfcRFBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-direct {v3, v4, v0, v5, v7}, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalReceiver$BroadcastSet;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/BroadcastReceiver;Z)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 48
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalReceiver;->supportList:Ljava/util/Map;

    sget-object v2, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;->BROADCAST_GAME:Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;

    new-instance v3, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalReceiver$BroadcastSet;

    const-string v4, "android.permission.HARDWARE_TEST"

    iget-object v5, p0, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalReceiver;->gameServiceBroadcastReceiver:Landroid/content/BroadcastReceiver;

    const-string v7, "com.samsung.android.game.gos.action.TSP"

    invoke-direct {v3, v7, v4, v5, v6}, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalReceiver$BroadcastSet;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/BroadcastReceiver;Z)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalReceiver;->supportList:Ljava/util/Map;

    sget-object v2, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;->BROADCAST_COVER:Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;

    new-instance v3, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalReceiver$BroadcastSet;

    const-string v4, "com.samsung.android.intent.action.COVER_ATTACH_CHANGED"

    iget-object v5, p0, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalReceiver;->coverBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-direct {v3, v4, v0, v5, v6}, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalReceiver$BroadcastSet;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/BroadcastReceiver;Z)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    :goto_0
    return-void
.end method


# virtual methods
.method public registerBroadcastReceiver(Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$IBroadcastReceiver;)Z
    .locals 10
    .param p1, "event"    # Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;
    .param p2, "ireceiver"    # Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$IBroadcastReceiver;

    .line 60
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalReceiver;->supportList:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalReceiver$BroadcastSet;

    .line 61
    .local v0, "broadcastSet":Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalReceiver$BroadcastSet;
    const/4 v1, 0x0

    const-string v2, "SemInputExternalReceiver"

    if-nez v0, :cond_0

    .line 62
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "registerReceiver: Not support: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    return v1

    .line 65
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalReceiver$BroadcastSet;->getReceiver()Landroid/content/BroadcastReceiver;

    move-result-object v5

    .line 66
    .local v5, "receiver":Landroid/content/BroadcastReceiver;
    invoke-virtual {v0}, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalReceiver$BroadcastSet;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 68
    .local v3, "action":Ljava/lang/String;
    if-eqz v3, :cond_5

    if-nez v5, :cond_1

    goto :goto_1

    .line 73
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalReceiver;->registeredList:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 74
    .local v1, "listenerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$IBroadcastReceiver;>;"
    if-nez v1, :cond_3

    .line 75
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v4

    .line 77
    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .line 78
    .local v6, "intentFilter":Landroid/content/IntentFilter;
    invoke-virtual {v6, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 79
    invoke-virtual {v0}, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalReceiver$BroadcastSet;->needScheduler()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 80
    iget-object v4, p0, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalReceiver;->context:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalReceiver$BroadcastSet;->getPermission()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalReceiver;->mainHandler:Landroid/os/Handler;

    const/4 v9, 0x2

    invoke-virtual/range {v4 .. v9}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    goto :goto_0

    .line 82
    :cond_2
    iget-object v4, p0, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalReceiver;->context:Landroid/content/Context;

    const/4 v7, 0x2

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 87
    .end local v6    # "intentFilter":Landroid/content/IntentFilter;
    :cond_3
    :goto_0
    if-eqz v1, :cond_4

    .line 88
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    .line 90
    iget-object v4, p0, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalReceiver;->registeredList:Ljava/util/Map;

    invoke-interface {v4, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "registerBroadcastReceiver "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    const/4 v2, 0x1

    return v2

    .line 69
    .end local v1    # "listenerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$IBroadcastReceiver;>;"
    :cond_5
    :goto_1
    const-string v4, "registerReceiver: BroadcastSet problem "

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    return v1
.end method

.method public registerServiceListener(Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$IServiceListener;)Z
    .locals 1
    .param p1, "event"    # Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;
    .param p2, "receiver"    # Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$IServiceListener;

    .line 55
    const/4 v0, 0x0

    return v0
.end method
