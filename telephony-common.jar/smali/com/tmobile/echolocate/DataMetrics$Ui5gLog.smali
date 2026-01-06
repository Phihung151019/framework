.class Lcom/tmobile/echolocate/DataMetrics$Ui5gLog;
.super Ljava/lang/Object;
.source "DataMetrics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tmobile/echolocate/DataMetrics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Ui5gLog"
.end annotation


# instance fields
.field private greylist networkType:I

.field private greylist timestamp:J

.field private greylist ui5gConfigurationStatus:I

.field private greylist uiDataTransmission:Ljava/lang/String;

.field private greylist uiNetworkType:Ljava/lang/String;

.field private greylist uiNumberOfAntennaBars:I


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

    .line 569
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 570
    iput-wide v0, p0, Lcom/tmobile/echolocate/DataMetrics$Ui5gLog;->timestamp:J

    const/4 p1, -0x2

    .line 571
    iput p1, p0, Lcom/tmobile/echolocate/DataMetrics$Ui5gLog;->networkType:I

    .line 572
    const-string v0, "NA"

    iput-object v0, p0, Lcom/tmobile/echolocate/DataMetrics$Ui5gLog;->uiNetworkType:Ljava/lang/String;

    .line 573
    iput-object v0, p0, Lcom/tmobile/echolocate/DataMetrics$Ui5gLog;->uiDataTransmission:Ljava/lang/String;

    const/16 v0, -0x3e7

    .line 574
    iput v0, p0, Lcom/tmobile/echolocate/DataMetrics$Ui5gLog;->uiNumberOfAntennaBars:I

    .line 575
    iput p1, p0, Lcom/tmobile/echolocate/DataMetrics$Ui5gLog;->ui5gConfigurationStatus:I

    return-void
.end method


# virtual methods
.method public greylist setNetworkType(I)V
    .locals 0

    .line 587
    iput p1, p0, Lcom/tmobile/echolocate/DataMetrics$Ui5gLog;->networkType:I

    return-void
.end method

.method public greylist setTimeStamp(J)V
    .locals 0

    .line 579
    iput-wide p1, p0, Lcom/tmobile/echolocate/DataMetrics$Ui5gLog;->timestamp:J

    return-void
.end method

.method public greylist setUiDataTransmission(Ljava/lang/String;)V
    .locals 0

    .line 603
    iput-object p1, p0, Lcom/tmobile/echolocate/DataMetrics$Ui5gLog;->uiDataTransmission:Ljava/lang/String;

    return-void
.end method

.method public greylist setUiNetworkType(Ljava/lang/String;)V
    .locals 0

    .line 595
    iput-object p1, p0, Lcom/tmobile/echolocate/DataMetrics$Ui5gLog;->uiNetworkType:Ljava/lang/String;

    return-void
.end method

.method public greylist setUiNumberOfAntennaBars(I)V
    .locals 0

    .line 611
    iput p1, p0, Lcom/tmobile/echolocate/DataMetrics$Ui5gLog;->uiNumberOfAntennaBars:I

    return-void
.end method
