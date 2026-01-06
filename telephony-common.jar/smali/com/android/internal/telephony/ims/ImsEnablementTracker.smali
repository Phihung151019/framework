.class public Lcom/android/internal/telephony/ims/ImsEnablementTracker;
.super Ljava/lang/Object;
.source "ImsEnablementTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/ims/ImsEnablementTracker$ImsEnablementTrackerStateMachine;
    }
.end annotation


# static fields
.field public static final blacklist COMMAND_DISABLE_MSG:I = 0x2

.field public static final blacklist COMMAND_ENABLE_MSG:I = 0x1

.field public static final blacklist COMMAND_POST_RESETTING_DONE:I = 0xa

.field public static final blacklist COMMAND_RESETTING_DONE:I = 0x6

.field private static final blacklist EVENT_DESCRIPTION:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected static final blacklist STATE_IMS_DEFAULT:I = 0x1

.field protected static final blacklist STATE_IMS_DISABLED:I = 0x4

.field protected static final blacklist STATE_IMS_DISABLING:I = 0x3

.field protected static final blacklist STATE_IMS_DISCONNECTED:I = 0x0

.field protected static final blacklist STATE_IMS_ENABLED:I = 0x2

.field protected static final blacklist STATE_IMS_ENABLING:I = 0x5

.field protected static final blacklist STATE_IMS_POSTRESETTING:I = 0x7

.field protected static final blacklist STATE_IMS_RESETTING:I = 0x6


# instance fields
.field private final blacklist mComponentName:Landroid/content/ComponentName;

.field private blacklist mIImsServiceController:Landroid/telephony/ims/aidl/IImsServiceController;

.field private blacklist mLastImsOperationTimeMs:J

.field protected final blacklist mLock:Ljava/lang/Object;

.field private final blacklist mLooper:Landroid/os/Looper;

.field private final blacklist mState:I

