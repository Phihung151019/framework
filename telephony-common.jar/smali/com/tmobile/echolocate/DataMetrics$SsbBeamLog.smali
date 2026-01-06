.class Lcom/tmobile/echolocate/DataMetrics$SsbBeamLog;
.super Ljava/lang/Object;
.source "DataMetrics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tmobile/echolocate/DataMetrics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SsbBeamLog"
.end annotation


# instance fields
.field private greylist pci:I

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

    .line 282
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 283
    iput-wide v0, p0, Lcom/tmobile/echolocate/DataMetrics$SsbBeamLog;->timestamp:J

    const/4 p1, -0x2

    .line 284
    iput p1, p0, Lcom/tmobile/echolocate/DataMetrics$SsbBeamLog;->pci:I

    .line 285
    iput p1, p0, Lcom/tmobile/echolocate/DataMetrics$SsbBeamLog;->ssbBeamIndex:I

    const/high16 p1, -0x3cea0000    # -150.0f

    .line 286
    iput p1, p0, Lcom/tmobile/echolocate/DataMetrics$SsbBeamLog;->ssbBrsrp:F

    const/high16 p1, -0x3db80000    # -50.0f

    .line 287
    iput p1, p0, Lcom/tmobile/echolocate/DataMetrics$SsbBeamLog;->ssbBrsrq:F

    .line 288
    iput p1, p0, Lcom/tmobile/echolocate/DataMetrics$SsbBeamLog;->ssbSnr:F

    return-void
.end method


# virtual methods
.method public greylist getPci()I
    .locals 0

    .line 308
    iget p0, p0, Lcom/tmobile/echolocate/DataMetrics$SsbBeamLog;->pci:I

    return p0
.end method

.method public greylist setPci(I)V
    .locals 0

    .line 300
    iput p1, p0, Lcom/tmobile/echolocate/DataMetrics$SsbBeamLog;->pci:I

    return-void
.end method

.method public greylist setSsbBrsrp(F)V
    .locals 0

    .line 324
    iput p1, p0, Lcom/tmobile/echolocate/DataMetrics$SsbBeamLog;->ssbBrsrp:F

    return-void
.end method

.method public greylist setTimeStamp(J)V
    .locals 0

    .line 292
    iput-wide p1, p0, Lcom/tmobile/echolocate/DataMetrics$SsbBeamLog;->timestamp:J

    return-void
.end method
