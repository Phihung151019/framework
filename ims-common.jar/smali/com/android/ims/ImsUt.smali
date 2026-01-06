.class public Lcom/android/ims/ImsUt;
.super Ljava/lang/Object;
.source "ImsUt.java"

# interfaces
.implements Lcom/android/ims/ImsUtInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/ImsUt$IImsUtListenerProxy;
    }
.end annotation


# static fields
.field public static final blacklist CATEGORY_CB:Ljava/lang/String; = "CB"

.field public static final blacklist CATEGORY_CDIV:Ljava/lang/String; = "CDIV"

.field public static final blacklist CATEGORY_CONF:Ljava/lang/String; = "CONF"

.field public static final blacklist CATEGORY_CW:Ljava/lang/String; = "CW"

.field public static final blacklist CATEGORY_OIP:Ljava/lang/String; = "OIP"

.field public static final blacklist CATEGORY_OIR:Ljava/lang/String; = "OIR"

.field public static final blacklist CATEGORY_TIP:Ljava/lang/String; = "TIP"

.field public static final blacklist CATEGORY_TIR:Ljava/lang/String; = "TIR"

.field private static final blacklist DBG:Z = true

.field public static final blacklist KEY_ACTION:Ljava/lang/String; = "action"

.field public static final blacklist KEY_CATEGORY:Ljava/lang/String; = "category"

.field private static final blacklist SERVICE_CLASS_NONE:I = 0x0

.field private static final blacklist SERVICE_CLASS_VOICE:I = 0x1

.field private static final blacklist TAG:Ljava/lang/String; = "ImsUt"


# instance fields
.field private blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private blacklist mLockObj:Ljava/lang/Object;

.field private blacklist mPendingCmds:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mSsIndicationRegistrant:Lcom/android/ims/Registrant;

