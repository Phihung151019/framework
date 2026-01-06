.class Lcom/android/internal/telephony/satellite/SatelliteController$16;
.super Lcom/android/internal/telephony/IIntegerConsumer$Stub;
.source "SatelliteController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/satellite/SatelliteController;->handleEventSatelliteSupportedStateChanged(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/satellite/SatelliteController;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/satellite/SatelliteController;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 5326
    iput-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteController$16;->this$0:Lcom/android/internal/telephony/satellite/SatelliteController;

    invoke-direct {p0}, Lcom/android/internal/telephony/IIntegerConsumer$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist accept(I)V
    .locals 3

    .line 5329
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteController$16;->this$0:Lcom/android/internal/telephony/satellite/SatelliteController;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleSatelliteSupportedStateChangedEvent: request satellite disable, result="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/satellite/SatelliteController;->-$$Nest$mplogd(Lcom/android/internal/telephony/satellite/SatelliteController;Ljava/lang/String;)V

    if-nez p1, :cond_0

    .line 5333
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteController$16;->this$0:Lcom/android/internal/telephony/satellite/SatelliteController;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteController;->setEndCauseforSatelliteBigdata(I)V

    :cond_0
    return-void
.end method
