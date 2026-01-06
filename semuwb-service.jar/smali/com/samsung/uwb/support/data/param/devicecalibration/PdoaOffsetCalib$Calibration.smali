.class Lcom/samsung/uwb/support/data/param/devicecalibration/PdoaOffsetCalib$Calibration;
.super Ljava/lang/Object;
.source "PdoaOffsetCalib.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/uwb/support/data/param/devicecalibration/PdoaOffsetCalib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Calibration"
.end annotation


# instance fields
.field private pdoaOffset:F

.field private rxPairId:B


# direct methods
.method public constructor <init>(BF)V
    .locals 1
    .param p1, "rxPairId"    # B
    .param p2, "pdoaOffset"    # F

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/samsung/uwb/support/data/param/devicecalibration/PdoaOffsetCalib$Calibration;->rxPairId:B

    .line 82
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/uwb/support/data/param/devicecalibration/PdoaOffsetCalib$Calibration;->pdoaOffset:F

    .line 85
    iput-byte p1, p0, Lcom/samsung/uwb/support/data/param/devicecalibration/PdoaOffsetCalib$Calibration;->rxPairId:B

    .line 86
    iput p2, p0, Lcom/samsung/uwb/support/data/param/devicecalibration/PdoaOffsetCalib$Calibration;->pdoaOffset:F

    .line 87
    return-void
.end method


# virtual methods
.method public getPdoaOffset()F
    .locals 1

    .line 94
    iget v0, p0, Lcom/samsung/uwb/support/data/param/devicecalibration/PdoaOffsetCalib$Calibration;->pdoaOffset:F

    return v0
.end method

.method public getRxPairId()B
    .locals 1

    .line 90
    iget-byte v0, p0, Lcom/samsung/uwb/support/data/param/devicecalibration/PdoaOffsetCalib$Calibration;->rxPairId:B

    return v0
.end method
