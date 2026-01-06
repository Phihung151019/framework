.class Lcom/tmobile/echolocate/DataMetrics5gSa$UlCarrierLog;
.super Ljava/lang/Object;
.source "DataMetrics5gSa.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tmobile/echolocate/DataMetrics5gSa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UlCarrierLog"
.end annotation


# instance fields
.field private greylist arfcn:I

.field private greylist bandNumber:Ljava/lang/String;

.field private greylist bandWidth:F

.field private greylist isPrimary:I

.field private greylist techType:Ljava/lang/String;


# direct methods
.method public constructor greylist <init>(Lcom/tmobile/echolocate/DataMetrics5gSa;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 500
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 501
    const-string p1, "-2"

    iput-object p1, p0, Lcom/tmobile/echolocate/DataMetrics5gSa$UlCarrierLog;->techType:Ljava/lang/String;

    .line 502
    iput-object p1, p0, Lcom/tmobile/echolocate/DataMetrics5gSa$UlCarrierLog;->bandNumber:Ljava/lang/String;

    const/4 p1, -0x2

    .line 503
    iput p1, p0, Lcom/tmobile/echolocate/DataMetrics5gSa$UlCarrierLog;->arfcn:I

    const/high16 v0, -0x40000000    # -2.0f

    .line 504
    iput v0, p0, Lcom/tmobile/echolocate/DataMetrics5gSa$UlCarrierLog;->bandWidth:F

    .line 505
    iput p1, p0, Lcom/tmobile/echolocate/DataMetrics5gSa$UlCarrierLog;->isPrimary:I

    return-void
.end method


# virtual methods
.method public greylist setArfcn(I)V
    .locals 0

    .line 530
    iput p1, p0, Lcom/tmobile/echolocate/DataMetrics5gSa$UlCarrierLog;->arfcn:I

    return-void
.end method

.method public greylist setBandNumber(Ljava/lang/String;)V
    .locals 0

    .line 522
    iput-object p1, p0, Lcom/tmobile/echolocate/DataMetrics5gSa$UlCarrierLog;->bandNumber:Ljava/lang/String;

    return-void
.end method

.method public greylist setBandWidth(F)V
    .locals 0

    .line 538
    iput p1, p0, Lcom/tmobile/echolocate/DataMetrics5gSa$UlCarrierLog;->bandWidth:F

    return-void
.end method

.method public greylist setIsPrimary(I)V
    .locals 0

    .line 546
    iput p1, p0, Lcom/tmobile/echolocate/DataMetrics5gSa$UlCarrierLog;->isPrimary:I

    return-void
.end method

.method public greylist setTechType(Ljava/lang/String;)V
    .locals 0

    .line 514
    iput-object p1, p0, Lcom/tmobile/echolocate/DataMetrics5gSa$UlCarrierLog;->techType:Ljava/lang/String;

    return-void
.end method
