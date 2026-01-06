.class Landroidx/car/app/model/OnCheckedChangeDelegateImpl$OnCheckedChangeListenerStub;
.super Landroidx/car/app/model/IOnCheckedChangeListener$Stub;
.source "OnCheckedChangeDelegateImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/car/app/model/OnCheckedChangeDelegateImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OnCheckedChangeListenerStub"
.end annotation


# instance fields
.field private final mListener:Landroidx/car/app/model/Toggle$OnCheckedChangeListener;


# direct methods
.method constructor <init>(Landroidx/car/app/model/Toggle$OnCheckedChangeListener;)V
    .locals 0
    .param p1, "listener"    # Landroidx/car/app/model/Toggle$OnCheckedChangeListener;

    .line 78
    invoke-direct {p0}, Landroidx/car/app/model/IOnCheckedChangeListener$Stub;-><init>()V

    .line 79
    iput-object p1, p0, Landroidx/car/app/model/OnCheckedChangeDelegateImpl$OnCheckedChangeListenerStub;->mListener:Landroidx/car/app/model/Toggle$OnCheckedChangeListener;

    .line 80
    return-void
.end method


# virtual methods
.method synthetic lambda$onCheckedChange$0$androidx-car-app-model-OnCheckedChangeDelegateImpl$OnCheckedChangeListenerStub(Z)Ljava/lang/Object;
    .locals 1
    .param p1, "isChecked"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/car/app/serialization/BundlerException;
        }
    .end annotation

    .line 85
    iget-object v0, p0, Landroidx/car/app/model/OnCheckedChangeDelegateImpl$OnCheckedChangeListenerStub;->mListener:Landroidx/car/app/model/Toggle$OnCheckedChangeListener;

    invoke-interface {v0, p1}, Landroidx/car/app/model/Toggle$OnCheckedChangeListener;->onCheckedChange(Z)V

    .line 86
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCheckedChange(ZLandroidx/car/app/IOnDoneCallback;)V
    .locals 2
    .param p1, "isChecked"    # Z
    .param p2, "callback"    # Landroidx/car/app/IOnDoneCallback;

    .line 84
    new-instance v0, Landroidx/car/app/model/OnCheckedChangeDelegateImpl$OnCheckedChangeListenerStub$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Landroidx/car/app/model/OnCheckedChangeDelegateImpl$OnCheckedChangeListenerStub$$ExternalSyntheticLambda0;-><init>(Landroidx/car/app/model/OnCheckedChangeDelegateImpl$OnCheckedChangeListenerStub;Z)V

    const-string v1, "onCheckedChange"

    invoke-static {p2, v1, v0}, Landroidx/car/app/utils/RemoteUtils;->dispatchCallFromHost(Landroidx/car/app/IOnDoneCallback;Ljava/lang/String;Landroidx/car/app/utils/RemoteUtils$HostCall;)V

    .line 89
    return-void
.end method
