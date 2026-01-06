.class Landroidx/car/app/model/OnClickDelegateImpl$OnClickListenerStub;
.super Landroidx/car/app/model/IOnClickListener$Stub;
.source "OnClickDelegateImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/car/app/model/OnClickDelegateImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OnClickListenerStub"
.end annotation


# instance fields
.field private final mOnClickListener:Landroidx/car/app/model/OnClickListener;


# direct methods
.method constructor <init>(Landroidx/car/app/model/OnClickListener;)V
    .locals 0
    .param p1, "onClickListener"    # Landroidx/car/app/model/OnClickListener;

    .line 89
    invoke-direct {p0}, Landroidx/car/app/model/IOnClickListener$Stub;-><init>()V

    .line 90
    iput-object p1, p0, Landroidx/car/app/model/OnClickDelegateImpl$OnClickListenerStub;->mOnClickListener:Landroidx/car/app/model/OnClickListener;

    .line 91
    return-void
.end method


# virtual methods
.method synthetic lambda$onClick$0$androidx-car-app-model-OnClickDelegateImpl$OnClickListenerStub()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/car/app/serialization/BundlerException;
        }
    .end annotation

    .line 96
    iget-object v0, p0, Landroidx/car/app/model/OnClickDelegateImpl$OnClickListenerStub;->mOnClickListener:Landroidx/car/app/model/OnClickListener;

    invoke-interface {v0}, Landroidx/car/app/model/OnClickListener;->onClick()V

    .line 97
    const/4 v0, 0x0

    return-object v0
.end method

.method public onClick(Landroidx/car/app/IOnDoneCallback;)V
    .locals 2
    .param p1, "callback"    # Landroidx/car/app/IOnDoneCallback;

    .line 95
    new-instance v0, Landroidx/car/app/model/OnClickDelegateImpl$OnClickListenerStub$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroidx/car/app/model/OnClickDelegateImpl$OnClickListenerStub$$ExternalSyntheticLambda0;-><init>(Landroidx/car/app/model/OnClickDelegateImpl$OnClickListenerStub;)V

    const-string v1, "onClick"

    invoke-static {p1, v1, v0}, Landroidx/car/app/utils/RemoteUtils;->dispatchCallFromHost(Landroidx/car/app/IOnDoneCallback;Ljava/lang/String;Landroidx/car/app/utils/RemoteUtils$HostCall;)V

    .line 99
    return-void
.end method
