.class public final Lcom/google/uwb/support/radar/RadarSweepData$Builder;
.super Ljava/lang/Object;
.source "RadarSweepData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/uwb/support/radar/RadarSweepData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mSampleData:[B

.field private mSequenceNumber:Lcom/google/uwb/support/base/RequiredParam;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/uwb/support/base/RequiredParam<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mTimestamp:Lcom/google/uwb/support/base/RequiredParam;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/uwb/support/base/RequiredParam<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mVendorSpecificData:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    new-instance v0, Lcom/google/uwb/support/base/RequiredParam;

    invoke-direct {v0}, Lcom/google/uwb/support/base/RequiredParam;-><init>()V

    iput-object v0, p0, Lcom/google/uwb/support/radar/RadarSweepData$Builder;->mSequenceNumber:Lcom/google/uwb/support/base/RequiredParam;

    .line 135
    new-instance v0, Lcom/google/uwb/support/base/RequiredParam;

    invoke-direct {v0}, Lcom/google/uwb/support/base/RequiredParam;-><init>()V

    iput-object v0, p0, Lcom/google/uwb/support/radar/RadarSweepData$Builder;->mTimestamp:Lcom/google/uwb/support/base/RequiredParam;

    return-void
.end method


# virtual methods
.method public build()Lcom/google/uwb/support/radar/RadarSweepData;
    .locals 9

    .line 165
    iget-object v0, p0, Lcom/google/uwb/support/radar/RadarSweepData$Builder;->mSequenceNumber:Lcom/google/uwb/support/base/RequiredParam;

    invoke-virtual {v0}, Lcom/google/uwb/support/base/RequiredParam;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2

    .line 168
    iget-object v0, p0, Lcom/google/uwb/support/radar/RadarSweepData$Builder;->mTimestamp:Lcom/google/uwb/support/base/RequiredParam;

    invoke-virtual {v0}, Lcom/google/uwb/support/base/RequiredParam;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    .line 171
    iget-object v0, p0, Lcom/google/uwb/support/radar/RadarSweepData$Builder;->mSampleData:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/uwb/support/radar/RadarSweepData$Builder;->mSampleData:[B

    array-length v0, v0

    if-eqz v0, :cond_0

    .line 174
    new-instance v1, Lcom/google/uwb/support/radar/RadarSweepData;

    iget-object v0, p0, Lcom/google/uwb/support/radar/RadarSweepData$Builder;->mSequenceNumber:Lcom/google/uwb/support/base/RequiredParam;

    .line 175
    invoke-virtual {v0}, Lcom/google/uwb/support/base/RequiredParam;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v0, p0, Lcom/google/uwb/support/radar/RadarSweepData$Builder;->mTimestamp:Lcom/google/uwb/support/base/RequiredParam;

    invoke-virtual {v0}, Lcom/google/uwb/support/base/RequiredParam;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-object v6, p0, Lcom/google/uwb/support/radar/RadarSweepData$Builder;->mVendorSpecificData:[B

    iget-object v7, p0, Lcom/google/uwb/support/radar/RadarSweepData$Builder;->mSampleData:[B

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v8}, Lcom/google/uwb/support/radar/RadarSweepData;-><init>(JJ[B[BLcom/google/uwb/support/radar/RadarSweepData$1;)V

    .line 174
    return-object v1

    .line 172
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Empty radar sample data"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 169
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid timestamp"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 166
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid sequence number"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setSampleData([B)Lcom/google/uwb/support/radar/RadarSweepData$Builder;
    .locals 0
    .param p1, "sampleData"    # [B

    .line 159
    iput-object p1, p0, Lcom/google/uwb/support/radar/RadarSweepData$Builder;->mSampleData:[B

    .line 160
    return-object p0
.end method

.method public setSequenceNumber(J)Lcom/google/uwb/support/radar/RadarSweepData$Builder;
    .locals 2
    .param p1, "sequenceNumber"    # J

    .line 141
    iget-object v0, p0, Lcom/google/uwb/support/radar/RadarSweepData$Builder;->mSequenceNumber:Lcom/google/uwb/support/base/RequiredParam;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/base/RequiredParam;->set(Ljava/lang/Object;)V

    .line 142
    return-object p0
.end method

.method public setTimestamp(J)Lcom/google/uwb/support/radar/RadarSweepData$Builder;
    .locals 2
    .param p1, "timestamp"    # J

    .line 147
    iget-object v0, p0, Lcom/google/uwb/support/radar/RadarSweepData$Builder;->mTimestamp:Lcom/google/uwb/support/base/RequiredParam;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/base/RequiredParam;->set(Ljava/lang/Object;)V

    .line 148
    return-object p0
.end method

.method public setVendorSpecificData([B)Lcom/google/uwb/support/radar/RadarSweepData$Builder;
    .locals 0
    .param p1, "vendorSpecificData"    # [B

    .line 153
    iput-object p1, p0, Lcom/google/uwb/support/radar/RadarSweepData$Builder;->mVendorSpecificData:[B

    .line 154
    return-object p0
.end method
