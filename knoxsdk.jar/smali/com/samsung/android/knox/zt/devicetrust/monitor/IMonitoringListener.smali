.class public interface abstract Lcom/samsung/android/knox/zt/devicetrust/monitor/IMonitoringListener;
.super Ljava/lang/Object;
.source "qb/104190634 99f1dbf964410b239c7a01052e351590f66e8dc00afbe8338c9b357cd98f1b2a"


# virtual methods
.method public abstract blacklist checkUrlReputation(Ljava/lang/String;)I
.end method

.method public abstract blacklist onEvent(ILandroid/os/Bundle;)V
.end method

.method public abstract blacklist onEventGeneralized(ILjava/lang/String;)V
.end method

.method public abstract blacklist onEventSimplified(ILjava/lang/String;)V
.end method

.method public abstract blacklist onSignal(Ljava/lang/String;)I
.end method

.method public abstract blacklist onUnauthorizedAccessDetected(IIIJIILjava/lang/String;Ljava/lang/String;)V
.end method
