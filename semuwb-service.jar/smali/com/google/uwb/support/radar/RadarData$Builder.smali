.class public final Lcom/google/uwb/support/radar/RadarData$Builder;
.super Ljava/lang/Object;
.source "RadarData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/uwb/support/radar/RadarData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mBitsPerSample:Lcom/google/uwb/support/base/RequiredParam;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/uwb/support/base/RequiredParam<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mRadarDataType:Lcom/google/uwb/support/base/RequiredParam;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/uwb/support/base/RequiredParam<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSamplesPerSweep:Lcom/google/uwb/support/base/RequiredParam;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/uwb/support/base/RequiredParam<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mStatusCode:Lcom/google/uwb/support/base/RequiredParam;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/uwb/support/base/RequiredParam<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSweepData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/uwb/support/radar/RadarSweepData;",
            ">;"
        }
    .end annotation
.end field

.field private mSweepOffset:Lcom/google/uwb/support/base/RequiredParam;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/uwb/support/base/RequiredParam<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    new-instance v0, Lcom/google/uwb/support/base/RequiredParam;

    invoke-direct {v0}, Lcom/google/uwb/support/base/RequiredParam;-><init>()V

    iput-object v0, p0, Lcom/google/uwb/support/radar/RadarData$Builder;->mStatusCode:Lcom/google/uwb/support/base/RequiredParam;

    .line 154
    new-instance v0, Lcom/google/uwb/support/base/RequiredParam;

    invoke-direct {v0}, Lcom/google/uwb/support/base/RequiredParam;-><init>()V

    iput-object v0, p0, Lcom/google/uwb/support/radar/RadarData$Builder;->mRadarDataType:Lcom/google/uwb/support/base/RequiredParam;

    .line 155
    new-instance v0, Lcom/google/uwb/support/base/RequiredParam;

    invoke-direct {v0}, Lcom/google/uwb/support/base/RequiredParam;-><init>()V

    iput-object v0, p0, Lcom/google/uwb/support/radar/RadarData$Builder;->mSamplesPerSweep:Lcom/google/uwb/support/base/RequiredParam;

    .line 156
    new-instance v0, Lcom/google/uwb/support/base/RequiredParam;

    invoke-direct {v0}, Lcom/google/uwb/support/base/RequiredParam;-><init>()V

    iput-object v0, p0, Lcom/google/uwb/support/radar/RadarData$Builder;->mBitsPerSample:Lcom/google/uwb/support/base/RequiredParam;

    .line 157
    new-instance v0, Lcom/google/uwb/support/base/RequiredParam;

    invoke-direct {v0}, Lcom/google/uwb/support/base/RequiredParam;-><init>()V

    iput-object v0, p0, Lcom/google/uwb/support/radar/RadarData$Builder;->mSweepOffset:Lcom/google/uwb/support/base/RequiredParam;

    .line 158
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/uwb/support/radar/RadarData$Builder;->mSweepData:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addSweepData(Lcom/google/uwb/support/radar/RadarSweepData;)Lcom/google/uwb/support/radar/RadarData$Builder;
    .locals 1
    .param p1, "sweepData"    # Lcom/google/uwb/support/radar/RadarSweepData;

    .line 198
    iget-object v0, p0, Lcom/google/uwb/support/radar/RadarData$Builder;->mSweepData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 199
    return-object p0
.end method

