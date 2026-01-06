.class public final Landroidx/car/app/utils/RemoteUtils;
.super Ljava/lang/Object;
.source "RemoteUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/car/app/utils/RemoteUtils$RemoteCall;,
        Landroidx/car/app/utils/RemoteUtils$SurfaceCallbackStub;,
        Landroidx/car/app/utils/RemoteUtils$HostCall;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 357
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 358
    return-void
.end method

.method public static createOnDoneCallbackStub(Landroidx/car/app/OnDoneCallback;)Landroidx/car/app/IOnDoneCallback;
    .locals 1
    .param p0, "callback"    # Landroidx/car/app/OnDoneCallback;

    .line 254
    new-instance v0, Landroidx/car/app/utils/RemoteUtils$1;

    invoke-direct {v0, p0}, Landroidx/car/app/utils/RemoteUtils$1;-><init>(Landroidx/car/app/OnDoneCallback;)V

    return-object v0
.end method

.method public static dispatchCallFromHost(Landroidx/car/app/IOnDoneCallback;Ljava/lang/String;Landroidx/car/app/utils/RemoteUtils$HostCall;)V
    .locals 1
    .param p0, "callback"    # Landroidx/car/app/IOnDoneCallback;
    .param p1, "callName"    # Ljava/lang/String;
    .param p2, "hostCall"    # Landroidx/car/app/utils/RemoteUtils$HostCall;

    .line 145
    new-instance v0, Landroidx/car/app/utils/RemoteUtils$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1, p2}, Landroidx/car/app/utils/RemoteUtils$$ExternalSyntheticLambda3;-><init>(Landroidx/car/app/IOnDoneCallback;Ljava/lang/String;Landroidx/car/app/utils/RemoteUtils$HostCall;)V

    invoke-static {v0}, Landroidx/car/app/utils/ThreadUtils;->runOnMain(Ljava/lang/Runnable;)V

    .line 158
    return-void
.end method

.method public static dispatchCallFromHost(Landroidx/lifecycle/Lifecycle;Landroidx/car/app/IOnDoneCallback;Ljava/lang/String;Landroidx/car/app/utils/RemoteUtils$HostCall;)V
    .locals 1
    .param p0, "lifecycle"    # Landroidx/lifecycle/Lifecycle;
    .param p1, "callback"    # Landroidx/car/app/IOnDoneCallback;
    .param p2, "callName"    # Ljava/lang/String;
    .param p3, "hostCall"    # Landroidx/car/app/utils/RemoteUtils$HostCall;

    .line 176
    new-instance v0, Landroidx/car/app/utils/RemoteUtils$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p1, p2, p3}, Landroidx/car/app/utils/RemoteUtils$$ExternalSyntheticLambda4;-><init>(Landroidx/lifecycle/Lifecycle;Landroidx/car/app/IOnDoneCallback;Ljava/lang/String;Landroidx/car/app/utils/RemoteUtils$HostCall;)V

    invoke-static {v0}, Landroidx/car/app/utils/ThreadUtils;->runOnMain(Ljava/lang/Runnable;)V

    .line 186
    return-void
.end method

.method public static dispatchCallFromHost(Landroidx/lifecycle/Lifecycle;Ljava/lang/String;Landroidx/car/app/utils/RemoteUtils$HostCall;)V
    .locals 1
    .param p0, "lifecycle"    # Landroidx/lifecycle/Lifecycle;
    .param p1, "callName"    # Ljava/lang/String;
    .param p2, "hostCall"    # Landroidx/car/app/utils/RemoteUtils$HostCall;

    .line 193
    new-instance v0, Landroidx/car/app/utils/RemoteUtils$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2, p1}, Landroidx/car/app/utils/RemoteUtils$$ExternalSyntheticLambda0;-><init>(Landroidx/lifecycle/Lifecycle;Landroidx/car/app/utils/RemoteUtils$HostCall;Ljava/lang/String;)V

    invoke-static {v0}, Landroidx/car/app/utils/ThreadUtils;->runOnMain(Ljava/lang/Runnable;)V

    .line 210
    return-void
