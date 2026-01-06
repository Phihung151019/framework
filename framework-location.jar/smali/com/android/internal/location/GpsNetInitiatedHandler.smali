.class public Lcom/android/internal/location/GpsNetInitiatedHandler;
.super Ljava/lang/Object;
.source "GpsNetInitiatedHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/location/GpsNetInitiatedHandler$EmergencyCallListener;,
        Lcom/android/internal/location/GpsNetInitiatedHandler$EmergencyCallCallback;
    }
.end annotation


# static fields
.field private static final blacklist CALL_CONNECTED:I = 0x2

.field private static final blacklist CALL_DISCONNECTED:I = 0x1

.field private static final blacklist DEBUG:Z

.field private static final blacklist EMERGENCY_CALL_STATE_ACTIVE:I = 0x2

.field private static final blacklist EMERGENCY_CALL_STATE_CONNECTING:I = 0x1

.field private static final blacklist EMERGENCY_CALL_STATE_ECBM:I = 0x3

.field private static final blacklist EMERGENCY_CALL_STATE_NONE:I = 0x0

.field private static final blacklist EMERGENCY_STATE_OFF:I = 0x0

.field private static final blacklist EMERGENCY_STATE_ON:I = 0x1

.field private static final blacklist EMERGENCY_STATE_SMS:I = 0x2

.field private static final blacklist INTENT_CALL_STATE:Ljava/lang/String; = "com.samsung.rcs.CALL_STATE_CHANGED"

.field private static final blacklist INTENT_ECBM_CHANGED:Ljava/lang/String; = "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

.field private static final blacklist TAG:Ljava/lang/String; = "GpsNetInitiatedHandler"


# instance fields
.field private final blacklist mBroadcastReciever:Landroid/content/BroadcastReceiver;

.field private volatile blacklist mCallEndElapsedRealtimeMillis:J

.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mEmergencyCallCallback:Lcom/android/internal/location/GpsNetInitiatedHandler$EmergencyCallCallback;

.field private final blacklist mEmergencyCallListener:Lcom/android/internal/location/GpsNetInitiatedHandler$EmergencyCallListener;

.field private blacklist mEmergencyCallState:I

.field private volatile blacklist mEmergencyExtensionMillis:J

.field private blacklist mEmergencySubId:I

.field private volatile blacklist mIsInEmergencyCall:Z

.field private final blacklist mIzatServiceEnabled:Z

.field private final blacklist mLocationManager:Landroid/location/LocationManager;

.field private volatile blacklist mNumOfEmergencyCalls:I

