.class public Landroidx/car/app/model/AlertCallbackDelegateImpl;
.super Ljava/lang/Object;
.source "AlertCallbackDelegateImpl.java"

# interfaces
.implements Landroidx/car/app/model/AlertCallbackDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/car/app/model/AlertCallbackDelegateImpl$AlertCallbackStub;
    }
.end annotation


# instance fields
.field private final mCallback:Landroidx/car/app/model/IAlertCallback;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/car/app/model/AlertCallbackDelegateImpl;->mCallback:Landroidx/car/app/model/IAlertCallback;

    .line 57
    return-void
.end method

.method private constructor <init>(Landroidx/car/app/model/AlertCallback;)V
    .locals 1
    .param p1, "callback"    # Landroidx/car/app/model/AlertCallback;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Landroidx/car/app/model/AlertCallbackDelegateImpl$AlertCallbackStub;

    invoke-direct {v0, p1}, Landroidx/car/app/model/AlertCallbackDelegateImpl$AlertCallbackStub;-><init>(Landroidx/car/app/model/AlertCallback;)V

    iput-object v0, p0, Landroidx/car/app/model/AlertCallbackDelegateImpl;->mCallback:Landroidx/car/app/model/IAlertCallback;

    .line 52
    return-void
.end method

.method static create(Landroidx/car/app/model/AlertCallback;)Landroidx/car/app/model/AlertCallbackDelegate;
    .locals 1
    .param p0, "callback"    # Landroidx/car/app/model/AlertCallback;

    .line 47
    new-instance v0, Landroidx/car/app/model/AlertCallbackDelegateImpl;

    invoke-direct {v0, p0}, Landroidx/car/app/model/AlertCallbackDelegateImpl;-><init>(Landroidx/car/app/model/AlertCallback;)V

    return-object v0
.end method


# virtual methods
.method public sendCancel(ILandroidx/car/app/OnDoneCallback;)V
    .locals 2
    .param p1, "reason"    # I
    .param p2, "callback"    # Landroidx/car/app/OnDoneCallback;

    .line 62
    :try_start_0
    iget-object v0, p0, Landroidx/car/app/model/AlertCallbackDelegateImpl;->mCallback:Landroidx/car/app/model/IAlertCallback;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/car/app/model/IAlertCallback;

    .line 63
    invoke-static {p2}, Landroidx/car/app/utils/RemoteUtils;->createOnDoneCallbackStub(Landroidx/car/app/OnDoneCallback;)Landroidx/car/app/IOnDoneCallback;

    move-result-object v1

    .line 62
    invoke-interface {v0, p1, v1}, Landroidx/car/app/model/IAlertCallback;->onAlertCancelled(ILandroidx/car/app/IOnDoneCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    nop

    .line 67
    return-void

    .line 64
    :catch_0
    move-exception v0

    .line 65
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public sendDismiss(Landroidx/car/app/OnDoneCallback;)V
    .locals 2
    .param p1, "callback"    # Landroidx/car/app/OnDoneCallback;

    .line 72
    :try_start_0
    iget-object v0, p0, Landroidx/car/app/model/AlertCallbackDelegateImpl;->mCallback:Landroidx/car/app/model/IAlertCallback;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/car/app/model/IAlertCallback;

    .line 73
    invoke-static {p1}, Landroidx/car/app/utils/RemoteUtils;->createOnDoneCallbackStub(Landroidx/car/app/OnDoneCallback;)Landroidx/car/app/IOnDoneCallback;

    move-result-object v1

    invoke-interface {v0, v1}, Landroidx/car/app/model/IAlertCallback;->onAlertDismissed(Landroidx/car/app/IOnDoneCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    nop

    .line 77
    return-void

    .line 74
    :catch_0
    move-exception v0

    .line 75
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