.field private final blacklist mStateMachines:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/internal/telephony/ims/ImsEnablementTracker$ImsEnablementTrackerStateMachine;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmComponentName(Lcom/android/internal/telephony/ims/ImsEnablementTracker;)Landroid/content/ComponentName;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsEnablementTracker;->mComponentName:Landroid/content/ComponentName;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$msendDisableIms(Lcom/android/internal/telephony/ims/ImsEnablementTracker;II)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/ims/ImsEnablementTracker;->sendDisableIms(II)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msendEnableIms(Lcom/android/internal/telephony/ims/ImsEnablementTracker;II)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/ims/ImsEnablementTracker;->sendEnableIms(II)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msendResetIms(Lcom/android/internal/telephony/ims/ImsEnablementTracker;II)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/ims/ImsEnablementTracker;->sendResetIms(II)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetEVENT_DESCRIPTION()Ljava/util/Map;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/internal/telephony/ims/ImsEnablementTracker;->EVENT_DESCRIPTION:Ljava/util/Map;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 3

    .line 74
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/ims/ImsEnablementTracker;->EVENT_DESCRIPTION:Ljava/util/Map;

    const/4 v1, 0x0

    .line 76
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "COMMAND_NONE_MSG"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    .line 77
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "COMMAND_ENABLE_MSG"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x2

    .line 78
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "COMMAND_DISABLE_MSG"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x3

    .line 79
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "COMMAND_RESET_MSG"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x4

    .line 80
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "COMMAND_ENABLING_DONE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x5

    .line 81
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "COMMAND_DISABLING_DONE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x6

    .line 82
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "COMMAND_RESETTING_DONE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x7

    .line 83
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "COMMAND_CONNECTED_MSG"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x8

    .line 84
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "COMMAND_DISCONNECTED_MSG"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x9

    .line 85
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "COMMAND_INVALID_SUBID_MSG"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Looper;Landroid/content/ComponentName;)V
    .locals 2

    .line 712
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/ImsEnablementTracker;->mLock:Ljava/lang/Object;

    const-wide/16 v0, 0x0

    .line 108
    iput-wide v0, p0, Lcom/android/internal/telephony/ims/ImsEnablementTracker;->mLastImsOperationTimeMs:J

    const/4 v0, 0x0

    .line 713
    iput-object v0, p0, Lcom/android/internal/telephony/ims/ImsEnablementTracker;->mIImsServiceController:Landroid/telephony/ims/aidl/IImsServiceController;

    .line 714
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/ImsEnablementTracker;->mStateMachines:Landroid/util/SparseArray;

    .line 715
    iput-object p1, p0, Lcom/android/internal/telephony/ims/ImsEnablementTracker;->mLooper:Landroid/os/Looper;

    const/4 p1, 0x0

    .line 716
    iput p1, p0, Lcom/android/internal/telephony/ims/ImsEnablementTracker;->mState:I

    .line 717
    iput-object p2, p0, Lcom/android/internal/telephony/ims/ImsEnablementTracker;->mComponentName:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Looper;Landroid/telephony/ims/aidl/IImsServiceController;II)V
    .locals 2

    .line 722
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/ImsEnablementTracker;->mLock:Ljava/lang/Object;

    const-wide/16 v0, 0x0

    .line 108
    iput-wide v0, p0, Lcom/android/internal/telephony/ims/ImsEnablementTracker;->mLastImsOperationTimeMs:J

    .line 723
    iput-object p2, p0, Lcom/android/internal/telephony/ims/ImsEnablementTracker;->mIImsServiceController:Landroid/telephony/ims/aidl/IImsServiceController;

    .line 724
    new-instance p2, Landroid/util/SparseArray;

    invoke-direct {p2}, Landroid/util/SparseArray;-><init>()V

    iput-object p2, p0, Lcom/android/internal/telephony/ims/ImsEnablementTracker;->mStateMachines:Landroid/util/SparseArray;

    .line 725
    iput-object p1, p0, Lcom/android/internal/telephony/ims/ImsEnablementTracker;->mLooper:Landroid/os/Looper;

    .line 726
    iput p3, p0, Lcom/android/internal/telephony/ims/ImsEnablementTracker;->mState:I

    const/4 p1, 0x0

    .line 727
    iput-object p1, p0, Lcom/android/internal/telephony/ims/ImsEnablementTracker;->mComponentName:Landroid/content/ComponentName;

    .line 729
    invoke-virtual {p0, p4}, Lcom/android/internal/telephony/ims/ImsEnablementTracker;->setNumOfSlots(I)V

    return-void
.end method

