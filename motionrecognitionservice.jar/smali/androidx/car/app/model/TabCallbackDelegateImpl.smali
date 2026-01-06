.class public Landroidx/car/app/model/TabCallbackDelegateImpl;
.super Ljava/lang/Object;
.source "TabCallbackDelegateImpl.java"

# interfaces
.implements Landroidx/car/app/model/TabCallbackDelegate;


# annotations
.annotation runtime Landroidx/car/app/annotations/RequiresCarApi;
    value = 0x6
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/car/app/model/TabCallbackDelegateImpl$TabCallbackStub;
    }
.end annotation


# instance fields
.field private final mStubCallback:Landroidx/car/app/model/ITabCallback;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/car/app/model/TabCallbackDelegateImpl;->mStubCallback:Landroidx/car/app/model/ITabCallback;

    .line 64
    return-void
.end method

.method private constructor <init>(Landroidx/car/app/model/TabTemplate$TabCallback;)V
    .locals 1
    .param p1, "callback"    # Landroidx/car/app/model/TabTemplate$TabCallback;

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Landroidx/car/app/model/TabCallbackDelegateImpl$TabCallbackStub;

    invoke-direct {v0, p1}, Landroidx/car/app/model/TabCallbackDelegateImpl$TabCallbackStub;-><init>(Landroidx/car/app/model/TabTemplate$TabCallback;)V

    iput-object v0, p0, Landroidx/car/app/model/TabCallbackDelegateImpl;->mStubCallback:Landroidx/car/app/model/ITabCallback;

    .line 59
    return-void
.end method

.method static create(Landroidx/car/app/model/TabTemplate$TabCallback;)Landroidx/car/app/model/TabCallbackDelegate;
    .locals 1
    .param p0, "callback"    # Landroidx/car/app/model/TabTemplate$TabCallback;

    .line 70
    new-instance v0, Landroidx/car/app/model/TabCallbackDelegateImpl;

    invoke-direct {v0, p0}, Landroidx/car/app/model/TabCallbackDelegateImpl;-><init>(Landroidx/car/app/model/TabTemplate$TabCallback;)V

    return-object v0
.end method


# virtual methods
.method public sendTabSelected(Ljava/lang/String;Landroidx/car/app/OnDoneCallback;)V
    .locals 2
    .param p1, "tabContentId"    # Ljava/lang/String;
    .param p2, "callback"    # Landroidx/car/app/OnDoneCallback;

    .line 50
    :try_start_0
    iget-object v0, p0, Landroidx/car/app/model/TabCallbackDelegateImpl;->mStubCallback:Landroidx/car/app/model/ITabCallback;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/car/app/model/ITabCallback;

    .line 51
    invoke-static {p2}, Landroidx/car/app/utils/RemoteUtils;->createOnDoneCallbackStub(Landroidx/car/app/OnDoneCallback;)Landroidx/car/app/IOnDoneCallback;

    move-result-object v1

    .line 50
    invoke-interface {v0, p1, v1}, Landroidx/car/app/model/ITabCallback;->onTabSelected(Ljava/lang/String;Landroidx/car/app/IOnDoneCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    nop

    .line 55
    return-void

    .line 52
    :catch_0
    move-exception v0

    .line 53
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
