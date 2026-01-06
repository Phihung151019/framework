.class public Landroidx/car/app/model/SearchCallbackDelegateImpl;
.super Ljava/lang/Object;
.source "SearchCallbackDelegateImpl.java"

# interfaces
.implements Landroidx/car/app/model/SearchCallbackDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/car/app/model/SearchCallbackDelegateImpl$SearchCallbackStub;
    }
.end annotation


# instance fields
.field private final mStubCallback:Landroidx/car/app/model/ISearchCallback;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/car/app/model/SearchCallbackDelegateImpl;->mStubCallback:Landroidx/car/app/model/ISearchCallback;

    .line 76
    return-void
.end method

.method private constructor <init>(Landroidx/car/app/model/SearchTemplate$SearchCallback;)V
    .locals 1
    .param p1, "callback"    # Landroidx/car/app/model/SearchTemplate$SearchCallback;

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Landroidx/car/app/model/SearchCallbackDelegateImpl$SearchCallbackStub;

    invoke-direct {v0, p1}, Landroidx/car/app/model/SearchCallbackDelegateImpl$SearchCallbackStub;-><init>(Landroidx/car/app/model/SearchTemplate$SearchCallback;)V

    iput-object v0, p0, Landroidx/car/app/model/SearchCallbackDelegateImpl;->mStubCallback:Landroidx/car/app/model/ISearchCallback;

    .line 71
    return-void
.end method

.method static create(Landroidx/car/app/model/SearchTemplate$SearchCallback;)Landroidx/car/app/model/SearchCallbackDelegate;
    .locals 1
    .param p0, "callback"    # Landroidx/car/app/model/SearchTemplate$SearchCallback;

    .line 82
    new-instance v0, Landroidx/car/app/model/SearchCallbackDelegateImpl;

    invoke-direct {v0, p0}, Landroidx/car/app/model/SearchCallbackDelegateImpl;-><init>(Landroidx/car/app/model/SearchTemplate$SearchCallback;)V

    return-object v0
.end method


# virtual methods
.method public sendSearchSubmitted(Ljava/lang/String;Landroidx/car/app/OnDoneCallback;)V
    .locals 2
    .param p1, "searchText"    # Ljava/lang/String;
    .param p2, "callback"    # Landroidx/car/app/OnDoneCallback;

    .line 62
    :try_start_0
    iget-object v0, p0, Landroidx/car/app/model/SearchCallbackDelegateImpl;->mStubCallback:Landroidx/car/app/model/ISearchCallback;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/car/app/model/ISearchCallback;

    .line 63
    invoke-static {p2}, Landroidx/car/app/utils/RemoteUtils;->createOnDoneCallbackStub(Landroidx/car/app/OnDoneCallback;)Landroidx/car/app/IOnDoneCallback;

    move-result-object v1

    .line 62
    invoke-interface {v0, p1, v1}, Landroidx/car/app/model/ISearchCallback;->onSearchSubmitted(Ljava/lang/String;Landroidx/car/app/IOnDoneCallback;)V
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

.method public sendSearchTextChanged(Ljava/lang/String;Landroidx/car/app/OnDoneCallback;)V
    .locals 2
    .param p1, "searchText"    # Ljava/lang/String;
    .param p2, "callback"    # Landroidx/car/app/OnDoneCallback;

    .line 51
    :try_start_0
    iget-object v0, p0, Landroidx/car/app/model/SearchCallbackDelegateImpl;->mStubCallback:Landroidx/car/app/model/ISearchCallback;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/car/app/model/ISearchCallback;

    .line 52
    invoke-static {p2}, Landroidx/car/app/utils/RemoteUtils;->createOnDoneCallbackStub(Landroidx/car/app/OnDoneCallback;)Landroidx/car/app/IOnDoneCallback;

    move-result-object v1

    .line 51
    invoke-interface {v0, p1, v1}, Landroidx/car/app/model/ISearchCallback;->onSearchTextChanged(Ljava/lang/String;Landroidx/car/app/IOnDoneCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    nop

    .line 56
    return-void

    .line 53
    :catch_0
    move-exception v0

    .line 54
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
