.class Landroidx/car/app/navigation/model/PanModeDelegateImpl$PanModeListenerStub;
.super Landroidx/car/app/navigation/model/IPanModeListener$Stub;
.source "PanModeDelegateImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/car/app/navigation/model/PanModeDelegateImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PanModeListenerStub"
.end annotation


# instance fields
.field private final mListener:Landroidx/car/app/navigation/model/PanModeListener;


# direct methods
.method constructor <init>(Landroidx/car/app/navigation/model/PanModeListener;)V
    .locals 0
    .param p1, "listener"    # Landroidx/car/app/navigation/model/PanModeListener;

    .line 79
    invoke-direct {p0}, Landroidx/car/app/navigation/model/IPanModeListener$Stub;-><init>()V

    .line 80
    iput-object p1, p0, Landroidx/car/app/navigation/model/PanModeDelegateImpl$PanModeListenerStub;->mListener:Landroidx/car/app/navigation/model/PanModeListener;

    .line 81
    return-void
.end method


# virtual methods
.method synthetic lambda$onPanModeChanged$0$androidx-car-app-navigation-model-PanModeDelegateImpl$PanModeListenerStub(Z)Ljava/lang/Object;
    .locals 1
    .param p1, "isInPanMode"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/car/app/serialization/BundlerException;
        }
    .end annotation

    .line 86
    iget-object v0, p0, Landroidx/car/app/navigation/model/PanModeDelegateImpl$PanModeListenerStub;->mListener:Landroidx/car/app/navigation/model/PanModeListener;

    invoke-interface {v0, p1}, Landroidx/car/app/navigation/model/PanModeListener;->onPanModeChanged(Z)V

    .line 87
    const/4 v0, 0x0

    return-object v0
.end method

.method public onPanModeChanged(ZLandroidx/car/app/IOnDoneCallback;)V
    .locals 2
    .param p1, "isInPanMode"    # Z
    .param p2, "callback"    # Landroidx/car/app/IOnDoneCallback;

    .line 85
    new-instance v0, Landroidx/car/app/navigation/model/PanModeDelegateImpl$PanModeListenerStub$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Landroidx/car/app/navigation/model/PanModeDelegateImpl$PanModeListenerStub$$ExternalSyntheticLambda0;-><init>(Landroidx/car/app/navigation/model/PanModeDelegateImpl$PanModeListenerStub;Z)V

    const-string v1, "onPanModeChanged"

    invoke-static {p2, v1, v0}, Landroidx/car/app/utils/RemoteUtils;->dispatchCallFromHost(Landroidx/car/app/IOnDoneCallback;Ljava/lang/String;Landroidx/car/app/utils/RemoteUtils$HostCall;)V

    .line 90
    return-void
.end method
