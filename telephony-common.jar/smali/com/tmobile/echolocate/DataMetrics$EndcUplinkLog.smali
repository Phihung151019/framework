.class Lcom/tmobile/echolocate/DataMetrics$EndcUplinkLog;
.super Ljava/lang/Object;
.source "DataMetrics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tmobile/echolocate/DataMetrics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EndcUplinkLog"
.end annotation


# instance fields
.field private greylist networkType:I

.field private greylist timestamp:J

.field private greylist uplinkNetwork:I


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

    .line 530
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 531
    iput-wide v0, p0, Lcom/tmobile/echolocate/DataMetrics$EndcUplinkLog;->timestamp:J

    const/4 p1, -0x2

    .line 532
    iput p1, p0, Lcom/tmobile/echolocate/DataMetrics$EndcUplinkLog;->networkType:I

    .line 533
    iput p1, p0, Lcom/tmobile/echolocate/DataMetrics$EndcUplinkLog;->uplinkNetwork:I

    return-void
.end method


# virtual methods
.method public greylist setNetworkType(I)V
    .locals 0

    .line 545
    iput p1, p0, Lcom/tmobile/echolocate/DataMetrics$EndcUplinkLog;->networkType:I

    return-void
.end method

.method public greylist setTimeStamp(J)V
    .locals 0

    .line 537
    iput-wide p1, p0, Lcom/tmobile/echolocate/DataMetrics$EndcUplinkLog;->timestamp:J

    return-void
.end method
