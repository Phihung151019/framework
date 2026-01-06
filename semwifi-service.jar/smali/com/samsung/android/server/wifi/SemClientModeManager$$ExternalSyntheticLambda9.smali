.class public final synthetic Lcom/samsung/android/server/wifi/SemClientModeManager$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Lcom/samsung/android/server/wifi/ClientModeImplStateListener;
.implements Lcom/samsung/android/server/wifi/util/ScanPool$ScanFailedListener;


# instance fields
.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$$ExternalSyntheticLambda9;->f$0:Ljava/lang/Object;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onNetworkStateChanged(Ljava/lang/String;Lcom/samsung/android/server/wifi/WifiConnectionInfo;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$$ExternalSyntheticLambda9;->f$0:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lcom/samsung/android/server/wifi/SemClientModeManager;

    .line 4
    .line 5
    invoke-static {p0, p1, p2}, Lcom/samsung/android/server/wifi/SemClientModeManager;->$r8$lambda$GjHKt4tGNNYiXQeYtAOpCQ3gXSY(Lcom/samsung/android/server/wifi/SemClientModeManager;Ljava/lang/String;Lcom/samsung/android/server/wifi/WifiConnectionInfo;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public onScanFailed(ILjava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$$ExternalSyntheticLambda9;->f$0:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine$IdleState;

    .line 4
    .line 5
    invoke-static {p0, p1, p2}, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine$IdleState;->$r8$lambda$Sp_op5-88sQk8B6HUkWrYwcjm1U(Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine$IdleState;ILjava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
