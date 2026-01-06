.class public abstract Lcom/samsung/android/mcf/handover/McfHandoverCallback;
.super Ljava/lang/Object;
.source "McfHandoverCallback.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectionFailed(Lcom/samsung/android/mcf/McfDevice;I)V
    .locals 0
    .param p1, "mcfDevice"    # Lcom/samsung/android/mcf/McfDevice;
    .param p2, "error"    # I

    .line 53
    return-void
.end method

.method public onConnectionStateChanged(Lcom/samsung/android/mcf/McfDevice;I)V
    .locals 0
    .param p1, "mcfDevice"    # Lcom/samsung/android/mcf/McfDevice;
    .param p2, "state"    # I

    .line 44
    return-void
.end method

.method public onHandoverRequest(Lcom/samsung/android/mcf/McfDevice;II)V
    .locals 0
    .param p1, "mcfDevice"    # Lcom/samsung/android/mcf/McfDevice;
    .param p2, "status"    # I
    .param p3, "range"    # I

    .line 16
    return-void
.end method

.method public onHandoverResult(Lcom/samsung/android/mcf/McfDevice;I)V
    .locals 0
    .param p1, "mcfDevice"    # Lcom/samsung/android/mcf/McfDevice;
    .param p2, "state"    # I

    .line 35
    return-void
.end method

.method public onReceiveHandoverResponse(Lcom/samsung/android/mcf/McfDevice;I)V
    .locals 0
    .param p1, "device"    # Lcom/samsung/android/mcf/McfDevice;
    .param p2, "response"    # I

    .line 26
    return-void
.end method
