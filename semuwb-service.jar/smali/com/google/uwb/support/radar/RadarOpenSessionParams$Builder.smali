.class public final Lcom/google/uwb/support/radar/RadarOpenSessionParams$Builder;
.super Ljava/lang/Object;
.source "RadarOpenSessionParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/uwb/support/radar/RadarOpenSessionParams;
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

.field private mBurstPeriod:Lcom/google/uwb/support/base/RequiredParam;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/uwb/support/base/RequiredParam<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mChannelNumber:Lcom/google/uwb/support/base/RequiredParam;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/uwb/support/base/RequiredParam<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mNumberOfBursts:Lcom/google/uwb/support/base/RequiredParam;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/uwb/support/base/RequiredParam<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPreambleCodeIndex:Lcom/google/uwb/support/base/RequiredParam;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/uwb/support/base/RequiredParam<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPreambleDuration:Lcom/google/uwb/support/base/RequiredParam;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/uwb/support/base/RequiredParam<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPrfMode:Lcom/google/uwb/support/base/RequiredParam;
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

.field private mRframeConfig:Lcom/google/uwb/support/base/RequiredParam;
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

.field private mSessionId:Lcom/google/uwb/support/base/RequiredParam;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/uwb/support/base/RequiredParam<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSessionPriority:Lcom/google/uwb/support/base/RequiredParam;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/uwb/support/base/RequiredParam<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSessionType:I

.field private mSweepOffset:Lcom/google/uwb/support/base/RequiredParam;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/uwb/support/base/RequiredParam<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSweepPeriod:Lcom/google/uwb/support/base/RequiredParam;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/uwb/support/base/RequiredParam<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSweepsPerBurst:Lcom/google/uwb/support/base/RequiredParam;
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

    .line 270
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 250
    new-instance v0, Lcom/google/uwb/support/base/RequiredParam;

    invoke-direct {v0}, Lcom/google/uwb/support/base/RequiredParam;-><init>()V

    iput-object v0, p0, Lcom/google/uwb/support/radar/RadarOpenSessionParams$Builder;->mSessionId:Lcom/google/uwb/support/base/RequiredParam;

    .line 251
    const/16 v0, 0xa1

    iput v0, p0, Lcom/google/uwb/support/radar/RadarOpenSessionParams$Builder;->mSessionType:I

    .line 252
    new-instance v0, Lcom/google/uwb/support/base/RequiredParam;

    invoke-direct {v0}, Lcom/google/uwb/support/base/RequiredParam;-><init>()V

    iput-object v0, p0, Lcom/google/uwb/support/radar/RadarOpenSessionParams$Builder;->mBurstPeriod:Lcom/google/uwb/support/base/RequiredParam;

    .line 253
    new-instance v0, Lcom/google/uwb/support/base/RequiredParam;

    invoke-direct {v0}, Lcom/google/uwb/support/base/RequiredParam;-><init>()V

    iput-object v0, p0, Lcom/google/uwb/support/radar/RadarOpenSessionParams$Builder;->mSweepPeriod:Lcom/google/uwb/support/base/RequiredParam;

    .line 254
    new-instance v0, Lcom/google/uwb/support/base/RequiredParam;

    invoke-direct {v0}, Lcom/google/uwb/support/base/RequiredParam;-><init>()V

    iput-object v0, p0, Lcom/google/uwb/support/radar/RadarOpenSessionParams$Builder;->mSweepsPerBurst:Lcom/google/uwb/support/base/RequiredParam;

    .line 255
    new-instance v0, Lcom/google/uwb/support/base/RequiredParam;

    invoke-direct {v0}, Lcom/google/uwb/support/base/RequiredParam;-><init>()V

    iput-object v0, p0, Lcom/google/uwb/support/radar/RadarOpenSessionParams$Builder;->mSamplesPerSweep:Lcom/google/uwb/support/base/RequiredParam;

    .line 256
    new-instance v0, Lcom/google/uwb/support/base/RequiredParam;

    invoke-direct {v0}, Lcom/google/uwb/support/base/RequiredParam;-><init>()V

    iput-object v0, p0, Lcom/google/uwb/support/radar/RadarOpenSessionParams$Builder;->mChannelNumber:Lcom/google/uwb/support/base/RequiredParam;

    .line 257
    new-instance v0, Lcom/google/uwb/support/base/RequiredParam;

    invoke-direct {v0}, Lcom/google/uwb/support/base/RequiredParam;-><init>()V

    iput-object v0, p0, Lcom/google/uwb/support/radar/RadarOpenSessionParams$Builder;->mSweepOffset:Lcom/google/uwb/support/base/RequiredParam;

    .line 258
    new-instance v0, Lcom/google/uwb/support/base/RequiredParam;

    invoke-direct {v0}, Lcom/google/uwb/support/base/RequiredParam;-><init>()V

    iput-object v0, p0, Lcom/google/uwb/support/radar/RadarOpenSessionParams$Builder;->mRframeConfig:Lcom/google/uwb/support/base/RequiredParam;

    .line 259
    new-instance v0, Lcom/google/uwb/support/base/RequiredParam;

    invoke-direct {v0}, Lcom/google/uwb/support/base/RequiredParam;-><init>()V

    iput-object v0, p0, Lcom/google/uwb/support/radar/RadarOpenSessionParams$Builder;->mPreambleDuration:Lcom/google/uwb/support/base/RequiredParam;

    .line 261
    new-instance v0, Lcom/google/uwb/support/base/RequiredParam;

    invoke-direct {v0}, Lcom/google/uwb/support/base/RequiredParam;-><init>()V

    iput-object v0, p0, Lcom/google/uwb/support/radar/RadarOpenSessionParams$Builder;->mPreambleCodeIndex:Lcom/google/uwb/support/base/RequiredParam;

    .line 264
    new-instance v0, Lcom/google/uwb/support/base/RequiredParam;

    invoke-direct {v0}, Lcom/google/uwb/support/base/RequiredParam;-><init>()V

    iput-object v0, p0, Lcom/google/uwb/support/radar/RadarOpenSessionParams$Builder;->mSessionPriority:Lcom/google/uwb/support/base/RequiredParam;

    .line 265
    new-instance v0, Lcom/google/uwb/support/base/RequiredParam;

    invoke-direct {v0}, Lcom/google/uwb/support/base/RequiredParam;-><init>()V

    iput-object v0, p0, Lcom/google/uwb/support/radar/RadarOpenSessionParams$Builder;->mBitsPerSample:Lcom/google/uwb/support/base/RequiredParam;

    .line 266
    new-instance v0, Lcom/google/uwb/support/base/RequiredParam;

    invoke-direct {v0}, Lcom/google/uwb/support/base/RequiredParam;-><init>()V

    iput-object v0, p0, Lcom/google/uwb/support/radar/RadarOpenSessionParams$Builder;->mPrfMode:Lcom/google/uwb/support/base/RequiredParam;

    .line 267
    new-instance v0, Lcom/google/uwb/support/base/RequiredParam;

    invoke-direct {v0}, Lcom/google/uwb/support/base/RequiredParam;-><init>()V

    iput-object v0, p0, Lcom/google/uwb/support/radar/RadarOpenSessionParams$Builder;->mNumberOfBursts:Lcom/google/uwb/support/base/RequiredParam;

    .line 268
    new-instance v0, Lcom/google/uwb/support/base/RequiredParam;

    invoke-direct {v0}, Lcom/google/uwb/support/base/RequiredParam;-><init>()V

    iput-object v0, p0, Lcom/google/uwb/support/radar/RadarOpenSessionParams$Builder;->mRadarDataType:Lcom/google/uwb/support/base/RequiredParam;

    .line 270
    return-void