.end method

.method public static dispatchCallToHost(Ljava/lang/String;Landroidx/car/app/utils/RemoteUtils$RemoteCall;)V
    .locals 3
    .param p0, "callName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroidx/car/app/utils/RemoteUtils$RemoteCall<",
            "*>;)V"
        }
    .end annotation

    .line 104
    .local p1, "remoteCall":Landroidx/car/app/utils/RemoteUtils$RemoteCall;, "Landroidx/car/app/utils/RemoteUtils$RemoteCall<*>;"
    :try_start_0
    invoke-static {p0, p1}, Landroidx/car/app/utils/RemoteUtils;->dispatchCallToHostForResult(Ljava/lang/String;Landroidx/car/app/utils/RemoteUtils$RemoteCall;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    goto :goto_0

    .line 105
    :catch_0
    move-exception v0

    .line 107
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Host unresponsive when dispatching call "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CarApp.Dispatch"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 109
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public static dispatchCallToHostForResult(Ljava/lang/String;Landroidx/car/app/utils/RemoteUtils$RemoteCall;)Ljava/lang/Object;
    .locals 4
    .param p0, "callName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ReturnT:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Landroidx/car/app/utils/RemoteUtils$RemoteCall<",
            "TReturnT;>;)TReturnT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 82
    .local p1, "remoteCall":Landroidx/car/app/utils/RemoteUtils$RemoteCall;, "Landroidx/car/app/utils/RemoteUtils$RemoteCall<TReturnT;>;"
    const-string v0, "CarApp"

    const/4 v1, 0x3

    :try_start_0
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 83
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dispatching call "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to host"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    :cond_0
    invoke-interface {p1}, Landroidx/car/app/utils/RemoteUtils$RemoteCall;->call()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 90
    :catch_0
    move-exception v0

    .line 91
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v1, Landroidx/car/app/HostException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Remote "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " call failed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroidx/car/app/HostException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 86
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v0

    .line 89
    .local v0, "e":Ljava/lang/SecurityException;
    throw v0
.end method

.method static synthetic lambda$dispatchCallFromHost$0(Landroidx/car/app/IOnDoneCallback;Ljava/lang/String;Landroidx/car/app/utils/RemoteUtils$HostCall;)V
    .locals 2
    .param p0, "callback"    # Landroidx/car/app/IOnDoneCallback;
    .param p1, "callName"    # Ljava/lang/String;
    .param p2, "hostCall"    # Landroidx/car/app/utils/RemoteUtils$HostCall;

    .line 148
    :try_start_0
    invoke-interface {p2}, Landroidx/car/app/utils/RemoteUtils$HostCall;->dispatch()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0, p1, v0}, Landroidx/car/app/utils/RemoteUtils;->sendSuccessResponseToHost(Landroidx/car/app/IOnDoneCallback;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroidx/car/app/serialization/BundlerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    goto :goto_0

    .line 154
    :catch_0
    move-exception v0

    .line 155
    .local v0, "e":Landroidx/car/app/serialization/BundlerException;
    invoke-static {p0, p1, v0}, Landroidx/car/app/utils/RemoteUtils;->sendFailureResponseToHost(Landroidx/car/app/IOnDoneCallback;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 157
    .end local v0    # "e":Landroidx/car/app/serialization/BundlerException;
    :goto_0
    return-void

    .line 149
    :catch_1
    move-exception v0

    .line 152
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-static {p0, p1, v0}, Landroidx/car/app/utils/RemoteUtils;->sendFailureResponseToHost(Landroidx/car/app/IOnDoneCallback;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 153
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method static synthetic lambda$dispatchCallFromHost$1(Landroidx/lifecycle/Lifecycle;Landroidx/car/app/IOnDoneCallback;Ljava/lang/String;Landroidx/car/app/utils/RemoteUtils$HostCall;)V
    .locals 3
    .param p0, "lifecycle"    # Landroidx/lifecycle/Lifecycle;
    .param p1, "callback"    # Landroidx/car/app/IOnDoneCallback;
    .param p2, "callName"    # Ljava/lang/String;
    .param p3, "hostCall"    # Landroidx/car/app/utils/RemoteUtils$HostCall;

    .line 178
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroidx/lifecycle/Lifecycle;->getCurrentState()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v0

    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->CREATED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/Lifecycle$State;->isAtLeast(Landroidx/lifecycle/Lifecycle$State;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 184
    :cond_0
    invoke-static {p1, p2, p3}, Landroidx/car/app/utils/RemoteUtils;->dispatchCallFromHost(Landroidx/car/app/IOnDoneCallback;Ljava/lang/String;Landroidx/car/app/utils/RemoteUtils$HostCall;)V

    .line 185
    return-void

    .line 179
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Lifecycle is not at least created when dispatching "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2, v0}, Landroidx/car/app/utils/RemoteUtils;->sendFailureResponseToHost(Landroidx/car/app/IOnDoneCallback;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 181
    return-void
.end method

.method static synthetic lambda$dispatchCallFromHost$2(Landroidx/lifecycle/Lifecycle;Landroidx/car/app/utils/RemoteUtils$HostCall;Ljava/lang/String;)V
    .locals 4
    .param p0, "lifecycle"    # Landroidx/lifecycle/Lifecycle;
    .param p1, "hostCall"    # Landroidx/car/app/utils/RemoteUtils$HostCall;
    .param p2, "callName"    # Ljava/lang/String;

    .line 196
    const-string v0, "CarApp.Dispatch"

    if-eqz p0, :cond_1

    :try_start_0
    invoke-virtual {p0}, Landroidx/lifecycle/Lifecycle;->getCurrentState()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v1

    sget-object v2, Landroidx/lifecycle/Lifecycle$State;->CREATED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v1, v2}, Landroidx/lifecycle/Lifecycle$State;->isAtLeast(Landroidx/lifecycle/Lifecycle$State;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 203
    :cond_0
    invoke-interface {p1}, Landroidx/car/app/utils/RemoteUtils$HostCall;->dispatch()Ljava/lang/Object;

    .line 208
    goto :goto_2

    .line 204
    :catch_0
    move-exception v1

    goto :goto_1

    .line 197
    :cond_1
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Lifecycle is not at least created when dispatching "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroidx/car/app/serialization/BundlerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    return-void

    .line 206
    .local v1, "e":Landroidx/car/app/serialization/BundlerException;
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Serialization failure in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 209
    .end local v1    # "e":Landroidx/car/app/serialization/BundlerException;
    :goto_2
    return-void
.end method

.method static synthetic lambda$sendFailureResponseToHost$4(Landroidx/car/app/IOnDoneCallback;Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .param p0, "callback"    # Landroidx/car/app/IOnDoneCallback;
    .param p1, "e"    # Ljava/lang/Throwable;
    .param p2, "callName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 238
    :try_start_0
    new-instance v0, Landroidx/car/app/FailureResponse;

    invoke-direct {v0, p1}, Landroidx/car/app/FailureResponse;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v0}, Landroidx/car/app/serialization/Bundleable;->create(Ljava/lang/Object;)Landroidx/car/app/serialization/Bundleable;

    move-result-object v0

    invoke-interface {p0, v0}, Landroidx/car/app/IOnDoneCallback;->onFailure(Landroidx/car/app/serialization/Bundleable;)V
    :try_end_0
    .catch Landroidx/car/app/serialization/BundlerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 243
    goto :goto_0

    .line 239
    :catch_0
    move-exception v0

    .line 241
    .local v0, "bundlerException":Landroidx/car/app/serialization/BundlerException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Serialization failure in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CarApp.Dispatch"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 244
    .end local v0    # "bundlerException":Landroidx/car/app/serialization/BundlerException;
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic lambda$sendSuccessResponseToHost$3(Landroidx/car/app/IOnDoneCallback;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p0, "callback"    # Landroidx/car/app/IOnDoneCallback;
    .param p1, "response"    # Ljava/lang/Object;
    .param p2, "callName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 222
    const/4 v0, 0x0

    if-nez p1, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-static {p1}, Landroidx/car/app/serialization/Bundleable;->create(Ljava/lang/Object;)Landroidx/car/app/serialization/Bundleable;

    move-result-object v1

    :goto_0
    invoke-interface {p0, v1}, Landroidx/car/app/IOnDoneCallback;->onSuccess(Landroidx/car/app/serialization/Bundleable;)V
    :try_end_0
    .catch Landroidx/car/app/serialization/BundlerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 225
    goto :goto_1

    .line 223
    :catch_0
    move-exception v1

    .line 224
    .local v1, "e":Landroidx/car/app/serialization/BundlerException;
    invoke-static {p0, p2, v1}, Landroidx/car/app/utils/RemoteUtils;->sendFailureResponseToHost(Landroidx/car/app/IOnDoneCallback;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 226
    .end local v1    # "e":Landroidx/car/app/serialization/BundlerException;
    :goto_1
    return-object v0
.end method

.method public static sendFailureResponseToHost(Landroidx/car/app/IOnDoneCallback;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "callback"    # Landroidx/car/app/IOnDoneCallback;
    .param p1, "callName"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Throwable;

    .line 236
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " onFailure"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroidx/car/app/utils/RemoteUtils$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p2, p1}, Landroidx/car/app/utils/RemoteUtils$$ExternalSyntheticLambda2;-><init>(Landroidx/car/app/IOnDoneCallback;Ljava/lang/Throwable;Ljava/lang/String;)V

    invoke-static {v0, v1}, Landroidx/car/app/utils/RemoteUtils;->dispatchCallToHost(Ljava/lang/String;Landroidx/car/app/utils/RemoteUtils$RemoteCall;)V

    .line 246
    return-void
.end method

.method public static sendSuccessResponseToHost(Landroidx/car/app/IOnDoneCallback;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p0, "callback"    # Landroidx/car/app/IOnDoneCallback;
    .param p1, "callName"    # Ljava/lang/String;
    .param p2, "response"    # Ljava/lang/Object;

    .line 220
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " onSuccess"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroidx/car/app/utils/RemoteUtils$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p2, p1}, Landroidx/car/app/utils/RemoteUtils$$ExternalSyntheticLambda1;-><init>(Landroidx/car/app/IOnDoneCallback;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v1}, Landroidx/car/app/utils/RemoteUtils;->dispatchCallToHost(Ljava/lang/String;Landroidx/car/app/utils/RemoteUtils$RemoteCall;)V

    .line 228
    return-void
.end method

.method public static stubSurfaceCallback(Landroidx/lifecycle/Lifecycle;Landroidx/car/app/SurfaceCallback;)Landroidx/car/app/ISurfaceCallback;
    .locals 1
    .param p0, "lifecycle"    # Landroidx/lifecycle/Lifecycle;
    .param p1, "surfaceCallback"    # Landroidx/car/app/SurfaceCallback;

    .line 123
    if-nez p1, :cond_0

    .line 124
    const/4 v0, 0x0

    return-object v0

    .line 127
    :cond_0
    new-instance v0, Landroidx/car/app/utils/RemoteUtils$SurfaceCallbackStub;

    invoke-direct {v0, p0, p1}, Landroidx/car/app/utils/RemoteUtils$SurfaceCallbackStub;-><init>(Landroidx/lifecycle/Lifecycle;Landroidx/car/app/SurfaceCallback;)V

    return-object v0
.end method