.method private blacklist isServiceControllerAvailable()Z
    .locals 1

    .line 889
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsEnablementTracker;->mIImsServiceController:Landroid/telephony/ims/aidl/IImsServiceController;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 892
    :cond_0
    const-string p0, "ImsEnablementTracker"

    const-string v0, "isServiceControllerAvailable : binder is not alive"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method private blacklist sendDisableIms(II)V
    .locals 4

    .line 913
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsEnablementTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 914
    :try_start_1
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/ImsEnablementTracker;->isServiceControllerAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 915
    const-string v1, "ImsEnablementTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]sendDisableIms componentName["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/ims/ImsEnablementTracker;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 917
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsEnablementTracker;->mIImsServiceController:Landroid/telephony/ims/aidl/IImsServiceController;

    invoke-interface {v1, p1, p2}, Landroid/telephony/ims/aidl/IImsServiceController;->disableIms(II)V

    .line 918
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/internal/telephony/ims/ImsEnablementTracker;->mLastImsOperationTimeMs:J

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 920
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p0

    .line 922
    const-string p1, "ImsEnablementTracker"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Couldn\'t disable IMS: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist sendEnableIms(II)V
    .locals 4

    .line 898
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsEnablementTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 899
    :try_start_1
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/ImsEnablementTracker;->isServiceControllerAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 900
    const-string v1, "ImsEnablementTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]sendEnableIms,componentName["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/ims/ImsEnablementTracker;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 902
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsEnablementTracker;->mIImsServiceController:Landroid/telephony/ims/aidl/IImsServiceController;

    invoke-interface {v1, p1, p2}, Landroid/telephony/ims/aidl/IImsServiceController;->enableIms(II)V

    .line 903
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/internal/telephony/ims/ImsEnablementTracker;->mLastImsOperationTimeMs:J

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 905
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p0

    .line 907
    const-string p1, "ImsEnablementTracker"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Couldn\'t enable IMS: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist sendResetIms(II)V
    .locals 4

    .line 928
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsEnablementTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 929
    :try_start_1
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/ImsEnablementTracker;->isServiceControllerAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 930
    const-string v1, "ImsEnablementTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]sendResetIms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 931
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsEnablementTracker;->mIImsServiceController:Landroid/telephony/ims/aidl/IImsServiceController;

    invoke-interface {v1, p1, p2}, Landroid/telephony/ims/aidl/IImsServiceController;->resetIms(II)V

    .line 932
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/internal/telephony/ims/ImsEnablementTracker;->mLastImsOperationTimeMs:J

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 934
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p0

    .line 936
    const-string p1, "ImsEnablementTracker"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Couldn\'t reset IMS: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public blacklist disableIms(II)V
    .locals 2

    .line 812
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]disableIms, component:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsEnablementTracker;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsEnablementTracker"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsEnablementTracker;->mStateMachines:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/ims/ImsEnablementTracker$ImsEnablementTrackerStateMachine;

    if-eqz p0, :cond_0

    const/4 v0, 0x2

    .line 815
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/telephony/StateMachine;->sendMessage(III)V

    return-void

    .line 817
    :cond_0
    const-string p0, "There is no state machine associated with this slotId."

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public blacklist enableIms(II)V
    .locals 2

    .line 796
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]enableIms, component:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsEnablementTracker;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsEnablementTracker"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsEnablementTracker;->mStateMachines:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/ims/ImsEnablementTracker$ImsEnablementTrackerStateMachine;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    .line 799
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/telephony/StateMachine;->sendMessage(III)V

    return-void

    .line 801
    :cond_0
    const-string p0, "There is no state machine associated with this slotId."

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public blacklist getHandler(I)Landroid/os/Handler;
    .locals 0

    .line 762
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsEnablementTracker;->mStateMachines:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/ims/ImsEnablementTracker$ImsEnablementTrackerStateMachine;

    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object p0

    return-object p0
.end method

.method protected blacklist getLastOperationTimeMillis()J
    .locals 2

    .line 864
    iget-wide v0, p0, Lcom/android/internal/telephony/ims/ImsEnablementTracker;->mLastImsOperationTimeMs:J

    return-wide v0
.end method

.method public blacklist getRemainThrottleTime()J
    .locals 4

    .line 873
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 874
    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/ImsEnablementTracker;->getLastOperationTimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xbb8

    sub-long/2addr v2, v0

    const-wide/16 v0, 0x0

    cmp-long p0, v2, v0

    if-gez p0, :cond_0

    move-wide v2, v0

    .line 879
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getRemainThrottleTime:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ImsEnablementTracker"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v2
.end method

.method public blacklist isState(II)Z
    .locals 0

    .line 772
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsEnablementTracker;->mStateMachines:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/ims/ImsEnablementTracker$ImsEnablementTrackerStateMachine;

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/ims/ImsEnablementTracker$ImsEnablementTrackerStateMachine;->isState(I)Z

    move-result p0

    return p0
.end method