.method public build()Lcom/google/uwb/support/radar/RadarData;
    .locals 10

    .line 204
    iget-object v0, p0, Lcom/google/uwb/support/radar/RadarData$Builder;->mRadarDataType:Lcom/google/uwb/support/base/RequiredParam;

    invoke-virtual {v0}, Lcom/google/uwb/support/base/RequiredParam;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/uwb/support/radar/RadarData$Builder;->mSweepData:Ljava/util/List;

    .line 205
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 206
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No radar sweep data"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 208
    :cond_1
    :goto_0
    new-instance v2, Lcom/google/uwb/support/radar/RadarData;

    iget-object v0, p0, Lcom/google/uwb/support/radar/RadarData$Builder;->mStatusCode:Lcom/google/uwb/support/base/RequiredParam;

    .line 209
    invoke-virtual {v0}, Lcom/google/uwb/support/base/RequiredParam;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v0, p0, Lcom/google/uwb/support/radar/RadarData$Builder;->mRadarDataType:Lcom/google/uwb/support/base/RequiredParam;

    .line 210
    invoke-virtual {v0}, Lcom/google/uwb/support/base/RequiredParam;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v0, p0, Lcom/google/uwb/support/radar/RadarData$Builder;->mSamplesPerSweep:Lcom/google/uwb/support/base/RequiredParam;

    .line 211
    invoke-virtual {v0}, Lcom/google/uwb/support/base/RequiredParam;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v0, p0, Lcom/google/uwb/support/radar/RadarData$Builder;->mBitsPerSample:Lcom/google/uwb/support/base/RequiredParam;

    .line 212
    invoke-virtual {v0}, Lcom/google/uwb/support/base/RequiredParam;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v0, p0, Lcom/google/uwb/support/radar/RadarData$Builder;->mSweepOffset:Lcom/google/uwb/support/base/RequiredParam;

    .line 213
    invoke-virtual {v0}, Lcom/google/uwb/support/base/RequiredParam;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget-object v8, p0, Lcom/google/uwb/support/radar/RadarData$Builder;->mSweepData:Ljava/util/List;

    const/4 v9, 0x0

    invoke-direct/range {v2 .. v9}, Lcom/google/uwb/support/radar/RadarData;-><init>(IIIIILjava/util/List;Lcom/google/uwb/support/radar/RadarData$1;)V

    .line 208
    return-object v2
.end method

.method public setBitsPerSample(I)Lcom/google/uwb/support/radar/RadarData$Builder;
    .locals 2
    .param p1, "bitsPerSample"    # I

    .line 180
    iget-object v0, p0, Lcom/google/uwb/support/radar/RadarData$Builder;->mBitsPerSample:Lcom/google/uwb/support/base/RequiredParam;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/base/RequiredParam;->set(Ljava/lang/Object;)V

    .line 181
    return-object p0
.end method

.method public setRadarDataType(I)Lcom/google/uwb/support/radar/RadarData$Builder;
    .locals 2
    .param p1, "radarDataType"    # I

    .line 168
    iget-object v0, p0, Lcom/google/uwb/support/radar/RadarData$Builder;->mRadarDataType:Lcom/google/uwb/support/base/RequiredParam;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/base/RequiredParam;->set(Ljava/lang/Object;)V

    .line 169
    return-object p0
.end method

.method public setSamplesPerSweep(I)Lcom/google/uwb/support/radar/RadarData$Builder;
    .locals 2
    .param p1, "samplesPerSweep"    # I

    .line 174
    iget-object v0, p0, Lcom/google/uwb/support/radar/RadarData$Builder;->mSamplesPerSweep:Lcom/google/uwb/support/base/RequiredParam;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/base/RequiredParam;->set(Ljava/lang/Object;)V

    .line 175
    return-object p0
.end method

.method public setStatusCode(I)Lcom/google/uwb/support/radar/RadarData$Builder;
    .locals 2
    .param p1, "statusCode"    # I

    .line 162
    iget-object v0, p0, Lcom/google/uwb/support/radar/RadarData$Builder;->mStatusCode:Lcom/google/uwb/support/base/RequiredParam;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/base/RequiredParam;->set(Ljava/lang/Object;)V

    .line 163
    return-object p0
.end method

.method public setSweepData(Ljava/util/List;)Lcom/google/uwb/support/radar/RadarData$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/uwb/support/radar/RadarSweepData;",
            ">;)",
            "Lcom/google/uwb/support/radar/RadarData$Builder;"
        }
    .end annotation

    .line 192
    .local p1, "sweepData":Ljava/util/List;, "Ljava/util/List<Lcom/google/uwb/support/radar/RadarSweepData;>;"
    iget-object v0, p0, Lcom/google/uwb/support/radar/RadarData$Builder;->mSweepData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 193
    return-object p0
.end method

.method public setSweepOffset(I)Lcom/google/uwb/support/radar/RadarData$Builder;
    .locals 2
    .param p1, "sweepOffset"    # I

    .line 186
    iget-object v0, p0, Lcom/google/uwb/support/radar/RadarData$Builder;->mSweepOffset:Lcom/google/uwb/support/base/RequiredParam;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/base/RequiredParam;->set(Ljava/lang/Object;)V

    .line 187
    return-object p0
.end method
