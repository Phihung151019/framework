.class Lcom/tmobile/echolocate/DataMetrics5gSa$RrcLog;
.super Ljava/lang/Object;
.source "DataMetrics5gSa.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tmobile/echolocate/DataMetrics5gSa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RrcLog"
.end annotation


# instance fields
.field private greylist lteRrcState:Ljava/lang/String;

.field private greylist nrRrcState:Ljava/lang/String;


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

    .line 555
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 556
    const-string p1, "-2"

    iput-object p1, p0, Lcom/tmobile/echolocate/DataMetrics5gSa$RrcLog;->lteRrcState:Ljava/lang/String;

    .line 557
    iput-object p1, p0, Lcom/tmobile/echolocate/DataMetrics5gSa$RrcLog;->nrRrcState:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public greylist getLteRrcState()Ljava/lang/String;
    .locals 0

    .line 561
    iget-object p0, p0, Lcom/tmobile/echolocate/DataMetrics5gSa$RrcLog;->lteRrcState:Ljava/lang/String;

    return-object p0
.end method

.method public greylist getNrRrcState()Ljava/lang/String;
    .locals 0

    .line 569
    iget-object p0, p0, Lcom/tmobile/echolocate/DataMetrics5gSa$RrcLog;->nrRrcState:Ljava/lang/String;

    return-object p0
.end method

.method public greylist setLteRrcState(Ljava/lang/String;)V
    .locals 0

    .line 565
    iput-object p1, p0, Lcom/tmobile/echolocate/DataMetrics5gSa$RrcLog;->lteRrcState:Ljava/lang/String;

    return-void
.end method

.method public greylist setNrRrcState(Ljava/lang/String;)V
    .locals 0

    .line 573
    iput-object p1, p0, Lcom/tmobile/echolocate/DataMetrics5gSa$RrcLog;->nrRrcState:Ljava/lang/String;

    return-void
.end method
