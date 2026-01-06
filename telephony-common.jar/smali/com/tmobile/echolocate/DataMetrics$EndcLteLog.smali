.class Lcom/tmobile/echolocate/DataMetrics$EndcLteLog;
.super Ljava/lang/Object;
.source "DataMetrics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tmobile/echolocate/DataMetrics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EndcLteLog"
.end annotation


# instance fields
.field private greylist anchorLteCid:J

.field private greylist anchorLtePci:I

.field private greylist endcCapability:I

.field private greylist lteRrcState:I

.field private greylist networkType:I

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

    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 216
    iput-wide v0, p0, Lcom/tmobile/echolocate/DataMetrics$EndcLteLog;->timestamp:J

    const/4 p1, -0x2

    .line 217
    iput p1, p0, Lcom/tmobile/echolocate/DataMetrics$EndcLteLog;->networkType:I

    const-wide/16 v0, -0x2

    .line 218
    iput-wide v0, p0, Lcom/tmobile/echolocate/DataMetrics$EndcLteLog;->anchorLteCid:J

    .line 219
    iput p1, p0, Lcom/tmobile/echolocate/DataMetrics$EndcLteLog;->anchorLtePci:I

    .line 220
    iput p1, p0, Lcom/tmobile/echolocate/DataMetrics$EndcLteLog;->endcCapability:I

    .line 221
    iput p1, p0, Lcom/tmobile/echolocate/DataMetrics$EndcLteLog;->lteRrcState:I

    return-void
.end method


# virtual methods
.method public greylist getAnchorLtePci()I
    .locals 0

    .line 253
    iget p0, p0, Lcom/tmobile/echolocate/DataMetrics$EndcLteLog;->anchorLtePci:I

    return p0
.end method

.method public greylist setAnchorLteCid(J)V
    .locals 0

    .line 241
    iput-wide p1, p0, Lcom/tmobile/echolocate/DataMetrics$EndcLteLog;->anchorLteCid:J

    return-void
.end method

.method public greylist setAnchorLtePci(I)V
    .locals 0

    .line 249
    iput p1, p0, Lcom/tmobile/echolocate/DataMetrics$EndcLteLog;->anchorLtePci:I

    return-void
.end method

.method public greylist setEndcCapability(I)V
    .locals 0

    .line 257
    iput p1, p0, Lcom/tmobile/echolocate/DataMetrics$EndcLteLog;->endcCapability:I

    return-void
.end method

.method public greylist setLteRrcState(I)V
    .locals 0

    .line 265
    iput p1, p0, Lcom/tmobile/echolocate/DataMetrics$EndcLteLog;->lteRrcState:I

    return-void
.end method

.method public greylist setNetworkType(I)V
    .locals 0

    .line 233
    iput p1, p0, Lcom/tmobile/echolocate/DataMetrics$EndcLteLog;->networkType:I

    return-void
.end method

.method public greylist setTimeStamp(J)V
    .locals 0

    .line 225
    iput-wide p1, p0, Lcom/tmobile/echolocate/DataMetrics$EndcLteLog;->timestamp:J

    return-void
.end method
