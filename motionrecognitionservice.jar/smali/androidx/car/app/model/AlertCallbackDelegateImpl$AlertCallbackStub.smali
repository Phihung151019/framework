.class Landroidx/car/app/model/AlertCallbackDelegateImpl$AlertCallbackStub;
.super Landroidx/car/app/model/IAlertCallback$Stub;
.source "AlertCallbackDelegateImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/car/app/model/AlertCallbackDelegateImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AlertCallbackStub"
.end annotation


# instance fields
.field private final mCallback:Landroidx/car/app/model/AlertCallback;


# direct methods
.method constructor <init>(Landroidx/car/app/model/AlertCallback;)V
    .locals 0
    .param p1, "callback"    # Landroidx/car/app/model/AlertCallback;

    .line 83
    invoke-direct {p0}, Landroidx/car/app/model/IAlertCallback$Stub;-><init>()V

    .line 84
    iput-object p1, p0, Landroidx/car/app/model/AlertCallbackDelegateImpl$AlertCallbackStub;->mCallback:Landroidx/car/app/model/AlertCallback;

    .line 85
    return-void
.end method


# virtual methods
.method synthetic lambda$onAlertCancelled$0$androidx-car-app-model-AlertCallbackDelegateImpl$AlertCallbackStub(I)Ljava/lang/Object;
    .locals 1
    .param p1, "reason"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/car/app/serialization/BundlerException;
        }
    .end annotation

    .line 90
    iget-object v0, p0, Landroidx/car/app/model/AlertCallbackDelegateImpl$AlertCallbackStub;->mCallback:Landroidx/car/app/model/AlertCallback;

    invoke-interface {v0, p1}, Landroidx/car/app/model/AlertCallback;->onCancel(I)V

    .line 91
    const/4 v0, 0x0

    return-object v0
.end method

.method synthetic lambda$onAlertDismissed$1$androidx-car-app-model-AlertCallbackDelegateImpl$AlertCallbackStub()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/car/app/serialization/BundlerException;
        }
    .end annotation

    .line 98
    iget-object v0, p0, Landroidx/car/app/model/AlertCallbackDelegateImpl$AlertCallbackStub;->mCallback:Landroidx/car/app/model/AlertCallback;

    invoke-interface {v0}, Landroidx/car/app/model/AlertCallback;->onDismiss()V

    .line 99
    const/4 v0, 0x0

    return-object v0
.end method

.method public onAlertCancelled(ILandroidx/car/app/IOnDoneCallback;)V
    .locals 2
    .param p1, "reason"    # I
    .param p2, "callback"    # Landroidx/car/app/IOnDoneCallback;

    .line 89
    new-instance v0, Landroidx/car/app/model/AlertCallbackDelegateImpl$AlertCallbackStub$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Landroidx/car/app/model/AlertCallbackDelegateImpl$AlertCallbackStub$$ExternalSyntheticLambda1;-><init>(Landroidx/car/app/model/AlertCallbackDelegateImpl$AlertCallbackStub;I)V

    const-string v1, "onCancel"

    invoke-static {p2, v1, v0}, Landroidx/car/app/utils/RemoteUtils;->dispatchCallFromHost(Landroidx/car/app/IOnDoneCallback;Ljava/lang/String;Landroidx/car/app/utils/RemoteUtils$HostCall;)V

    .line 93
    return-void
.end method

.method public onAlertDismissed(Landroidx/car/app/IOnDoneCallback;)V
    .locals 2
    .param p1, "callback"    # Landroidx/car/app/IOnDoneCallback;

    .line 97
    new-instance v0, Landroidx/car/app/model/AlertCallbackDelegateImpl$AlertCallbackStub$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroidx/car/app/model/AlertCallbackDelegateImpl$AlertCallbackStub$$ExternalSyntheticLambda0;-><init>(Landroidx/car/app/model/AlertCallbackDelegateImpl$AlertCallbackStub;)V

    const-string v1, "onDismiss"

    invoke-static {p1, v1, v0}, Landroidx/car/app/utils/RemoteUtils;->dispatchCallFromHost(Landroidx/car/app/IOnDoneCallback;Ljava/lang/String;Landroidx/car/app/utils/RemoteUtils$HostCall;)V

    .line 101
    return-void
.end method
