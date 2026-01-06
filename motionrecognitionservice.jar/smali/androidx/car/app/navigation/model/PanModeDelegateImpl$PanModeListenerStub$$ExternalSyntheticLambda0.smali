.class public final synthetic Landroidx/car/app/navigation/model/PanModeDelegateImpl$PanModeListenerStub$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/car/app/utils/RemoteUtils$HostCall;


# instance fields
.field public final synthetic f$0:Landroidx/car/app/navigation/model/PanModeDelegateImpl$PanModeListenerStub;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Landroidx/car/app/navigation/model/PanModeDelegateImpl$PanModeListenerStub;Z)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/car/app/navigation/model/PanModeDelegateImpl$PanModeListenerStub$$ExternalSyntheticLambda0;->f$0:Landroidx/car/app/navigation/model/PanModeDelegateImpl$PanModeListenerStub;

    iput-boolean p2, p0, Landroidx/car/app/navigation/model/PanModeDelegateImpl$PanModeListenerStub$$ExternalSyntheticLambda0;->f$1:Z

    return-void
.end method


# virtual methods
.method public final dispatch()Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Landroidx/car/app/navigation/model/PanModeDelegateImpl$PanModeListenerStub$$ExternalSyntheticLambda0;->f$0:Landroidx/car/app/navigation/model/PanModeDelegateImpl$PanModeListenerStub;

    iget-boolean v1, p0, Landroidx/car/app/navigation/model/PanModeDelegateImpl$PanModeListenerStub$$ExternalSyntheticLambda0;->f$1:Z

    invoke-virtual {v0, v1}, Landroidx/car/app/navigation/model/PanModeDelegateImpl$PanModeListenerStub;->lambda$onPanModeChanged$0$androidx-car-app-navigation-model-PanModeDelegateImpl$PanModeListenerStub(Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
