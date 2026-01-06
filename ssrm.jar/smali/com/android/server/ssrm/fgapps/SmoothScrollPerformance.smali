.class public Lcom/android/server/ssrm/fgapps/SmoothScrollPerformance;
.super Ljava/lang/Object;
.source "SmoothScrollPerformance.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ssrm/fgapps/SmoothScrollPerformance$SmoothScrollReceiver;,
        Lcom/android/server/ssrm/fgapps/SmoothScrollPerformance$ResumePackageChangedReceiver;,
        Lcom/android/server/ssrm/fgapps/SmoothScrollPerformance$LidStateReceiver;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String;

.field private static sInstance:Lcom/android/server/ssrm/fgapps/SmoothScrollPerformance;


# instance fields
.field private isBoostDisabledByFold:Z

.field mAcquired:Z

.field private mContext:Landroid/content/Context;

.field mSmoothScrollBoosterManager:Lcom/samsung/android/os/SemDvfsManager;

.field private resumePackageChangedE:Lcom/android/server/ssrm/common/callback/foreground/ResumePackageChangedE;

.field private resumePackageChangedReceiver:Lcom/android/server/ssrm/fgapps/SmoothScrollPerformance$ResumePackageChangedReceiver;

.field private smoothScrollEvent:Lcom/android/server/ssrm/common/intent/scroll/SmoothScrollE;

.field private smoothScrollReceiver:Lcom/android/server/ssrm/fgapps/SmoothScrollPerformance$SmoothScrollReceiver;


