.class public abstract Lcom/samsung/android/hardware/context/util/RestoreManager;
.super Ljava/lang/Object;
.source "RestoreManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/hardware/context/util/RestoreManager$ExceptionMode;,
        Lcom/samsung/android/hardware/context/util/RestoreManager$CustomTimer;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "RestoreManager"


# instance fields
.field private MAXIMUM_WAITING_TIME:I

.field public mExceptionMode:Lcom/samsung/android/hardware/context/util/RestoreManager$ExceptionMode;


# direct methods
.method static bridge synthetic -$$Nest$fgetMAXIMUM_WAITING_TIME(Lcom/samsung/android/hardware/context/util/RestoreManager;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/hardware/context/util/RestoreManager;->MAXIMUM_WAITING_TIME:I

    return p0
.end method

.method public constructor <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    sget-object v0, Lcom/samsung/android/hardware/context/util/RestoreManager$ExceptionMode;->NORMAL:Lcom/samsung/android/hardware/context/util/RestoreManager$ExceptionMode;

    iput-object v0, p0, Lcom/samsung/android/hardware/context/util/RestoreManager;->mExceptionMode:Lcom/samsung/android/hardware/context/util/RestoreManager$ExceptionMode;

    .line 38
    const v0, 0x5265c00

    iput v0, p0, Lcom/samsung/android/hardware/context/util/RestoreManager;->MAXIMUM_WAITING_TIME:I

    .line 47
    sget-object v0, Lcom/samsung/android/hardware/context/util/RestoreManager$ExceptionMode;->NORMAL:Lcom/samsung/android/hardware/context/util/RestoreManager$ExceptionMode;

    iput-object v0, p0, Lcom/samsung/android/hardware/context/util/RestoreManager;->mExceptionMode:Lcom/samsung/android/hardware/context/util/RestoreManager$ExceptionMode;

    .line 48
    return-void
.end method


# virtual methods
.method public getWaitingTime()I
    .locals 1

    .line 69
    iget v0, p0, Lcom/samsung/android/hardware/context/util/RestoreManager;->MAXIMUM_WAITING_TIME:I

    return v0
.end method

.method public abstract onReceivedExceptionKill()V
.end method

.method public restoreStart()V
    .locals 4

    .line 59
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    .line 60
    .local v0, "timer":Ljava/util/Timer;
    new-instance v1, Lcom/samsung/android/hardware/context/util/RestoreManager$CustomTimer;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/hardware/context/util/RestoreManager$CustomTimer;-><init>(Lcom/samsung/android/hardware/context/util/RestoreManager;Lcom/samsung/android/hardware/context/util/RestoreManager-IA;)V

    iget v2, p0, Lcom/samsung/android/hardware/context/util/RestoreManager;->MAXIMUM_WAITING_TIME:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 61
    return-void
.end method

.method public setWaitingTime(I)V
    .locals 0
    .param p1, "waitingTime"    # I

    .line 78
    iput p1, p0, Lcom/samsung/android/hardware/context/util/RestoreManager;->MAXIMUM_WAITING_TIME:I

    .line 79
    return-void
.end method
