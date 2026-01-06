.class Lcom/tmobile/echolocate/DataMetrics5gSa$UiLog;
.super Ljava/lang/Object;
.source "DataMetrics5gSa.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tmobile/echolocate/DataMetrics5gSa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UiLog"
.end annotation


# instance fields
.field private greylist networkType:Ljava/lang/String;

.field private greylist timestamp:J

.field private greylist uiDataTransmission:Ljava/lang/String;

.field private greylist uiNetworkType:Ljava/lang/String;

.field private greylist uiNumberOfAntennaBars:I


# direct methods
.method constructor greylist <init>(Lcom/tmobile/echolocate/DataMetrics5gSa;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 729
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public greylist setNetworkType(Ljava/lang/String;)V
    .locals 0

    .line 749
    iput-object p1, p0, Lcom/tmobile/echolocate/DataMetrics5gSa$UiLog;->networkType:Ljava/lang/String;

    return-void
.end method

.method public greylist setTimestamp(J)V
    .locals 0

    .line 741
    iput-wide p1, p0, Lcom/tmobile/echolocate/DataMetrics5gSa$UiLog;->timestamp:J

    return-void
.end method

.method public greylist setUiDataTransmission(Ljava/lang/String;)V
    .locals 0

    .line 765
    iput-object p1, p0, Lcom/tmobile/echolocate/DataMetrics5gSa$UiLog;->uiDataTransmission:Ljava/lang/String;

    return-void
.end method

.method public greylist setUiNetworkType(Ljava/lang/String;)V
    .locals 0

    .line 757
    iput-object p1, p0, Lcom/tmobile/echolocate/DataMetrics5gSa$UiLog;->uiNetworkType:Ljava/lang/String;

    return-void
.end method

.method public greylist setUiNumberOfAntennaBars(I)V
    .locals 0

    .line 773
    iput p1, p0, Lcom/tmobile/echolocate/DataMetrics5gSa$UiLog;->uiNumberOfAntennaBars:I

    return-void
.end method
