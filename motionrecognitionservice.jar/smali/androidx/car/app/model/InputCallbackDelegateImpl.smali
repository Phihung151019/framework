.class public Landroidx/car/app/model/InputCallbackDelegateImpl;
.super Ljava/lang/Object;
.source "InputCallbackDelegateImpl.java"

# interfaces
.implements Landroidx/car/app/model/InputCallbackDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/car/app/model/InputCallbackDelegateImpl$OnInputCallbackStub;
    }
.end annotation


# instance fields
.field private final mCallback:Landroidx/car/app/model/IInputCallback;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/car/app/model/InputCallbackDelegateImpl;->mCallback:Landroidx/car/app/model/IInputCallback;

    .line 80
    return-void
.end method

.method private constructor <init>(Landroidx/car/app/model/InputCallback;)V
    .locals 1
    .param p1, "callback"    # Landroidx/car/app/model/InputCallback;

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Landroidx/car/app/model/InputCallbackDelegateImpl$OnInputCallbackStub;

    invoke-direct {v0, p1}, Landroidx/car/app/model/InputCallbackDelegateImpl$OnInputCallbackStub;-><init>(Landroidx/car/app/model/InputCallback;)V

    iput-object v0, p0, Landroidx/car/app/model/InputCallbackDelegateImpl;->mCallback:Landroidx/car/app/model/IInputCallback;

    .line 75
    return-void
.end method

.method public static create(Landroidx/car/app/model/InputCallback;)Landroidx/car/app/model/InputCallbackDelegate;
    .locals 2
    .param p0, "callback"    # Landroidx/car/app/model/InputCallback;

    .line 70
    new-instance v0, Landroidx/car/app/model/InputCallbackDelegateImpl;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/car/app/model/InputCallback;

    invoke-direct {v0, v1}, Landroidx/car/app/model/InputCallbackDelegateImpl;-><init>(Landroidx/car/app/model/InputCallback;)V

    return-object v0
.end method


# virtual methods
.method public sendInputSubmitted(Ljava/lang/String;Landroidx/car/app/OnDoneCallback;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "callback"    # Landroidx/car/app/OnDoneCallback;

    .line 48
    :try_start_0
    iget-object v0, p0, Landroidx/car/app/model/InputCallbackDelegateImpl;->mCallback:Landroidx/car/app/model/IInputCallback;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/car/app/model/IInputCallback;

    .line 49
    invoke-static {p2}, Landroidx/car/app/utils/RemoteUtils;->createOnDoneCallbackStub(Landroidx/car/app/OnDoneCallback;)Landroidx/car/app/IOnDoneCallback;

    move-result-object v1

    .line 48
    invoke-interface {v0, p1, v1}, Landroidx/car/app/model/IInputCallback;->onInputSubmitted(Ljava/lang/String;Landroidx/car/app/IOnDoneCallback;)V
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

.method public sendInputTextChanged(Ljava/lang/String;Landroidx/car/app/OnDoneCallback;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "callback"    # Landroidx/car/app/OnDoneCallback;

    .line 58
    :try_start_0
    iget-object v0, p0, Landroidx/car/app/model/InputCallbackDelegateImpl;->mCallback:Landroidx/car/app/model/IInputCallback;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/car/app/model/IInputCallback;

    .line 59
    invoke-static {p2}, Landroidx/car/app/utils/RemoteUtils;->createOnDoneCallbackStub(Landroidx/car/app/OnDoneCallback;)Landroidx/car/app/IOnDoneCallback;

    move-result-object v1

    .line 58
    invoke-interface {v0, p1, v1}, Landroidx/car/app/model/IInputCallback;->onInputTextChanged(Ljava/lang/String;Landroidx/car/app/IOnDoneCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    nop

    .line 63
    return-void

    .line 60
    :catch_0
    move-exception v0

    .line 61
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
