.class Lcom/samsung/uwb/support/data/param/devicecalibration/TxPowerPerAntenna$Calibration;
.super Ljava/lang/Object;
.source "TxPowerPerAntenna.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/uwb/support/data/param/devicecalibration/TxPowerPerAntenna;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Calibration"
.end annotation


# instance fields
.field private peakTxPower:S

.field private rmsTxPower:S

.field private txAntId:B


# direct methods
.method public constructor <init>(BSS)V
    .locals 1
    .param p1, "txAntId"    # B
    .param p2, "peakTxPower"    # S
    .param p3, "rmsTxPower"    # S

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/samsung/uwb/support/data/param/devicecalibration/TxPowerPerAntenna$Calibration;->txAntId:B

    .line 90
    iput-short v0, p0, Lcom/samsung/uwb/support/data/param/devicecalibration/TxPowerPerAntenna$Calibration;->peakTxPower:S

    .line 91
    iput-short v0, p0, Lcom/samsung/uwb/support/data/param/devicecalibration/TxPowerPerAntenna$Calibration;->rmsTxPower:S

    .line 94
    iput-byte p1, p0, Lcom/samsung/uwb/support/data/param/devicecalibration/TxPowerPerAntenna$Calibration;->txAntId:B

    .line 95
    iput-short p2, p0, Lcom/samsung/uwb/support/data/param/devicecalibration/TxPowerPerAntenna$Calibration;->peakTxPower:S

    .line 96
    iput-short p3, p0, Lcom/samsung/uwb/support/data/param/devicecalibration/TxPowerPerAntenna$Calibration;->rmsTxPower:S

    .line 97
    return-void
.end method


# virtual methods
.method public getPeakTxPower()S
    .locals 1

    .line 104
    iget-short v0, p0, Lcom/samsung/uwb/support/data/param/devicecalibration/TxPowerPerAntenna$Calibration;->peakTxPower:S

    return v0
.end method

.method public getRmsTxPower()S
    .locals 1

    .line 108
    iget-short v0, p0, Lcom/samsung/uwb/support/data/param/devicecalibration/TxPowerPerAntenna$Calibration;->rmsTxPower:S

    return v0
.end method

.method public getTxAntId()B
    .locals 1

    .line 100
    iget-byte v0, p0, Lcom/samsung/uwb/support/data/param/devicecalibration/TxPowerPerAntenna$Calibration;->txAntId:B

    return v0
.end method