.end method

.method public constructor <init>(Lcom/google/uwb/support/radar/RadarOpenSessionParams$Builder;)V
    .locals 2
    .param p1, "builder"    # Lcom/google/uwb/support/radar/RadarOpenSessionParams$Builder;

    .line 272
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 250
    new-instance v0, Lcom/google/uwb/support/base/RequiredParam;

    invoke-direct {v0}, Lcom/google/uwb/support/base/RequiredParam;-><init>()V

    iput-object v0, p0, Lcom/google/uwb/support/radar/RadarOpenSessionParams$Builder;->mSessionId:Lcom/google/uwb/support/base/RequiredParam;

    .line 251
    const/16 v0, 0xa1

    iput v0, p0, Lcom/google/uwb/support/radar/RadarOpenSessionParams$Builder;->mSessionType:I

    .line 252
    new-instance v0, Lcom/google/uwb/support/base/RequiredParam;

    invoke-direct {v0}, Lcom/google/uwb/support/base/RequiredParam;-><init>()V

    iput-object v0, p0, Lcom/google/uwb/support/radar/RadarOpenSessionParams$Builder;->mBurstPeriod:Lcom/google/uwb/support/base/RequiredParam;

    .line 253
    new-instance v0, Lcom/google/uwb/support/base/RequiredParam;

    invoke-direct {v0}, Lcom/google/uwb/support/base/RequiredParam;-><init>()V

    iput-object v0, p0, Lcom/google/uwb/support/radar/RadarOpenSessionParams$Builder;->mSweepPeriod:Lcom/google/uwb/support/base/RequiredParam;

    .line 254
    new-instance v0, Lcom/google/uwb/support/base/RequiredParam;

    invoke-direct {v0}, Lcom/google/uwb/support/base/RequiredParam;-><init>()V

    iput-object v0, p0, Lcom/google/uwb/support/radar/RadarOpenSessionParams$Builder;->mSweepsPerBurst:Lcom/google/uwb/support/base/RequiredParam;

    .line 255
    new-instance v0, Lcom/google/uwb/support/base/RequiredParam;

    invoke-direct {v0}, Lcom/google/uwb/support/base/RequiredParam;-><init>()V

    iput-object v0, p0, Lcom/google/uwb/support/radar/RadarOpenSessionParams$Builder;->mSamplesPerSweep:Lcom/google/uwb/support/base/RequiredParam;

    .line 256
    new-instance v0, Lcom/google/uwb/support/base/RequiredParam;

    invoke-direct {v0}, Lcom/google/uwb/support/base/RequiredParam;-><init>()V

    iput-object v0, p0, Lcom/google/uwb/support/radar/RadarOpenSessionParams$Builder;->mChannelNumber:Lcom/google/uwb/support/base/RequiredParam;

    .line 257
    new-instance v0, Lcom/google/uwb/support/base/RequiredParam;

    invoke-direct {v0}, Lcom/google/uwb/support/base/RequiredParam;-><init>()V

    iput-object v0, p0, Lcom/google/uwb/support/radar/RadarOpenSessionParams$Builder;->mSweepOffset:Lcom/google/uwb/support/base/RequiredParam;

    .line 258
    new-instance v0, Lcom/google/uwb/support/base/RequiredParam;

    invoke-direct {v0}, Lcom/google/uwb/support/base/RequiredParam;-><init>()V

    iput-object v0, p0, Lcom/google/uwb/support/radar/RadarOpenSessionParams$Builder;->mRframeConfig:Lcom/google/uwb/support/base/RequiredParam;

    .line 259
    new-instance v0, Lcom/google/uwb/support/base/RequiredParam;

    invoke-direct {v0}, Lcom/google/uwb/support/base/RequiredParam;-><init>()V

    iput-object v0, p0, Lcom/google/uwb/support/radar/RadarOpenSessionParams$Builder;->mPreambleDuration:Lcom/google/uwb/support/base/RequiredParam;

    .line 261
    new-instance v0, Lcom/google/uwb/support/base/RequiredParam;

    invoke-direct {v0}, Lcom/google/uwb/support/base/RequiredParam;-><init>()V

    iput-object v0, p0, Lcom/google/uwb/support/radar/RadarOpenSessionParams$Builder;->mPreambleCodeIndex:Lcom/google/uwb/support/base/RequiredParam;

    .line 264
    new-instance v0, Lcom/google/uwb/support/base/RequiredParam;

    invoke-direct {v0}, Lcom/google/uwb/support/base/RequiredParam;-><init>()V

    iput-object v0, p0, Lcom/google/uwb/support/radar/RadarOpenSessionParams$Builder;->mSessionPriority:Lcom/google/uwb/support/base/RequiredParam;

    .line 265
    new-instance v0, Lcom/google/uwb/support/base/RequiredParam;

    invoke-direct {v0}, Lcom/google/uwb/support/base/RequiredParam;-><init>()V

    iput-object v0, p0, Lcom/google/uwb/support/radar/RadarOpenSessionParams$Builder;->mBitsPerSample:Lcom/google/uwb/support/base/RequiredParam;

    .line 266
    new-instance v0, Lcom/google/uwb/support/base/RequiredParam;

    invoke-direct {v0}, Lcom/google/uwb/support/base/RequiredParam;-><init>()V

    iput-object v0, p0, Lcom/google/uwb/support/radar/RadarOpenSessionParams$Builder;->mPrfMode:Lcom/google/uwb/support/base/RequiredParam;

    .line 267
    new-instance v0, Lcom/google/uwb/support/base/RequiredParam;

    invoke-direct {v0}, Lcom/google/uwb/support/base/RequiredParam;-><init>()V

    iput-object v0, p0, Lcom/google/uwb/support/radar/RadarOpenSessionParams$Builder;->mNumberOfBursts:Lcom/google/uwb/support/base/RequiredParam;

    .line 268
    new-instance v0, Lcom/google/uwb/support/base/RequiredParam;

    invoke-direct {v0}, Lcom/google/uwb/support/base/RequiredParam;-><init>()V

    iput-object v0, p0, Lcom/google/uwb/support/radar/RadarOpenSessionParams$Builder;->mRadarDataType:Lcom/google/uwb/support/base/RequiredParam;

    .line 273
    iget-object v0, p0, Lcom/google/uwb/support/radar/RadarOpenSessionParams$Builder;->mSessionId:Lcom/google/uwb/support/base/RequiredParam;

    iget-object v1, p1, Lcom/google/uwb/support/radar/RadarOpenSessionParams$Builder;->mSessionId:Lcom/google/uwb/support/base/RequiredParam;

    invoke-virtual {v1}, Lcom/google/uwb/support/base/RequiredParam;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/base/RequiredParam;->set(Ljava/lang/Object;)V

    .line 274
    iget v0, p1, Lcom/google/uwb/support/radar/RadarOpenSessionParams$Builder;->mSessionType:I

    iput v0, p0, Lcom/google/uwb/support/radar/RadarOpenSessionParams$Builder;->mSessionType:I

    .line 275
    iget-object v0, p0, Lcom/google/uwb/support/radar/RadarOpenSessionParams$Builder;->mBurstPeriod:Lcom/google/uwb/support/base/RequiredParam;

    iget-object v1, p1, Lcom/google/uwb/support/radar/RadarOpenSessionParams$Builder;->mBurstPeriod:Lcom/google/uwb/support/base/RequiredParam;

    invoke-virtual {v1}, Lcom/google/uwb/support/base/RequiredParam;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/base/RequiredParam;->set(Ljava/lang/Object;)V

    .line 276
    iget-object v0, p0, Lcom/google/uwb/support/radar/RadarOpenSessionParams$Builder;->mSweepPeriod:Lcom/google/uwb/support/base/RequiredParam;

    iget-object v1, p1, Lcom/google/uwb/support/radar/RadarOpenSessionParams$Builder;->mSweepPeriod:Lcom/google/uwb/support/base/RequiredParam;

    invoke-virtual {v1}, Lcom/google/uwb/support/base/RequiredParam;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/base/RequiredParam;->set(Ljava/lang/Object;)V

    .line 277
    iget-object v0, p0, Lcom/google/uwb/support/radar/RadarOpenSessionParams$Builder;->mSweepsPerBurst:Lcom/google/uwb/support/base/RequiredParam;

    iget-object v1, p1, Lcom/google/uwb/support/radar/RadarOpenSessionParams$Builder;->mSweepsPerBurst:Lcom/google/uwb/support/base/RequiredParam;

    invoke-virtual {v1}, Lcom/google/uwb/support/base/RequiredParam;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/base/RequiredParam;->set(Ljava/lang/Object;)V

    .line 278
    iget-object v0, p0, Lcom/google/uwb/support/radar/RadarOpenSessionParams$Builder;->mSamplesPerSweep:Lcom/google/uwb/support/base/RequiredParam;

    iget-object v1, p1, Lcom/google/uwb/support/radar/RadarOpenSessionParams$Builder;->mSamplesPerSweep:Lcom/google/uwb/support/base/RequiredParam;

    invoke-virtual {v1}, Lcom/google/uwb/support/base/RequiredParam;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/base/RequiredParam;->set(Ljava/lang/Object;)V

    .line 279
    iget-object v0, p0, Lcom/google/uwb/support/radar/RadarOpenSessionParams$Builder;->mChannelNumber:Lcom/google/uwb/support/base/RequiredParam;

    iget-object v1, p1, Lcom/google/uwb/support/radar/RadarOpenSessionParams$Builder;->mChannelNumber:Lcom/google/uwb/support/base/RequiredParam;

    invoke-virtual {v1}, Lcom/google/uwb/support/base/RequiredParam;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/base/RequiredParam;->set(Ljava/lang/Object;)V

    .line 280
    iget-object v0, p0, Lcom/google/uwb/support/radar/RadarOpenSessionParams$Builder;->mSweepOffset:Lcom/google/uwb/support/base/RequiredParam;

    iget-object v1, p1, Lcom/google/uwb/support/radar/RadarOpenSessionParams$Builder;->mSweepOffset:Lcom/google/uwb/support/base/RequiredParam;

    invoke-virtual {v1}, Lcom/google/uwb/support/base/RequiredParam;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/base/RequiredParam;->set(Ljava/lang/Object;)V

    .line 281
    iget-object v0, p0, Lcom/google/uwb/support/radar/RadarOpenSessionParams$Builder;->mRframeConfig:Lcom/google/uwb/support/base/RequiredParam;

    iget-object v1, p1, Lcom/google/uwb/support/radar/RadarOpenSessionParams$Builder;->mRframeConfig:Lcom/google/uwb/support/base/RequiredParam;

    invoke-virtual {v1}, Lcom/google/uwb/support/base/RequiredParam;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/base/RequiredParam;->set(Ljava/lang/Object;)V

    .line 282
    iget-object v0, p0, Lcom/google/uwb/support/radar/RadarOpenSessionParams$Builder;->mPreambleDuration:Lcom/google/uwb/support/base/RequiredParam;

    iget-object v1, p1, Lcom/google/uwb/support/radar/RadarOpenSessionParams$Builder;->mPreambleDuration:Lcom/google/uwb/support/base/RequiredParam;

    invoke-virtual {v1}, Lcom/google/uwb/support/base/RequiredParam;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/base/RequiredParam;->set(Ljava/lang/Object;)V

    .line 283
    iget-object v0, p0, Lcom/google/uwb/support/radar/RadarOpenSessionParams$Builder;->mPreambleCodeIndex:Lcom/google/uwb/support/base/RequiredParam;

    iget-object v1, p1, Lcom/google/uwb/support/radar/RadarOpenSessionParams$Builder;->mPreambleCodeIndex:Lcom/google/uwb/support/base/RequiredParam;

    invoke-virtual {v1}, Lcom/google/uwb/support/base/RequiredParam;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/base/RequiredParam;->set(Ljava/lang/Object;)V

    .line 284
    iget-object v0, p0, Lcom/google/uwb/support/radar/RadarOpenSessionParams$Builder;->mSessionPriority:Lcom/google/uwb/support/base/RequiredParam;

    iget-object v1, p1, Lcom/google/uwb/support/radar/RadarOpenSessionParams$Builder;->mSessionPriority:Lcom/google/uwb/support/base/RequiredParam;

    invoke-virtual {v1}, Lcom/google/uwb/support/base/RequiredParam;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/base/RequiredParam;->set(Ljava/lang/Object;)V

    .line 285
    iget-object v0, p0, Lcom/google/uwb/support/radar/RadarOpenSessionParams$Builder;->mBitsPerSample:Lcom/google/uwb/support/base/RequiredParam;

    iget-object v1, p1, Lcom/google/uwb/support/radar/RadarOpenSessionParams$Builder;->mBitsPerSample:Lcom/google/uwb/support/base/RequiredParam;

    invoke-virtual {v1}, Lcom/google/uwb/support/base/RequiredParam;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/base/RequiredParam;->set(Ljava/lang/Object;)V

    .line 286
    iget-object v0, p0, Lcom/google/uwb/support/radar/RadarOpenSessionParams$Builder;->mPrfMode:Lcom/google/uwb/support/base/RequiredParam;

    iget-object v1, p1, Lcom/google/uwb/support/radar/RadarOpenSessionParams$Builder;->mPrfMode:Lcom/google/uwb/support/base/RequiredParam;

    invoke-virtual {v1}, Lcom/google/uwb/support/base/RequiredParam;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/base/RequiredParam;->set(Ljava/lang/Object;)V

    .line 287
    iget-object v0, p0, Lcom/google/uwb/support/radar/RadarOpenSessionParams$Builder;->mNumberOfBursts:Lcom/google/uwb/support/base/RequiredParam;

    iget-object v1, p1, Lcom/google/uwb/support/radar/RadarOpenSessionParams$Builder;->mNumberOfBursts:Lcom/google/uwb/support/base/RequiredParam;

    invoke-virtual {v1}, Lcom/google/uwb/support/base/RequiredParam;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/base/RequiredParam;->set(Ljava/lang/Object;)V

    .line 288
    iget-object v0, p0, Lcom/google/uwb/support/radar/RadarOpenSessionParams$Builder;->mRadarDataType:Lcom/google/uwb/support/base/RequiredParam;

    iget-object v1, p1, Lcom/google/uwb/support/radar/RadarOpenSessionParams$Builder;->mRadarDataType:Lcom/google/uwb/support/base/RequiredParam;

    invoke-virtual {v1}, Lcom/google/uwb/support/base/RequiredParam;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/base/RequiredParam;->set(Ljava/lang/Object;)V

    .line 289
    return-void
