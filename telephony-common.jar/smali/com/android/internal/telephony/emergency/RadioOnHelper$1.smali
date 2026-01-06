.class Lcom/android/internal/telephony/emergency/RadioOnHelper$1;
.super Lcom/android/internal/telephony/IIntegerConsumer$Stub;
.source "RadioOnHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/emergency/RadioOnHelper;->powerOffSatellite()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$satelliteController:Lcom/android/internal/telephony/satellite/SatelliteController;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/emergency/RadioOnHelper;Lcom/android/internal/telephony/satellite/SatelliteController;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 182
    iput-object p2, p0, Lcom/android/internal/telephony/emergency/RadioOnHelper$1;->val$satelliteController:Lcom/android/internal/telephony/satellite/SatelliteController;

    invoke-direct {p0}, Lcom/android/internal/telephony/IIntegerConsumer$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist accept(I)V
    .locals 0

    if-nez p1, :cond_0

    .line 187
    iget-object p0, p0, Lcom/android/internal/telephony/emergency/RadioOnHelper$1;->val$satelliteController:Lcom/android/internal/telephony/satellite/SatelliteController;

    const/4 p1, 0x6

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteController;->setEndCauseforSatelliteBigdata(I)V

    :cond_0
    return-void
.end method
