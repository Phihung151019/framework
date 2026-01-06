.class public Landroidx/car/app/model/OnClickDelegateImpl;
.super Ljava/lang/Object;
.source "OnClickDelegateImpl.java"

# interfaces
.implements Landroidx/car/app/model/OnClickDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/car/app/model/OnClickDelegateImpl$OnClickListenerStub;
    }
.end annotation


# instance fields
.field private final mIsParkedOnly:Z

.field private final mListener:Landroidx/car/app/model/IOnClickListener;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/car/app/model/OnClickDelegateImpl;->mListener:Landroidx/car/app/model/IOnClickListener;

    .line 82
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/car/app/model/OnClickDelegateImpl;->mIsParkedOnly:Z

    .line 83
    return-void
.end method

.method private constructor <init>(Landroidx/car/app/model/OnClickListener;Z)V
    .locals 1
    .param p1, "listener"    # Landroidx/car/app/model/OnClickListener;
    .param p2, "isParkedOnly"    # Z

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Landroidx/car/app/model/OnClickDelegateImpl$OnClickListenerStub;

    invoke-direct {v0, p1}, Landroidx/car/app/model/OnClickDelegateImpl$OnClickListenerStub;-><init>(Landroidx/car/app/model/OnClickListener;)V

    iput-object v0, p0, Landroidx/car/app/model/OnClickDelegateImpl;->mListener:Landroidx/car/app/model/IOnClickListener;

    .line 76
    iput-boolean p2, p0, Landroidx/car/app/model/OnClickDelegateImpl;->mIsParkedOnly:Z

    .line 77
    return-void
.end method

.method static create(Landroidx/car/app/model/OnClickListener;)Landroidx/car/app/model/OnClickDelegate;
    .locals 2
    .param p0, "listener"    # Landroidx/car/app/model/OnClickListener;

    .line 68
    new-instance v0, Landroidx/car/app/model/OnClickDelegateImpl;

    instance-of v1, p0, Landroidx/car/app/model/ParkedOnlyOnClickListener;

    invoke-direct {v0, p0, v1}, Landroidx/car/app/model/OnClickDelegateImpl;-><init>(Landroidx/car/app/model/OnClickListener;Z)V

    return-object v0
.end method


# virtual methods
.method public isParkedOnly()Z
    .locals 1

    .line 52
    iget-boolean v0, p0, Landroidx/car/app/model/OnClickDelegateImpl;->mIsParkedOnly:Z

    return v0
.end method

.method public sendClick(Landroidx/car/app/OnDoneCallback;)V
    .locals 2
    .param p1, "callback"    # Landroidx/car/app/OnDoneCallback;

    .line 58
    :try_start_0
    iget-object v0, p0, Landroidx/car/app/model/OnClickDelegateImpl;->mListener:Landroidx/car/app/model/IOnClickListener;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/car/app/model/IOnClickListener;

    invoke-static {p1}, Landroidx/car/app/utils/RemoteUtils;->createOnDoneCallbackStub(Landroidx/car/app/OnDoneCallback;)Landroidx/car/app/IOnDoneCallback;

    move-result-object v1

    invoke-interface {v0, v1}, Landroidx/car/app/model/IOnClickListener;->onClick(Landroidx/car/app/IOnDoneCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    nop

    .line 62
    return-void

    .line 59
    :catch_0
    move-exception v0

    .line 60
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
