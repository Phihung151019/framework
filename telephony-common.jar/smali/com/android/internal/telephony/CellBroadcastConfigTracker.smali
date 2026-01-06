.class public final Lcom/android/internal/telephony/CellBroadcastConfigTracker;
.super Lcom/android/internal/telephony/StateMachine;
.source "CellBroadcastConfigTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/CellBroadcastConfigTracker$DefaultState;,
        Lcom/android/internal/telephony/CellBroadcastConfigTracker$IdleState;,
        Lcom/android/internal/telephony/CellBroadcastConfigTracker$GsmConfiguringState;,
        Lcom/android/internal/telephony/CellBroadcastConfigTracker$GsmActivatingState;,
        Lcom/android/internal/telephony/CellBroadcastConfigTracker$CdmaConfiguringState;,
        Lcom/android/internal/telephony/CellBroadcastConfigTracker$CdmaActivatingState;,
        Lcom/android/internal/telephony/CellBroadcastConfigTracker$Request;
    }
.end annotation


# static fields
.field private static final blacklist DBG:Z

.field public static final blacklist EVENT_RADIO_RESET:I = 0x6


# instance fields
.field private blacklist client:Ljava/lang/String;

.field private blacklist isNeedUpdate3gpp:Z

.field private blacklist isNeedUpdate3gpp2:Z

.field private blacklist mCbRanges3gpp:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/CellBroadcastIdRange;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mCbRanges3gpp2:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/CellBroadcastIdRange;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mCdmaActivatingState:Lcom/android/internal/telephony/CellBroadcastConfigTracker$CdmaActivatingState;

.field private blacklist mCdmaConfiguringState:Lcom/android/internal/telephony/CellBroadcastConfigTracker$CdmaConfiguringState;

.field private blacklist mDefaultState:Lcom/android/internal/telephony/CellBroadcastConfigTracker$DefaultState;

.field private blacklist mGsmActivatingState:Lcom/android/internal/telephony/CellBroadcastConfigTracker$GsmActivatingState;

.field private blacklist mGsmConfiguringState:Lcom/android/internal/telephony/CellBroadcastConfigTracker$GsmConfiguringState;

.field private blacklist mIdleState:Lcom/android/internal/telephony/CellBroadcastConfigTracker$IdleState;

.field private final blacklist mLocalLog:Lcom/android/internal/telephony/LocalLog;

.field private blacklist mPhone:Lcom/android/internal/telephony/Phone;

.field protected blacklist mSmsLogger:Lcom/android/internal/telephony/SmsLogger;

.field public final blacklist mSubChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

.field public blacklist mSubId:I


# direct methods
.method public static synthetic blacklist $r8$lambda$dfqyyLJAU5VeqtMpuwq_1ZBmXu4(Landroid/telephony/CellBroadcastIdRange;Landroid/telephony/CellBroadcastIdRange;)I
    .locals 2

    .line 553
    invoke-virtual {p0}, Landroid/telephony/CellBroadcastIdRange;->getType()I

    move-result v0

    invoke-virtual {p1}, Landroid/telephony/CellBroadcastIdRange;->getType()I

    move-result v1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/telephony/CellBroadcastIdRange;->getType()I

    move-result p0

    invoke-virtual {p1}, Landroid/telephony/CellBroadcastIdRange;->getType()I

    move-result p1

    :goto_0
    sub-int/2addr p0, p1

    return p0

    .line 554
    :cond_0
    invoke-virtual {p0}, Landroid/telephony/CellBroadcastIdRange;->getStartId()I

    move-result v0

    invoke-virtual {p1}, Landroid/telephony/CellBroadcastIdRange;->getStartId()I

    move-result v1

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Landroid/telephony/CellBroadcastIdRange;->getStartId()I

    move-result p0

    invoke-virtual {p1}, Landroid/telephony/CellBroadcastIdRange;->getStartId()I

    move-result p1

    goto :goto_0

    .line 555
    :cond_1
    invoke-virtual {p1}, Landroid/telephony/CellBroadcastIdRange;->getEndId()I

    move-result p1

    invoke-virtual {p0}, Landroid/telephony/CellBroadcastIdRange;->getEndId()I

    move-result p0

    sub-int/2addr p1, p0

    return p1
.end method

