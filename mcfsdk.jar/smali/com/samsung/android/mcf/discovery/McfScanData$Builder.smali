.class public final Lcom/samsung/android/mcf/discovery/McfScanData$Builder;
.super Ljava/lang/Object;
.source "McfScanData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mcf/discovery/McfScanData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private bleSID:I

.field private contentsFilter:I

.field private needScreenOffScan:Z

.field private reportType:I

.field private scanMode:I

.field private timeout:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    const/16 v0, 0x7530

    iput v0, p0, Lcom/samsung/android/mcf/discovery/McfScanData$Builder;->timeout:I

    .line 172
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/mcf/discovery/McfScanData$Builder;->contentsFilter:I

    return-void
.end method


# virtual methods
.method public build()Lcom/samsung/android/mcf/discovery/McfScanData;
    .locals 9

    .line 229
    iget v0, p0, Lcom/samsung/android/mcf/discovery/McfScanData$Builder;->bleSID:I

    if-eqz v0, :cond_2

    .line 232
    iget v0, p0, Lcom/samsung/android/mcf/discovery/McfScanData$Builder;->scanMode:I

    if-lez v0, :cond_1

    iget v0, p0, Lcom/samsung/android/mcf/discovery/McfScanData$Builder;->timeout:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/mcf/discovery/McfScanData$Builder;->timeout:I

    const v1, 0x36ee80

    if-gt v0, v1, :cond_0

    goto :goto_0

    .line 233
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "scanMode is too strong to perform a long timeout set scan"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 235
    :cond_1
    :goto_0
    new-instance v2, Lcom/samsung/android/mcf/discovery/McfScanData;

    iget v3, p0, Lcom/samsung/android/mcf/discovery/McfScanData$Builder;->bleSID:I

    iget v4, p0, Lcom/samsung/android/mcf/discovery/McfScanData$Builder;->scanMode:I

    iget-boolean v5, p0, Lcom/samsung/android/mcf/discovery/McfScanData$Builder;->needScreenOffScan:Z

    iget v6, p0, Lcom/samsung/android/mcf/discovery/McfScanData$Builder;->reportType:I

    iget v7, p0, Lcom/samsung/android/mcf/discovery/McfScanData$Builder;->timeout:I

    iget v8, p0, Lcom/samsung/android/mcf/discovery/McfScanData$Builder;->contentsFilter:I

    invoke-direct/range {v2 .. v8}, Lcom/samsung/android/mcf/discovery/McfScanData;-><init>(IIZIII)V

    return-object v2

    .line 230
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "setScanData is Requirement"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setContentsFilter(I)Lcom/samsung/android/mcf/discovery/McfScanData$Builder;
    .locals 0
    .param p1, "contentsFilter"    # I

    .line 224
    iput p1, p0, Lcom/samsung/android/mcf/discovery/McfScanData$Builder;->contentsFilter:I

    .line 225
    return-object p0
.end method

.method public setRssiReport(I)Lcom/samsung/android/mcf/discovery/McfScanData$Builder;
    .locals 0
    .param p1, "reportType"    # I

    .line 194
    iput p1, p0, Lcom/samsung/android/mcf/discovery/McfScanData$Builder;->reportType:I

    .line 195
    return-object p0
.end method

.method public setScanData(IZZ)Lcom/samsung/android/mcf/discovery/McfScanData$Builder;
    .locals 2
    .param p1, "appid"    # I
    .param p2, "general"    # Z
    .param p3, "extend"    # Z

    .line 175
    if-eq p2, p3, :cond_0

    .line 179
    invoke-static {p1, p2, p3}, Lcom/samsung/android/mcf/common/Utils;->getBleServiceId(IZZ)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/mcf/discovery/McfScanData$Builder;->bleSID:I

    .line 180
    return-object p0

    .line 176
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "wrong scan data"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setScanMode(I)Lcom/samsung/android/mcf/discovery/McfScanData$Builder;
    .locals 0
    .param p1, "scanMode"    # I

    .line 184
    iput p1, p0, Lcom/samsung/android/mcf/discovery/McfScanData$Builder;->scanMode:I

    .line 185
    return-object p0
.end method

.method public setScreenOffScan(Z)Lcom/samsung/android/mcf/discovery/McfScanData$Builder;
    .locals 0
    .param p1, "needScreenOffScan"    # Z

    .line 189
    iput-boolean p1, p0, Lcom/samsung/android/mcf/discovery/McfScanData$Builder;->needScreenOffScan:Z

    .line 190
    return-object p0
.end method

.method public setTimeout(I)Lcom/samsung/android/mcf/discovery/McfScanData$Builder;
    .locals 2
    .param p1, "timeout"    # I

    .line 207
    if-ltz p1, :cond_0

    const v0, 0x36ee80

    if-gt p1, v0, :cond_0

    .line 210
    iput p1, p0, Lcom/samsung/android/mcf/discovery/McfScanData$Builder;->timeout:I

    .line 211
    return-object p0

    .line 208
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "timeout is out of range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
