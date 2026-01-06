.class Landroidx/car/app/model/TabCallbackDelegateImpl$TabCallbackStub;
.super Landroidx/car/app/model/ITabCallback$Stub;
.source "TabCallbackDelegateImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/car/app/model/TabCallbackDelegateImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TabCallbackStub"
.end annotation


# instance fields
.field private final mCallback:Landroidx/car/app/model/TabTemplate$TabCallback;


# direct methods
.method constructor <init>(Landroidx/car/app/model/TabTemplate$TabCallback;)V
    .locals 0
    .param p1, "callback"    # Landroidx/car/app/model/TabTemplate$TabCallback;

    .line 77
    invoke-direct {p0}, Landroidx/car/app/model/ITabCallback$Stub;-><init>()V

    .line 78
    iput-object p1, p0, Landroidx/car/app/model/TabCallbackDelegateImpl$TabCallbackStub;->mCallback:Landroidx/car/app/model/TabTemplate$TabCallback;

    .line 79
    return-void
.end method


# virtual methods
.method synthetic lambda$onTabSelected$0$androidx-car-app-model-TabCallbackDelegateImpl$TabCallbackStub(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "tabContentId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/car/app/serialization/BundlerException;
        }
    .end annotation

    .line 85
    iget-object v0, p0, Landroidx/car/app/model/TabCallbackDelegateImpl$TabCallbackStub;->mCallback:Landroidx/car/app/model/TabTemplate$TabCallback;

    invoke-interface {v0, p1}, Landroidx/car/app/model/TabTemplate$TabCallback;->onTabSelected(Ljava/lang/String;)V

    .line 86
    const/4 v0, 0x0

    return-object v0
.end method

.method public onTabSelected(Ljava/lang/String;Landroidx/car/app/IOnDoneCallback;)V
    .locals 2
    .param p1, "tabContentId"    # Ljava/lang/String;
    .param p2, "callback"    # Landroidx/car/app/IOnDoneCallback;

    .line 83
    new-instance v0, Landroidx/car/app/model/TabCallbackDelegateImpl$TabCallbackStub$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Landroidx/car/app/model/TabCallbackDelegateImpl$TabCallbackStub$$ExternalSyntheticLambda0;-><init>(Landroidx/car/app/model/TabCallbackDelegateImpl$TabCallbackStub;Ljava/lang/String;)V

    const-string v1, "onTabSelected"

    invoke-static {p2, v1, v0}, Landroidx/car/app/utils/RemoteUtils;->dispatchCallFromHost(Landroidx/car/app/IOnDoneCallback;Ljava/lang/String;Landroidx/car/app/utils/RemoteUtils$HostCall;)V

    .line 89
    return-void
.end method