.method public blacklist resetIms(II)V
    .locals 2

    .line 829
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]resetIms, component:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsEnablementTracker;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsEnablementTracker"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 830
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsEnablementTracker;->mStateMachines:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/ims/ImsEnablementTracker$ImsEnablementTrackerStateMachine;

    if-eqz p0, :cond_0

    const/4 v0, 0x3

    .line 832
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/telephony/StateMachine;->sendMessage(III)V

    return-void

    .line 834
    :cond_0
    const-string p0, "There is no state machine associated with this slotId."

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public blacklist setNumOfSlots(I)V
    .locals 9

    .line 737
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsEnablementTracker;->mStateMachines:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 738
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set the slots: old["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "], new["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "],component:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/ims/ImsEnablementTracker;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ImsEnablementTracker"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne p1, v0, :cond_0

    goto :goto_2

    :cond_0
    if-ge v0, p1, :cond_1

    move v8, v0

    :goto_0
    if-ge v8, p1, :cond_2

    .line 746
    new-instance v3, Lcom/android/internal/telephony/ims/ImsEnablementTracker$ImsEnablementTrackerStateMachine;

    iget-object v6, p0, Lcom/android/internal/telephony/ims/ImsEnablementTracker;->mLooper:Landroid/os/Looper;

    iget v7, p0, Lcom/android/internal/telephony/ims/ImsEnablementTracker;->mState:I

    const-string v5, "ImsEnablementTracker"

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/telephony/ims/ImsEnablementTracker$ImsEnablementTrackerStateMachine;-><init>(Lcom/android/internal/telephony/ims/ImsEnablementTracker;Ljava/lang/String;Landroid/os/Looper;II)V

    .line 748
    invoke-virtual {v3}, Lcom/android/internal/telephony/StateMachine;->start()V

    .line 749
    iget-object p0, v4, Lcom/android/internal/telephony/ims/ImsEnablementTracker;->mStateMachines:Landroid/util/SparseArray;

    invoke-virtual {p0, v8, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v8, v8, 0x1

    move-object p0, v4

    goto :goto_0

    :cond_1
    move-object v4, p0

    if-le v0, p1, :cond_2

    add-int/lit8 v0, v0, -0x1

    :goto_1
    add-int/lit8 p0, p1, -0x1

    if-le v0, p0, :cond_2

    .line 753
    iget-object p0, v4, Lcom/android/internal/telephony/ims/ImsEnablementTracker;->mStateMachines:Landroid/util/SparseArray;

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/ims/ImsEnablementTracker$ImsEnablementTrackerStateMachine;

    .line 754
    iget-object v1, v4, Lcom/android/internal/telephony/ims/ImsEnablementTracker;->mStateMachines:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 755
    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->quitNow()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_2
    :goto_2
    return-void
.end method

.method protected blacklist setServiceController(Landroid/os/IBinder;)V
    .locals 4

    .line 842
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsEnablementTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 843
    :try_start_0
    invoke-static {p1}, Landroid/telephony/ims/aidl/IImsServiceController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsServiceController;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/ims/ImsEnablementTracker;->mIImsServiceController:Landroid/telephony/ims/aidl/IImsServiceController;

    .line 844
    const-string p1, "ImsEnablementTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setServiceController with Binder:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/ims/ImsEnablementTracker;->mIImsServiceController:Landroid/telephony/ims/aidl/IImsServiceController;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", component:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/ims/ImsEnablementTracker;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 847
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsEnablementTracker;->mStateMachines:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge p1, v1, :cond_2

    .line 848
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsEnablementTracker;->mStateMachines:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/ims/ImsEnablementTracker$ImsEnablementTrackerStateMachine;

    if-nez v1, :cond_0

    .line 850
    const-string v1, "ImsEnablementTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "There is no state machine associated withthe slotId["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 854
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/ImsEnablementTracker;->isServiceControllerAvailable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 855
    invoke-virtual {v1}, Lcom/android/internal/telephony/ims/ImsEnablementTracker$ImsEnablementTrackerStateMachine;->serviceBinderConnected()V

    goto :goto_1

    .line 857
    :cond_1
    invoke-virtual {v1}, Lcom/android/internal/telephony/ims/ImsEnablementTracker$ImsEnablementTrackerStateMachine;->serviceBinderDisconnected()V

    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 860
    :cond_2
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public blacklist subIdChangedToInvalid(I)V
    .locals 2

    .line 780
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] subId changed to invalid, component:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsEnablementTracker;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsEnablementTracker"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsEnablementTracker;->mStateMachines:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/ims/ImsEnablementTracker$ImsEnablementTrackerStateMachine;

    if-eqz p0, :cond_0

    const/16 v0, 0x9

    .line 783
    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/StateMachine;->sendMessage(II)V

    return-void

    .line 785
    :cond_0
    const-string p0, "There is no state machine associated with this slotId."

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
