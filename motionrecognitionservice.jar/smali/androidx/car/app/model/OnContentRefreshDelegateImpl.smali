.class public Landroidx/car/app/model/OnContentRefreshDelegateImpl;
.super Ljava/lang/Object;
.source "OnContentRefreshDelegateImpl.java"

# interfaces
.implements Landroidx/car/app/model/OnContentRefreshDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/car/app/model/OnContentRefreshDelegateImpl$OnContentRefreshListenerStub;
    }
.end annotation


# instance fields
.field private final mListener:Landroidx/car/app/model/IOnContentRefreshListener;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/car/app/model/OnContentRefreshDelegateImpl;->mListener:Landroidx/car/app/model/IOnContentRefreshListener;

    .line 73
    return-void
.end method

.method private constructor <init>(Landroidx/car/app/model/OnContentRefreshListener;)V
    .locals 1
    .param p1, "listener"    # Landroidx/car/app/model/OnContentRefreshListener;

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Landroidx/car/app/model/OnContentRefreshDelegateImpl$OnContentRefreshListenerStub;

    invoke-direct {v0, p1}, Landroidx/car/app/model/OnContentRefreshDelegateImpl$OnContentRefreshListenerStub;-><init>(Landroidx/car/app/model/OnContentRefreshListener;)V

    iput-object v0, p0, Landroidx/car/app/model/OnContentRefreshDelegateImpl;->mListener:Landroidx/car/app/model/IOnContentRefreshListener;

    .line 68
    return-void
.end method

.method public static create(Landroidx/car/app/model/OnContentRefreshListener;)Landroidx/car/app/model/OnContentRefreshDelegate;
    .locals 1
    .param p0, "listener"    # Landroidx/car/app/model/OnContentRefreshListener;

    .line 63
    new-instance v0, Landroidx/car/app/model/OnContentRefreshDelegateImpl;

    invoke-direct {v0, p0}, Landroidx/car/app/model/OnContentRefreshDelegateImpl;-><init>(Landroidx/car/app/model/OnContentRefreshListener;)V

    return-object v0
.end method


# virtual methods
.method public sendContentRefreshRequested(Landroidx/car/app/OnDoneCallback;)V
    .locals 2
    .param p1, "callback"    # Landroidx/car/app/OnDoneCallback;

    .line 49
    :try_start_0
    iget-object v0, p0, Landroidx/car/app/model/OnContentRefreshDelegateImpl;->mListener:Landroidx/car/app/model/IOnContentRefreshListener;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/car/app/model/IOnContentRefreshListener;

    .line 50
    invoke-static {p1}, Landroidx/car/app/utils/RemoteUtils;->createOnDoneCallbackStub(Landroidx/car/app/OnDoneCallback;)Landroidx/car/app/IOnDoneCallback;

    move-result-object v1

    invoke-interface {v0, v1}, Landroidx/car/app/model/IOnContentRefreshListener;->onContentRefreshRequested(Landroidx/car/app/IOnDoneCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    nop

    .line 54
    return-void

    .line 51
    :catch_0
    move-exception v0

    .line 52
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
