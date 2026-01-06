.class public Lcom/samsung/vekit/Common/Object/PcmInfo;
.super Ljava/lang/Object;
.source "PcmInfo.java"


# instance fields
.field private data:[F

.field private endTimeMs:J

.field private key:Ljava/lang/String;

.field private sampleType:Lcom/samsung/vekit/Common/Type/PcmSampleType;

.field private size:I

.field private startTimeMs:J


# direct methods
.method constructor <init>()V
    .locals 2

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/vekit/Common/Object/PcmInfo;->key:Ljava/lang/String;

    .line 17
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/vekit/Common/Object/PcmInfo;->startTimeMs:J

    .line 18
    iput-wide v0, p0, Lcom/samsung/vekit/Common/Object/PcmInfo;->endTimeMs:J

    .line 19
    sget-object v0, Lcom/samsung/vekit/Common/Type/PcmSampleType;->FIRST:Lcom/samsung/vekit/Common/Type/PcmSampleType;

    iput-object v0, p0, Lcom/samsung/vekit/Common/Object/PcmInfo;->sampleType:Lcom/samsung/vekit/Common/Type/PcmSampleType;

    .line 20
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/vekit/Common/Object/PcmInfo;->size:I

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/vekit/Common/Object/PcmInfo;->data:[F

    .line 22
    return-void
.end method

.method constructor <init>(Ljava/lang/String;JJLcom/samsung/vekit/Common/Type/PcmSampleType;I[F)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "startTimeMs"    # J
    .param p4, "endTimeMs"    # J
    .param p6, "sampleType"    # Lcom/samsung/vekit/Common/Type/PcmSampleType;
    .param p7, "size"    # I
    .param p8, "data"    # [F

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/samsung/vekit/Common/Object/PcmInfo;->key:Ljava/lang/String;

    .line 26
    iput-wide p2, p0, Lcom/samsung/vekit/Common/Object/PcmInfo;->startTimeMs:J

    .line 27
    iput-wide p4, p0, Lcom/samsung/vekit/Common/Object/PcmInfo;->endTimeMs:J

    .line 28
    iput-object p6, p0, Lcom/samsung/vekit/Common/Object/PcmInfo;->sampleType:Lcom/samsung/vekit/Common/Type/PcmSampleType;

    .line 29
    iput p7, p0, Lcom/samsung/vekit/Common/Object/PcmInfo;->size:I

    .line 30
    invoke-static {p8, p7}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/vekit/Common/Object/PcmInfo;->data:[F

    .line 31
    return-void
.end method


# virtual methods
.method public getData()[F
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/samsung/vekit/Common/Object/PcmInfo;->data:[F

    return-object v0
.end method

.method public getEndTimeMs()J
    .locals 2

    .line 50
    iget-wide v0, p0, Lcom/samsung/vekit/Common/Object/PcmInfo;->endTimeMs:J

    return-wide v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/samsung/vekit/Common/Object/PcmInfo;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getSampleType()Lcom/samsung/vekit/Common/Type/PcmSampleType;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/samsung/vekit/Common/Object/PcmInfo;->sampleType:Lcom/samsung/vekit/Common/Type/PcmSampleType;

    return-object v0
.end method

.method public getSize()I
    .locals 1

    .line 66
    iget v0, p0, Lcom/samsung/vekit/Common/Object/PcmInfo;->size:I

    return v0
.end method

.method public getStartTimeMs()J
    .locals 2

    .line 42
    iget-wide v0, p0, Lcom/samsung/vekit/Common/Object/PcmInfo;->startTimeMs:J

    return-wide v0
.end method

.method public setData([F)V
    .locals 0
    .param p1, "data"    # [F

    .line 78
    iput-object p1, p0, Lcom/samsung/vekit/Common/Object/PcmInfo;->data:[F

    .line 79
    return-void
.end method

.method public setEndTimeMs(J)V
    .locals 0
    .param p1, "endTimeMs"    # J

    .line 54
    iput-wide p1, p0, Lcom/samsung/vekit/Common/Object/PcmInfo;->endTimeMs:J

    .line 55
    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;

    .line 38
    iput-object p1, p0, Lcom/samsung/vekit/Common/Object/PcmInfo;->key:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public setSampleType(Lcom/samsung/vekit/Common/Type/PcmSampleType;)V
    .locals 0
    .param p1, "sampleType"    # Lcom/samsung/vekit/Common/Type/PcmSampleType;

    .line 62
    iput-object p1, p0, Lcom/samsung/vekit/Common/Object/PcmInfo;->sampleType:Lcom/samsung/vekit/Common/Type/PcmSampleType;

    .line 63
    return-void
.end method

.method public setSize(I)V
    .locals 0
    .param p1, "size"    # I

    .line 70
    iput p1, p0, Lcom/samsung/vekit/Common/Object/PcmInfo;->size:I

    .line 71
    return-void
.end method

.method public setStartTimeMs(J)V
    .locals 0
    .param p1, "startTimeMs"    # J

    .line 46
    iput-wide p1, p0, Lcom/samsung/vekit/Common/Object/PcmInfo;->startTimeMs:J

    .line 47
    return-void
.end method
