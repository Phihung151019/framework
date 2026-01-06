.class Landroidx/car/app/model/SearchCallbackDelegateImpl$SearchCallbackStub;
.super Landroidx/car/app/model/ISearchCallback$Stub;
.source "SearchCallbackDelegateImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/car/app/model/SearchCallbackDelegateImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SearchCallbackStub"
.end annotation


# instance fields
.field private final mCallback:Landroidx/car/app/model/SearchTemplate$SearchCallback;


# direct methods
.method constructor <init>(Landroidx/car/app/model/SearchTemplate$SearchCallback;)V
    .locals 0
    .param p1, "callback"    # Landroidx/car/app/model/SearchTemplate$SearchCallback;

    .line 89
    invoke-direct {p0}, Landroidx/car/app/model/ISearchCallback$Stub;-><init>()V

    .line 90
    iput-object p1, p0, Landroidx/car/app/model/SearchCallbackDelegateImpl$SearchCallbackStub;->mCallback:Landroidx/car/app/model/SearchTemplate$SearchCallback;

    .line 91
    return-void
.end method


# virtual methods
.method synthetic lambda$onSearchSubmitted$1$androidx-car-app-model-SearchCallbackDelegateImpl$SearchCallbackStub(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/car/app/serialization/BundlerException;
        }
    .end annotation

    .line 107
    iget-object v0, p0, Landroidx/car/app/model/SearchCallbackDelegateImpl$SearchCallbackStub;->mCallback:Landroidx/car/app/model/SearchTemplate$SearchCallback;

    invoke-interface {v0, p1}, Landroidx/car/app/model/SearchTemplate$SearchCallback;->onSearchSubmitted(Ljava/lang/String;)V

    .line 108
    const/4 v0, 0x0

    return-object v0
.end method

.method synthetic lambda$onSearchTextChanged$0$androidx-car-app-model-SearchCallbackDelegateImpl$SearchCallbackStub(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/car/app/serialization/BundlerException;
        }
    .end annotation

    .line 97
    iget-object v0, p0, Landroidx/car/app/model/SearchCallbackDelegateImpl$SearchCallbackStub;->mCallback:Landroidx/car/app/model/SearchTemplate$SearchCallback;

    invoke-interface {v0, p1}, Landroidx/car/app/model/SearchTemplate$SearchCallback;->onSearchTextChanged(Ljava/lang/String;)V

    .line 98
    const/4 v0, 0x0

    return-object v0
.end method

.method public onSearchSubmitted(Ljava/lang/String;Landroidx/car/app/IOnDoneCallback;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "callback"    # Landroidx/car/app/IOnDoneCallback;

    .line 105
    new-instance v0, Landroidx/car/app/model/SearchCallbackDelegateImpl$SearchCallbackStub$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Landroidx/car/app/model/SearchCallbackDelegateImpl$SearchCallbackStub$$ExternalSyntheticLambda0;-><init>(Landroidx/car/app/model/SearchCallbackDelegateImpl$SearchCallbackStub;Ljava/lang/String;)V

    const-string v1, "onSearchSubmitted"

    invoke-static {p2, v1, v0}, Landroidx/car/app/utils/RemoteUtils;->dispatchCallFromHost(Landroidx/car/app/IOnDoneCallback;Ljava/lang/String;Landroidx/car/app/utils/RemoteUtils$HostCall;)V

    .line 110
    return-void
.end method

.method public onSearchTextChanged(Ljava/lang/String;Landroidx/car/app/IOnDoneCallback;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "callback"    # Landroidx/car/app/IOnDoneCallback;

    .line 95
    new-instance v0, Landroidx/car/app/model/SearchCallbackDelegateImpl$SearchCallbackStub$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Landroidx/car/app/model/SearchCallbackDelegateImpl$SearchCallbackStub$$ExternalSyntheticLambda1;-><init>(Landroidx/car/app/model/SearchCallbackDelegateImpl$SearchCallbackStub;Ljava/lang/String;)V

    const-string v1, "onSearchTextChanged"

    invoke-static {p2, v1, v0}, Landroidx/car/app/utils/RemoteUtils;->dispatchCallFromHost(Landroidx/car/app/IOnDoneCallback;Ljava/lang/String;Landroidx/car/app/utils/RemoteUtils$HostCall;)V

    .line 101
    return-void
.end method
