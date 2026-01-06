.class Lcom/tmobile/echolocate/DataMetrics5gSa$NetworkLog;
.super Ljava/lang/Object;
.source "DataMetrics5gSa.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tmobile/echolocate/DataMetrics5gSa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NetworkLog"
.end annotation


# instance fields
.field private greylist endcCapability:I

.field private greylist endcConnectionStatus:I

.field private greylist mcc:Ljava/lang/String;

.field private greylist mnc:Ljava/lang/String;


# direct methods
.method public constructor greylist <init>(Lcom/tmobile/echolocate/DataMetrics5gSa;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 584
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 585
    const-string p1, "-2"

    iput-object p1, p0, Lcom/tmobile/echolocate/DataMetrics5gSa$NetworkLog;->mcc:Ljava/lang/String;

    .line 586
    iput-object p1, p0, Lcom/tmobile/echolocate/DataMetrics5gSa$NetworkLog;->mnc:Ljava/lang/String;

    const/4 p1, -0x2

    .line 587
    iput p1, p0, Lcom/tmobile/echolocate/DataMetrics5gSa$NetworkLog;->endcCapability:I

    .line 588
    iput p1, p0, Lcom/tmobile/echolocate/DataMetrics5gSa$NetworkLog;->endcConnectionStatus:I

    return-void
.end method


# virtual methods
.method public greylist setEndcCapability(I)V
    .locals 0

    .line 612
    iput p1, p0, Lcom/tmobile/echolocate/DataMetrics5gSa$NetworkLog;->endcCapability:I

    return-void
.end method

.method public greylist setEndcConnectionStatus(I)V
    .locals 0

    .line 620
    iput p1, p0, Lcom/tmobile/echolocate/DataMetrics5gSa$NetworkLog;->endcConnectionStatus:I

    return-void
.end method

.method public greylist setMcc(Ljava/lang/String;)V
    .locals 0

    .line 596
    iput-object p1, p0, Lcom/tmobile/echolocate/DataMetrics5gSa$NetworkLog;->mcc:Ljava/lang/String;

    return-void
.end method

.method public greylist setMnc(Ljava/lang/String;)V
    .locals 0

    .line 604
    iput-object p1, p0, Lcom/tmobile/echolocate/DataMetrics5gSa$NetworkLog;->mnc:Ljava/lang/String;

    return-void
.end method
