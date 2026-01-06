.class Landroidx/car/app/model/OnSelectedDelegateImpl$OnSelectedListenerStub;
.super Landroidx/car/app/model/IOnSelectedListener$Stub;
.source "OnSelectedDelegateImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/car/app/model/OnSelectedDelegateImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OnSelectedListenerStub"
.end annotation


# instance fields
.field private final mListener:Landroidx/car/app/model/ItemList$OnSelectedListener;


# direct methods
.method constructor <init>(Landroidx/car/app/model/ItemList$OnSelectedListener;)V
    .locals 0
    .param p1, "listener"    # Landroidx/car/app/model/ItemList$OnSelectedListener;

    .line 75
    invoke-direct {p0}, Landroidx/car/app/model/IOnSelectedListener$Stub;-><init>()V

    .line 76
    iput-object p1, p0, Landroidx/car/app/model/OnSelectedDelegateImpl$OnSelectedListenerStub;->mListener:Landroidx/car/app/model/ItemList$OnSelectedListener;

    .line 77
    return-void
.end method


# virtual methods
.method synthetic lambda$onSelected$0$androidx-car-app-model-OnSelectedDelegateImpl$OnSelectedListenerStub(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/car/app/serialization/BundlerException;
        }
    .end annotation

    .line 83
    iget-object v0, p0, Landroidx/car/app/model/OnSelectedDelegateImpl$OnSelectedListenerStub;->mListener:Landroidx/car/app/model/ItemList$OnSelectedListener;

    invoke-interface {v0, p1}, Landroidx/car/app/model/ItemList$OnSelectedListener;->onSelected(I)V

    .line 84
    const/4 v0, 0x0

    return-object v0
.end method

.method public onSelected(ILandroidx/car/app/IOnDoneCallback;)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "callback"    # Landroidx/car/app/IOnDoneCallback;

    .line 81
    new-instance v0, Landroidx/car/app/model/OnSelectedDelegateImpl$OnSelectedListenerStub$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Landroidx/car/app/model/OnSelectedDelegateImpl$OnSelectedListenerStub$$ExternalSyntheticLambda0;-><init>(Landroidx/car/app/model/OnSelectedDelegateImpl$OnSelectedListenerStub;I)V

    const-string v1, "onSelectedListener"

    invoke-static {p2, v1, v0}, Landroidx/car/app/utils/RemoteUtils;->dispatchCallFromHost(Landroidx/car/app/IOnDoneCallback;Ljava/lang/String;Landroidx/car/app/utils/RemoteUtils$HostCall;)V

    .line 86
    return-void
.end method
