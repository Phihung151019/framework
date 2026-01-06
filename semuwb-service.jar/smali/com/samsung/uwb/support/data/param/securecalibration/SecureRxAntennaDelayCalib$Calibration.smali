.class Lcom/samsung/uwb/support/data/param/securecalibration/SecureRxAntennaDelayCalib$Calibration;
.super Ljava/lang/Object;
.source "SecureRxAntennaDelayCalib.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/uwb/support/data/param/securecalibration/SecureRxAntennaDelayCalib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Calibration"
.end annotation


# instance fields
.field private delayOffset:F

.field private rxAntId:B


# direct methods
.method public constructor <init>(BF)V
    .locals 1
    .param p1, "rxPairId"    # B
    .param p2, "delayOffset"    # F

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/samsung/uwb/support/data/param/securecalibration/SecureRxAntennaDelayCalib$Calibration;->rxAntId:B

    .line 84
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/uwb/support/data/param/securecalibration/SecureRxAntennaDelayCalib$Calibration;->delayOffset:F

    .line 87
    iput-byte p1, p0, Lcom/samsung/uwb/support/data/param/securecalibration/SecureRxAntennaDelayCalib$Calibration;->rxAntId:B

    .line 88
    iput p2, p0, Lcom/samsung/uwb/support/data/param/securecalibration/SecureRxAntennaDelayCalib$Calibration;->delayOffset:F

    .line 89
    return-void
.end method


# virtual methods
.method public getDelayOffset()F
    .locals 1

    .line 96
    iget v0, p0, Lcom/samsung/uwb/support/data/param/securecalibration/SecureRxAntennaDelayCalib$Calibration;->delayOffset:F

    return v0
.end method

.method public getRxAntId()B
    .locals 1

    .line 92
    iget-byte v0, p0, Lcom/samsung/uwb/support/data/param/securecalibration/SecureRxAntennaDelayCalib$Calibration;->rxAntId:B

    return v0
.end method
