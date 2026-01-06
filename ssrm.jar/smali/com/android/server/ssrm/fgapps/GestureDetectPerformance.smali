.class public Lcom/android/server/ssrm/fgapps/GestureDetectPerformance;
.super Ljava/lang/Object;
.source "GestureDetectPerformance.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ssrm/fgapps/GestureDetectPerformance$GestureDetectReceiver;,
        Lcom/android/server/ssrm/fgapps/GestureDetectPerformance$ResumePackageChangedReceiver;,
        Lcom/android/server/ssrm/fgapps/GestureDetectPerformance$SipStateChangedReceiver;,
        Lcom/android/server/ssrm/fgapps/GestureDetectPerformance$LidStateReceiver;
    }
.end annotation


# static fields
.field private static final GESTURE_DETECT_REFRESH_RATE_MODE:Ljava/lang/String; = "refresh_rate_mode"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final MPCTL_PRIME_DOWNMIGRATE:I

.field private final MPCTL_PRIME_UPMIGRATE:I

.field private gameAppUtils:Lcom/android/server/ssrm/fgapps/GameAppUtils;

.field private gestureDetectEvent:Lcom/android/server/ssrm/common/intent/gesture/GestureDetectE;

.field private gestureDetectReceiver:Lcom/android/server/ssrm/fgapps/GestureDetectPerformance$GestureDetectReceiver;

.field private isBoostDisabledByFold:Z

.field private isSipVisible:Z

.field private mContext:Landroid/content/Context;

.field private final mGestureDetectObserver:Landroid/database/ContentObserver;

.field private mGestureDetectedBooster:Lcom/samsung/android/os/SemDvfsManager;

.field private mGestureDetectedBoosterHRR:Lcom/samsung/android/os/SemDvfsManager;

.field private mInteractionHintEnabled:Z

.field private mPerfMigration:Landroid/util/BoostFramework;

.field private mService:Lcom/android/server/ssrm/CustomFrequencyManagerService;

.field private refreshRateMode:I

.field private resumePackageChangedE:Lcom/android/server/ssrm/common/callback/foreground/ResumePackageChangedE;

.field private resumePackageChangedReceiver:Lcom/android/server/ssrm/fgapps/GestureDetectPerformance$ResumePackageChangedReceiver;

.field private sipStateChangedE:Lcom/android/server/ssrm/common/intent/sip/SipStateChangedE;

.field private sipStateChangedReceiver:Lcom/android/server/ssrm/fgapps/GestureDetectPerformance$SipStateChangedReceiver;


