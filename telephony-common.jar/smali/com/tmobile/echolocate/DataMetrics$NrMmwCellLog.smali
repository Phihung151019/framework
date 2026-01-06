.class Lcom/tmobile/echolocate/DataMetrics$NrMmwCellLog;
.super Ljava/lang/Object;
.source "DataMetrics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tmobile/echolocate/DataMetrics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NrMmwCellLog"
.end annotation


# instance fields
.field private greylist networkType:I

.field private greylist nrBandName:Ljava/lang/String;

.field private greylist nrBandwidth:I

.field private greylist nrPscellPci:I

.field private greylist numberOfSsbBeams:I

.field private greylist pdschBeamIndex:I

.field private greylist pdschBrsrp:F

.field private greylist pdschBrsrq:F

.field private greylist pdschSnr:F

.field private greylist ssbBeamIndex:I

.field private greylist ssbBrsrp:F

.field private greylist ssbBrsrq:F

.field private greylist ssbSnr:F

.field private greylist timestamp:J


# direct methods
.method public constructor greylist <init>(Lcom/tmobile/echolocate/DataMetrics;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 360
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 361
    iput-wide v0, p0, Lcom/tmobile/echolocate/DataMetrics$NrMmwCellLog;->timestamp:J

    const/4 p1, -0x2

    .line 362
    iput p1, p0, Lcom/tmobile/echolocate/DataMetrics$NrMmwCellLog;->networkType:I

    .line 363
    iput p1, p0, Lcom/tmobile/echolocate/DataMetrics$NrMmwCellLog;->nrPscellPci:I

    .line 364
    iput p1, p0, Lcom/tmobile/echolocate/DataMetrics$NrMmwCellLog;->ssbBeamIndex:I

    const/high16 v0, -0x3cea0000    # -150.0f

    .line 365
    iput v0, p0, Lcom/tmobile/echolocate/DataMetrics$NrMmwCellLog;->ssbBrsrp:F

    const/high16 v1, -0x3db80000    # -50.0f

    .line 366
    iput v1, p0, Lcom/tmobile/echolocate/DataMetrics$NrMmwCellLog;->ssbBrsrq:F

    .line 367
    iput v1, p0, Lcom/tmobile/echolocate/DataMetrics$NrMmwCellLog;->ssbSnr:F

    .line 368
    iput p1, p0, Lcom/tmobile/echolocate/DataMetrics$NrMmwCellLog;->pdschBeamIndex:I

    .line 369
    iput v0, p0, Lcom/tmobile/echolocate/DataMetrics$NrMmwCellLog;->pdschBrsrp:F

    .line 370
    iput v1, p0, Lcom/tmobile/echolocate/DataMetrics$NrMmwCellLog;->pdschBrsrq:F

    .line 371
    iput v1, p0, Lcom/tmobile/echolocate/DataMetrics$NrMmwCellLog;->pdschSnr:F

    .line 372
    const-string v0, "-2"

    iput-object v0, p0, Lcom/tmobile/echolocate/DataMetrics$NrMmwCellLog;->nrBandName:Ljava/lang/String;

    .line 373
    iput p1, p0, Lcom/tmobile/echolocate/DataMetrics$NrMmwCellLog;->nrBandwidth:I

    .line 374
    iput p1, p0, Lcom/tmobile/echolocate/DataMetrics$NrMmwCellLog;->numberOfSsbBeams:I

    return-void
.end method


# virtual methods
.method public greylist getNrPscellPci()I
    .locals 0

    .line 398
    iget p0, p0, Lcom/tmobile/echolocate/DataMetrics$NrMmwCellLog;->nrPscellPci:I

    return p0
.end method

.method public greylist setNetworkType(I)V
    .locals 0

    .line 386
    iput p1, p0, Lcom/tmobile/echolocate/DataMetrics$NrMmwCellLog;->networkType:I

    return-void
.end method

.method public greylist setNrPscellPci(I)V
    .locals 0

    .line 394
    iput p1, p0, Lcom/tmobile/echolocate/DataMetrics$NrMmwCellLog;->nrPscellPci:I

    return-void
.end method

.method public greylist setSsbBrsrp(F)V
    .locals 0

    .line 417
    iput p1, p0, Lcom/tmobile/echolocate/DataMetrics$NrMmwCellLog;->ssbBrsrp:F

    return-void
.end method

.method public greylist setSsbBrsrq(F)V
    .locals 0

    .line 431
    iput p1, p0, Lcom/tmobile/echolocate/DataMetrics$NrMmwCellLog;->ssbBrsrq:F

    return-void
.end method

.method public greylist setSsbBsnr(F)V
    .locals 0

    .line 446
    iput p1, p0, Lcom/tmobile/echolocate/DataMetrics$NrMmwCellLog;->ssbSnr:F

    return-void
.end method

.method public greylist setTimeStamp(J)V
    .locals 0

    .line 378
    iput-wide p1, p0, Lcom/tmobile/echolocate/DataMetrics$NrMmwCellLog;->timestamp:J

    return-void
.end method
