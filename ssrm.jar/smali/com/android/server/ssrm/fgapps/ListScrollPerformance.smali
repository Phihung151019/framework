.class public Lcom/android/server/ssrm/fgapps/ListScrollPerformance;
.super Ljava/lang/Object;
.source "ListScrollPerformance.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ssrm/fgapps/ListScrollPerformance$ListScrollReceiver;,
        Lcom/android/server/ssrm/fgapps/ListScrollPerformance$ResumePackageChangedReceiver;,
        Lcom/android/server/ssrm/fgapps/ListScrollPerformance$LidStateReceiver;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String;

.field private static sInstance:Lcom/android/server/ssrm/fgapps/ListScrollPerformance;


# instance fields
.field private isBoostDisabledByFold:Z

.field private listScrollEvent:Lcom/android/server/ssrm/common/intent/scroll/ListScrollE;

.field private listScrollReceiver:Lcom/android/server/ssrm/fgapps/ListScrollPerformance$ListScrollReceiver;

.field mAcquired:Z

.field private mContext:Landroid/content/Context;

.field mListScrollBoosterManager:Lcom/samsung/android/os/SemDvfsManager;

.field private resumePackageChangedE:Lcom/android/server/ssrm/common/callback/foreground/ResumePackageChangedE;

.field private resumePackageChangedReceiver:Lcom/android/server/ssrm/fgapps/ListScrollPerformance$ResumePackageChangedReceiver;