# direct methods
.method static bridge synthetic -$$Nest$fgetresumePackageChangedE(Lcom/android/server/ssrm/fgapps/SmoothScrollPerformance;)Lcom/android/server/ssrm/common/callback/foreground/ResumePackageChangedE;
    .locals 0

    iget-object p0, p0, Lcom/android/server/ssrm/fgapps/SmoothScrollPerformance;->resumePackageChangedE:Lcom/android/server/ssrm/common/callback/foreground/ResumePackageChangedE;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsmoothScrollEvent(Lcom/android/server/ssrm/fgapps/SmoothScrollPerformance;)Lcom/android/server/ssrm/common/intent/scroll/SmoothScrollE;
    .locals 0

    iget-object p0, p0, Lcom/android/server/ssrm/fgapps/SmoothScrollPerformance;->smoothScrollEvent:Lcom/android/server/ssrm/common/intent/scroll/SmoothScrollE;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputisBoostDisabledByFold(Lcom/android/server/ssrm/fgapps/SmoothScrollPerformance;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/ssrm/fgapps/SmoothScrollPerformance;->isBoostDisabledByFold:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputresumePackageChangedE(Lcom/android/server/ssrm/fgapps/SmoothScrollPerformance;Lcom/android/server/ssrm/common/callback/foreground/ResumePackageChangedE;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/ssrm/fgapps/SmoothScrollPerformance;->resumePackageChangedE:Lcom/android/server/ssrm/common/callback/foreground/ResumePackageChangedE;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputsmoothScrollEvent(Lcom/android/server/ssrm/fgapps/SmoothScrollPerformance;Lcom/android/server/ssrm/common/intent/scroll/SmoothScrollE;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/ssrm/fgapps/SmoothScrollPerformance;->smoothScrollEvent:Lcom/android/server/ssrm/common/intent/scroll/SmoothScrollE;

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 22
    const-class v0, Lcom/android/server/ssrm/fgapps/SmoothScrollPerformance;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/ssrm/fgapps/SmoothScrollPerformance;->TAG:Ljava/lang/String;

    .line 24
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/ssrm/fgapps/SmoothScrollPerformance;->sInstance:Lcom/android/server/ssrm/fgapps/SmoothScrollPerformance;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/SmoothScrollPerformance;->smoothScrollEvent:Lcom/android/server/ssrm/common/intent/scroll/SmoothScrollE;

    .line 28
    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/SmoothScrollPerformance;->smoothScrollReceiver:Lcom/android/server/ssrm/fgapps/SmoothScrollPerformance$SmoothScrollReceiver;

    .line 30
    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/SmoothScrollPerformance;->resumePackageChangedE:Lcom/android/server/ssrm/common/callback/foreground/ResumePackageChangedE;

    .line 32
    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/SmoothScrollPerformance;->resumePackageChangedReceiver:Lcom/android/server/ssrm/fgapps/SmoothScrollPerformance$ResumePackageChangedReceiver;

    .line 36
    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/SmoothScrollPerformance;->mSmoothScrollBoosterManager:Lcom/samsung/android/os/SemDvfsManager;

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/ssrm/fgapps/SmoothScrollPerformance;->mAcquired:Z

    .line 40
    iput-boolean v0, p0, Lcom/android/server/ssrm/fgapps/SmoothScrollPerformance;->isBoostDisabledByFold:Z

    .line 50
    iput-object p1, p0, Lcom/android/server/ssrm/fgapps/SmoothScrollPerformance;->mContext:Landroid/content/Context;

    .line 52
    new-instance v0, Lcom/android/server/ssrm/fgapps/SmoothScrollPerformance$SmoothScrollReceiver;

    invoke-direct {v0, p0}, Lcom/android/server/ssrm/fgapps/SmoothScrollPerformance$SmoothScrollReceiver;-><init>(Lcom/android/server/ssrm/fgapps/SmoothScrollPerformance;)V

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/SmoothScrollPerformance;->smoothScrollReceiver:Lcom/android/server/ssrm/fgapps/SmoothScrollPerformance$SmoothScrollReceiver;

    .line 53
    invoke-static {p1}, Lcom/android/server/ssrm/common/EventManager;->getInstance(Landroid/content/Context;)Lcom/android/server/ssrm/common/EventManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/SmoothScrollPerformance;->smoothScrollReceiver:Lcom/android/server/ssrm/fgapps/SmoothScrollPerformance$SmoothScrollReceiver;

    invoke-virtual {v0, v1}, Lcom/android/server/ssrm/common/EventManager;->registerReceiver(Lcom/android/server/ssrm/common/IEReceiver;)Lcom/android/server/ssrm/common/IEvent;

    .line 55
    new-instance v0, Lcom/android/server/ssrm/fgapps/SmoothScrollPerformance$ResumePackageChangedReceiver;

    invoke-direct {v0, p0}, Lcom/android/server/ssrm/fgapps/SmoothScrollPerformance$ResumePackageChangedReceiver;-><init>(Lcom/android/server/ssrm/fgapps/SmoothScrollPerformance;)V

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/SmoothScrollPerformance;->resumePackageChangedReceiver:Lcom/android/server/ssrm/fgapps/SmoothScrollPerformance$ResumePackageChangedReceiver;

    .line 56
    invoke-static {p1}, Lcom/android/server/ssrm/common/EventManager;->getInstance(Landroid/content/Context;)Lcom/android/server/ssrm/common/EventManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/SmoothScrollPerformance;->resumePackageChangedReceiver:Lcom/android/server/ssrm/fgapps/SmoothScrollPerformance$ResumePackageChangedReceiver;

    invoke-virtual {v0, v1}, Lcom/android/server/ssrm/common/EventManager;->registerReceiver(Lcom/android/server/ssrm/common/IEReceiver;)Lcom/android/server/ssrm/common/IEvent;

    .line 58
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/SmoothScrollPerformance;->mContext:Landroid/content/Context;

    const-string v1, "SMOOTH_SCROLL"

    invoke-static {v0, v1}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/SmoothScrollPerformance;->mSmoothScrollBoosterManager:Lcom/samsung/android/os/SemDvfsManager;

    .line 59
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/SmoothScrollPerformance;->mSmoothScrollBoosterManager:Lcom/samsung/android/os/SemDvfsManager;

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Lcom/samsung/android/os/SemDvfsManager;->setHint(I)V

    .line 61
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SYSPERF_BOOST_DISABLE_WHEN_FOLDED:Z

    if-eqz v0, :cond_0

    .line 62
    invoke-static {p1}, Lcom/android/server/ssrm/common/EventManager;->getInstance(Landroid/content/Context;)Lcom/android/server/ssrm/common/EventManager;

    move-result-object v0

    new-instance v1, Lcom/android/server/ssrm/fgapps/SmoothScrollPerformance$LidStateReceiver;

    invoke-direct {v1, p0}, Lcom/android/server/ssrm/fgapps/SmoothScrollPerformance$LidStateReceiver;-><init>(Lcom/android/server/ssrm/fgapps/SmoothScrollPerformance;)V

    invoke-virtual {v0, v1}, Lcom/android/server/ssrm/common/EventManager;->registerReceiver(Lcom/android/server/ssrm/common/IEReceiver;)Lcom/android/server/ssrm/common/IEvent;

    .line 64
    :cond_0
    return-void
.end method

.method private acquire()V
    .locals 2

    .line 67
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/SmoothScrollPerformance;->mAcquired:Z

    if-eqz v0, :cond_0

    .line 68
    return-void

    .line 70
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/ssrm/fgapps/SmoothScrollPerformance;->mAcquired:Z

    .line 71
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/SmoothScrollPerformance;->mSmoothScrollBoosterManager:Lcom/samsung/android/os/SemDvfsManager;

    if-eqz v0, :cond_1

    .line 72
    sget-object v0, Lcom/android/server/ssrm/fgapps/SmoothScrollPerformance;->TAG:Ljava/lang/String;

    const-string v1, "acquire::"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/SmoothScrollPerformance;->mSmoothScrollBoosterManager:Lcom/samsung/android/os/SemDvfsManager;

    invoke-virtual {v0}, Lcom/samsung/android/os/SemDvfsManager;->acquire()V

    .line 75
    :cond_1
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/server/ssrm/fgapps/SmoothScrollPerformance;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 43
    sget-object v0, Lcom/android/server/ssrm/fgapps/SmoothScrollPerformance;->sInstance:Lcom/android/server/ssrm/fgapps/SmoothScrollPerformance;

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Lcom/android/server/ssrm/fgapps/SmoothScrollPerformance;

    invoke-direct {v0, p0}, Lcom/android/server/ssrm/fgapps/SmoothScrollPerformance;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/ssrm/fgapps/SmoothScrollPerformance;->sInstance:Lcom/android/server/ssrm/fgapps/SmoothScrollPerformance;

    .line 46
    :cond_0
    sget-object v0, Lcom/android/server/ssrm/fgapps/SmoothScrollPerformance;->sInstance:Lcom/android/server/ssrm/fgapps/SmoothScrollPerformance;

    return-object v0
.end method

.method private release()V
    .locals 2

    .line 78
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/SmoothScrollPerformance;->mAcquired:Z

    if-nez v0, :cond_0

    .line 79
    return-void

    .line 81
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/ssrm/fgapps/SmoothScrollPerformance;->mAcquired:Z

    .line 82
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/SmoothScrollPerformance;->mSmoothScrollBoosterManager:Lcom/samsung/android/os/SemDvfsManager;

    if-eqz v0, :cond_1

    .line 83
    sget-object v0, Lcom/android/server/ssrm/fgapps/SmoothScrollPerformance;->TAG:Ljava/lang/String;

    const-string v1, "release::"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/SmoothScrollPerformance;->mSmoothScrollBoosterManager:Lcom/samsung/android/os/SemDvfsManager;

    invoke-virtual {v0}, Lcom/samsung/android/os/SemDvfsManager;->release()V

    .line 86
    :cond_1
    return-void
.end method


# virtual methods
.method public execute(Z)V
    .locals 2
    .param p1, "value"    # Z

    .line 94
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/SmoothScrollPerformance;->isBoostDisabledByFold:Z

    if-eqz v0, :cond_0

    .line 95
    invoke-direct {p0}, Lcom/android/server/ssrm/fgapps/SmoothScrollPerformance;->release()V

    .line 96
    sget-object v0, Lcom/android/server/ssrm/fgapps/SmoothScrollPerformance;->TAG:Ljava/lang/String;

    const-string v1, "Booster doesn\'t work on fold scenario."

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    return-void

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/SmoothScrollPerformance;->mSmoothScrollBoosterManager:Lcom/samsung/android/os/SemDvfsManager;

    if-nez v0, :cond_1

    .line 100
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/SmoothScrollPerformance;->mContext:Landroid/content/Context;

    const-string v1, "SMOOTH_SCROLL"

    invoke-static {v0, v1}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/SmoothScrollPerformance;->mSmoothScrollBoosterManager:Lcom/samsung/android/os/SemDvfsManager;

    .line 101
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/SmoothScrollPerformance;->mSmoothScrollBoosterManager:Lcom/samsung/android/os/SemDvfsManager;

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Lcom/samsung/android/os/SemDvfsManager;->setHint(I)V

    .line 103
    :cond_1
    if-eqz p1, :cond_2

    .line 104
    invoke-direct {p0}, Lcom/android/server/ssrm/fgapps/SmoothScrollPerformance;->acquire()V

    goto :goto_0

    .line 106
    :cond_2
    invoke-direct {p0}, Lcom/android/server/ssrm/fgapps/SmoothScrollPerformance;->release()V

    .line 108
    :goto_0
    return-void
.end method

.method public onChanged(Ljava/lang/String;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 89
    sget-object v0, Lcom/android/server/ssrm/fgapps/SmoothScrollPerformance;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onChanged:: packageName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    invoke-direct {p0}, Lcom/android/server/ssrm/fgapps/SmoothScrollPerformance;->release()V

    .line 91
    return-void
.end method
