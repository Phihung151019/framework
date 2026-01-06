.class Landroidx/car/app/model/OnContentRefreshDelegateImpl$OnContentRefreshListenerStub;
.super Landroidx/car/app/model/IOnContentRefreshListener$Stub;
.source "OnContentRefreshDelegateImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/car/app/model/OnContentRefreshDelegateImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OnContentRefreshListenerStub"
.end annotation


# instance fields
.field private final mOnContentRefreshListener:Landroidx/car/app/model/OnContentRefreshListener;


# direct methods
.method constructor <init>(Landroidx/car/app/model/OnContentRefreshListener;)V
    .locals 0
    .param p1, "onContentRefreshListener"    # Landroidx/car/app/model/OnContentRefreshListener;

    .line 80
    invoke-direct {p0}, Landroidx/car/app/model/IOnContentRefreshListener$Stub;-><init>()V

    .line 81
    iput-object p1, p0, Landroidx/car/app/model/OnContentRefreshDelegateImpl$OnContentRefreshListenerStub;->mOnContentRefreshListener:Landroidx/car/app/model/OnContentRefreshListener;

    .line 82
    return-void
.end method


# virtual methods
.method synthetic lambda$onContentRefreshRequested$0$androidx-car-app-model-OnContentRefreshDelegateImpl$OnContentRefreshListenerStub()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/car/app/serialization/BundlerException;
        }
    .end annotation

    .line 87
    iget-object v0, p0, Landroidx/car/app/model/OnContentRefreshDelegateImpl$OnContentRefreshListenerStub;->mOnContentRefreshListener:Landroidx/car/app/model/OnContentRefreshListener;

    invoke-interface {v0}, Landroidx/car/app/model/OnContentRefreshListener;->onContentRefreshRequested()V

    .line 88
    const/4 v0, 0x0

    return-object v0
.end method

.method public onContentRefreshRequested(Landroidx/car/app/IOnDoneCallback;)V
    .locals 2
    .param p1, "callback"    # Landroidx/car/app/IOnDoneCallback;

    .line 86
    new-instance v0, Landroidx/car/app/model/OnContentRefreshDelegateImpl$OnContentRefreshListenerStub$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroidx/car/app/model/OnContentRefreshDelegateImpl$OnContentRefreshListenerStub$$ExternalSyntheticLambda0;-><init>(Landroidx/car/app/model/OnContentRefreshDelegateImpl$OnContentRefreshListenerStub;)V

    const-string v1, "onClick"

    invoke-static {p1, v1, v0}, Landroidx/car/app/utils/RemoteUtils;->dispatchCallFromHost(Landroidx/car/app/IOnDoneCallback;Ljava/lang/String;Landroidx/car/app/utils/RemoteUtils$HostCall;)V

    .line 90
    return-void
.end method
