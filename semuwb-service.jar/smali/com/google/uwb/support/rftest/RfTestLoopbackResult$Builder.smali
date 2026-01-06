.class public final Lcom/google/uwb/support/rftest/RfTestLoopbackResult$Builder;
.super Ljava/lang/Object;
.source "RfTestLoopbackResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/uwb/support/rftest/RfTestLoopbackResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mAoaAzimuth:I

.field private mAoaElevation:I

.field private mPhr:I

.field private mPsduData:[B

.field private mRawNtfData:[B

.field private mRfTestOperationType:Lcom/google/uwb/support/base/RequiredParam;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/uwb/support/base/RequiredParam<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mRxTsFrac:I

.field private mRxTsInt:J

.field private mStatus:I

.field private mTxTsFrac:I

.field private mTxTsInt:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    new-instance v0, Lcom/google/uwb/support/base/RequiredParam;

    invoke-direct {v0}, Lcom/google/uwb/support/base/RequiredParam;-><init>()V

    iput-object v0, p0, Lcom/google/uwb/support/rftest/RfTestLoopbackResult$Builder;->mRfTestOperationType:Lcom/google/uwb/support/base/RequiredParam;

    return-void
.end method


# virtual methods
.method public build()Lcom/google/uwb/support/rftest/RfTestLoopbackResult;
    .locals 14

    .line 238
    new-instance v0, Lcom/google/uwb/support/rftest/RfTestLoopbackResult;

    iget v1, p0, Lcom/google/uwb/support/rftest/RfTestLoopbackResult$Builder;->mStatus:I

    iget-wide v2, p0, Lcom/google/uwb/support/rftest/RfTestLoopbackResult$Builder;->mTxTsInt:J

    iget v4, p0, Lcom/google/uwb/support/rftest/RfTestLoopbackResult$Builder;->mTxTsFrac:I

    iget-wide v5, p0, Lcom/google/uwb/support/rftest/RfTestLoopbackResult$Builder;->mRxTsInt:J

    iget v7, p0, Lcom/google/uwb/support/rftest/RfTestLoopbackResult$Builder;->mRxTsFrac:I

    iget v8, p0, Lcom/google/uwb/support/rftest/RfTestLoopbackResult$Builder;->mAoaAzimuth:I

    iget v9, p0, Lcom/google/uwb/support/rftest/RfTestLoopbackResult$Builder;->mAoaElevation:I

    iget v10, p0, Lcom/google/uwb/support/rftest/RfTestLoopbackResult$Builder;->mPhr:I

    iget-object v11, p0, Lcom/google/uwb/support/rftest/RfTestLoopbackResult$Builder;->mPsduData:[B

    iget-object v12, p0, Lcom/google/uwb/support/rftest/RfTestLoopbackResult$Builder;->mRawNtfData:[B

    iget-object v13, p0, Lcom/google/uwb/support/rftest/RfTestLoopbackResult$Builder;->mRfTestOperationType:Lcom/google/uwb/support/base/RequiredParam;

    .line 240
    invoke-virtual {v13}, Lcom/google/uwb/support/base/RequiredParam;->get()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-direct/range {v0 .. v13}, Lcom/google/uwb/support/rftest/RfTestLoopbackResult;-><init>(IJIJIIII[B[BI)V

    .line 238
    return-object v0
.end method

.method public setAoaAzimuth(I)Lcom/google/uwb/support/rftest/RfTestLoopbackResult$Builder;
    .locals 0
    .param p1, "aoaAzimuth"    # I

    .line 205
    iput p1, p0, Lcom/google/uwb/support/rftest/RfTestLoopbackResult$Builder;->mAoaAzimuth:I

    .line 206
    return-object p0
.end method

.method public setAoaElevation(I)Lcom/google/uwb/support/rftest/RfTestLoopbackResult$Builder;
    .locals 0
    .param p1, "aoaElevation"    # I

    .line 210
    iput p1, p0, Lcom/google/uwb/support/rftest/RfTestLoopbackResult$Builder;->mAoaElevation:I

    .line 211
    return-object p0
.end method

.method public setOperationType(I)Lcom/google/uwb/support/rftest/RfTestLoopbackResult$Builder;
    .locals 2
    .param p1, "rfTestOperationType"    # I

    .line 230
    iget-object v0, p0, Lcom/google/uwb/support/rftest/RfTestLoopbackResult$Builder;->mRfTestOperationType:Lcom/google/uwb/support/base/RequiredParam;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/base/RequiredParam;->set(Ljava/lang/Object;)V

    .line 231
    return-object p0
.end method

.method public setPhr(I)Lcom/google/uwb/support/rftest/RfTestLoopbackResult$Builder;
    .locals 0
    .param p1, "phr"    # I

    .line 215
    iput p1, p0, Lcom/google/uwb/support/rftest/RfTestLoopbackResult$Builder;->mPhr:I

    .line 216
    return-object p0
.end method

.method public setPsduData([B)Lcom/google/uwb/support/rftest/RfTestLoopbackResult$Builder;
    .locals 0
    .param p1, "psduData"    # [B

    .line 220
    iput-object p1, p0, Lcom/google/uwb/support/rftest/RfTestLoopbackResult$Builder;->mPsduData:[B

    .line 221
    return-object p0
.end method

.method public setRawNtfData([B)Lcom/google/uwb/support/rftest/RfTestLoopbackResult$Builder;
    .locals 0
    .param p1, "rawNtfData"    # [B

    .line 225
    iput-object p1, p0, Lcom/google/uwb/support/rftest/RfTestLoopbackResult$Builder;->mRawNtfData:[B

    .line 226
    return-object p0
.end method

.method public setRxTsFrac(I)Lcom/google/uwb/support/rftest/RfTestLoopbackResult$Builder;
    .locals 0
    .param p1, "rxTsFrac"    # I

    .line 200
    iput p1, p0, Lcom/google/uwb/support/rftest/RfTestLoopbackResult$Builder;->mRxTsFrac:I

    .line 201
    return-object p0
.end method

.method public setRxTsInt(J)Lcom/google/uwb/support/rftest/RfTestLoopbackResult$Builder;
    .locals 0
    .param p1, "rxTsInt"    # J

    .line 195
    iput-wide p1, p0, Lcom/google/uwb/support/rftest/RfTestLoopbackResult$Builder;->mRxTsInt:J

    .line 196
    return-object p0
.end method

.method public setStatus(I)Lcom/google/uwb/support/rftest/RfTestLoopbackResult$Builder;
    .locals 0
    .param p1, "status"    # I

    .line 180
    iput p1, p0, Lcom/google/uwb/support/rftest/RfTestLoopbackResult$Builder;->mStatus:I

    .line 181
    return-object p0
.end method

.method public setTxTsFrac(I)Lcom/google/uwb/support/rftest/RfTestLoopbackResult$Builder;
    .locals 0
    .param p1, "txTsFrac"    # I

    .line 190
    iput p1, p0, Lcom/google/uwb/support/rftest/RfTestLoopbackResult$Builder;->mTxTsFrac:I

    .line 191
    return-object p0
.end method

.method public setTxTsInt(J)Lcom/google/uwb/support/rftest/RfTestLoopbackResult$Builder;
    .locals 0
    .param p1, "txTsInt"    # J

    .line 185
    iput-wide p1, p0, Lcom/google/uwb/support/rftest/RfTestLoopbackResult$Builder;->mTxTsInt:J

    .line 186
    return-object p0
.end method