# direct methods
.method static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/ssrm/fgapps/GestureDetectPerformance;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/server/ssrm/fgapps/GestureDetectPerformance;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetrefreshRateMode(Lcom/android/server/ssrm/fgapps/GestureDetectPerformance;)I
    .locals 0

    iget p0, p0, Lcom/android/server/ssrm/fgapps/GestureDetectPerformance;->refreshRateMode:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetsipStateChangedE(Lcom/android/server/ssrm/fgapps/GestureDetectPerformance;)Lcom/android/server/ssrm/common/intent/sip/SipStateChangedE;
    .locals 0

    iget-object p0, p0, Lcom/android/server/ssrm/fgapps/GestureDetectPerformance;->sipStateChangedE:Lcom/android/server/ssrm/common/intent/sip/SipStateChangedE;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputgestureDetectEvent(Lcom/android/server/ssrm/fgapps/GestureDetectPerformance;Lcom/android/server/ssrm/common/intent/gesture/GestureDetectE;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/ssrm/fgapps/GestureDetectPerformance;->gestureDetectEvent:Lcom/android/server/ssrm/common/intent/gesture/GestureDetectE;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputisBoostDisabledByFold(Lcom/android/server/ssrm/fgapps/GestureDetectPerformance;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/ssrm/fgapps/GestureDetectPerformance;->isBoostDisabledByFold:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputisSipVisible(Lcom/android/server/ssrm/fgapps/GestureDetectPerformance;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/ssrm/fgapps/GestureDetectPerformance;->isSipVisible:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputrefreshRateMode(Lcom/android/server/ssrm/fgapps/GestureDetectPerformance;I)V
    .locals 0

    iput p1, p0, Lcom/android/server/ssrm/fgapps/GestureDetectPerformance;->refreshRateMode:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputresumePackageChangedE(Lcom/android/server/ssrm/fgapps/GestureDetectPerformance;Lcom/android/server/ssrm/common/callback/foreground/ResumePackageChangedE;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/ssrm/fgapps/GestureDetectPerformance;->resumePackageChangedE:Lcom/android/server/ssrm/common/callback/foreground/ResumePackageChangedE;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputsipStateChangedE(Lcom/android/server/ssrm/fgapps/GestureDetectPerformance;Lcom/android/server/ssrm/common/intent/sip/SipStateChangedE;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/ssrm/fgapps/GestureDetectPerformance;->sipStateChangedE:Lcom/android/server/ssrm/common/intent/sip/SipStateChangedE;

    return-void
.end method

.method static bridge synthetic -$$Nest$mexecute(Lcom/android/server/ssrm/fgapps/GestureDetectPerformance;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/ssrm/fgapps/GestureDetectPerformance;->execute()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/ssrm/fgapps/GestureDetectPerformance;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 32
    const-class v0, Lcom/android/server/ssrm/fgapps/GestureDetectPerformance;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/ssrm/fgapps/GestureDetectPerformance;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/GestureDetectPerformance;->mService:Lcom/android/server/ssrm/CustomFrequencyManagerService;

    .line 36
    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/GestureDetectPerformance;->gestureDetectEvent:Lcom/android/server/ssrm/common/intent/gesture/GestureDetectE;

    .line 38
    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/GestureDetectPerformance;->gestureDetectReceiver:Lcom/android/server/ssrm/fgapps/GestureDetectPerformance$GestureDetectReceiver;

    .line 40
    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/GestureDetectPerformance;->resumePackageChangedE:Lcom/android/server/ssrm/common/callback/foreground/ResumePackageChangedE;

    .line 42
    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/GestureDetectPerformance;->resumePackageChangedReceiver:Lcom/android/server/ssrm/fgapps/GestureDetectPerformance$ResumePackageChangedReceiver;

    .line 44
    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/GestureDetectPerformance;->sipStateChangedE:Lcom/android/server/ssrm/common/intent/sip/SipStateChangedE;

    .line 46
    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/GestureDetectPerformance;->sipStateChangedReceiver:Lcom/android/server/ssrm/fgapps/GestureDetectPerformance$SipStateChangedReceiver;

    .line 48
    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/GestureDetectPerformance;->mGestureDetectedBooster:Lcom/samsung/android/os/SemDvfsManager;

    .line 50
    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/GestureDetectPerformance;->mGestureDetectedBoosterHRR:Lcom/samsung/android/os/SemDvfsManager;

    .line 52
    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/GestureDetectPerformance;->gameAppUtils:Lcom/android/server/ssrm/fgapps/GameAppUtils;

    .line 56
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/ssrm/fgapps/GestureDetectPerformance;->isSipVisible:Z

    .line 58
    iput-boolean v1, p0, Lcom/android/server/ssrm/fgapps/GestureDetectPerformance;->isBoostDisabledByFold:Z

    .line 60
    iput-boolean v1, p0, Lcom/android/server/ssrm/fgapps/GestureDetectPerformance;->mInteractionHintEnabled:Z

    .line 62
    iput v1, p0, Lcom/android/server/ssrm/fgapps/GestureDetectPerformance;->refreshRateMode:I

    .line 64
    const v2, 0x40c20200

    iput v2, p0, Lcom/android/server/ssrm/fgapps/GestureDetectPerformance;->MPCTL_PRIME_DOWNMIGRATE:I

    .line 66
    const v2, 0x40c1c200

    iput v2, p0, Lcom/android/server/ssrm/fgapps/GestureDetectPerformance;->MPCTL_PRIME_UPMIGRATE:I

    .line 68
    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/GestureDetectPerformance;->mPerfMigration:Landroid/util/BoostFramework;

    .line 72
    new-instance v2, Lcom/android/server/ssrm/fgapps/GestureDetectPerformance$1;

    invoke-direct {v2, p0, v0}, Lcom/android/server/ssrm/fgapps/GestureDetectPerformance$1;-><init>(Lcom/android/server/ssrm/fgapps/GestureDetectPerformance;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/server/ssrm/fgapps/GestureDetectPerformance;->mGestureDetectObserver:Landroid/database/ContentObserver;

    .line 82
    iput-object p1, p0, Lcom/android/server/ssrm/fgapps/GestureDetectPerformance;->mContext:Landroid/content/Context;

    .line 83
    invoke-static {}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->getInstance()Lcom/android/server/ssrm/CustomFrequencyManagerService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/GestureDetectPerformance;->mService:Lcom/android/server/ssrm/CustomFrequencyManagerService;

    .line 84
    new-instance v0, Lcom/android/server/ssrm/fgapps/GestureDetectPerformance$GestureDetectReceiver;

    invoke-direct {v0, p0}, Lcom/android/server/ssrm/fgapps/GestureDetectPerformance$GestureDetectReceiver;-><init>(Lcom/android/server/ssrm/fgapps/GestureDetectPerformance;)V

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/GestureDetectPerformance;->gestureDetectReceiver:Lcom/android/server/ssrm/fgapps/GestureDetectPerformance$GestureDetectReceiver;

    .line 85
    invoke-static {p1}, Lcom/android/server/ssrm/common/EventManager;->getInstance(Landroid/content/Context;)Lcom/android/server/ssrm/common/EventManager;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/ssrm/fgapps/GestureDetectPerformance;->gestureDetectReceiver:Lcom/android/server/ssrm/fgapps/GestureDetectPerformance$GestureDetectReceiver;

    invoke-virtual {v0, v2}, Lcom/android/server/ssrm/common/EventManager;->registerReceiver(Lcom/android/server/ssrm/common/IEReceiver;)Lcom/android/server/ssrm/common/IEvent;

    .line 87
    new-instance v0, Lcom/android/server/ssrm/fgapps/GestureDetectPerformance$ResumePackageChangedReceiver;

    invoke-direct {v0, p0}, Lcom/android/server/ssrm/fgapps/GestureDetectPerformance$ResumePackageChangedReceiver;-><init>(Lcom/android/server/ssrm/fgapps/GestureDetectPerformance;)V

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/GestureDetectPerformance;->resumePackageChangedReceiver:Lcom/android/server/ssrm/fgapps/GestureDetectPerformance$ResumePackageChangedReceiver;

    .line 88
    invoke-static {p1}, Lcom/android/server/ssrm/common/EventManager;->getInstance(Landroid/content/Context;)Lcom/android/server/ssrm/common/EventManager;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/ssrm/fgapps/GestureDetectPerformance;->resumePackageChangedReceiver:Lcom/android/server/ssrm/fgapps/GestureDetectPerformance$ResumePackageChangedReceiver;

    invoke-virtual {v0, v2}, Lcom/android/server/ssrm/common/EventManager;->registerReceiver(Lcom/android/server/ssrm/common/IEReceiver;)Lcom/android/server/ssrm/common/IEvent;

    .line 90
    new-instance v0, Lcom/android/server/ssrm/fgapps/GestureDetectPerformance$SipStateChangedReceiver;

    invoke-direct {v0, p0}, Lcom/android/server/ssrm/fgapps/GestureDetectPerformance$SipStateChangedReceiver;-><init>(Lcom/android/server/ssrm/fgapps/GestureDetectPerformance;)V

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/GestureDetectPerformance;->sipStateChangedReceiver:Lcom/android/server/ssrm/fgapps/GestureDetectPerformance$SipStateChangedReceiver;

    .line 91
    invoke-static {p1}, Lcom/android/server/ssrm/common/EventManager;->getInstance(Landroid/content/Context;)Lcom/android/server/ssrm/common/EventManager;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/ssrm/fgapps/GestureDetectPerformance;->sipStateChangedReceiver:Lcom/android/server/ssrm/fgapps/GestureDetectPerformance$SipStateChangedReceiver;

    invoke-virtual {v0, v2}, Lcom/android/server/ssrm/common/EventManager;->registerReceiver(Lcom/android/server/ssrm/common/IEReceiver;)Lcom/android/server/ssrm/common/IEvent;

    .line 93
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SYSPERF_BOOST_DISABLE_WHEN_FOLDED:Z

    if-eqz v0, :cond_0

    .line 94
    invoke-static {p1}, Lcom/android/server/ssrm/common/EventManager;->getInstance(Landroid/content/Context;)Lcom/android/server/ssrm/common/EventManager;

    move-result-object v0

    new-instance v2, Lcom/android/server/ssrm/fgapps/GestureDetectPerformance$LidStateReceiver;

    invoke-direct {v2, p0}, Lcom/android/server/ssrm/fgapps/GestureDetectPerformance$LidStateReceiver;-><init>(Lcom/android/server/ssrm/fgapps/GestureDetectPerformance;)V

    invoke-virtual {v0, v2}, Lcom/android/server/ssrm/common/EventManager;->registerReceiver(Lcom/android/server/ssrm/common/IEReceiver;)Lcom/android/server/ssrm/common/IEvent;

    .line 97
    :cond_0
    invoke-static {}, Lcom/android/server/ssrm/fgapps/GameAppUtils;->getInstance()Lcom/android/server/ssrm/fgapps/GameAppUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/GestureDetectPerformance;->gameAppUtils:Lcom/android/server/ssrm/fgapps/GameAppUtils;

    .line 99
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GestureDetectPerformance;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 101
    .local v0, "cr":Landroid/content/ContentResolver;
    iget-object v2, p0, Lcom/android/server/ssrm/fgapps/GestureDetectPerformance;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "refresh_rate_mode"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/server/ssrm/fgapps/GestureDetectPerformance;->refreshRateMode:I

    .line 103
    new-instance v2, Landroid/util/BoostFramework;

    invoke-direct {v2}, Landroid/util/BoostFramework;-><init>()V

    iput-object v2, p0, Lcom/android/server/ssrm/fgapps/GestureDetectPerformance;->mPerfMigration:Landroid/util/BoostFramework;

    .line 105
    const/4 v2, 0x0

    .line 106
    .local v2, "settings":Landroid/net/Uri;
    invoke-static {v3}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 107
    iget-object v3, p0, Lcom/android/server/ssrm/fgapps/GestureDetectPerformance;->mGestureDetectObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 108
    return-void
.end method

.method private declared-synchronized execute()V
    .locals 8

    monitor-enter p0

    .line 115
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GestureDetectPerformance;->isBoostDisabledByFold:Z

    if-eqz v0, :cond_0

    .line 116
    sget-object v0, Lcom/android/server/ssrm/fgapps/GestureDetectPerformance;->TAG:Ljava/lang/String;

    const-string v1, "Booster doesn\'t work on fold scenario."

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    monitor-exit p0

    return-void

    .line 119
    .end local p0    # "this":Lcom/android/server/ssrm/fgapps/GestureDetectPerformance;
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GestureDetectPerformance;->gestureDetectEvent:Lcom/android/server/ssrm/common/intent/gesture/GestureDetectE;

    if-eqz v0, :cond_7

    .line 120
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GestureDetectPerformance;->gestureDetectEvent:Lcom/android/server/ssrm/common/intent/gesture/GestureDetectE;

    invoke-virtual {v0}, Lcom/android/server/ssrm/common/intent/gesture/GestureDetectE;->getGestureAllValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 121
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GestureDetectPerformance;->gestureDetectEvent:Lcom/android/server/ssrm/common/intent/gesture/GestureDetectE;

    invoke-virtual {v0}, Lcom/android/server/ssrm/common/intent/gesture/GestureDetectE;->getValues()[Ljava/lang/String;

    move-result-object v0

    .line 122
    .local v0, "values":[Ljava/lang/String;
    if-nez v0, :cond_1

    .line 123
    sget-object v1, Lcom/android/server/ssrm/fgapps/GestureDetectPerformance;->TAG:Ljava/lang/String;

    const-string v2, "The Value of Gesturedetect is null"

    invoke-static {v1, v2}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 124
    monitor-exit p0

    return-void

    .line 126
    :cond_1
    :try_start_2
    sget-object v1, Lcom/android/server/ssrm/fgapps/GestureDetectPerformance;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v4, v0, v3

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", BoostTimeout = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v4, 0x1

    aget-object v4, v0, v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/GestureDetectPerformance;->mGestureDetectedBooster:Lcom/samsung/android/os/SemDvfsManager;

    if-nez v1, :cond_2

    .line 129
    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/GestureDetectPerformance;->mContext:Landroid/content/Context;

    const-string v2, "GESTURE_DETECTED"

    invoke-static {v1, v2}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/GestureDetectPerformance;->mGestureDetectedBooster:Lcom/samsung/android/os/SemDvfsManager;

    .line 130
    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/GestureDetectPerformance;->mGestureDetectedBooster:Lcom/samsung/android/os/SemDvfsManager;

    const/16 v2, 0x16

    invoke-virtual {v1, v2}, Lcom/samsung/android/os/SemDvfsManager;->setHint(I)V

    .line 132
    :cond_2
    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/GestureDetectPerformance;->mGestureDetectedBoosterHRR:Lcom/samsung/android/os/SemDvfsManager;

    if-nez v1, :cond_3

    .line 133
    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/GestureDetectPerformance;->mContext:Landroid/content/Context;

    const-string v2, "GESTURE_DETECTED_HRR"

    invoke-static {v1, v2}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/GestureDetectPerformance;->mGestureDetectedBoosterHRR:Lcom/samsung/android/os/SemDvfsManager;

    .line 134
    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/GestureDetectPerformance;->mGestureDetectedBoosterHRR:Lcom/samsung/android/os/SemDvfsManager;

    const/16 v2, 0x17

    invoke-virtual {v1, v2}, Lcom/samsung/android/os/SemDvfsManager;->setHint(I)V

    .line 136
    :cond_3
    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/GestureDetectPerformance;->mGestureDetectedBooster:Lcom/samsung/android/os/SemDvfsManager;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/GestureDetectPerformance;->mGestureDetectedBoosterHRR:Lcom/samsung/android/os/SemDvfsManager;

    if-eqz v1, :cond_7

    iget-boolean v1, p0, Lcom/android/server/ssrm/fgapps/GestureDetectPerformance;->isSipVisible:Z

    if-eqz v1, :cond_4

    const-string v1, "1"

    aget-object v2, v0, v3

    .line 137
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_4
    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/GestureDetectPerformance;->resumePackageChangedE:Lcom/android/server/ssrm/common/callback/foreground/ResumePackageChangedE;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/GestureDetectPerformance;->gameAppUtils:Lcom/android/server/ssrm/fgapps/GameAppUtils;

    iget-object v2, p0, Lcom/android/server/ssrm/fgapps/GestureDetectPerformance;->resumePackageChangedE:Lcom/android/server/ssrm/common/callback/foreground/ResumePackageChangedE;

    .line 139
    invoke-virtual {v2}, Lcom/android/server/ssrm/common/callback/foreground/ResumePackageChangedE;->getResumedPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/ssrm/fgapps/GameAppUtils;->isGame(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 140
    invoke-direct {p0}, Lcom/android/server/ssrm/fgapps/GestureDetectPerformance;->getBoostTimeout()I

    move-result v1

    .line 141
    .local v1, "timeout":I
    sget-object v2, Lcom/android/server/ssrm/fgapps/GestureDetectPerformance;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "GD booster refreshRateMode : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/ssrm/fgapps/GestureDetectPerformance;->refreshRateMode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", timeout = (default+"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    if-lez v1, :cond_7

    .line 145
    iget v2, p0, Lcom/android/server/ssrm/fgapps/GestureDetectPerformance;->refreshRateMode:I

    if-nez v2, :cond_5

    .line 146
    iget-object v2, p0, Lcom/android/server/ssrm/fgapps/GestureDetectPerformance;->mGestureDetectedBooster:Lcom/samsung/android/os/SemDvfsManager;

    invoke-virtual {v2, v1}, Lcom/samsung/android/os/SemDvfsManager;->acquire(I)V

    goto :goto_0

    .line 148
    :cond_5
    sget-boolean v2, Lcom/android/server/ssrm/Feature;->CHIP_SDM8350:Z

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/server/ssrm/fgapps/GestureDetectPerformance;->mPerfMigration:Landroid/util/BoostFramework;

    if-eqz v2, :cond_6

    .line 149
    iget-object v2, p0, Lcom/android/server/ssrm/fgapps/GestureDetectPerformance;->mPerfMigration:Landroid/util/BoostFramework;

    invoke-virtual {v2}, Landroid/util/BoostFramework;->perfLockRelease()I

    .line 150
    iget-object v2, p0, Lcom/android/server/ssrm/fgapps/GestureDetectPerformance;->mPerfMigration:Landroid/util/BoostFramework;

    const/16 v4, 0x14

    const v5, 0x40c20200

    const/16 v6, 0xf

    const v7, 0x40c1c200

    filled-new-array {v5, v6, v7, v4}, [I

    move-result-object v4

    invoke-virtual {v2, v1, v4}, Landroid/util/BoostFramework;->perfLockAcquire(I[I)I

    .line 152
    :cond_6
    iget-object v2, p0, Lcom/android/server/ssrm/fgapps/GestureDetectPerformance;->mGestureDetectedBoosterHRR:Lcom/samsung/android/os/SemDvfsManager;

    invoke-virtual {v2, v1}, Lcom/samsung/android/os/SemDvfsManager;->acquire(I)V

    .line 153
    iget-boolean v2, p0, Lcom/android/server/ssrm/fgapps/GestureDetectPerformance;->mInteractionHintEnabled:Z

    if-eqz v2, :cond_7

    .line 154
    iget-object v2, p0, Lcom/android/server/ssrm/fgapps/GestureDetectPerformance;->mService:Lcom/android/server/ssrm/CustomFrequencyManagerService;

    invoke-virtual {v2, v3, v3, v1}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->requestGpis(III)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 161
    .end local v0    # "values":[Ljava/lang/String;
    .end local v1    # "timeout":I
    :cond_7
    :goto_0
    monitor-exit p0

    return-void

    .line 114
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method private getBoostTimeout()I
    .locals 5

    .line 164
    const/4 v0, 0x0

    .line 165
    .local v0, "timeout":I
    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/GestureDetectPerformance;->gestureDetectEvent:Lcom/android/server/ssrm/common/intent/gesture/GestureDetectE;

    if-eqz v1, :cond_1

    .line 166
    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/GestureDetectPerformance;->gestureDetectEvent:Lcom/android/server/ssrm/common/intent/gesture/GestureDetectE;

    invoke-virtual {v1}, Lcom/android/server/ssrm/common/intent/gesture/GestureDetectE;->getValues()[Ljava/lang/String;

    move-result-object v1

    .line 167
    .local v1, "values":[Ljava/lang/String;
    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 168
    sget-object v3, Lcom/android/server/ssrm/fgapps/GestureDetectPerformance;->TAG:Ljava/lang/String;

    const-string v4, "The Value of Gesturedetect is null"

    invoke-static {v3, v4}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    return v2

    .line 171
    :cond_0
    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 172
    aget-object v2, v1, v3

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    double-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 173
    sget-object v2, Lcom/android/server/ssrm/fgapps/GestureDetectPerformance;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GESTURE_DETECTED Timeout : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    .end local v1    # "values":[Ljava/lang/String;
    :cond_1
    return v0
.end method


# virtual methods
.method public enableInteractionHint(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .line 111
    iput-boolean p1, p0, Lcom/android/server/ssrm/fgapps/GestureDetectPerformance;->mInteractionHintEnabled:Z

    .line 112
    return-void
.end method
