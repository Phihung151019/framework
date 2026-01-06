.class public final Lcom/samsung/android/mcf/ble/BleScanSettings$Builder;
.super Ljava/lang/Object;
.source "BleScanSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mcf/ble/BleScanSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mPhy:I

.field private mScanFilterRssiValue:I

.field private mScanMode:I

.field private mTimeout:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 271
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 272
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/mcf/ble/BleScanSettings$Builder;->mScanMode:I

    .line 273
    const/16 v0, -0x80

    iput v0, p0, Lcom/samsung/android/mcf/ble/BleScanSettings$Builder;->mScanFilterRssiValue:I

    .line 274
    const/16 v0, 0x7530

    iput v0, p0, Lcom/samsung/android/mcf/ble/BleScanSettings$Builder;->mTimeout:I

    return-void
.end method


# virtual methods
.method public build()Lcom/samsung/android/mcf/ble/BleScanSettings;
    .locals 8

    .line 352
    iget v0, p0, Lcom/samsung/android/mcf/ble/BleScanSettings$Builder;->mScanMode:I

    if-lez v0, :cond_1

    iget v0, p0, Lcom/samsung/android/mcf/ble/BleScanSettings$Builder;->mTimeout:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/mcf/ble/BleScanSettings$Builder;->mTimeout:I

    const v1, 0x36ee80

    if-gt v0, v1, :cond_0

    goto :goto_0

    .line 353
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "scanMode is too strong to perform a long timeout set scan"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 355
    :cond_1
    :goto_0
    new-instance v2, Lcom/samsung/android/mcf/ble/BleScanSettings;

    iget v3, p0, Lcom/samsung/android/mcf/ble/BleScanSettings$Builder;->mScanMode:I

    iget v4, p0, Lcom/samsung/android/mcf/ble/BleScanSettings$Builder;->mScanFilterRssiValue:I

    iget v5, p0, Lcom/samsung/android/mcf/ble/BleScanSettings$Builder;->mTimeout:I

    iget v6, p0, Lcom/samsung/android/mcf/ble/BleScanSettings$Builder;->mPhy:I

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/mcf/ble/BleScanSettings;-><init>(IIIILcom/samsung/android/mcf/ble/BleScanSettings$1;)V

    return-object v2
.end method

.method public setPhy(I)Lcom/samsung/android/mcf/ble/BleScanSettings$Builder;
    .locals 2
    .param p1, "phy"    # I

    .line 338
    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/16 v0, 0xff

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 340
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid phy value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 342
    :cond_1
    :goto_0
    iput p1, p0, Lcom/samsung/android/mcf/ble/BleScanSettings$Builder;->mPhy:I

    .line 343
    return-object p0
.end method

.method public setScanFilterRssiThreshold(I)Lcom/samsung/android/mcf/ble/BleScanSettings$Builder;
    .locals 3
    .param p1, "rssi"    # I

    .line 302
    const/16 v0, -0x80

    if-lt p1, v0, :cond_0

    const/16 v0, 0x14

    if-gt p1, v0, :cond_0

    .line 305
    iput p1, p0, Lcom/samsung/android/mcf/ble/BleScanSettings$Builder;->mScanFilterRssiValue:I

    .line 306
    return-object p0

    .line 303
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parameter is out of range of spec, rssi: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setScanMode(I)Lcom/samsung/android/mcf/ble/BleScanSettings$Builder;
    .locals 3
    .param p1, "scanMode"    # I

    .line 287
    if-ltz p1, :cond_0

    const/4 v0, 0x3

    if-gt p1, v0, :cond_0

    .line 290
    iput p1, p0, Lcom/samsung/android/mcf/ble/BleScanSettings$Builder;->mScanMode:I

    .line 291
    return-object p0

    .line 288
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parameter is out of range of spec, scanMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setTimeout(I)Lcom/samsung/android/mcf/ble/BleScanSettings$Builder;
    .locals 2
    .param p1, "timeout"    # I

    .line 318
    if-ltz p1, :cond_0

    const v0, 0x36ee80

    if-gt p1, v0, :cond_0

    .line 321
    iput p1, p0, Lcom/samsung/android/mcf/ble/BleScanSettings$Builder;->mTimeout:I

    .line 322
    return-object p0

    .line 319
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "timeout is out of range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
