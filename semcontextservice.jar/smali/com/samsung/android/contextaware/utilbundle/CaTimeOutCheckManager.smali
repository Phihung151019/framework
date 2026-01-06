.class public Lcom/samsung/android/contextaware/utilbundle/CaTimeOutCheckManager;
.super Ljava/lang/Object;
.source "CaTimeOutCheckManager.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lcom/samsung/android/contextaware/utilbundle/ITimeOutCheckObserverable;


# instance fields
.field private mObserver:Lcom/samsung/android/contextaware/utilbundle/ITimeOutCheckObserver;

.field private final mTimeOut:I


# direct methods
.method public constructor <init>(Lcom/samsung/android/contextaware/utilbundle/ITimeOutCheckObserver;I)V
    .locals 0
    .param p1, "observer"    # Lcom/samsung/android/contextaware/utilbundle/ITimeOutCheckObserver;
    .param p2, "time"    # I

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-virtual {p0, p1}, Lcom/samsung/android/contextaware/utilbundle/CaTimeOutCheckManager;->registerObserver(Lcom/samsung/android/contextaware/utilbundle/ITimeOutCheckObserver;)V

    .line 44
    iput p2, p0, Lcom/samsung/android/contextaware/utilbundle/CaTimeOutCheckManager;->mTimeOut:I

    .line 45
    return-void
.end method


# virtual methods
.method public final notifyTimeOut()V
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaTimeOutCheckManager;->mObserver:Lcom/samsung/android/contextaware/utilbundle/ITimeOutCheckObserver;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaTimeOutCheckManager;->mObserver:Lcom/samsung/android/contextaware/utilbundle/ITimeOutCheckObserver;

    invoke-interface {v0}, Lcom/samsung/android/contextaware/utilbundle/ITimeOutCheckObserver;->occurTimeOut()V

    .line 102
    :cond_0
    return-void
.end method

.method public final registerObserver(Lcom/samsung/android/contextaware/utilbundle/ITimeOutCheckObserver;)V
    .locals 0
    .param p1, "observer"    # Lcom/samsung/android/contextaware/utilbundle/ITimeOutCheckObserver;

    .line 77
    iput-object p1, p0, Lcom/samsung/android/contextaware/utilbundle/CaTimeOutCheckManager;->mObserver:Lcom/samsung/android/contextaware/utilbundle/ITimeOutCheckObserver;

    .line 78
    return-void
.end method

.method public final run()V
    .locals 3

    .line 56
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    iget v1, p0, Lcom/samsung/android/contextaware/utilbundle/CaTimeOutCheckManager;->mTimeOut:I

    mul-int/lit8 v1, v1, 0xa

    if-ge v0, v1, :cond_0

    .line 57
    const-wide/16 v1, 0x64

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 62
    .end local v0    # "i":I
    :cond_0
    nop

    .line 64
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/utilbundle/CaTimeOutCheckManager;->notifyTimeOut()V

    .line 65
    return-void

    .line 59
    :catch_0
    move-exception v0

    .line 60
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v1, "interruped"

    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 61
    return-void
.end method

.method public final unregisterObserver()V
    .locals 1

    .line 88
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaTimeOutCheckManager;->mObserver:Lcom/samsung/android/contextaware/utilbundle/ITimeOutCheckObserver;

    .line 89
    return-void
.end method
