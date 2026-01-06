.class public Landroidx/car/app/navigation/model/PanModeDelegateImpl;
.super Ljava/lang/Object;
.source "PanModeDelegateImpl.java"

# interfaces
.implements Landroidx/car/app/navigation/model/PanModeDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/car/app/navigation/model/PanModeDelegateImpl$PanModeListenerStub;
    }
.end annotation


# instance fields
.field private final mStub:Landroidx/car/app/navigation/model/IPanModeListener;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/car/app/navigation/model/PanModeDelegateImpl;->mStub:Landroidx/car/app/navigation/model/IPanModeListener;

    .line 66
    return-void
.end method

.method private constructor <init>(Landroidx/car/app/navigation/model/PanModeListener;)V
    .locals 1
    .param p1, "listener"    # Landroidx/car/app/navigation/model/PanModeListener;

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Landroidx/car/app/navigation/model/PanModeDelegateImpl$PanModeListenerStub;

    invoke-direct {v0, p1}, Landroidx/car/app/navigation/model/PanModeDelegateImpl$PanModeListenerStub;-><init>(Landroidx/car/app/navigation/model/PanModeListener;)V

    iput-object v0, p0, Landroidx/car/app/navigation/model/PanModeDelegateImpl;->mStub:Landroidx/car/app/navigation/model/IPanModeListener;

    .line 61
    return-void
.end method

.method static create(Landroidx/car/app/navigation/model/PanModeListener;)Landroidx/car/app/navigation/model/PanModeDelegate;
    .locals 1
    .param p0, "listener"    # Landroidx/car/app/navigation/model/PanModeListener;

    .line 72
    new-instance v0, Landroidx/car/app/navigation/model/PanModeDelegateImpl;

    invoke-direct {v0, p0}, Landroidx/car/app/navigation/model/PanModeDelegateImpl;-><init>(Landroidx/car/app/navigation/model/PanModeListener;)V

    return-object v0
.end method


# virtual methods
.method public sendPanModeChanged(ZLandroidx/car/app/OnDoneCallback;)V
    .locals 2
    .param p1, "isInPanMode"    # Z
    .param p2, "callback"    # Landroidx/car/app/OnDoneCallback;

    .line 52
    :try_start_0
    iget-object v0, p0, Landroidx/car/app/navigation/model/PanModeDelegateImpl;->mStub:Landroidx/car/app/navigation/model/IPanModeListener;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/car/app/navigation/model/IPanModeListener;

    .line 53
    invoke-static {p2}, Landroidx/car/app/utils/RemoteUtils;->createOnDoneCallbackStub(Landroidx/car/app/OnDoneCallback;)Landroidx/car/app/IOnDoneCallback;

    move-result-object v1

    .line 52
    invoke-interface {v0, p1, v1}, Landroidx/car/app/navigation/model/IPanModeListener;->onPanModeChanged(ZLandroidx/car/app/IOnDoneCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    nop

    .line 57
    return-void

    .line 54
    :catch_0
    move-exception v0

    .line 55
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
