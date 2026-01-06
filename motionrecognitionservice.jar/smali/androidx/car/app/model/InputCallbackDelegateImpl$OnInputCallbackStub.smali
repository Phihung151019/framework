.class Landroidx/car/app/model/InputCallbackDelegateImpl$OnInputCallbackStub;
.super Landroidx/car/app/model/IInputCallback$Stub;
.source "InputCallbackDelegateImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/car/app/model/InputCallbackDelegateImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OnInputCallbackStub"
.end annotation


# instance fields
.field private final mCallback:Landroidx/car/app/model/InputCallback;


# direct methods
.method constructor <init>(Landroidx/car/app/model/InputCallback;)V
    .locals 0
    .param p1, "callback"    # Landroidx/car/app/model/InputCallback;

    .line 86
    invoke-direct {p0}, Landroidx/car/app/model/IInputCallback$Stub;-><init>()V

    .line 87
    iput-object p1, p0, Landroidx/car/app/model/InputCallbackDelegateImpl$OnInputCallbackStub;->mCallback:Landroidx/car/app/model/InputCallback;

    .line 88
    return-void
.end method


# virtual methods
.method synthetic lambda$onInputSubmitted$0$androidx-car-app-model-InputCallbackDelegateImpl$OnInputCallbackStub(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/car/app/serialization/BundlerException;
        }
    .end annotation

    .line 94
    iget-object v0, p0, Landroidx/car/app/model/InputCallbackDelegateImpl$OnInputCallbackStub;->mCallback:Landroidx/car/app/model/InputCallback;

    invoke-interface {v0, p1}, Landroidx/car/app/model/InputCallback;->onInputSubmitted(Ljava/lang/String;)V

    .line 95
    const/4 v0, 0x0

    return-object v0
.end method

.method synthetic lambda$onInputTextChanged$1$androidx-car-app-model-InputCallbackDelegateImpl$OnInputCallbackStub(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/car/app/serialization/BundlerException;
        }
    .end annotation

    .line 104
    iget-object v0, p0, Landroidx/car/app/model/InputCallbackDelegateImpl$OnInputCallbackStub;->mCallback:Landroidx/car/app/model/InputCallback;

    invoke-interface {v0, p1}, Landroidx/car/app/model/InputCallback;->onInputTextChanged(Ljava/lang/String;)V

    .line 105
    const/4 v0, 0x0

    return-object v0
.end method

.method public onInputSubmitted(Ljava/lang/String;Landroidx/car/app/IOnDoneCallback;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "callback"    # Landroidx/car/app/IOnDoneCallback;

    .line 92
    new-instance v0, Landroidx/car/app/model/InputCallbackDelegateImpl$OnInputCallbackStub$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Landroidx/car/app/model/InputCallbackDelegateImpl$OnInputCallbackStub$$ExternalSyntheticLambda1;-><init>(Landroidx/car/app/model/InputCallbackDelegateImpl$OnInputCallbackStub;Ljava/lang/String;)V

    const-string v1, "onInputSubmitted"

    invoke-static {p2, v1, v0}, Landroidx/car/app/utils/RemoteUtils;->dispatchCallFromHost(Landroidx/car/app/IOnDoneCallback;Ljava/lang/String;Landroidx/car/app/utils/RemoteUtils$HostCall;)V

    .line 98
    return-void
.end method

.method public onInputTextChanged(Ljava/lang/String;Landroidx/car/app/IOnDoneCallback;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "callback"    # Landroidx/car/app/IOnDoneCallback;

    .line 102
    new-instance v0, Landroidx/car/app/model/InputCallbackDelegateImpl$OnInputCallbackStub$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Landroidx/car/app/model/InputCallbackDelegateImpl$OnInputCallbackStub$$ExternalSyntheticLambda0;-><init>(Landroidx/car/app/model/InputCallbackDelegateImpl$OnInputCallbackStub;Ljava/lang/String;)V

    const-string v1, "onInputTextChanged"

    invoke-static {p2, v1, v0}, Landroidx/car/app/utils/RemoteUtils;->dispatchCallFromHost(Landroidx/car/app/IOnDoneCallback;Ljava/lang/String;Landroidx/car/app/utils/RemoteUtils$HostCall;)V

    .line 108
    return-void
.end method