# direct methods
.method static bridge synthetic -$$Nest$fgetlistScrollEvent(Lcom/android/server/ssrm/fgapps/ListScrollPerformance;)Lcom/android/server/ssrm/common/intent/scroll/ListScrollE;
    .locals 0

    iget-object p0, p0, Lcom/android/server/ssrm/fgapps/ListScrollPerformance;->listScrollEvent:Lcom/android/server/ssrm/common/intent/scroll/ListScrollE;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetresumePackageChangedE(Lcom/android/server/ssrm/fgapps/ListScrollPerformance;)Lcom/android/server/ssrm/common/callback/foreground/ResumePackageChangedE;
    .locals 0

    iget-object p0, p0, Lcom/android/server/ssrm/fgapps/ListScrollPerformance;->resumePackageChangedE:Lcom/android/server/ssrm/common/callback/foreground/ResumePackageChangedE;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputisBoostDisabledByFold(Lcom/android/server/ssrm/fgapps/ListScrollPerformance;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/ssrm/fgapps/ListScrollPerformance;->isBoostDisabledByFold:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputlistScrollEvent(Lcom/android/server/ssrm/fgapps/ListScrollPerformance;Lcom/android/server/ssrm/common/intent/scroll/ListScrollE;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/ssrm/fgapps/ListScrollPerformance;->listScrollEvent:Lcom/android/server/ssrm/common/intent/scroll/ListScrollE;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputresumePackageChangedE(Lcom/android/server/ssrm/fgapps/ListScrollPerformance;Lcom/android/server/ssrm/common/callback/foreground/ResumePackageChangedE;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/ssrm/fgapps/ListScrollPerformance;->resumePackageChangedE:Lcom/android/server/ssrm/common/callback/foreground/ResumePackageChangedE;

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 23
    const-class v0, Lcom/android/server/ssrm/fgapps/ListScrollPerformance;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/ssrm/fgapps/ListScrollPerformance;->TAG:Ljava/lang/String;

    .line 25
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/ssrm/fgapps/ListScrollPerformance;->sInstance:Lcom/android/server/ssrm/fgapps/ListScrollPerformance;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/ListScrollPerformance;->listScrollEvent:Lcom/android/server/ssrm/common/intent/scroll/ListScrollE;

    .line 29
    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/ListScrollPerformance;->listScrollReceiver:Lcom/android/server/ssrm/fgapps/ListScrollPerformance$ListScrollReceiver;

    .line 31
    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/ListScrollPerformance;->resumePackageChangedE:Lcom/android/server/ssrm/common/callback/foreground/ResumePackageChangedE;

    .line 33
    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/ListScrollPerformance;->resumePackageChangedReceiver:Lcom/android/server/ssrm/fgapps/ListScrollPerformance$ResumePackageChangedReceiver;

    .line 37
    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/ListScrollPerformance;->mListScrollBoosterManager:Lcom/samsung/android/os/SemDvfsManager;

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/ssrm/fgapps/ListScrollPerformance;->mAcquired:Z

    .line 41
    iput-boolean v0, p0, Lcom/android/server/ssrm/fgapps/ListScrollPerformance;->isBoostDisabledByFold:Z

    .line 51
    iput-object p1, p0, Lcom/android/server/ssrm/fgapps/ListScrollPerformance;->mContext:Landroid/content/Context;

    .line 53
    new-instance v0, Lcom/android/server/ssrm/fgapps/ListScrollPerformance$ListScrollReceiver;

    invoke-direct {v0, p0}, Lcom/android/server/ssrm/fgapps/ListScrollPerformance$ListScrollReceiver;-><init>(Lcom/android/server/ssrm/fgapps/ListScrollPerformance;)V

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/ListScrollPerformance;->listScrollReceiver:Lcom/android/server/ssrm/fgapps/ListScrollPerformance$ListScrollReceiver;

    .line 54
    invoke-static {p1}, Lcom/android/server/ssrm/common/EventManager;->getInstance(Landroid/content/Context;)Lcom/android/server/ssrm/common/EventManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/ListScrollPerformance;->listScrollReceiver:Lcom/android/server/ssrm/fgapps/ListScrollPerformance$ListScrollReceiver;

    invoke-virtual {v0, v1}, Lcom/android/server/ssrm/common/EventManager;->registerReceiver(Lcom/android/server/ssrm/common/IEReceiver;)Lcom/android/server/ssrm/common/IEvent;

    .line 56
    new-instance v0, Lcom/android/server/ssrm/fgapps/ListScrollPerformance$ResumePackageChangedReceiver;

    invoke-direct {v0, p0}, Lcom/android/server/ssrm/fgapps/ListScrollPerformance$ResumePackageChangedReceiver;-><init>(Lcom/android/server/ssrm/fgapps/ListScrollPerformance;)V

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/ListScrollPerformance;->resumePackageChangedReceiver:Lcom/android/server/ssrm/fgapps/ListScrollPerformance$ResumePackageChangedReceiver;

    .line 57
    invoke-static {p1}, Lcom/android/server/ssrm/common/EventManager;->getInstance(Landroid/content/Context;)Lcom/android/server/ssrm/common/EventManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/ListScrollPerformance;->resumePackageChangedReceiver:Lcom/android/server/ssrm/fgapps/ListScrollPerformance$ResumePackageChangedReceiver;

    invoke-virtual {v0, v1}, Lcom/android/server/ssrm/common/EventManager;->registerReceiver(Lcom/android/server/ssrm/common/IEReceiver;)Lcom/android/server/ssrm/common/IEvent;

    .line 59
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/ListScrollPerformance;->mContext:Landroid/content/Context;

    const-string v1, "LISTVIEW_SCROLL"

    invoke-static {v0, v1}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/ListScrollPerformance;->mListScrollBoosterManager:Lcom/samsung/android/os/SemDvfsManager;

    .line 60
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/ListScrollPerformance;->mListScrollBoosterManager:Lcom/samsung/android/os/SemDvfsManager;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/samsung/android/os/SemDvfsManager;->setHint(I)V

    .line 62
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SYSPERF_BOOST_DISABLE_WHEN_FOLDED:Z

    if-eqz v0, :cond_0

    .line 63
    invoke-static {p1}, Lcom/android/server/ssrm/common/EventManager;->getInstance(Landroid/content/Context;)Lcom/android/server/ssrm/common/EventManager;

    move-result-object v0

    new-instance v1, Lcom/android/server/ssrm/fgapps/ListScrollPerformance$LidStateReceiver;

    invoke-direct {v1, p0}, Lcom/android/server/ssrm/fgapps/ListScrollPerformance$LidStateReceiver;-><init>(Lcom/android/server/ssrm/fgapps/ListScrollPerformance;)V

    invoke-virtual {v0, v1}, Lcom/android/server/ssrm/common/EventManager;->registerReceiver(Lcom/android/server/ssrm/common/IEReceiver;)Lcom/android/server/ssrm/common/IEvent;

    .line 65
    :cond_0
    return-void
.end method

.method private acquire()V
    .locals 2

    .line 68
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/ListScrollPerformance;->mAcquired:Z

    if-eqz v0, :cond_0

    .line 69
    return-void

    .line 71
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/ssrm/fgapps/ListScrollPerformance;->mAcquired:Z

    .line 72
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/ListScrollPerformance;->mListScrollBoosterManager:Lcom/samsung/android/os/SemDvfsManager;

    if-eqz v0, :cond_1

    .line 73
    sget-object v0, Lcom/android/server/ssrm/fgapps/ListScrollPerformance;->TAG:Ljava/lang/String;

    const-string v1, "acquire::"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/ListScrollPerformance;->mListScrollBoosterManager:Lcom/samsung/android/os/SemDvfsManager;

    invoke-virtual {v0}, Lcom/samsung/android/os/SemDvfsManager;->acquire()V

    .line 76
    :cond_1
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/server/ssrm/fgapps/ListScrollPerformance;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 44
    sget-object v0, Lcom/android/server/ssrm/fgapps/ListScrollPerformance;->sInstance:Lcom/android/server/ssrm/fgapps/ListScrollPerformance;

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Lcom/android/server/ssrm/fgapps/ListScrollPerformance;

    invoke-direct {v0, p0}, Lcom/android/server/ssrm/fgapps/ListScrollPerformance;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/ssrm/fgapps/ListScrollPerformance;->sInstance:Lcom/android/server/ssrm/fgapps/ListScrollPerformance;

    .line 47
    :cond_0
    sget-object v0, Lcom/android/server/ssrm/fgapps/ListScrollPerformance;->sInstance:Lcom/android/server/ssrm/fgapps/ListScrollPerformance;

    return-object v0
.end method

.method private release()V
    .locals 2

    .line 79
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/ListScrollPerformance;->mAcquired:Z

    if-nez v0, :cond_0

    .line 80
    return-void

    .line 82
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/ssrm/fgapps/ListScrollPerformance;->mAcquired:Z

    .line 83
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/ListScrollPerformance;->mListScrollBoosterManager:Lcom/samsung/android/os/SemDvfsManager;

    if-eqz v0, :cond_1

    .line 84
    sget-object v0, Lcom/android/server/ssrm/fgapps/ListScrollPerformance;->TAG:Ljava/lang/String;

    const-string v1, "release::"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/ListScrollPerformance;->mListScrollBoosterManager:Lcom/samsung/android/os/SemDvfsManager;

    invoke-virtual {v0}, Lcom/samsung/android/os/SemDvfsManager;->release()V

    .line 87
    :cond_1
    return-void
.end method


# virtual methods
.method public execute(Z)V
    .locals 2
    .param p1, "value"    # Z

    .line 95
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/ListScrollPerformance;->isBoostDisabledByFold:Z

    if-eqz v0, :cond_0

    .line 96
    invoke-direct {p0}, Lcom/android/server/ssrm/fgapps/ListScrollPerformance;->release()V

    .line 97
    sget-object v0, Lcom/android/server/ssrm/fgapps/ListScrollPerformance;->TAG:Ljava/lang/String;

    const-string v1, "Booster doesn\'t work on fold scenario."

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    return-void

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/ListScrollPerformance;->mListScrollBoosterManager:Lcom/samsung/android/os/SemDvfsManager;

    if-nez v0, :cond_1

    .line 101
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/ListScrollPerformance;->mContext:Landroid/content/Context;

    const-string v1, "LISTVIEW_SCROLL"

    invoke-static {v0, v1}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/ListScrollPerformance;->mListScrollBoosterManager:Lcom/samsung/android/os/SemDvfsManager;

    .line 102
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/ListScrollPerformance;->mListScrollBoosterManager:Lcom/samsung/android/os/SemDvfsManager;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/samsung/android/os/SemDvfsManager;->setHint(I)V

    .line 104
    :cond_1
    if-eqz p1, :cond_2

    .line 105
    invoke-direct {p0}, Lcom/android/server/ssrm/fgapps/ListScrollPerformance;->acquire()V

    goto :goto_0

    .line 107
    :cond_2
    invoke-direct {p0}, Lcom/android/server/ssrm/fgapps/ListScrollPerformance;->release()V

    .line 109
    :goto_0
    return-void
.end method

.method public onChanged(Ljava/lang/String;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 90
    sget-object v0, Lcom/android/server/ssrm/fgapps/ListScrollPerformance;->TAG:Ljava/lang/String;

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

    .line 91
    invoke-direct {p0}, Lcom/android/server/ssrm/fgapps/ListScrollPerformance;->release()V

    .line 92
    return-void
.end method
