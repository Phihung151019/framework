.class Landroidx/car/app/model/OnItemVisibilityChangedDelegateImpl$OnItemVisibilityChangedListenerStub;
.super Landroidx/car/app/model/IOnItemVisibilityChangedListener$Stub;
.source "OnItemVisibilityChangedDelegateImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/car/app/model/OnItemVisibilityChangedDelegateImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OnItemVisibilityChangedListenerStub"
.end annotation


# instance fields
.field private final mListener:Landroidx/car/app/model/ItemList$OnItemVisibilityChangedListener;


# direct methods
.method constructor <init>(Landroidx/car/app/model/ItemList$OnItemVisibilityChangedListener;)V
    .locals 0
    .param p1, "listener"    # Landroidx/car/app/model/ItemList$OnItemVisibilityChangedListener;

    .line 84
    invoke-direct {p0}, Landroidx/car/app/model/IOnItemVisibilityChangedListener$Stub;-><init>()V

    .line 85
    iput-object p1, p0, Landroidx/car/app/model/OnItemVisibilityChangedDelegateImpl$OnItemVisibilityChangedListenerStub;->mListener:Landroidx/car/app/model/ItemList$OnItemVisibilityChangedListener;

    .line 86
    return-void
.end method


# virtual methods
.method synthetic lambda$onItemVisibilityChanged$0$androidx-car-app-model-OnItemVisibilityChangedDelegateImpl$OnItemVisibilityChangedListenerStub(II)Ljava/lang/Object;
    .locals 1
    .param p1, "startIndexInclusive"    # I
    .param p2, "endIndexExclusive"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/car/app/serialization/BundlerException;
        }
    .end annotation

    .line 93
    iget-object v0, p0, Landroidx/car/app/model/OnItemVisibilityChangedDelegateImpl$OnItemVisibilityChangedListenerStub;->mListener:Landroidx/car/app/model/ItemList$OnItemVisibilityChangedListener;

    invoke-interface {v0, p1, p2}, Landroidx/car/app/model/ItemList$OnItemVisibilityChangedListener;->onItemVisibilityChanged(II)V

    .line 95
    const/4 v0, 0x0

    return-object v0
.end method

.method public onItemVisibilityChanged(IILandroidx/car/app/IOnDoneCallback;)V
    .locals 2
    .param p1, "startIndexInclusive"    # I
    .param p2, "endIndexExclusive"    # I
    .param p3, "callback"    # Landroidx/car/app/IOnDoneCallback;

    .line 91
    new-instance v0, Landroidx/car/app/model/OnItemVisibilityChangedDelegateImpl$OnItemVisibilityChangedListenerStub$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1, p2}, Landroidx/car/app/model/OnItemVisibilityChangedDelegateImpl$OnItemVisibilityChangedListenerStub$$ExternalSyntheticLambda0;-><init>(Landroidx/car/app/model/OnItemVisibilityChangedDelegateImpl$OnItemVisibilityChangedListenerStub;II)V

    const-string v1, "onItemVisibilityChanged"

    invoke-static {p3, v1, v0}, Landroidx/car/app/utils/RemoteUtils;->dispatchCallFromHost(Landroidx/car/app/IOnDoneCallback;Ljava/lang/String;Landroidx/car/app/utils/RemoteUtils$HostCall;)V

    .line 98
    return-void
.end method
