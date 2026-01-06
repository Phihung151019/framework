.class public interface abstract Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$IServiceListener;
.super Ljava/lang/Object;
.source "SemInputExternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IServiceListener"
.end annotation


# virtual methods
.method public onBodyDetected(I)V
    .locals 0
    .param p1, "mode"    # I

    .line 42
    return-void
.end method

.method public onDesktopModeStateChanged(I)V
    .locals 0
    .param p1, "mode"    # I

    .line 40
    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 0
    .param p1, "rotation"    # I

    .line 38
    return-void
.end method

.method public onDisplayStateChanged(ZIII)V
    .locals 0
    .param p1, "isEarly"    # Z
    .param p2, "stateLogical"    # I
    .param p3, "statePhysical"    # I
    .param p4, "displayType"    # I

    .line 37
    return-void
.end method

.method public onFoldStateChanged(Z)V
    .locals 0
    .param p1, "folded"    # Z

    .line 39
    return-void
.end method

.method public onLpScanSensorChanged(I)V
    .locals 0
    .param p1, "mode"    # I

    .line 41
    return-void
.end method

.method public onSemUEvent(Ljava/lang/String;)V
    .locals 0
    .param p1, "result"    # Ljava/lang/String;

    .line 36
    return-void
.end method
