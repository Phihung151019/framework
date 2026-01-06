.class public abstract Lcom/samsung/android/knox/zt/devicetrust/monitor/SignalMonitoringListener;
.super Ljava/lang/Object;
.source "qb/104190634 99f1dbf964410b239c7a01052e351590f66e8dc00afbe8338c9b357cd98f1b2a"

# interfaces
.implements Lcom/samsung/android/knox/zt/devicetrust/monitor/IMonitoringListener;


# direct methods
.method public constructor greylist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final blacklist checkUrlReputation(Ljava/lang/String;)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final blacklist onEvent(ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public final blacklist onEventGeneralized(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final blacklist onEventSimplified(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public abstract blacklist onSignal(Ljava/lang/String;)I
.end method

.method public final blacklist onUnauthorizedAccessDetected(IIIJIILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method