.field private final blacklist mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmEmergencyCallCallback(Lcom/android/internal/location/GpsNetInitiatedHandler;)Lcom/android/internal/location/GpsNetInitiatedHandler$EmergencyCallCallback;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mEmergencyCallCallback:Lcom/android/internal/location/GpsNetInitiatedHandler$EmergencyCallCallback;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmEmergencyCallState(Lcom/android/internal/location/GpsNetInitiatedHandler;)I
    .locals 0

    iget p0, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mEmergencyCallState:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsInEmergencyCall(Lcom/android/internal/location/GpsNetInitiatedHandler;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mIsInEmergencyCall:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIzatServiceEnabled(Lcom/android/internal/location/GpsNetInitiatedHandler;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mIzatServiceEnabled:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTelephonyManager(Lcom/android/internal/location/GpsNetInitiatedHandler;)Landroid/telephony/TelephonyManager;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmCallEndElapsedRealtimeMillis(Lcom/android/internal/location/GpsNetInitiatedHandler;J)V
    .locals 0

    iput-wide p1, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mCallEndElapsedRealtimeMillis:J

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmEmergencyCallState(Lcom/android/internal/location/GpsNetInitiatedHandler;I)V
    .locals 0

    iput p1, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mEmergencyCallState:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmEmergencySubId(Lcom/android/internal/location/GpsNetInitiatedHandler;I)V
    .locals 0

    iput p1, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mEmergencySubId:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIsInEmergencyCall(Lcom/android/internal/location/GpsNetInitiatedHandler;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mIsInEmergencyCall:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleEmergencyCallStateChanged(Lcom/android/internal/location/GpsNetInitiatedHandler;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/location/GpsNetInitiatedHandler;->handleEmergencyCallStateChanged(I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleIntentEcbmChanged(Lcom/android/internal/location/GpsNetInitiatedHandler;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/location/GpsNetInitiatedHandler;->handleIntentEcbmChanged(Z)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$misEmergencyCallActive(Lcom/android/internal/location/GpsNetInitiatedHandler;I)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/location/GpsNetInitiatedHandler;->isEmergencyCallActive(I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$msetEmergencyCallEnd(Lcom/android/internal/location/GpsNetInitiatedHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/location/GpsNetInitiatedHandler;->setEmergencyCallEnd()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetEmergencyCallStart(Lcom/android/internal/location/GpsNetInitiatedHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/location/GpsNetInitiatedHandler;->setEmergencyCallStart()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetEmergencyState(Lcom/android/internal/location/GpsNetInitiatedHandler;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/location/GpsNetInitiatedHandler;->setEmergencyState(I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetDEBUG()Z
    .locals 1

    sget-boolean v0, Lcom/android/internal/location/GpsNetInitiatedHandler;->DEBUG:Z

    return v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 2

    .line 49
    const-string v0, "GpsNetInitiatedHandler"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/location/GpsNetInitiatedHandler;->DEBUG:Z

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Lcom/android/internal/location/GpsNetInitiatedHandler$EmergencyCallCallback;Z)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "emergencyCallCallback"    # Lcom/android/internal/location/GpsNetInitiatedHandler$EmergencyCallCallback;
    .param p3, "isSuplEsEnabled"    # Z

    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mCallEndElapsedRealtimeMillis:J

    .line 80
    iput-wide v0, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mEmergencyExtensionMillis:J

    .line 82
    const-string v0, "qcom"

    sget-object v1, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mIzatServiceEnabled:Z

    .line 83
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mNumOfEmergencyCalls:I

    .line 84
    iput v0, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mEmergencyCallState:I

    .line 85
    iput v0, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mEmergencySubId:I

    .line 179
    new-instance v0, Lcom/android/internal/location/GpsNetInitiatedHandler$1;

    invoke-direct {v0, p0}, Lcom/android/internal/location/GpsNetInitiatedHandler$1;-><init>(Lcom/android/internal/location/GpsNetInitiatedHandler;)V

    iput-object v0, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mBroadcastReciever:Landroid/content/BroadcastReceiver;

    .line 207
    new-instance v0, Lcom/android/internal/location/GpsNetInitiatedHandler$EmergencyCallListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/internal/location/GpsNetInitiatedHandler$EmergencyCallListener;-><init>(Lcom/android/internal/location/GpsNetInitiatedHandler;Lcom/android/internal/location/GpsNetInitiatedHandler-IA;)V

    iput-object v0, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mEmergencyCallListener:Lcom/android/internal/location/GpsNetInitiatedHandler$EmergencyCallListener;

    .line 214
    iput-object p1, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mContext:Landroid/content/Context;

    .line 215
    iput-object p2, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mEmergencyCallCallback:Lcom/android/internal/location/GpsNetInitiatedHandler$EmergencyCallCallback;

    .line 217
    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mLocationManager:Landroid/location/LocationManager;

    .line 218
    nop

    .line 219
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 220
    iget-object v0, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mEmergencyCallListener:Lcom/android/internal/location/GpsNetInitiatedHandler$EmergencyCallListener;

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->registerTelephonyCallback(Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyCallback;)V

    .line 224
    iget-boolean v0, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mIzatServiceEnabled:Z

    if-nez v0, :cond_0

    .line 225
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 226
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "com.samsung.rcs.CALL_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 227
    const-string v1, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 228
    iget-object v1, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mBroadcastReciever:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 231
    .end local v0    # "intentFilter":Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method private blacklist handleEmergencyCallStateChanged(I)V
    .locals 3
    .param p1, "callState"    # I

    .line 345
    const/4 v0, 0x2

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    .line 346
    iget v0, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mNumOfEmergencyCalls:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mNumOfEmergencyCalls:I

    .line 347
    return-void

    .line 349
    :cond_0
    if-ne p1, v1, :cond_4

    .line 350
    iget v0, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mNumOfEmergencyCalls:I

    if-lez v0, :cond_1

    .line 351
    iget v0, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mNumOfEmergencyCalls:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mNumOfEmergencyCalls:I

    .line 353
    :cond_1
    iget-boolean v0, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mIsInEmergencyCall:Z

    const-string v1, "GpsNetInitiatedHandler"

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mNumOfEmergencyCalls:I

    if-nez v0, :cond_3

    .line 354
    sget-boolean v0, Lcom/android/internal/location/GpsNetInitiatedHandler;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "emergency call is disconnected"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/location/GpsNetInitiatedHandler;->setEmergencyCallEnd()V

    goto :goto_0

    .line 356
    :cond_3
    iget v0, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mNumOfEmergencyCalls:I

    if-lez v0, :cond_4

    .line 357
    sget-boolean v0, Lcom/android/internal/location/GpsNetInitiatedHandler;->DEBUG:Z

    if-eqz v0, :cond_4

    .line 358
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "additional emergency call is disconnected, the number of remaining call is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mNumOfEmergencyCalls:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    :cond_4
    :goto_0
    return-void
.end method

.method private blacklist handleIntentEcbmChanged(Z)V
    .locals 3
    .param p1, "isEcbm"    # Z

    .line 329
    const-string v0, "GpsNetInitiatedHandler"

    const/4 v1, 0x3

    if-eqz p1, :cond_1

    .line 330
    iget-boolean v2, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mIsInEmergencyCall:Z

    if-nez v2, :cond_0

    iget v2, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mEmergencyCallState:I

    if-eq v2, v1, :cond_0

    .line 331
    const-string v2, "emergency mode is on because ECBM is on."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/location/GpsNetInitiatedHandler;->setEmergencyState(I)V

    .line 334
    :cond_0
    iput v1, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mEmergencyCallState:I

    goto :goto_0

    .line 336
    :cond_1
    iget v2, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mEmergencyCallState:I

    if-ne v2, v1, :cond_2

    .line 337
    const-string v1, "emergency mode is off because ECBM is off"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/location/GpsNetInitiatedHandler;->setEmergencyState(I)V

    .line 339
    iput v0, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mEmergencyCallState:I

    .line 342
    :cond_2
    :goto_0
    return-void
.end method

.method private blacklist isEmergencyCallActive(I)Z
    .locals 2
    .param p1, "callState"    # I

    .line 283
    iget v0, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mEmergencyCallState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private blacklist setEmergencyCallEnd()V
    .locals 3

    .line 314
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mCallEndElapsedRealtimeMillis:J

    .line 315
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mIsInEmergencyCall:Z

    .line 316
    iput v0, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mNumOfEmergencyCalls:I

    .line 317
    iget-object v1, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getEmergencyCallbackMode()Z

    move-result v1

    const/4 v2, 0x3

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mEmergencyCallState:I

    if-eq v1, v2, :cond_0

    .line 319
    const-string v1, "GpsNetInitiatedHandler"

    const-string v2, "emergency mode is off."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    invoke-direct {p0, v0}, Lcom/android/internal/location/GpsNetInitiatedHandler;->setEmergencyState(I)V

    .line 321
    iput v0, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mEmergencyCallState:I

    goto :goto_0

    .line 323
    :cond_0
    iput v2, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mEmergencyCallState:I

    .line 325
    :goto_0
    iget-object v0, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mEmergencyCallCallback:Lcom/android/internal/location/GpsNetInitiatedHandler$EmergencyCallCallback;

    invoke-interface {v0}, Lcom/android/internal/location/GpsNetInitiatedHandler$EmergencyCallCallback;->onEmergencyCallEnd()V

    .line 326
    return-void
.end method

.method private blacklist setEmergencyCallStart()V
    .locals 3

    .line 303
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mIsInEmergencyCall:Z

    .line 304
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mEmergencyCallState:I

    .line 305
    sget-boolean v1, Lcom/android/internal/location/GpsNetInitiatedHandler;->DEBUG:Z

    const-string v2, "GpsNetInitiatedHandler"

    if-eqz v1, :cond_0

    const-string v1, "Emergency call is ACTIVE."

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    :cond_0
    iget-object v1, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getEmergencyCallbackMode()Z

    move-result v1

    if-nez v1, :cond_1

    .line 307
    const-string v1, "emergency mode is on."

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    invoke-direct {p0, v0}, Lcom/android/internal/location/GpsNetInitiatedHandler;->setEmergencyState(I)V

    .line 309
    iget-object v0, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mEmergencyCallCallback:Lcom/android/internal/location/GpsNetInitiatedHandler$EmergencyCallCallback;

    iget v1, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mEmergencySubId:I

    invoke-interface {v0, v1}, Lcom/android/internal/location/GpsNetInitiatedHandler$EmergencyCallCallback;->onEmergencyCallStart(I)V

    .line 311
    :cond_1
    return-void
.end method

.method private blacklist setEmergencyState(I)V
    .locals 4
    .param p1, "eState"    # I

    .line 289
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 290
    .local v0, "extras":Landroid/os/Bundle;
    const/4 v1, 0x1

    const-string v2, "config_string"

    if-ne p1, v1, :cond_0

    .line 291
    const-string v1, "EMERGENCY_STATE=TRUE"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 293
    :cond_0
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 294
    const-string v1, "EMERGENCY_STATE=SMS"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 297
    :cond_1
    const-string v1, "EMERGENCY_STATE=FALSE"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    :goto_0
    iget-object v1, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mLocationManager:Landroid/location/LocationManager;

    const-string v2, "gps"

    const-string v3, "set_emergency_state"

    invoke-virtual {v1, v2, v3, v0}, Landroid/location/LocationManager;->sendExtraCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    .line 300
    return-void
.end method


# virtual methods
.method public blacklist getInEmergency()Z
    .locals 2

    .line 246
    iget-wide v0, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mEmergencyExtensionMillis:J

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/location/GpsNetInitiatedHandler;->getInEmergency(J)Z

    move-result v0

    return v0
.end method

.method public blacklist getInEmergency(J)Z
    .locals 7
    .param p1, "emergencyExtensionMillis"    # J

    .line 259
    iget-wide v0, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mCallEndElapsedRealtimeMillis:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_0

    .line 261
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mCallEndElapsedRealtimeMillis:J

    sub-long/2addr v3, v5

    cmp-long v0, v3, p1

    if-gez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 263
    .local v0, "isInEmergencyExtension":Z
    :goto_0
    const/4 v3, 0x0

    .line 264
    .local v3, "isInEmergencyCallback":Z
    const/4 v4, 0x0

    .line 265
    .local v4, "isInEmergencySmsMode":Z
    iget-object v5, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 266
    .local v5, "pm":Landroid/content/pm/PackageManager;
    if-eqz v5, :cond_1

    const-string v6, "android.hardware.telephony.calling"

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 267
    iget-object v6, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getEmergencyCallbackMode()Z

    move-result v3

    .line 269
    :cond_1
    if-eqz v5, :cond_2

    const-string v6, "android.hardware.telephony.messaging"

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 270
    iget-object v6, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->isInEmergencySmsMode()Z

    move-result v4

    .line 272
    :cond_2
    iget-boolean v6, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mIsInEmergencyCall:Z

    if-nez v6, :cond_4

    if-nez v3, :cond_4

    if-nez v0, :cond_4

    if-eqz v4, :cond_3

    goto :goto_1

    :cond_3
    move v1, v2

    :cond_4
    :goto_1
    return v1
.end method

.method public blacklist setEmergencyExtensionSeconds(I)V
    .locals 3
    .param p1, "emergencyExtensionSeconds"    # I

    .line 277
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mEmergencyExtensionMillis:J

    .line 278
    return-void
.end method