.method public static synthetic blacklist $r8$lambda$kUUshudH8818dlh5hrjs-8GC8ZA(Ljava/util/List;Landroid/telephony/CellBroadcastIdRange;)V
    .locals 5

    .line 558
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CellBroadcastIdRange;

    invoke-virtual {v0}, Landroid/telephony/CellBroadcastIdRange;->getType()I

    move-result v0

    invoke-virtual {p1}, Landroid/telephony/CellBroadcastIdRange;->getType()I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 559
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CellBroadcastIdRange;

    invoke-virtual {v0}, Landroid/telephony/CellBroadcastIdRange;->getEndId()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1}, Landroid/telephony/CellBroadcastIdRange;->getStartId()I

    move-result v1

    if-lt v0, v1, :cond_3

    .line 560
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CellBroadcastIdRange;

    invoke-virtual {v0}, Landroid/telephony/CellBroadcastIdRange;->getEndId()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1}, Landroid/telephony/CellBroadcastIdRange;->getStartId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 561
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CellBroadcastIdRange;

    invoke-virtual {v0}, Landroid/telephony/CellBroadcastIdRange;->isEnabled()Z

    move-result v0

    invoke-virtual {p1}, Landroid/telephony/CellBroadcastIdRange;->isEnabled()Z

    move-result v1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 565
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CellBroadcastIdRange;

    invoke-virtual {v0}, Landroid/telephony/CellBroadcastIdRange;->isEnabled()Z

    move-result v0

    invoke-virtual {p1}, Landroid/telephony/CellBroadcastIdRange;->isEnabled()Z

    move-result v1

    if-ne v0, v1, :cond_2

    .line 568
    invoke-virtual {p1}, Landroid/telephony/CellBroadcastIdRange;->getEndId()I

    move-result v0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/CellBroadcastIdRange;

    invoke-virtual {v1}, Landroid/telephony/CellBroadcastIdRange;->getEndId()I

    move-result v1

    if-le v0, v1, :cond_1

    .line 569
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CellBroadcastIdRange;

    .line 570
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    new-instance v2, Landroid/telephony/CellBroadcastIdRange;

    .line 571
    invoke-virtual {v0}, Landroid/telephony/CellBroadcastIdRange;->getStartId()I

    move-result v3

    invoke-virtual {p1}, Landroid/telephony/CellBroadcastIdRange;->getEndId()I

    move-result p1

    invoke-virtual {v0}, Landroid/telephony/CellBroadcastIdRange;->getType()I

    move-result v4

    invoke-virtual {v0}, Landroid/telephony/CellBroadcastIdRange;->isEnabled()Z

    move-result v0

    invoke-direct {v2, v3, p1, v4, v0}, Landroid/telephony/CellBroadcastIdRange;-><init>(IIIZ)V

    .line 570
    invoke-interface {p0, v1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void

    .line 566
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "range conflict "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 562
    :cond_3
    :goto_0
    new-instance v0, Landroid/telephony/CellBroadcastIdRange;

    invoke-virtual {p1}, Landroid/telephony/CellBroadcastIdRange;->getStartId()I

    move-result v1

    invoke-virtual {p1}, Landroid/telephony/CellBroadcastIdRange;->getEndId()I

    move-result v2

    .line 563
    invoke-virtual {p1}, Landroid/telephony/CellBroadcastIdRange;->getType()I

    move-result v3

    invoke-virtual {p1}, Landroid/telephony/CellBroadcastIdRange;->isEnabled()Z

    move-result p1

    invoke-direct {v0, v1, v2, v3, p1}, Landroid/telephony/CellBroadcastIdRange;-><init>(IIIZ)V

    .line 562
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetclient(Lcom/android/internal/telephony/CellBroadcastConfigTracker;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/CellBroadcastConfigTracker;->client:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetisNeedUpdate3gpp(Lcom/android/internal/telephony/CellBroadcastConfigTracker;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/internal/telephony/CellBroadcastConfigTracker;->isNeedUpdate3gpp:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetisNeedUpdate3gpp2(Lcom/android/internal/telephony/CellBroadcastConfigTracker;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/internal/telephony/CellBroadcastConfigTracker;->isNeedUpdate3gpp2:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCbRanges3gpp(Lcom/android/internal/telephony/CellBroadcastConfigTracker;)Ljava/util/List;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/CellBroadcastConfigTracker;->mCbRanges3gpp:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCbRanges3gpp2(Lcom/android/internal/telephony/CellBroadcastConfigTracker;)Ljava/util/List;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/CellBroadcastConfigTracker;->mCbRanges3gpp2:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCdmaActivatingState(Lcom/android/internal/telephony/CellBroadcastConfigTracker;)Lcom/android/internal/telephony/CellBroadcastConfigTracker$CdmaActivatingState;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/CellBroadcastConfigTracker;->mCdmaActivatingState:Lcom/android/internal/telephony/CellBroadcastConfigTracker$CdmaActivatingState;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmGsmActivatingState(Lcom/android/internal/telephony/CellBroadcastConfigTracker;)Lcom/android/internal/telephony/CellBroadcastConfigTracker$GsmActivatingState;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/CellBroadcastConfigTracker;->mGsmActivatingState:Lcom/android/internal/telephony/CellBroadcastConfigTracker$GsmActivatingState;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmGsmConfiguringState(Lcom/android/internal/telephony/CellBroadcastConfigTracker;)Lcom/android/internal/telephony/CellBroadcastConfigTracker$GsmConfiguringState;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/CellBroadcastConfigTracker;->mGsmConfiguringState:Lcom/android/internal/telephony/CellBroadcastConfigTracker$GsmConfiguringState;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIdleState(Lcom/android/internal/telephony/CellBroadcastConfigTracker;)Lcom/android/internal/telephony/CellBroadcastConfigTracker$IdleState;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/CellBroadcastConfigTracker;->mIdleState:Lcom/android/internal/telephony/CellBroadcastConfigTracker$IdleState;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLocalLog(Lcom/android/internal/telephony/CellBroadcastConfigTracker;)Lcom/android/internal/telephony/LocalLog;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/CellBroadcastConfigTracker;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPhone(Lcom/android/internal/telephony/CellBroadcastConfigTracker;)Lcom/android/internal/telephony/Phone;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/CellBroadcastConfigTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputclient(Lcom/android/internal/telephony/CellBroadcastConfigTracker;Ljava/lang/String;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/internal/telephony/CellBroadcastConfigTracker;->client:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputisNeedUpdate3gpp(Lcom/android/internal/telephony/CellBroadcastConfigTracker;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/internal/telephony/CellBroadcastConfigTracker;->isNeedUpdate3gpp:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputisNeedUpdate3gpp2(Lcom/android/internal/telephony/CellBroadcastConfigTracker;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/internal/telephony/CellBroadcastConfigTracker;->isNeedUpdate3gpp2:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmCbRanges3gpp(Lcom/android/internal/telephony/CellBroadcastConfigTracker;Ljava/util/List;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/internal/telephony/CellBroadcastConfigTracker;->mCbRanges3gpp:Ljava/util/List;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmCbRanges3gpp2(Lcom/android/internal/telephony/CellBroadcastConfigTracker;Ljava/util/List;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/internal/telephony/CellBroadcastConfigTracker;->mCbRanges3gpp2:Ljava/util/List;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mresetConfig(Lcom/android/internal/telephony/CellBroadcastConfigTracker;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/CellBroadcastConfigTracker;->resetConfig()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetActivation(Lcom/android/internal/telephony/CellBroadcastConfigTracker;IZLcom/android/internal/telephony/CellBroadcastConfigTracker$Request;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/CellBroadcastConfigTracker;->setActivation(IZLcom/android/internal/telephony/CellBroadcastConfigTracker$Request;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetGsmConfig(Lcom/android/internal/telephony/CellBroadcastConfigTracker;Ljava/util/List;Lcom/android/internal/telephony/CellBroadcastConfigTracker$Request;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/CellBroadcastConfigTracker;->setGsmConfig(Ljava/util/List;Lcom/android/internal/telephony/CellBroadcastConfigTracker$Request;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetDBG()Z
    .locals 1

    .line 0
    sget-boolean v0, Lcom/android/internal/telephony/CellBroadcastConfigTracker;->DBG:Z

    return v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 55
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    sput-boolean v0, Lcom/android/internal/telephony/CellBroadcastConfigTracker;->DBG:Z

    return-void
.end method

.method private constructor blacklist <init>(Lcom/android/internal/telephony/Phone;)V
    .locals 2

    .line 478
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CellBroadcastConfigTracker-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/StateMachine;-><init>(Ljava/lang/String;)V

    .line 69
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/CellBroadcastConfigTracker;->mCbRanges3gpp:Ljava/util/List;

    .line 71
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/CellBroadcastConfigTracker;->mCbRanges3gpp2:Ljava/util/List;

    .line 73
    new-instance v0, Lcom/android/internal/telephony/LocalLog;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/LocalLog;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/CellBroadcastConfigTracker;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    .line 76
    new-instance v0, Lcom/android/internal/telephony/CellBroadcastConfigTracker$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/CellBroadcastConfigTracker$1;-><init>(Lcom/android/internal/telephony/CellBroadcastConfigTracker;)V

    iput-object v0, p0, Lcom/android/internal/telephony/CellBroadcastConfigTracker;->mSubChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    .line 200
    new-instance v0, Lcom/android/internal/telephony/CellBroadcastConfigTracker$DefaultState;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/CellBroadcastConfigTracker$DefaultState;-><init>(Lcom/android/internal/telephony/CellBroadcastConfigTracker;Lcom/android/internal/telephony/CellBroadcastConfigTracker-IA;)V

    iput-object v0, p0, Lcom/android/internal/telephony/CellBroadcastConfigTracker;->mDefaultState:Lcom/android/internal/telephony/CellBroadcastConfigTracker$DefaultState;

    .line 274
    new-instance v0, Lcom/android/internal/telephony/CellBroadcastConfigTracker$IdleState;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/CellBroadcastConfigTracker$IdleState;-><init>(Lcom/android/internal/telephony/CellBroadcastConfigTracker;Lcom/android/internal/telephony/CellBroadcastConfigTracker-IA;)V

    iput-object v0, p0, Lcom/android/internal/telephony/CellBroadcastConfigTracker;->mIdleState:Lcom/android/internal/telephony/CellBroadcastConfigTracker$IdleState;

    .line 320
    new-instance v0, Lcom/android/internal/telephony/CellBroadcastConfigTracker$GsmConfiguringState;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/CellBroadcastConfigTracker$GsmConfiguringState;-><init>(Lcom/android/internal/telephony/CellBroadcastConfigTracker;Lcom/android/internal/telephony/CellBroadcastConfigTracker-IA;)V

    iput-object v0, p0, Lcom/android/internal/telephony/CellBroadcastConfigTracker;->mGsmConfiguringState:Lcom/android/internal/telephony/CellBroadcastConfigTracker$GsmConfiguringState;

    .line 380
    new-instance v0, Lcom/android/internal/telephony/CellBroadcastConfigTracker$GsmActivatingState;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/CellBroadcastConfigTracker$GsmActivatingState;-><init>(Lcom/android/internal/telephony/CellBroadcastConfigTracker;Lcom/android/internal/telephony/CellBroadcastConfigTracker-IA;)V

    iput-object v0, p0, Lcom/android/internal/telephony/CellBroadcastConfigTracker;->mGsmActivatingState:Lcom/android/internal/telephony/CellBroadcastConfigTracker$GsmActivatingState;

    .line 425
    new-instance v0, Lcom/android/internal/telephony/CellBroadcastConfigTracker$CdmaConfiguringState;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/CellBroadcastConfigTracker$CdmaConfiguringState;-><init>(Lcom/android/internal/telephony/CellBroadcastConfigTracker;Lcom/android/internal/telephony/CellBroadcastConfigTracker-IA;)V

    iput-object v0, p0, Lcom/android/internal/telephony/CellBroadcastConfigTracker;->mCdmaConfiguringState:Lcom/android/internal/telephony/CellBroadcastConfigTracker$CdmaConfiguringState;

    .line 475
    new-instance v0, Lcom/android/internal/telephony/CellBroadcastConfigTracker$CdmaActivatingState;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/CellBroadcastConfigTracker$CdmaActivatingState;-><init>(Lcom/android/internal/telephony/CellBroadcastConfigTracker;Lcom/android/internal/telephony/CellBroadcastConfigTracker-IA;)V

    iput-object v0, p0, Lcom/android/internal/telephony/CellBroadcastConfigTracker;->mCdmaActivatingState:Lcom/android/internal/telephony/CellBroadcastConfigTracker$CdmaActivatingState;

    .line 479
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CellBroadcastConfigTracker;->init(Lcom/android/internal/telephony/Phone;)V

    return-void
.end method

.method private constructor blacklist <init>(Lcom/android/internal/telephony/Phone;Landroid/os/Handler;)V
    .locals 2

    .line 483
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CellBroadcastConfigTracker-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/android/internal/telephony/StateMachine;-><init>(Ljava/lang/String;Landroid/os/Handler;)V

    .line 69
    new-instance p2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/internal/telephony/CellBroadcastConfigTracker;->mCbRanges3gpp:Ljava/util/List;

    .line 71
    new-instance p2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/internal/telephony/CellBroadcastConfigTracker;->mCbRanges3gpp2:Ljava/util/List;

    .line 73
    new-instance p2, Lcom/android/internal/telephony/LocalLog;

    const/16 v0, 0x80

    invoke-direct {p2, v0}, Lcom/android/internal/telephony/LocalLog;-><init>(I)V

    iput-object p2, p0, Lcom/android/internal/telephony/CellBroadcastConfigTracker;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    .line 76
    new-instance p2, Lcom/android/internal/telephony/CellBroadcastConfigTracker$1;

    invoke-direct {p2, p0}, Lcom/android/internal/telephony/CellBroadcastConfigTracker$1;-><init>(Lcom/android/internal/telephony/CellBroadcastConfigTracker;)V

    iput-object p2, p0, Lcom/android/internal/telephony/CellBroadcastConfigTracker;->mSubChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    .line 200
    new-instance p2, Lcom/android/internal/telephony/CellBroadcastConfigTracker$DefaultState;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/android/internal/telephony/CellBroadcastConfigTracker$DefaultState;-><init>(Lcom/android/internal/telephony/CellBroadcastConfigTracker;Lcom/android/internal/telephony/CellBroadcastConfigTracker-IA;)V

    iput-object p2, p0, Lcom/android/internal/telephony/CellBroadcastConfigTracker;->mDefaultState:Lcom/android/internal/telephony/CellBroadcastConfigTracker$DefaultState;

    .line 274
    new-instance p2, Lcom/android/internal/telephony/CellBroadcastConfigTracker$IdleState;

    invoke-direct {p2, p0, v0}, Lcom/android/internal/telephony/CellBroadcastConfigTracker$IdleState;-><init>(Lcom/android/internal/telephony/CellBroadcastConfigTracker;Lcom/android/internal/telephony/CellBroadcastConfigTracker-IA;)V

    iput-object p2, p0, Lcom/android/internal/telephony/CellBroadcastConfigTracker;->mIdleState:Lcom/android/internal/telephony/CellBroadcastConfigTracker$IdleState;

    .line 320
    new-instance p2, Lcom/android/internal/telephony/CellBroadcastConfigTracker$GsmConfiguringState;

    invoke-direct {p2, p0, v0}, Lcom/android/internal/telephony/CellBroadcastConfigTracker$GsmConfiguringState;-><init>(Lcom/android/internal/telephony/CellBroadcastConfigTracker;Lcom/android/internal/telephony/CellBroadcastConfigTracker-IA;)V

    iput-object p2, p0, Lcom/android/internal/telephony/CellBroadcastConfigTracker;->mGsmConfiguringState:Lcom/android/internal/telephony/CellBroadcastConfigTracker$GsmConfiguringState;

    .line 380
    new-instance p2, Lcom/android/internal/telephony/CellBroadcastConfigTracker$GsmActivatingState;

    invoke-direct {p2, p0, v0}, Lcom/android/internal/telephony/CellBroadcastConfigTracker$GsmActivatingState;-><init>(Lcom/android/internal/telephony/CellBroadcastConfigTracker;Lcom/android/internal/telephony/CellBroadcastConfigTracker-IA;)V

    iput-object p2, p0, Lcom/android/internal/telephony/CellBroadcastConfigTracker;->mGsmActivatingState:Lcom/android/internal/telephony/CellBroadcastConfigTracker$GsmActivatingState;

    .line 425
    new-instance p2, Lcom/android/internal/telephony/CellBroadcastConfigTracker$CdmaConfiguringState;

    invoke-direct {p2, p0, v0}, Lcom/android/internal/telephony/CellBroadcastConfigTracker$CdmaConfiguringState;-><init>(Lcom/android/internal/telephony/CellBroadcastConfigTracker;Lcom/android/internal/telephony/CellBroadcastConfigTracker-IA;)V

    iput-object p2, p0, Lcom/android/internal/telephony/CellBroadcastConfigTracker;->mCdmaConfiguringState:Lcom/android/internal/telephony/CellBroadcastConfigTracker$CdmaConfiguringState;

    .line 475
    new-instance p2, Lcom/android/internal/telephony/CellBroadcastConfigTracker$CdmaActivatingState;

    invoke-direct {p2, p0, v0}, Lcom/android/internal/telephony/CellBroadcastConfigTracker$CdmaActivatingState;-><init>(Lcom/android/internal/telephony/CellBroadcastConfigTracker;Lcom/android/internal/telephony/CellBroadcastConfigTracker-IA;)V

    iput-object p2, p0, Lcom/android/internal/telephony/CellBroadcastConfigTracker;->mCdmaActivatingState:Lcom/android/internal/telephony/CellBroadcastConfigTracker$CdmaActivatingState;

    .line 484
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CellBroadcastConfigTracker;->init(Lcom/android/internal/telephony/Phone;)V

    return-void
.end method

.method static synthetic blacklist access$000(Lcom/android/internal/telephony/CellBroadcastConfigTracker;Ljava/lang/String;)V
    .locals 0

    .line 54
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic blacklist access$100(Lcom/android/internal/telephony/CellBroadcastConfigTracker;Ljava/lang/String;)V
    .locals 0

    .line 54
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic blacklist access$1000(Lcom/android/internal/telephony/CellBroadcastConfigTracker;Ljava/lang/String;)V
    .locals 0

    .line 54
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic blacklist access$1100(Lcom/android/internal/telephony/CellBroadcastConfigTracker;Ljava/lang/String;)V
    .locals 0

    .line 54
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic blacklist access$1200(Lcom/android/internal/telephony/CellBroadcastConfigTracker;Ljava/lang/String;)V
    .locals 0

    .line 54
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic blacklist access$1300(Lcom/android/internal/telephony/CellBroadcastConfigTracker;Ljava/lang/String;)V
    .locals 0

    .line 54
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic blacklist access$1400(Lcom/android/internal/telephony/CellBroadcastConfigTracker;Ljava/lang/String;)V
    .locals 0

    .line 54
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic blacklist access$1500(Lcom/android/internal/telephony/CellBroadcastConfigTracker;Ljava/lang/String;)V
    .locals 0

    .line 54
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic blacklist access$1600(Lcom/android/internal/telephony/CellBroadcastConfigTracker;Ljava/lang/String;)V
    .locals 0

    .line 54
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic blacklist access$1700(Lcom/android/internal/telephony/CellBroadcastConfigTracker;Ljava/lang/String;)V
    .locals 0

    .line 54
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic blacklist access$1800(Lcom/android/internal/telephony/CellBroadcastConfigTracker;Ljava/lang/String;)V
    .locals 0

    .line 54
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic blacklist access$1900(Lcom/android/internal/telephony/CellBroadcastConfigTracker;Ljava/lang/String;)V
    .locals 0

    .line 54
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic blacklist access$200(Lcom/android/internal/telephony/CellBroadcastConfigTracker;Ljava/lang/String;)V
    .locals 0

    .line 54
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic blacklist access$300(Lcom/android/internal/telephony/CellBroadcastConfigTracker;Ljava/lang/String;)V
    .locals 0

    .line 54
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic blacklist access$400(Lcom/android/internal/telephony/CellBroadcastConfigTracker;Ljava/lang/String;)V
    .locals 0

    .line 54
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic blacklist access$500(Lcom/android/internal/telephony/CellBroadcastConfigTracker;Ljava/lang/String;)V
    .locals 0

    .line 54
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic blacklist access$600(Lcom/android/internal/telephony/CellBroadcastConfigTracker;Ljava/lang/String;)V
    .locals 0

    .line 54
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic blacklist access$700(Lcom/android/internal/telephony/CellBroadcastConfigTracker;Ljava/lang/String;)V
    .locals 0

    .line 54
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic blacklist access$800(Lcom/android/internal/telephony/CellBroadcastConfigTracker;Ljava/lang/String;)V
    .locals 0

    .line 54
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic blacklist access$900(Lcom/android/internal/telephony/CellBroadcastConfigTracker;Ljava/lang/String;)V
    .locals 0

    .line 54
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist init(Lcom/android/internal/telephony/Phone;)V
    .locals 1

    .line 488
    const-string v0, "init"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/StateMachine;->logd(Ljava/lang/String;)V

    .line 489
    iput-object p1, p0, Lcom/android/internal/telephony/CellBroadcastConfigTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 490
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/CellBroadcastConfigTracker;->mSubId:I

    .line 492
    invoke-static {}, Lcom/android/internal/telephony/SmsLogger;->getInstance()Lcom/android/internal/telephony/SmsLogger;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/CellBroadcastConfigTracker;->mSmsLogger:Lcom/android/internal/telephony/SmsLogger;

    .line 495
    iget-object p1, p0, Lcom/android/internal/telephony/CellBroadcastConfigTracker;->mDefaultState:Lcom/android/internal/telephony/CellBroadcastConfigTracker$DefaultState;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->addState(Lcom/android/internal/telephony/State;)V

    .line 496
    iget-object p1, p0, Lcom/android/internal/telephony/CellBroadcastConfigTracker;->mIdleState:Lcom/android/internal/telephony/CellBroadcastConfigTracker$IdleState;

    iget-object v0, p0, Lcom/android/internal/telephony/CellBroadcastConfigTracker;->mDefaultState:Lcom/android/internal/telephony/CellBroadcastConfigTracker$DefaultState;

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/StateMachine;->addState(Lcom/android/internal/telephony/State;Lcom/android/internal/telephony/State;)V

    .line 497
    iget-object p1, p0, Lcom/android/internal/telephony/CellBroadcastConfigTracker;->mGsmConfiguringState:Lcom/android/internal/telephony/CellBroadcastConfigTracker$GsmConfiguringState;

    iget-object v0, p0, Lcom/android/internal/telephony/CellBroadcastConfigTracker;->mDefaultState:Lcom/android/internal/telephony/CellBroadcastConfigTracker$DefaultState;

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/StateMachine;->addState(Lcom/android/internal/telephony/State;Lcom/android/internal/telephony/State;)V

    .line 498
    iget-object p1, p0, Lcom/android/internal/telephony/CellBroadcastConfigTracker;->mGsmActivatingState:Lcom/android/internal/telephony/CellBroadcastConfigTracker$GsmActivatingState;

    iget-object v0, p0, Lcom/android/internal/telephony/CellBroadcastConfigTracker;->mDefaultState:Lcom/android/internal/telephony/CellBroadcastConfigTracker$DefaultState;

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/StateMachine;->addState(Lcom/android/internal/telephony/State;Lcom/android/internal/telephony/State;)V

    .line 499
    iget-object p1, p0, Lcom/android/internal/telephony/CellBroadcastConfigTracker;->mCdmaConfiguringState:Lcom/android/internal/telephony/CellBroadcastConfigTracker$CdmaConfiguringState;

    iget-object v0, p0, Lcom/android/internal/telephony/CellBroadcastConfigTracker;->mDefaultState:Lcom/android/internal/telephony/CellBroadcastConfigTracker$DefaultState;

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/StateMachine;->addState(Lcom/android/internal/telephony/State;Lcom/android/internal/telephony/State;)V

    .line 500
    iget-object p1, p0, Lcom/android/internal/telephony/CellBroadcastConfigTracker;->mCdmaActivatingState:Lcom/android/internal/telephony/CellBroadcastConfigTracker$CdmaActivatingState;

    iget-object v0, p0, Lcom/android/internal/telephony/CellBroadcastConfigTracker;->mDefaultState:Lcom/android/internal/telephony/CellBroadcastConfigTracker$DefaultState;

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/StateMachine;->addState(Lcom/android/internal/telephony/State;Lcom/android/internal/telephony/State;)V

    .line 501
    iget-object p1, p0, Lcom/android/internal/telephony/CellBroadcastConfigTracker;->mIdleState:Lcom/android/internal/telephony/CellBroadcastConfigTracker$IdleState;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->setInitialState(Lcom/android/internal/telephony/State;)V

    return-void
.end method

.method public static blacklist make(Lcom/android/internal/telephony/Phone;Landroid/os/Handler;Z)Lcom/android/internal/telephony/CellBroadcastConfigTracker;
    .locals 1

    if-nez p1, :cond_0

    .line 510
    new-instance p1, Lcom/android/internal/telephony/CellBroadcastConfigTracker;

    invoke-direct {p1, p0}, Lcom/android/internal/telephony/CellBroadcastConfigTracker;-><init>(Lcom/android/internal/telephony/Phone;)V

    goto :goto_0

    .line 511
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/CellBroadcastConfigTracker;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/telephony/CellBroadcastConfigTracker;-><init>(Lcom/android/internal/telephony/Phone;Landroid/os/Handler;)V

    move-object p1, v0

    :goto_0
    if-eqz p2, :cond_1

    .line 513
    invoke-virtual {p1}, Lcom/android/internal/telephony/StateMachine;->start()V

    :cond_1
    return-object p1
.end method

.method public static blacklist mergeRangesAsNeeded(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/CellBroadcastIdRange;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/telephony/CellBroadcastIdRange;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 553
    new-instance v0, Lcom/android/internal/telephony/CellBroadcastConfigTracker$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/internal/telephony/CellBroadcastConfigTracker$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 556
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 557
    new-instance v1, Lcom/android/internal/telephony/CellBroadcastConfigTracker$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0}, Lcom/android/internal/telephony/CellBroadcastConfigTracker$$ExternalSyntheticLambda1;-><init>(Ljava/util/List;)V

    invoke-interface {p0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-object v0
.end method

.method private blacklist resetConfig()V
    .locals 1

    .line 579
    iget-object v0, p0, Lcom/android/internal/telephony/CellBroadcastConfigTracker;->mCbRanges3gpp:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 580
    iget-object p0, p0, Lcom/android/internal/telephony/CellBroadcastConfigTracker;->mCbRanges3gpp2:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method private blacklist setActivation(IZLcom/android/internal/telephony/CellBroadcastConfigTracker$Request;)V
    .locals 4

    .line 618
    iget-object v0, p0, Lcom/android/internal/telephony/CellBroadcastConfigTracker;->mSmsLogger:Lcom/android/internal/telephony/SmsLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setActivation("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/CellBroadcastConfigTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    const-string v3, "CellBroadcastConfigTracker"

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/internal/telephony/SmsLogger;->logAndAdd(Ljava/lang/String;Ljava/lang/String;I)V

    const/4 v0, 0x3

    .line 621
    invoke-virtual {p0, v0, p3}, Lcom/android/internal/telephony/StateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 624
    iget-object p0, p0, Lcom/android/internal/telephony/CellBroadcastConfigTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {p0, p2, p3}, Lcom/android/internal/telephony/CommandsInterface;->setGsmBroadcastActivation(ZLandroid/os/Message;)V

    return-void

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 626
    iget-object p0, p0, Lcom/android/internal/telephony/CellBroadcastConfigTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {p0, p2, p3}, Lcom/android/internal/telephony/CommandsInterface;->setCdmaBroadcastActivation(ZLandroid/os/Message;)V

    :cond_1
    return-void
.end method

.method private blacklist setGsmConfig(Ljava/util/List;Lcom/android/internal/telephony/CellBroadcastConfigTracker$Request;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/CellBroadcastIdRange;",
            ">;",
            "Lcom/android/internal/telephony/CellBroadcastConfigTracker$Request;",
            ")V"
        }
    .end annotation

    .line 585
    iget-object v0, p0, Lcom/android/internal/telephony/CellBroadcastConfigTracker;->mSmsLogger:Lcom/android/internal/telephony/SmsLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setGsmConfig with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/CellBroadcastConfigTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    const-string v3, "CellBroadcastConfigTracker"

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/internal/telephony/SmsLogger;->logAndAdd(Ljava/lang/String;Ljava/lang/String;I)V

    .line 588
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v1, v0, [Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 590
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/CellBroadcastIdRange;

    .line 591
    new-instance v4, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;

    invoke-virtual {v3}, Landroid/telephony/CellBroadcastIdRange;->getStartId()I

    move-result v5

    invoke-virtual {v3}, Landroid/telephony/CellBroadcastIdRange;->getEndId()I

    move-result v6

    const/16 v8, 0xff

    .line 592
    invoke-virtual {v3}, Landroid/telephony/CellBroadcastIdRange;->isEnabled()Z

    move-result v9

    const/4 v7, 0x0

    invoke-direct/range {v4 .. v9}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;-><init>(IIIIZ)V

    aput-object v4, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    .line 595
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/StateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 596
    iget-object p0, p0, Lcom/android/internal/telephony/CellBroadcastConfigTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {p0, v1, p1}, Lcom/android/internal/telephony/CommandsInterface;->setGsmBroadcastConfig([Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;Landroid/os/Message;)V

    return-void
.end method


# virtual methods
.method public blacklist dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    .line 638
    new-instance v0, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p2, v1}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 639
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/android/internal/telephony/CellBroadcastConfigTracker;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/CellBroadcastConfigTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 640
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 639
    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 641
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 642
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Current mCbRanges3gpp:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/CellBroadcastConfigTracker;->mCbRanges3gpp:Ljava/util/List;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 643
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Current mCbRanges3gpp2:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/CellBroadcastConfigTracker;->mCbRanges3gpp2:Ljava/util/List;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 644
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 646
    const-string p2, "Local logs:"

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 647
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 648
    iget-object p0, p0, Lcom/android/internal/telephony/CellBroadcastConfigTracker;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {p0, p1, v0, p3}, Lcom/android/internal/telephony/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 649
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    return-void
.end method

.method public blacklist getCellBroadcastIdRanges()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/CellBroadcastIdRange;",
            ">;"
        }
    .end annotation

    .line 522
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 523
    iget-object v1, p0, Lcom/android/internal/telephony/CellBroadcastConfigTracker;->mCbRanges3gpp:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 524
    iget-object p0, p0, Lcom/android/internal/telephony/CellBroadcastConfigTracker;->mCbRanges3gpp2:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public blacklist setCellBroadcastIdRanges(Ljava/util/List;Ljava/util/function/Consumer;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/CellBroadcastIdRange;",
            ">;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 534
    iget-object v0, p0, Lcom/android/internal/telephony/CellBroadcastConfigTracker;->mSmsLogger:Lcom/android/internal/telephony/SmsLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCellBroadcastIdRanges with ranges:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/CellBroadcastConfigTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    const-string v3, "CellBroadcastConfigTracker"

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/internal/telephony/SmsLogger;->logAndAdd(Ljava/lang/String;Ljava/lang/String;I)V

    .line 536
    invoke-static {p1}, Lcom/android/internal/telephony/CellBroadcastConfigTracker;->mergeRangesAsNeeded(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 538
    new-instance v0, Lcom/android/internal/telephony/CellBroadcastConfigTracker$Request;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/telephony/CellBroadcastConfigTracker$Request;-><init>(Ljava/util/List;Ljava/util/function/Consumer;Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/StateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method
