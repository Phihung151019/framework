.class Lcom/android/internal/telephony/satellite/SatelliteSessionController$DatagramTransferState;
.super Ljava/lang/Object;
.source "SatelliteSessionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/satellite/SatelliteSessionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DatagramTransferState"
.end annotation


# instance fields
.field public blacklist datagramType:I

.field public blacklist receiveState:I

.field public blacklist sendState:I


# direct methods
.method constructor blacklist <init>(III)V
    .locals 0

    .line 760
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 761
    iput p1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$DatagramTransferState;->sendState:I

    .line 762
    iput p2, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$DatagramTransferState;->receiveState:I

    .line 763
    iput p3, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$DatagramTransferState;->datagramType:I

    return-void
.end method


# virtual methods
.method public blacklist isIdle()Z
    .locals 1

    .line 767
    iget v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$DatagramTransferState;->sendState:I

    if-nez v0, :cond_0

    iget p0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$DatagramTransferState;->receiveState:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