.field private final blacklist miUt:Lcom/android/ims/internal/IImsUt;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmExecutor(Lcom/android/ims/ImsUt;)Ljava/util/concurrent/Executor;
    .locals 0

    iget-object p0, p0, Lcom/android/ims/ImsUt;->mExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLockObj(Lcom/android/ims/ImsUt;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/ims/ImsUt;->mLockObj:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPendingCmds(Lcom/android/ims/ImsUt;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/android/ims/ImsUt;->mPendingCmds:Ljava/util/HashMap;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSsIndicationRegistrant(Lcom/android/ims/ImsUt;)Lcom/android/ims/Registrant;
    .locals 0

    iget-object p0, p0, Lcom/android/ims/ImsUt;->mSsIndicationRegistrant:Lcom/android/ims/Registrant;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$msendFailureReport(Lcom/android/ims/ImsUt;Landroid/os/Message;Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/ims/ImsUt;->sendFailureReport(Landroid/os/Message;Landroid/telephony/ims/ImsReasonInfo;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msendSuccessReport(Lcom/android/ims/ImsUt;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/ims/ImsUt;->sendSuccessReport(Landroid/os/Message;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msendSuccessReport(Lcom/android/ims/ImsUt;Landroid/os/Message;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/ims/ImsUt;->sendSuccessReport(Landroid/os/Message;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/ims/internal/IImsUt;Ljava/util/concurrent/Executor;)V
    .locals 2
    .param p1, "iUt"    # Lcom/android/ims/internal/IImsUt;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/ims/ImsUt;->mLockObj:Ljava/lang/Object;

    .line 87
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/ims/ImsUt;->mPendingCmds:Ljava/util/HashMap;

    .line 90
    new-instance v0, Lcom/android/ims/ImsEcbmStateListener$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/ims/ImsEcbmStateListener$$ExternalSyntheticLambda0;-><init>()V

    iput-object v0, p0, Lcom/android/ims/ImsUt;->mExecutor:Ljava/util/concurrent/Executor;

    .line 93
    iput-object p1, p0, Lcom/android/ims/ImsUt;->miUt:Lcom/android/ims/internal/IImsUt;

    .line 94
    if-eqz p2, :cond_0

    .line 95
    iput-object p2, p0, Lcom/android/ims/ImsUt;->mExecutor:Ljava/util/concurrent/Executor;

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/android/ims/ImsUt;->miUt:Lcom/android/ims/internal/IImsUt;

    if-eqz v0, :cond_1

    .line 100
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/ImsUt;->miUt:Lcom/android/ims/internal/IImsUt;

    new-instance v1, Lcom/android/ims/ImsUt$IImsUtListenerProxy;

    invoke-direct {v1, p0}, Lcom/android/ims/ImsUt$IImsUtListenerProxy;-><init>(Lcom/android/ims/ImsUt;)V

    invoke-interface {v0, v1}, Lcom/android/ims/internal/IImsUt;->setListener(Lcom/android/ims/internal/IImsUtListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    goto :goto_0

    .line 101
    :catch_0
    move-exception v0

    .line 104
    :cond_1
    :goto_0
    return-void
.end method

.method private blacklist log(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .line 662
    const-string v0, "ImsUt"

    invoke-static {v0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    return-void
.end method

.method private blacklist loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .line 666
    const-string v0, "ImsUt"

    invoke-static {v0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    return-void
.end method

.method private blacklist loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;

    .line 670
    const-string v0, "ImsUt"

    invoke-static {v0, p1, p2}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 671
    return-void
.end method

.method private blacklist sendFailureReport(Landroid/os/Message;Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 4
    .param p1, "result"    # Landroid/os/Message;
    .param p2, "error"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 615
    if-eqz p1, :cond_5

    if-nez p2, :cond_0

    goto :goto_2

    .line 622
    :cond_0
    iget-object v0, p2, Landroid/telephony/ims/ImsReasonInfo;->mExtraMessage:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 623
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10408d4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .local v0, "errorString":Ljava/lang/String;
    goto :goto_0

    .line 627
    .end local v0    # "errorString":Ljava/lang/String;
    :cond_1
    new-instance v0, Ljava/lang/String;

    iget-object v1, p2, Landroid/telephony/ims/ImsReasonInfo;->mExtraMessage:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 632
    .restart local v0    # "errorString":Ljava/lang/String;
    :goto_0
    iget v1, p2, Landroid/telephony/ims/ImsReasonInfo;->mCode:I

    const/16 v2, 0x321

    const/4 v3, 0x0

    if-lt v1, v2, :cond_2

    iget v1, p2, Landroid/telephony/ims/ImsReasonInfo;->mCode:I

    const/16 v2, 0x385

    if-lt v1, v2, :cond_3

    :cond_2
    iget v1, p2, Landroid/telephony/ims/ImsReasonInfo;->mCode:I

    const/16 v2, 0x92

    if-ne v1, v2, :cond_4

    .line 635
    :cond_3
    new-instance v1, Lcom/android/ims/ImsException;

    iget v2, p2, Landroid/telephony/ims/ImsReasonInfo;->mCode:I

    invoke-direct {v1, v0, v2}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    invoke-static {p1, v3, v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    goto :goto_1

    .line 637
    :cond_4
    new-instance v1, Lcom/android/ims/ImsException;

    invoke-direct {v1, v0}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v3, v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 640
    :goto_1
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 641
    return-void

    .line 616
    .end local v0    # "errorString":Ljava/lang/String;
    :cond_5
    :goto_2
    return-void
.end method

.method private blacklist sendSuccessReport(Landroid/os/Message;)V
    .locals 1
    .param p1, "result"    # Landroid/os/Message;

    .line 644
    if-nez p1, :cond_0

    .line 645
    return-void

    .line 648
    :cond_0
    const/4 v0, 0x0

    invoke-static {p1, v0, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 649
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 650
    return-void
.end method

.method private blacklist sendSuccessReport(Landroid/os/Message;Ljava/lang/Object;)V
    .locals 1
    .param p1, "result"    # Landroid/os/Message;
    .param p2, "ssInfo"    # Ljava/lang/Object;

    .line 653
    if-nez p1, :cond_0

    .line 654
    return-void

    .line 657
    :cond_0
    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 658
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 659
    return-void
.end method


# virtual methods
.method public blacklist close()V
    .locals 9

    .line 107
    iget-object v0, p0, Lcom/android/ims/ImsUt;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 108
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsUt;->miUt:Lcom/android/ims/internal/IImsUt;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 110
    :try_start_1
    iget-object v1, p0, Lcom/android/ims/ImsUt;->miUt:Lcom/android/ims/internal/IImsUt;

    invoke-interface {v1}, Lcom/android/ims/internal/IImsUt;->close()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 112
    goto :goto_0

    .line 111
    :catch_0
    move-exception v1

    .line 115
    :cond_0
    :goto_0
    :try_start_2
    iget-object v1, p0, Lcom/android/ims/ImsUt;->mPendingCmds:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 116
    iget-object v1, p0, Lcom/android/ims/ImsUt;->mPendingCmds:Ljava/util/HashMap;

    .line 117
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, Lcom/android/ims/ImsUt;->mPendingCmds:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    new-array v2, v2, [Ljava/util/Map$Entry;

    invoke-interface {v1, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/util/Map$Entry;

    .line 119
    .local v1, "entries":[Ljava/util/Map$Entry;, "[Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/os/Message;>;"
    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_1
    if-ge v4, v2, :cond_1

    aget-object v5, v1, v4

    .line 120
    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/os/Message;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Message;

    new-instance v7, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v8, 0x322

    invoke-direct {v7, v8, v3}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-direct {p0, v6, v7}, Lcom/android/ims/ImsUt;->sendFailureReport(Landroid/os/Message;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 119
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/os/Message;>;"
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 124
    :cond_1
    iget-object v2, p0, Lcom/android/ims/ImsUt;->mPendingCmds:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 126
    .end local v1    # "entries":[Ljava/util/Map$Entry;, "[Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/os/Message;>;"
    :cond_2
    monitor-exit v0

    .line 127
    return-void

    .line 126
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public blacklist isBinderAlive()Z
    .locals 1

    .line 588
    iget-object v0, p0, Lcom/android/ims/ImsUt;->miUt:Lcom/android/ims/internal/IImsUt;

    invoke-interface {v0}, Lcom/android/ims/internal/IImsUt;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v0

    return v0
.end method

.method public blacklist isUssdEnabled()Z
    .locals 2

    .line 679
    iget-object v0, p0, Lcom/android/ims/ImsUt;->miUt:Lcom/android/ims/internal/IImsUt;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 680
    return v1

    .line 683
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/ImsUt;->miUt:Lcom/android/ims/internal/IImsUt;

    invoke-interface {v0}, Lcom/android/ims/internal/IImsUt;->isUssdEnabled()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 684
    :catch_0
    move-exception v0

    .line 685
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 686
    return v1
.end method

.method public blacklist queryCLIP(Landroid/os/Message;)V
    .locals 6
    .param p1, "result"    # Landroid/os/Message;

    .line 285
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "queryCLIP :: Ut="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ims/ImsUt;->miUt:Lcom/android/ims/internal/IImsUt;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/ims/ImsUt;->log(Ljava/lang/String;)V

    .line 288
    iget-object v0, p0, Lcom/android/ims/ImsUt;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 290
    const/4 v1, 0x0

    const/16 v2, 0x322

    :try_start_0
    iget-object v3, p0, Lcom/android/ims/ImsUt;->miUt:Lcom/android/ims/internal/IImsUt;

    invoke-interface {v3}, Lcom/android/ims/internal/IImsUt;->queryCLIP()I

    move-result v3

    .line 292
    .local v3, "id":I
    if-gez v3, :cond_0

    .line 293
    new-instance v4, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v4, v2, v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-direct {p0, p1, v4}, Lcom/android/ims/ImsUt;->sendFailureReport(Landroid/os/Message;Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 295
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    .line 298
    :cond_0
    :try_start_2
    iget-object v4, p0, Lcom/android/ims/ImsUt;->mPendingCmds:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 302
    .end local v3    # "id":I
    goto :goto_0

    .line 303
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 299
    :catch_0
    move-exception v3

    .line 300
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_3
    new-instance v4, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v4, v2, v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-direct {p0, p1, v4}, Lcom/android/ims/ImsUt;->sendFailureReport(Landroid/os/Message;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 303
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_0
    monitor-exit v0

    .line 304
    return-void

    .line 303
    :goto_1
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method public blacklist queryCLIR(Landroid/os/Message;)V
    .locals 6
    .param p1, "result"    # Landroid/os/Message;

    .line 259
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "queryCLIR :: Ut="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ims/ImsUt;->miUt:Lcom/android/ims/internal/IImsUt;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/ims/ImsUt;->log(Ljava/lang/String;)V

    .line 262
    iget-object v0, p0, Lcom/android/ims/ImsUt;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 264
    const/4 v1, 0x0

    const/16 v2, 0x322

    :try_start_0
    iget-object v3, p0, Lcom/android/ims/ImsUt;->miUt:Lcom/android/ims/internal/IImsUt;

    invoke-interface {v3}, Lcom/android/ims/internal/IImsUt;->queryCLIR()I

    move-result v3

    .line 266
    .local v3, "id":I
    if-gez v3, :cond_0

    .line 267
    new-instance v4, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v4, v2, v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-direct {p0, p1, v4}, Lcom/android/ims/ImsUt;->sendFailureReport(Landroid/os/Message;Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 269
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    .line 272
    :cond_0
    :try_start_2
    iget-object v4, p0, Lcom/android/ims/ImsUt;->mPendingCmds:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 276
    .end local v3    # "id":I
    goto :goto_0

    .line 277
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 273
    :catch_0
    move-exception v3

    .line 274
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_3
    new-instance v4, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v4, v2, v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-direct {p0, p1, v4}, Lcom/android/ims/ImsUt;->sendFailureReport(Landroid/os/Message;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 277
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_0
    monitor-exit v0

    .line 278
    return-void

    .line 277
    :goto_1
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method public blacklist queryCOLP(Landroid/os/Message;)V
    .locals 6
    .param p1, "result"    # Landroid/os/Message;

    .line 337
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "queryCOLP :: Ut="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ims/ImsUt;->miUt:Lcom/android/ims/internal/IImsUt;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/ims/ImsUt;->log(Ljava/lang/String;)V

    .line 340
    iget-object v0, p0, Lcom/android/ims/ImsUt;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 342
    const/4 v1, 0x0

    const/16 v2, 0x322

    :try_start_0
    iget-object v3, p0, Lcom/android/ims/ImsUt;->miUt:Lcom/android/ims/internal/IImsUt;

    invoke-interface {v3}, Lcom/android/ims/internal/IImsUt;->queryCOLP()I

    move-result v3

    .line 344
    .local v3, "id":I
    if-gez v3, :cond_0

    .line 345
    new-instance v4, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v4, v2, v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-direct {p0, p1, v4}, Lcom/android/ims/ImsUt;->sendFailureReport(Landroid/os/Message;Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 347
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    .line 350
    :cond_0
    :try_start_2
    iget-object v4, p0, Lcom/android/ims/ImsUt;->mPendingCmds:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 354
    .end local v3    # "id":I
    goto :goto_0

    .line 355
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 351
    :catch_0
    move-exception v3

    .line 352
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_3
    new-instance v4, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v4, v2, v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-direct {p0, p1, v4}, Lcom/android/ims/ImsUt;->sendFailureReport(Landroid/os/Message;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 355
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_0
    monitor-exit v0

    .line 356
    return-void

    .line 355
    :goto_1
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method public blacklist queryCOLR(Landroid/os/Message;)V
    .locals 6
    .param p1, "result"    # Landroid/os/Message;

    .line 311
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "queryCOLR :: Ut="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ims/ImsUt;->miUt:Lcom/android/ims/internal/IImsUt;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/ims/ImsUt;->log(Ljava/lang/String;)V

    .line 314
    iget-object v0, p0, Lcom/android/ims/ImsUt;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 316
    const/4 v1, 0x0

    const/16 v2, 0x322

    :try_start_0
    iget-object v3, p0, Lcom/android/ims/ImsUt;->miUt:Lcom/android/ims/internal/IImsUt;

    invoke-interface {v3}, Lcom/android/ims/internal/IImsUt;->queryCOLR()I

    move-result v3

    .line 318
    .local v3, "id":I
    if-gez v3, :cond_0

    .line 319
    new-instance v4, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v4, v2, v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-direct {p0, p1, v4}, Lcom/android/ims/ImsUt;->sendFailureReport(Landroid/os/Message;Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 321
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    .line 324
    :cond_0
    :try_start_2
    iget-object v4, p0, Lcom/android/ims/ImsUt;->mPendingCmds:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 328
    .end local v3    # "id":I
    goto :goto_0

    .line 329
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 325
    :catch_0
    move-exception v3

    .line 326
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_3
    new-instance v4, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v4, v2, v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-direct {p0, p1, v4}, Lcom/android/ims/ImsUt;->sendFailureReport(Landroid/os/Message;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 329
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_0
    monitor-exit v0

    .line 330
    return-void

    .line 329
    :goto_1
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method public blacklist queryCallBarring(ILandroid/os/Message;)V
    .locals 1
    .param p1, "cbType"    # I
    .param p2, "result"    # Landroid/os/Message;

    .line 160
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/ims/ImsUt;->queryCallBarring(ILandroid/os/Message;I)V

    .line 161
    return-void
.end method

.method public blacklist queryCallBarring(ILandroid/os/Message;I)V
    .locals 6
    .param p1, "cbType"    # I
    .param p2, "result"    # Landroid/os/Message;
    .param p3, "serviceClass"    # I

    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "queryCallBarring :: Ut="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ims/ImsUt;->miUt:Lcom/android/ims/internal/IImsUt;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cbType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", serviceClass="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/ims/ImsUt;->log(Ljava/lang/String;)V

    .line 178
    iget-object v0, p0, Lcom/android/ims/ImsUt;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 180
    const/4 v1, 0x0

    const/16 v2, 0x322

    :try_start_0
    iget-object v3, p0, Lcom/android/ims/ImsUt;->miUt:Lcom/android/ims/internal/IImsUt;

    invoke-interface {v3, p1, p3}, Lcom/android/ims/internal/IImsUt;->queryCallBarringForServiceClass(II)I

    move-result v3

    .line 182
    .local v3, "id":I
    if-gez v3, :cond_0

    .line 183
    new-instance v4, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v4, v2, v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-direct {p0, p2, v4}, Lcom/android/ims/ImsUt;->sendFailureReport(Landroid/os/Message;Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 185
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    .line 188
    :cond_0
    :try_start_2
    iget-object v4, p0, Lcom/android/ims/ImsUt;->mPendingCmds:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 192
    .end local v3    # "id":I
    goto :goto_0

    .line 193
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 189
    :catch_0
    move-exception v3

    .line 190
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_3
    new-instance v4, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v4, v2, v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-direct {p0, p2, v4}, Lcom/android/ims/ImsUt;->sendFailureReport(Landroid/os/Message;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 193
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_0
    monitor-exit v0

    .line 194
    return-void

    .line 193
    :goto_1
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method public blacklist queryCallForward(ILjava/lang/String;Landroid/os/Message;)V
    .locals 6
    .param p1, "condition"    # I
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "result"    # Landroid/os/Message;

    .line 203
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "queryCallForward :: Ut="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ims/ImsUt;->miUt:Lcom/android/ims/internal/IImsUt;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", condition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", number="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ImsUt"

    .line 204
    invoke-static {v1, p2}, Lcom/android/telephony/Rlog;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 203
    invoke-direct {p0, v0}, Lcom/android/ims/ImsUt;->log(Ljava/lang/String;)V

    .line 207
    iget-object v0, p0, Lcom/android/ims/ImsUt;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 209
    const/4 v1, 0x0

    const/16 v2, 0x322

    :try_start_0
    iget-object v3, p0, Lcom/android/ims/ImsUt;->miUt:Lcom/android/ims/internal/IImsUt;

    invoke-interface {v3, p1, p2}, Lcom/android/ims/internal/IImsUt;->queryCallForward(ILjava/lang/String;)I

    move-result v3

    .line 211
    .local v3, "id":I
    if-gez v3, :cond_0

    .line 212
    new-instance v4, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v4, v2, v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-direct {p0, p3, v4}, Lcom/android/ims/ImsUt;->sendFailureReport(Landroid/os/Message;Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 214
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    .line 217
    :cond_0
    :try_start_2
    iget-object v4, p0, Lcom/android/ims/ImsUt;->mPendingCmds:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 221
    .end local v3    # "id":I
    goto :goto_0

    .line 222
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 218
    :catch_0
    move-exception v3

    .line 219
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_3
    new-instance v4, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v4, v2, v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-direct {p0, p3, v4}, Lcom/android/ims/ImsUt;->sendFailureReport(Landroid/os/Message;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 222
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_0
    monitor-exit v0

    .line 223
    return-void

    .line 222
    :goto_1
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method public blacklist queryCallWaiting(Landroid/os/Message;)V
    .locals 6
    .param p1, "result"    # Landroid/os/Message;

    .line 232
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "queryCallWaiting :: Ut="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ims/ImsUt;->miUt:Lcom/android/ims/internal/IImsUt;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/ims/ImsUt;->log(Ljava/lang/String;)V

    .line 235
    iget-object v0, p0, Lcom/android/ims/ImsUt;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 237
    const/4 v1, 0x0

    const/16 v2, 0x322

    :try_start_0
    iget-object v3, p0, Lcom/android/ims/ImsUt;->miUt:Lcom/android/ims/internal/IImsUt;

    invoke-interface {v3}, Lcom/android/ims/internal/IImsUt;->queryCallWaiting()I

    move-result v3

    .line 239
    .local v3, "id":I
    if-gez v3, :cond_0

    .line 240
    new-instance v4, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v4, v2, v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-direct {p0, p1, v4}, Lcom/android/ims/ImsUt;->sendFailureReport(Landroid/os/Message;Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 242
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    .line 245
    :cond_0
    :try_start_2
    iget-object v4, p0, Lcom/android/ims/ImsUt;->mPendingCmds:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 249
    .end local v3    # "id":I
    goto :goto_0

    .line 250
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 246
    :catch_0
    move-exception v3

    .line 247
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_3
    new-instance v4, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v4, v2, v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-direct {p0, p1, v4}, Lcom/android/ims/ImsUt;->sendFailureReport(Landroid/os/Message;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 250
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_0
    monitor-exit v0

    .line 251
    return-void

    .line 250
    :goto_1
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method public blacklist registerForSuppServiceIndication(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 136
    new-instance v0, Lcom/android/ims/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/ims/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/ims/ImsUt;->mSsIndicationRegistrant:Lcom/android/ims/Registrant;

    .line 137
    return-void
.end method

.method public blacklist transact(Landroid/os/Bundle;Landroid/os/Message;)V
    .locals 6
    .param p1, "ssInfo"    # Landroid/os/Bundle;
    .param p2, "result"    # Landroid/os/Message;

    .line 593
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "transact :: Ut="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ims/ImsUt;->miUt:Lcom/android/ims/internal/IImsUt;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ssInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/ims/ImsUt;->log(Ljava/lang/String;)V

    .line 596
    iget-object v0, p0, Lcom/android/ims/ImsUt;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 598
    const/4 v1, 0x0

    const/16 v2, 0x322

    :try_start_0
    iget-object v3, p0, Lcom/android/ims/ImsUt;->miUt:Lcom/android/ims/internal/IImsUt;

    invoke-interface {v3, p1}, Lcom/android/ims/internal/IImsUt;->transact(Landroid/os/Bundle;)I

    move-result v3

    .line 600
    .local v3, "id":I
    if-gez v3, :cond_0

    .line 601
    new-instance v4, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v4, v2, v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-direct {p0, p2, v4}, Lcom/android/ims/ImsUt;->sendFailureReport(Landroid/os/Message;Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 603
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    .line 606
    :cond_0
    :try_start_2
    iget-object v4, p0, Lcom/android/ims/ImsUt;->mPendingCmds:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 610
    .end local v3    # "id":I
    goto :goto_0

    .line 611
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 607
    :catch_0
    move-exception v3

    .line 608
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_3
    new-instance v4, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v4, v2, v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-direct {p0, p2, v4}, Lcom/android/ims/ImsUt;->sendFailureReport(Landroid/os/Message;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 611
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_0
    monitor-exit v0

    .line 612
    return-void

    .line 611
    :goto_1
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method public blacklist unregisterForSuppServiceIndication(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 143
    iget-object v0, p0, Lcom/android/ims/ImsUt;->mSsIndicationRegistrant:Lcom/android/ims/Registrant;

    invoke-virtual {v0}, Lcom/android/ims/Registrant;->clear()V

    .line 144
    return-void
.end method

.method public blacklist updateCLIP(ZLandroid/os/Message;)V
    .locals 6
    .param p1, "enable"    # Z
    .param p2, "result"    # Landroid/os/Message;

    .line 509
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateCLIP :: Ut="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ims/ImsUt;->miUt:Lcom/android/ims/internal/IImsUt;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", enable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/ims/ImsUt;->log(Ljava/lang/String;)V

    .line 512
    iget-object v0, p0, Lcom/android/ims/ImsUt;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 514
    const/4 v1, 0x0

    const/16 v2, 0x322

    :try_start_0
    iget-object v3, p0, Lcom/android/ims/ImsUt;->miUt:Lcom/android/ims/internal/IImsUt;

    invoke-interface {v3, p1}, Lcom/android/ims/internal/IImsUt;->updateCLIP(Z)I

    move-result v3

    .line 516
    .local v3, "id":I
    if-gez v3, :cond_0

    .line 517
    new-instance v4, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v4, v2, v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-direct {p0, p2, v4}, Lcom/android/ims/ImsUt;->sendFailureReport(Landroid/os/Message;Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 519
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    .line 522
    :cond_0
    :try_start_2
    iget-object v4, p0, Lcom/android/ims/ImsUt;->mPendingCmds:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 526
    .end local v3    # "id":I
    goto :goto_0

    .line 527
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 523
    :catch_0
    move-exception v3

    .line 524
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_3
    new-instance v4, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v4, v2, v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-direct {p0, p2, v4}, Lcom/android/ims/ImsUt;->sendFailureReport(Landroid/os/Message;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 527
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_0
    monitor-exit v0

    .line 528
    return-void

    .line 527
    :goto_1
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method public blacklist updateCLIR(ILandroid/os/Message;)V
    .locals 6
    .param p1, "clirMode"    # I
    .param p2, "result"    # Landroid/os/Message;

    .line 482
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateCLIR :: Ut="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ims/ImsUt;->miUt:Lcom/android/ims/internal/IImsUt;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", clirMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/ims/ImsUt;->log(Ljava/lang/String;)V

    .line 485
    iget-object v0, p0, Lcom/android/ims/ImsUt;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 487
    const/4 v1, 0x0

    const/16 v2, 0x322

    :try_start_0
    iget-object v3, p0, Lcom/android/ims/ImsUt;->miUt:Lcom/android/ims/internal/IImsUt;

    invoke-interface {v3, p1}, Lcom/android/ims/internal/IImsUt;->updateCLIR(I)I

    move-result v3

    .line 489
    .local v3, "id":I
    if-gez v3, :cond_0

    .line 490
    new-instance v4, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v4, v2, v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-direct {p0, p2, v4}, Lcom/android/ims/ImsUt;->sendFailureReport(Landroid/os/Message;Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 492
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    .line 495
    :cond_0
    :try_start_2
    iget-object v4, p0, Lcom/android/ims/ImsUt;->mPendingCmds:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 499
    .end local v3    # "id":I
    goto :goto_0

    .line 500
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 496
    :catch_0
    move-exception v3

    .line 497
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_3
    new-instance v4, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v4, v2, v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-direct {p0, p2, v4}, Lcom/android/ims/ImsUt;->sendFailureReport(Landroid/os/Message;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 500
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_0
    monitor-exit v0

    .line 501
    return-void

    .line 500
    :goto_1
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method public blacklist updateCOLP(ZLandroid/os/Message;)V
    .locals 6
    .param p1, "enable"    # Z
    .param p2, "result"    # Landroid/os/Message;

    .line 563
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateCallWaiting :: Ut="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ims/ImsUt;->miUt:Lcom/android/ims/internal/IImsUt;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", enable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/ims/ImsUt;->log(Ljava/lang/String;)V

    .line 566
    iget-object v0, p0, Lcom/android/ims/ImsUt;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 568
    const/4 v1, 0x0

    const/16 v2, 0x322

    :try_start_0
    iget-object v3, p0, Lcom/android/ims/ImsUt;->miUt:Lcom/android/ims/internal/IImsUt;

    invoke-interface {v3, p1}, Lcom/android/ims/internal/IImsUt;->updateCOLP(Z)I

    move-result v3

    .line 570
    .local v3, "id":I
    if-gez v3, :cond_0

    .line 571
    new-instance v4, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v4, v2, v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-direct {p0, p2, v4}, Lcom/android/ims/ImsUt;->sendFailureReport(Landroid/os/Message;Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 573
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    .line 576
    :cond_0
    :try_start_2
    iget-object v4, p0, Lcom/android/ims/ImsUt;->mPendingCmds:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 580
    .end local v3    # "id":I
    goto :goto_0

    .line 581
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 577
    :catch_0
    move-exception v3

    .line 578
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_3
    new-instance v4, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v4, v2, v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-direct {p0, p2, v4}, Lcom/android/ims/ImsUt;->sendFailureReport(Landroid/os/Message;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 581
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_0
    monitor-exit v0

    .line 582
    return-void

    .line 581
    :goto_1
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method public blacklist updateCOLR(ILandroid/os/Message;)V
    .locals 6
    .param p1, "presentation"    # I
    .param p2, "result"    # Landroid/os/Message;

    .line 536
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateCOLR :: Ut="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ims/ImsUt;->miUt:Lcom/android/ims/internal/IImsUt;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", presentation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/ims/ImsUt;->log(Ljava/lang/String;)V

    .line 539
    iget-object v0, p0, Lcom/android/ims/ImsUt;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 541
    const/4 v1, 0x0

    const/16 v2, 0x322

    :try_start_0
    iget-object v3, p0, Lcom/android/ims/ImsUt;->miUt:Lcom/android/ims/internal/IImsUt;

    invoke-interface {v3, p1}, Lcom/android/ims/internal/IImsUt;->updateCOLR(I)I

    move-result v3

    .line 543
    .local v3, "id":I
    if-gez v3, :cond_0

    .line 544
    new-instance v4, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v4, v2, v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-direct {p0, p2, v4}, Lcom/android/ims/ImsUt;->sendFailureReport(Landroid/os/Message;Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 546
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    .line 549
    :cond_0
    :try_start_2
    iget-object v4, p0, Lcom/android/ims/ImsUt;->mPendingCmds:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 553
    .end local v3    # "id":I
    goto :goto_0

    .line 554
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 550
    :catch_0
    move-exception v3

    .line 551
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_3
    new-instance v4, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v4, v2, v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-direct {p0, p2, v4}, Lcom/android/ims/ImsUt;->sendFailureReport(Landroid/os/Message;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 554
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_0
    monitor-exit v0

    .line 555
    return-void

    .line 554
    :goto_1
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method public blacklist updateCallBarring(IILandroid/os/Message;[Ljava/lang/String;)V
    .locals 6
    .param p1, "cbType"    # I
    .param p2, "action"    # I
    .param p3, "result"    # Landroid/os/Message;
    .param p4, "barrList"    # [Ljava/lang/String;

    .line 364
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    .end local p1    # "cbType":I
    .end local p2    # "action":I
    .end local p3    # "result":Landroid/os/Message;
    .end local p4    # "barrList":[Ljava/lang/String;
    .local v1, "cbType":I
    .local v2, "action":I
    .local v3, "result":Landroid/os/Message;
    .local v4, "barrList":[Ljava/lang/String;
    invoke-virtual/range {v0 .. v5}, Lcom/android/ims/ImsUt;->updateCallBarring(IILandroid/os/Message;[Ljava/lang/String;I)V

    .line 365
    return-void
.end method

.method public blacklist updateCallBarring(IILandroid/os/Message;[Ljava/lang/String;I)V
    .locals 7
    .param p1, "cbType"    # I
    .param p2, "action"    # I
    .param p3, "result"    # Landroid/os/Message;
    .param p4, "barrList"    # [Ljava/lang/String;
    .param p5, "serviceClass"    # I

    .line 374
    const-string v6, ""

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    .end local p1    # "cbType":I
    .end local p2    # "action":I
    .end local p3    # "result":Landroid/os/Message;
    .end local p4    # "barrList":[Ljava/lang/String;
    .end local p5    # "serviceClass":I
    .local v1, "cbType":I
    .local v2, "action":I
    .local v3, "result":Landroid/os/Message;
    .local v4, "barrList":[Ljava/lang/String;
    .local v5, "serviceClass":I
    invoke-virtual/range {v0 .. v6}, Lcom/android/ims/ImsUt;->updateCallBarring(IILandroid/os/Message;[Ljava/lang/String;ILjava/lang/String;)V

    .line 375
    return-void
.end method

.method public blacklist updateCallBarring(IILandroid/os/Message;[Ljava/lang/String;ILjava/lang/String;)V
    .locals 10
    .param p1, "cbType"    # I
    .param p2, "action"    # I
    .param p3, "result"    # Landroid/os/Message;
    .param p4, "barrList"    # [Ljava/lang/String;
    .param p5, "serviceClass"    # I
    .param p6, "password"    # Ljava/lang/String;

    .line 384
    if-eqz p4, :cond_1

    .line 385
    const-string v0, ""

    .line 386
    .local v0, "bList":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p4

    if-ge v1, v2, :cond_0

    .line 387
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p4, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 386
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 389
    .end local v1    # "i":I
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateCallBarring :: Ut="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/ims/ImsUt;->miUt:Lcom/android/ims/internal/IImsUt;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", cbType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", action="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", serviceClass="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", barrList="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/ims/ImsUt;->log(Ljava/lang/String;)V

    .line 392
    .end local v0    # "bList":Ljava/lang/String;
    goto :goto_1

    .line 394
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateCallBarring :: Ut="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ims/ImsUt;->miUt:Lcom/android/ims/internal/IImsUt;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cbType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", serviceClass="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/ims/ImsUt;->log(Ljava/lang/String;)V

    .line 399
    :goto_1
    iget-object v1, p0, Lcom/android/ims/ImsUt;->mLockObj:Ljava/lang/Object;

    monitor-enter v1

    .line 401
    const/4 v2, 0x0

    const/16 v3, 0x322

    :try_start_0
    iget-object v4, p0, Lcom/android/ims/ImsUt;->miUt:Lcom/android/ims/internal/IImsUt;

    move v5, p1

    move v6, p2

    move-object v7, p4

    move v8, p5

    move-object/from16 v9, p6

    invoke-interface/range {v4 .. v9}, Lcom/android/ims/internal/IImsUt;->updateCallBarringWithPassword(II[Ljava/lang/String;ILjava/lang/String;)I

    move-result v0

    .line 404
    .local v0, "id":I
    if-gez v0, :cond_2

    .line 405
    new-instance v4, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v4, v3, v2}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-direct {p0, p3, v4}, Lcom/android/ims/ImsUt;->sendFailureReport(Landroid/os/Message;Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 407
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    .line 410
    :cond_2
    :try_start_2
    iget-object v4, p0, Lcom/android/ims/ImsUt;->mPendingCmds:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 414
    .end local v0    # "id":I
    goto :goto_2

    .line 415
    :catchall_0
    move-exception v0

    goto :goto_3

    .line 411
    :catch_0
    move-exception v0

    .line 412
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_3
    new-instance v4, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v4, v3, v2}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-direct {p0, p3, v4}, Lcom/android/ims/ImsUt;->sendFailureReport(Landroid/os/Message;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 415
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_2
    monitor-exit v1

    .line 416
    return-void

    .line 415
    :goto_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public blacklist updateCallForward(IILjava/lang/String;IILandroid/os/Message;)V
    .locals 11
    .param p1, "action"    # I
    .param p2, "condition"    # I
    .param p3, "number"    # Ljava/lang/String;
    .param p4, "serviceClass"    # I
    .param p5, "timeSeconds"    # I
    .param p6, "result"    # Landroid/os/Message;

    .line 425
    move-object/from16 v1, p6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateCallForward :: Ut="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/ims/ImsUt;->miUt:Lcom/android/ims/internal/IImsUt;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", action="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", condition="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", number="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "ImsUt"

    .line 426
    invoke-static {v2, p3}, Lcom/android/telephony/Rlog;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", serviceClass="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", timeSeconds="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v7, p5

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 425
    invoke-direct {p0, v0}, Lcom/android/ims/ImsUt;->log(Ljava/lang/String;)V

    .line 430
    iget-object v8, p0, Lcom/android/ims/ImsUt;->mLockObj:Ljava/lang/Object;

    monitor-enter v8

    .line 432
    const/4 v9, 0x0

    const/16 v10, 0x322

    :try_start_0
    iget-object v2, p0, Lcom/android/ims/ImsUt;->miUt:Lcom/android/ims/internal/IImsUt;

    move v3, p1

    move v4, p2

    move-object v5, p3

    move v6, p4

    invoke-interface/range {v2 .. v7}, Lcom/android/ims/internal/IImsUt;->updateCallForward(IILjava/lang/String;II)I

    move-result v0

    .line 434
    .local v0, "id":I
    if-gez v0, :cond_0

    .line 435
    new-instance v2, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v2, v10, v9}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-direct {p0, v1, v2}, Lcom/android/ims/ImsUt;->sendFailureReport(Landroid/os/Message;Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 437
    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    .line 440
    :cond_0
    :try_start_2
    iget-object v2, p0, Lcom/android/ims/ImsUt;->mPendingCmds:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 444
    .end local v0    # "id":I
    goto :goto_0

    .line 445
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 441
    :catch_0
    move-exception v0

    .line 442
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_3
    new-instance v2, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v2, v10, v9}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-direct {p0, v1, v2}, Lcom/android/ims/ImsUt;->sendFailureReport(Landroid/os/Message;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 445
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    monitor-exit v8

    .line 446
    return-void

    .line 445
    :goto_1
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public blacklist updateCallWaiting(ZILandroid/os/Message;)V
    .locals 6
    .param p1, "enable"    # Z
    .param p2, "serviceClass"    # I
    .param p3, "result"    # Landroid/os/Message;

    .line 454
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateCallWaiting :: Ut="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ims/ImsUt;->miUt:Lcom/android/ims/internal/IImsUt;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", enable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",serviceClass="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/ims/ImsUt;->log(Ljava/lang/String;)V

    .line 458
    iget-object v0, p0, Lcom/android/ims/ImsUt;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 460
    const/4 v1, 0x0

    const/16 v2, 0x322

    :try_start_0
    iget-object v3, p0, Lcom/android/ims/ImsUt;->miUt:Lcom/android/ims/internal/IImsUt;

    invoke-interface {v3, p1, p2}, Lcom/android/ims/internal/IImsUt;->updateCallWaiting(ZI)I

    move-result v3

    .line 462
    .local v3, "id":I
    if-gez v3, :cond_0

    .line 463
    new-instance v4, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v4, v2, v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-direct {p0, p3, v4}, Lcom/android/ims/ImsUt;->sendFailureReport(Landroid/os/Message;Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 465
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    .line 468
    :cond_0
    :try_start_2
    iget-object v4, p0, Lcom/android/ims/ImsUt;->mPendingCmds:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 472
    .end local v3    # "id":I
    goto :goto_0

    .line 473
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 469
    :catch_0
    move-exception v3

    .line 470
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_3
    new-instance v4, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v4, v2, v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-direct {p0, p3, v4}, Lcom/android/ims/ImsUt;->sendFailureReport(Landroid/os/Message;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 473
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_0
    monitor-exit v0

    .line 474
    return-void

    .line 473
    :goto_1
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method