.end method

.method public constructor <init>(Lcom/google/uwb/support/radar/RadarOpenSessionParams;)V
    .locals 2
    .param p1, "params"    # Lcom/google/uwb/support/radar/RadarOpenSessionParams;

    .line 291
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 250
    new-instance v0, Lcom/google/uwb/support/base/RequiredParam;

    invoke-direct {v0}, Lcom/google/uwb/support/base/RequiredParam;-><init>()V

    iput-object v0, p0, Lcom/google/uwb/support/radar/RadarOpenSessionParams$Builder;->mSessionId:Lcom/google/uwb/support/base/RequiredParam;

    .line 251
    const/16 v0, 0xa1

    iput v0, p0, Lcom/google/uwb/support/radar/RadarOpenSessionParams$Builder;->mSessionType:I

    .line 252
    new-instance v0, Lcom/google/uwb/support/base/RequiredParam;

    invoke-direct {v0}, Lcom/google/uwb/support/base/RequiredParam;-><init>()V

    iput-object v0, p0, Lcom/google/uwb/support/radar/RadarOpenSessionParams$Builder;->mBurstPeriod:Lcom/google/uwb/support/base/RequiredParam;

    .line 253
    new-instance v0, Lcom/google/uwb/support/base/RequiredParam;

    invoke-direct {v0}, Lcom/google/uwb/support/base/RequiredParam;-><init>()V

    iput-object v0, p0, Lcom/google/uwb/support/radar/RadarOpenSessionParams$Builder;->mSweepPeriod:Lcom/google/uwb/support/base/RequiredParam;

    .line 254
    new-instance v0, Lcom/google/uwb/support/base/RequiredParam;

    invoke-direct {v0}, Lcom/google/uwb/support/base/RequiredParam;-><init>()V

    iput-object v0, p0, Lcom/google/uwb/support/radar/RadarOpenSessionParams$Builder;->mSweepsPerBurst:Lcom/google/uwb/support/base/RequiredParam;

    .line 255
    new-instance v0, Lcom/google/uwb/support/base/RequiredParam;

    invoke-direct {v0}, Lcom/google/uwb/support/base/RequiredParam;-><init>()V

    iput-object v0, p0, Lcom/google/uwb/support/radar/RadarOpenSessionParams$Builder;->mSamplesPerSweep:Lcom/google/uwb/support/base/RequiredParam;

    .line 256
    new-instance v0, Lcom/google/uwb/support/base/RequiredParam;

    invoke-direct {v0}, Lcom/google/uwb/support/base/RequiredParam;-><init>()V

    iput-object v0, p0, Lcom/google/uwb/support/radar/RadarOpenSessionParams$Builder;->mChannelNumber:Lcom/google/uwb/support/base/RequiredParam;

    .line 257
    new-instance v0, Lcom/google/uwb/support/base/RequiredParam;

    invoke-direct {v0}, Lcom/google/uwb/support/base/RequiredParam;-><init>()V

    iput-object v0, p0, Lcom/google/uwb/support/radar/RadarOpenSessionParams$Builder;->mSweepOffset:Lcom/google/uwb/support/base/RequiredParam;

    .line 258
    new-instance v0, Lcom/google/uwb/support/base/RequiredParam;

    invoke-direct {v0}, Lcom/google/uwb/support/base/RequiredParam;-><init>()V

    iput-object v0, p0, Lcom/google/uwb/support/radar/RadarOpenSessionParams$Builder;->mRframeConfig:Lcom/google/uwb/support/base/RequiredParam;

    .line 259
    new-instance v0, Lcom/google/uwb/support/base/RequiredParam;

    invoke-direct {v0}, Lcom/google/uwb/support/base/RequiredParam;-><init>()V

    iput-object v0, p0, Lcom/google/uwb/support/radar/RadarOpenSessionParams$Builder;->mPreambleDuration:Lcom/google/uwb/support/base/RequiredParam;

    .line 261
    new-instance v0, Lcom/google/uwb/support/base/RequiredParam;

    invoke-direct {v0}, Lcom/google/uwb/support/base/RequiredParam;-><init>()V

    iput-object v0, p0, Lcom/google/uwb/support/radar/RadarOpenSessionParams$Builder;->mPreambleCodeIndex:Lcom/google/uwb/support/base/RequiredParam;

    .line 264
    new-instance v0, Lcom/google/uwb/support/base/RequiredParam;

    invoke-direct {v0}, Lcom/google/uwb/support/base/RequiredParam;-><init>()V

    iput-object v0, p0, Lcom/google/uwb/support/radar/RadarOpenSessionParams$Builder;->mSessionPriority:Lcom/google/uwb/support/base/RequiredParam;

    .line 265
    new-instance v0, Lcom/google/uwb/support/base/RequiredParam;

    invoke-direct {v0}, Lcom/google/uwb/support/base/RequiredParam;-><init>()V

    iput-object v0, p0, Lcom/google/uwb/support/radar/RadarOpenSessionParams$Builder;->mBitsPerSample:Lcom/google/uwb/support/base/RequiredParam;

    .line 266
    new-instance v0, Lcom/google/uwb/support/base/RequiredParam;

    invoke-direct {v0}, Lcom/google/uwb/support/base/RequiredParam;-><init>()V

    iput-object v0, p0, Lcom/google/uwb/support/radar/RadarOpenSessionParams$Builder;->mPrfMode:Lcom/google/uwb/support/base/RequiredParam;

    .line 267
    new-instance v0, Lcom/google/uwb/support/base/RequiredParam;

    invoke-direct {v0}, Lcom/google/uwb/support/base/RequiredParam;-><init>()V

    iput-object v0, p0, Lcom/google/uwb/support/radar/RadarOpenSessionParams$Builder;->mNumberOfBursts:Lcom/google/uwb/support/base/RequiredParam;

    .line 268
    new-instance v0, Lcom/google/uwb/support/base/RequiredParam;

    invoke-direct {v0}, Lcom/google/uwb/support/base/RequiredParam;-><init>()V

    iput-object v0, p0, Lcom/google/uwb/support/radar/RadarOpenSessionParams$Builder;->mRadarDataType:Lcom/google/uwb/support/base/RequiredParam;

    .line 292
    iget-object v0, p0, Lcom/google/uwb/support/radar/RadarOpenSessionParams$Builder;->mSessionId:Lcom/google/uwb/support/base/RequiredParam;

    invoke-static {p1}, Lcom/google/uwb/support/radar/RadarOpenSessionParams;->access$000(Lcom/google/uwb/support/radar/RadarOpenSessionParams;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/base/RequiredParam;->set(Ljava/lang/Object;)V

    .line 293
    invoke-static {p1}, Lcom/google/uwb/support/radar/RadarOpenSessionParams;->access$100(Lcom/google/uwb/support/radar/RadarOpenSessionParams;)I

    move-result v0

    iput v0, p0, Lcom/google/uwb/support/radar/RadarOpenSessionParams$Builder;->mSessionType:I

    .line 294
    iget-object v0, p0, Lcom/google/uwb/support/radar/RadarOpenSessionParams$Builder;->mBurstPeriod:Lcom/google/uwb/support/base/RequiredParam;

    invoke-static {p1}, Lcom/google/uwb/support/radar/RadarOpenSessionParams;->access$200(Lcom/google/uwb/support/radar/RadarOpenSessionParams;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/base/RequiredParam;->set(Ljava/lang/Object;)V

    .line 295
    iget-object v0, p0, Lcom/google/uwb/support/radar/RadarOpenSessionParams$Builder;->mSweepPeriod:Lcom/google/uwb/support/base/RequiredParam;

    invoke-static {p1}, Lcom/google/uwb/support/radar/RadarOpenSessionParams;->access$300(Lcom/google/uwb/support/radar/RadarOpenSessionParams;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/base/RequiredParam;->set(Ljava/lang/Object;)V

    .line 296
    iget-object v0, p0, Lcom/google/uwb/support/radar/RadarOpenSessionParams$Builder;->mSweepsPerBurst:Lcom/google/uwb/support/base/RequiredParam;

    invoke-static {p1}, Lcom/google/uwb/support/radar/RadarOpenSessionParams;->access$400(Lcom/google/uwb/support/radar/RadarOpenSessionParams;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/base/RequiredParam;->set(Ljava/lang/Object;)V

    .line 297
    iget-object v0, p0, Lcom/google/uwb/support/radar/RadarOpenSessionParams$Builder;->mSamplesPerSweep:Lcom/google/uwb/support/base/RequiredParam;

    invoke-static {p1}, Lcom/google/uwb/support/radar/RadarOpenSessionParams;->access$500(Lcom/google/uwb/support/radar/RadarOpenSessionParams;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/base/RequiredParam;->set(Ljava/lang/Object;)V

    .line 298
    iget-object v0, p0, Lcom/google/uwb/support/radar/RadarOpenSessionParams$Builder;->mChannelNumber:Lcom/google/uwb/support/base/RequiredParam;

    invoke-static {p1}, Lcom/google/uwb/support/radar/RadarOpenSessionParams;->access$600(Lcom/google/uwb/support/radar/RadarOpenSessionParams;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/base/RequiredParam;->set(Ljava/lang/Object;)V

    .line 299
    iget-object v0, p0, Lcom/google/uwb/support/radar/RadarOpenSessionParams$Builder;->mSweepOffset:Lcom/google/uwb/support/base/RequiredParam;

    invoke-static {p1}, Lcom/google/uwb/support/radar/RadarOpenSessionParams;->access$700(Lcom/google/uwb/support/radar/RadarOpenSessionParams;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/base/RequiredParam;->set(Ljava/lang/Object;)V

    .line 300
    iget-object v0, p0, Lcom/google/uwb/support/radar/RadarOpenSessionParams$Builder;->mRframeConfig:Lcom/google/uwb/support/base/RequiredParam;

    invoke-static {p1}, Lcom/google/uwb/support/radar/RadarOpenSessionParams;->access$800(Lcom/google/uwb/support/radar/RadarOpenSessionParams;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/base/RequiredParam;->set(Ljava/lang/Object;)V

    .line 301
    iget-object v0, p0, Lcom/google/uwb/support/radar/RadarOpenSessionParams$Builder;->mPreambleDuration:Lcom/google/uwb/support/base/RequiredParam;

    invoke-static {p1}, Lcom/google/uwb/support/radar/RadarOpenSessionParams;->access$900(Lcom/google/uwb/support/radar/RadarOpenSessionParams;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/base/RequiredParam;->set(Ljava/lang/Object;)V

    .line 302
    iget-object v0, p0, Lcom/google/uwb/support/radar/RadarOpenSessionParams$Builder;->mPreambleCodeIndex:Lcom/google/uwb/support/base/RequiredParam;

    invoke-static {p1}, Lcom/google/uwb/support/radar/RadarOpenSessionParams;->access$1000(Lcom/google/uwb/support/radar/RadarOpenSessionParams;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/base/RequiredParam;->set(Ljava/lang/Object;)V

    .line 303
    iget-object v0, p0, Lcom/google/uwb/support/radar/RadarOpenSessionParams$Builder;->mSessionPriority:Lcom/google/uwb/support/base/RequiredParam;

    invoke-static {p1}, Lcom/google/uwb/support/radar/RadarOpenSessionParams;->access$1100(Lcom/google/uwb/support/radar/RadarOpenSessionParams;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/base/RequiredParam;->set(Ljava/lang/Object;)V

    .line 304
    iget-object v0, p0, Lcom/google/uwb/support/radar/RadarOpenSessionParams$Builder;->mBitsPerSample:Lcom/google/uwb/support/base/RequiredParam;

    invoke-static {p1}, Lcom/google/uwb/support/radar/RadarOpenSessionParams;->access$1200(Lcom/google/uwb/support/radar/RadarOpenSessionParams;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/base/RequiredParam;->set(Ljava/lang/Object;)V

    .line 305
    iget-object v0, p0, Lcom/google/uwb/support/radar/RadarOpenSessionParams$Builder;->mPrfMode:Lcom/google/uwb/support/base/RequiredParam;

    invoke-static {p1}, Lcom/google/uwb/support/radar/RadarOpenSessionParams;->access$1300(Lcom/google/uwb/support/radar/RadarOpenSessionParams;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/base/RequiredParam;->set(Ljava/lang/Object;)V

    .line 306
    iget-object v0, p0, Lcom/google/uwb/support/radar/RadarOpenSessionParams$Builder;->mNumberOfBursts:Lcom/google/uwb/support/base/RequiredParam;

    invoke-static {p1}, Lcom/google/uwb/support/radar/RadarOpenSessionParams;->access$1400(Lcom/google/uwb/support/radar/RadarOpenSessionParams;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/base/RequiredParam;->set(Ljava/lang/Object;)V

    .line 307
    iget-object v0, p0, Lcom/google/uwb/support/radar/RadarOpenSessionParams$Builder;->mRadarDataType:Lcom/google/uwb/support/base/RequiredParam;

    invoke-static {p1}, Lcom/google/uwb/support/radar/RadarOpenSessionParams;->access$1500(Lcom/google/uwb/support/radar/RadarOpenSessionParams;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/base/RequiredParam;->set(Ljava/lang/Object;)V

    .line 308
    return-void
.end method


# virtual methods
.method public build()Lcom/google/uwb/support/radar/RadarOpenSessionParams;
    .locals 20

    .line 402
    move-object/from16 v0, p0

    new-instance v1, Lcom/google/uwb/support/radar/RadarOpenSessionParams;

    iget-object v2, v0, Lcom/google/uwb/support/radar/RadarOpenSessionParams$Builder;->mSessionId:Lcom/google/uwb/support/base/RequiredParam;

    .line 403
    invoke-virtual {v2}, Lcom/google/uwb/support/base/RequiredParam;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget v3, v0, Lcom/google/uwb/support/radar/RadarOpenSessionParams$Builder;->mSessionType:I

    iget-object v4, v0, Lcom/google/uwb/support/radar/RadarOpenSessionParams$Builder;->mBurstPeriod:Lcom/google/uwb/support/base/RequiredParam;

    .line 405
    invoke-virtual {v4}, Lcom/google/uwb/support/base/RequiredParam;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v5, v0, Lcom/google/uwb/support/radar/RadarOpenSessionParams$Builder;->mSweepPeriod:Lcom/google/uwb/support/base/RequiredParam;

    .line 406
    invoke-virtual {v5}, Lcom/google/uwb/support/base/RequiredParam;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v6, v0, Lcom/google/uwb/support/radar/RadarOpenSessionParams$Builder;->mSweepsPerBurst:Lcom/google/uwb/support/base/RequiredParam;

    .line 407
    invoke-virtual {v6}, Lcom/google/uwb/support/base/RequiredParam;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v7, v0, Lcom/google/uwb/support/radar/RadarOpenSessionParams$Builder;->mSamplesPerSweep:Lcom/google/uwb/support/base/RequiredParam;

    .line 408
    invoke-virtual {v7}, Lcom/google/uwb/support/base/RequiredParam;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget-object v8, v0, Lcom/google/uwb/support/radar/RadarOpenSessionParams$Builder;->mChannelNumber:Lcom/google/uwb/support/base/RequiredParam;

    .line 409
    invoke-virtual {v8}, Lcom/google/uwb/support/base/RequiredParam;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iget-object v9, v0, Lcom/google/uwb/support/radar/RadarOpenSessionParams$Builder;->mSweepOffset:Lcom/google/uwb/support/base/RequiredParam;

    .line 410
    invoke-virtual {v9}, Lcom/google/uwb/support/base/RequiredParam;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iget-object v10, v0, Lcom/google/uwb/support/radar/RadarOpenSessionParams$Builder;->mRframeConfig:Lcom/google/uwb/support/base/RequiredParam;

    .line 411
    invoke-virtual {v10}, Lcom/google/uwb/support/base/RequiredParam;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iget-object v11, v0, Lcom/google/uwb/support/radar/RadarOpenSessionParams$Builder;->mPreambleDuration:Lcom/google/uwb/support/base/RequiredParam;

    .line 412
    invoke-virtual {v11}, Lcom/google/uwb/support/base/RequiredParam;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    iget-object v12, v0, Lcom/google/uwb/support/radar/RadarOpenSessionParams$Builder;->mPreambleCodeIndex:Lcom/google/uwb/support/base/RequiredParam;

    .line 413
    invoke-virtual {v12}, Lcom/google/uwb/support/base/RequiredParam;->get()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    iget-object v13, v0, Lcom/google/uwb/support/radar/RadarOpenSessionParams$Builder;->mSessionPriority:Lcom/google/uwb/support/base/RequiredParam;

    .line 414
    invoke-virtual {v13}, Lcom/google/uwb/support/base/RequiredParam;->get()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    iget-object v14, v0, Lcom/google/uwb/support/radar/RadarOpenSessionParams$Builder;->mBitsPerSample:Lcom/google/uwb/support/base/RequiredParam;

    .line 415
    invoke-virtual {v14}, Lcom/google/uwb/support/base/RequiredParam;->get()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    iget-object v15, v0, Lcom/google/uwb/support/radar/RadarOpenSessionParams$Builder;->mPrfMode:Lcom/google/uwb/support/base/RequiredParam;

    .line 416
    invoke-virtual {v15}, Lcom/google/uwb/support/base/RequiredParam;->get()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    move-object/from16 v16, v1

    iget-object v1, v0, Lcom/google/uwb/support/radar/RadarOpenSessionParams$Builder;->mNumberOfBursts:Lcom/google/uwb/support/base/RequiredParam;

    .line 417
    invoke-virtual {v1}, Lcom/google/uwb/support/base/RequiredParam;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    move/from16 v17, v1

    iget-object v1, v0, Lcom/google/uwb/support/radar/RadarOpenSessionParams$Builder;->mRadarDataType:Lcom/google/uwb/support/base/RequiredParam;

    .line 418
    invoke-virtual {v1}, Lcom/google/uwb/support/base/RequiredParam;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v18, 0x0

    move/from16 v19, v17

    move/from16 v17, v1

    move-object/from16 v1, v16

    move/from16 v16, v19

    invoke-direct/range {v1 .. v18}, Lcom/google/uwb/support/radar/RadarOpenSessionParams;-><init>(IIIIIIIIIIIIIIIILcom/google/uwb/support/radar/RadarOpenSessionParams$1;)V

    .line 402
    move-object/from16 v16, v1

    return-object v16
.end method

.method public setBitsPerSample(I)Lcom/google/uwb/support/radar/RadarOpenSessionParams$Builder;
    .locals 2
    .param p1, "bitsPerSample"    # I

    .line 378
    iget-object v0, p0, Lcom/google/uwb/support/radar/RadarOpenSessionParams$Builder;->mBitsPerSample:Lcom/google/uwb/support/base/RequiredParam;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/base/RequiredParam;->set(Ljava/lang/Object;)V

    .line 379
    return-object p0
.end method

.method public setBurstPeriod(I)Lcom/google/uwb/support/radar/RadarOpenSessionParams$Builder;
    .locals 2
    .param p1, "burstPeriod"    # I

    .line 318
    iget-object v0, p0, Lcom/google/uwb/support/radar/RadarOpenSessionParams$Builder;->mBurstPeriod:Lcom/google/uwb/support/base/RequiredParam;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/base/RequiredParam;->set(Ljava/lang/Object;)V

    .line 319
    return-object p0
.end method

.method public setChannelNumber(I)Lcom/google/uwb/support/radar/RadarOpenSessionParams$Builder;
    .locals 2
    .param p1, "channelNumber"    # I

    .line 342
    iget-object v0, p0, Lcom/google/uwb/support/radar/RadarOpenSessionParams$Builder;->mChannelNumber:Lcom/google/uwb/support/base/RequiredParam;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/base/RequiredParam;->set(Ljava/lang/Object;)V

    .line 343
    return-object p0
.end method

.method public setNumberOfBursts(I)Lcom/google/uwb/support/radar/RadarOpenSessionParams$Builder;
    .locals 2
    .param p1, "numberOfBursts"    # I

    .line 390
    iget-object v0, p0, Lcom/google/uwb/support/radar/RadarOpenSessionParams$Builder;->mNumberOfBursts:Lcom/google/uwb/support/base/RequiredParam;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/base/RequiredParam;->set(Ljava/lang/Object;)V

    .line 391
    return-object p0
.end method

.method public setPreambleCodeIndex(I)Lcom/google/uwb/support/radar/RadarOpenSessionParams$Builder;
    .locals 2
    .param p1, "preambleCodeIndex"    # I

    .line 366
    iget-object v0, p0, Lcom/google/uwb/support/radar/RadarOpenSessionParams$Builder;->mPreambleCodeIndex:Lcom/google/uwb/support/base/RequiredParam;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/base/RequiredParam;->set(Ljava/lang/Object;)V

    .line 367
    return-object p0
.end method

.method public setPreambleDuration(I)Lcom/google/uwb/support/radar/RadarOpenSessionParams$Builder;
    .locals 2
    .param p1, "preambleDuration"    # I

    .line 360
    iget-object v0, p0, Lcom/google/uwb/support/radar/RadarOpenSessionParams$Builder;->mPreambleDuration:Lcom/google/uwb/support/base/RequiredParam;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/base/RequiredParam;->set(Ljava/lang/Object;)V

    .line 361
    return-object p0
.end method

.method public setPrfMode(I)Lcom/google/uwb/support/radar/RadarOpenSessionParams$Builder;
    .locals 2
    .param p1, "prfMode"    # I

    .line 384
    iget-object v0, p0, Lcom/google/uwb/support/radar/RadarOpenSessionParams$Builder;->mPrfMode:Lcom/google/uwb/support/base/RequiredParam;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/base/RequiredParam;->set(Ljava/lang/Object;)V

    .line 385
    return-object p0
.end method

.method public setRadarDataType(I)Lcom/google/uwb/support/radar/RadarOpenSessionParams$Builder;
    .locals 2
    .param p1, "radarDataType"    # I

    .line 396
    iget-object v0, p0, Lcom/google/uwb/support/radar/RadarOpenSessionParams$Builder;->mRadarDataType:Lcom/google/uwb/support/base/RequiredParam;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/base/RequiredParam;->set(Ljava/lang/Object;)V

    .line 397
    return-object p0
.end method

.method public setRframeConfig(I)Lcom/google/uwb/support/radar/RadarOpenSessionParams$Builder;
    .locals 2
    .param p1, "rframeConfig"    # I

    .line 354
    iget-object v0, p0, Lcom/google/uwb/support/radar/RadarOpenSessionParams$Builder;->mRframeConfig:Lcom/google/uwb/support/base/RequiredParam;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/base/RequiredParam;->set(Ljava/lang/Object;)V

    .line 355
    return-object p0
.end method

.method public setSamplesPerSweep(I)Lcom/google/uwb/support/radar/RadarOpenSessionParams$Builder;
    .locals 2
    .param p1, "samplesPerSweep"    # I

    .line 336
    iget-object v0, p0, Lcom/google/uwb/support/radar/RadarOpenSessionParams$Builder;->mSamplesPerSweep:Lcom/google/uwb/support/base/RequiredParam;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/base/RequiredParam;->set(Ljava/lang/Object;)V

    .line 337
    return-object p0
.end method

.method public setSessionId(I)Lcom/google/uwb/support/radar/RadarOpenSessionParams$Builder;
    .locals 2
    .param p1, "sessionId"    # I

    .line 312
    iget-object v0, p0, Lcom/google/uwb/support/radar/RadarOpenSessionParams$Builder;->mSessionId:Lcom/google/uwb/support/base/RequiredParam;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/base/RequiredParam;->set(Ljava/lang/Object;)V

    .line 313
    return-object p0
.end method

.method public setSessionPriority(I)Lcom/google/uwb/support/radar/RadarOpenSessionParams$Builder;
    .locals 2
    .param p1, "sessionPriority"    # I

    .line 372
    iget-object v0, p0, Lcom/google/uwb/support/radar/RadarOpenSessionParams$Builder;->mSessionPriority:Lcom/google/uwb/support/base/RequiredParam;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/base/RequiredParam;->set(Ljava/lang/Object;)V

    .line 373
    return-object p0
.end method

.method public setSweepOffset(I)Lcom/google/uwb/support/radar/RadarOpenSessionParams$Builder;
    .locals 2
    .param p1, "sweepOffset"    # I

    .line 348
    iget-object v0, p0, Lcom/google/uwb/support/radar/RadarOpenSessionParams$Builder;->mSweepOffset:Lcom/google/uwb/support/base/RequiredParam;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/base/RequiredParam;->set(Ljava/lang/Object;)V

    .line 349
    return-object p0
.end method

.method public setSweepPeriod(I)Lcom/google/uwb/support/radar/RadarOpenSessionParams$Builder;
    .locals 2
    .param p1, "sweepPeriod"    # I

    .line 324
    iget-object v0, p0, Lcom/google/uwb/support/radar/RadarOpenSessionParams$Builder;->mSweepPeriod:Lcom/google/uwb/support/base/RequiredParam;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/base/RequiredParam;->set(Ljava/lang/Object;)V

    .line 325
    return-object p0
.end method

.method public setSweepsPerBurst(I)Lcom/google/uwb/support/radar/RadarOpenSessionParams$Builder;
    .locals 2
    .param p1, "sweepsPerBurst"    # I

    .line 330
    iget-object v0, p0, Lcom/google/uwb/support/radar/RadarOpenSessionParams$Builder;->mSweepsPerBurst:Lcom/google/uwb/support/base/RequiredParam;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/base/RequiredParam;->set(Ljava/lang/Object;)V

    .line 331
    return-object p0
.end method
