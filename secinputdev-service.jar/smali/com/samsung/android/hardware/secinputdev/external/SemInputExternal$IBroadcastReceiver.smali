.class public interface abstract Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$IBroadcastReceiver;
.super Ljava/lang/Object;
.source "SemInputExternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IBroadcastReceiver"
.end annotation


# virtual methods
.method public onBatteryChanged(II)V
    .locals 0
    .param p1, "status"    # I
    .param p2, "type"    # I

    .line 46
    return-void
.end method

.method public onBatteryTxIdChanged(I)V
    .locals 0
    .param p1, "tx_id"    # I

    .line 47
    return-void
.end method

.method public onCoverAttached(ZI)V
    .locals 0
    .param p1, "attached"    # Z
    .param p2, "cover_type"    # I

    .line 51
    return-void
.end method

.method public onGameMode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "gameMode"    # Ljava/lang/String;
    .param p2, "scanRate"    # Ljava/lang/String;
    .param p3, "fastResponse"    # Ljava/lang/String;

    .line 50
    return-void
.end method

.method public onLazybootCompleted()V
    .locals 0

    .line 49
    return-void
.end method

.method public onRFDetected(Z)V
    .locals 0
    .param p1, "on"    # Z

    .line 53
    return-void
.end method

.method public onShutdown()V
    .locals 0

    .line 48
    return-void
.end method

.method public onUserSwitched()V
    .locals 0

    .line 52
    return-void
.end method
