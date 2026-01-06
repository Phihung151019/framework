.class Lcom/samsung/uwb/support/data/param/devicecalibration/AoaPhaseFlipAntennaSpacing$Calibration;
.super Ljava/lang/Object;
.source "AoaPhaseFlipAntennaSpacing.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/uwb/support/data/param/devicecalibration/AoaPhaseFlipAntennaSpacing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Calibration"
.end annotation


# instance fields
.field private antennaSpacing:F

.field private aoaFlip:Z

.field private rxPairId:B


# direct methods
.method public constructor <init>(BFZ)V
    .locals 2
    .param p1, "rxPairId"    # B
    .param p2, "antennaSpacing"    # F
    .param p3, "aoaFlip"    # Z

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/samsung/uwb/support/data/param/devicecalibration/AoaPhaseFlipAntennaSpacing$Calibration;->rxPairId:B

    .line 95
    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/uwb/support/data/param/devicecalibration/AoaPhaseFlipAntennaSpacing$Calibration;->antennaSpacing:F

    .line 97
    iput-boolean v0, p0, Lcom/samsung/uwb/support/data/param/devicecalibration/AoaPhaseFlipAntennaSpacing$Calibration;->aoaFlip:Z

    .line 100
    iput-byte p1, p0, Lcom/samsung/uwb/support/data/param/devicecalibration/AoaPhaseFlipAntennaSpacing$Calibration;->rxPairId:B

    .line 101
    iput p2, p0, Lcom/samsung/uwb/support/data/param/devicecalibration/AoaPhaseFlipAntennaSpacing$Calibration;->antennaSpacing:F

    .line 102
    iput-boolean p3, p0, Lcom/samsung/uwb/support/data/param/devicecalibration/AoaPhaseFlipAntennaSpacing$Calibration;->aoaFlip:Z

    .line 103
    return-void
.end method


# virtual methods
.method public getAntennaSpacing()F
    .locals 1

    .line 111
    iget v0, p0, Lcom/samsung/uwb/support/data/param/devicecalibration/AoaPhaseFlipAntennaSpacing$Calibration;->antennaSpacing:F

    return v0
.end method

.method public getRxPairId()B
    .locals 1

    .line 106
    iget-byte v0, p0, Lcom/samsung/uwb/support/data/param/devicecalibration/AoaPhaseFlipAntennaSpacing$Calibration;->rxPairId:B

    return v0
.end method

.method public isAoaFlip()Z
    .locals 1

    .line 115
    iget-boolean v0, p0, Lcom/samsung/uwb/support/data/param/devicecalibration/AoaPhaseFlipAntennaSpacing$Calibration;->aoaFlip:Z

    return v0
.end method
