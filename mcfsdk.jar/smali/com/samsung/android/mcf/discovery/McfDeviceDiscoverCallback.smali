.class public abstract Lcom/samsung/android/mcf/discovery/McfDeviceDiscoverCallback;
.super Ljava/lang/Object;
.source "McfDeviceDiscoverCallback.java"


# static fields
.field public static final SCAN_STOPPED_BY_TIMEOUT:I = 0x3e9


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeviceDiscovered(Lcom/samsung/android/mcf/McfDevice;I)V
    .locals 0
    .param p1, "mcfDevice"    # Lcom/samsung/android/mcf/McfDevice;
    .param p2, "arg1"    # I

    .line 16
    return-void
.end method

.method public onDeviceRemoved(Lcom/samsung/android/mcf/McfDevice;I)V
    .locals 0
    .param p1, "mcfDevice"    # Lcom/samsung/android/mcf/McfDevice;
    .param p2, "arg1"    # I

    .line 19
    return-void
.end method

.method public onDiscoveryStarted(I)V
    .locals 0
    .param p1, "status"    # I

    .line 22
    return-void
.end method

.method public onDiscoveryStopped(I)V
    .locals 0
    .param p1, "status"    # I

    .line 25
    return-void
.end method
