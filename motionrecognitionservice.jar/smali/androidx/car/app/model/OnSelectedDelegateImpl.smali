.class public Landroidx/car/app/model/OnSelectedDelegateImpl;
.super Ljava/lang/Object;
.source "OnSelectedDelegateImpl.java"

# interfaces
.implements Landroidx/car/app/model/OnSelectedDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/car/app/model/OnSelectedDelegateImpl$OnSelectedListenerStub;
    }
.end annotation


# instance fields
.field private final mStub:Landroidx/car/app/model/IOnSelectedListener;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/car/app/model/OnSelectedDelegateImpl;->mStub:Landroidx/car/app/model/IOnSelectedListener;

    .line 62
    return-void
.end method

.method private constructor <init>(Landroidx/car/app/model/ItemList$OnSelectedListener;)V
    .locals 1
    .param p1, "listener"    # Landroidx/car/app/model/ItemList$OnSelectedListener;

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Landroidx/car/app/model/OnSelectedDelegateImpl$OnSelectedListenerStub;

    invoke-direct {v0, p1}, Landroidx/car/app/model/OnSelectedDelegateImpl$OnSelectedListenerStub;-><init>(Landroidx/car/app/model/ItemList$OnSelectedListener;)V

    iput-object v0, p0, Landroidx/car/app/model/OnSelectedDelegateImpl;->mStub:Landroidx/car/app/model/IOnSelectedListener;

    .line 57
    return-void
.end method

.method static create(Landroidx/car/app/model/ItemList$OnSelectedListener;)Landroidx/car/app/model/OnSelectedDelegate;
    .locals 1
    .param p0, "listener"    # Landroidx/car/app/model/ItemList$OnSelectedListener;

    .line 68
    new-instance v0, Landroidx/car/app/model/OnSelectedDelegateImpl;

    invoke-direct {v0, p0}, Landroidx/car/app/model/OnSelectedDelegateImpl;-><init>(Landroidx/car/app/model/ItemList$OnSelectedListener;)V

    return-object v0
.end method


# virtual methods
.method public sendSelected(ILandroidx/car/app/OnDoneCallback;)V
    .locals 2
    .param p1, "selectedIndex"    # I
    .param p2, "callback"    # Landroidx/car/app/OnDoneCallback;

    .line 48
    :try_start_0
    iget-object v0, p0, Landroidx/car/app/model/OnSelectedDelegateImpl;->mStub:Landroidx/car/app/model/IOnSelectedListener;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/car/app/model/IOnSelectedListener;

    .line 49
    invoke-static {p2}, Landroidx/car/app/utils/RemoteUtils;->createOnDoneCallbackStub(Landroidx/car/app/OnDoneCallback;)Landroidx/car/app/IOnDoneCallback;

    move-result-object v1

    .line 48
    invoke-interface {v0, p1, v1}, Landroidx/car/app/model/IOnSelectedListener;->onSelected(ILandroidx/car/app/IOnDoneCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    nop

    .line 53
    return-void

    .line 50
    :catch_0
    move-exception v0

    .line 51
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
