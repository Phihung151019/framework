.class public final Lcom/google/uwb/support/rftest/RfTestPerRxResult$Builder;
.super Ljava/lang/Object;
.source "RfTestPerRxResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/uwb/support/rftest/RfTestPerRxResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mAcqDetect:J

.field private mAcqReject:J

.field private mAttempts:J

.field private mEof:J

.field private mPhrBitError:J

.field private mPhrDecError:J

.field private mPsduBitError:J

.field private mPsduDecError:J

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

.field private mRxFail:J

.field private mSfdFail:J

.field private mSfdFound:J

.field private mStatus:I

.field private mStsFound:J

.field private mSyncCirReady:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 214
    new-instance v0, Lcom/google/uwb/support/base/RequiredParam;

    invoke-direct {v0}, Lcom/google/uwb/support/base/RequiredParam;-><init>()V

    iput-object v0, p0, Lcom/google/uwb/support/rftest/RfTestPerRxResult$Builder;->mRfTestOperationType:Lcom/google/uwb/support/base/RequiredParam;

    return-void
.end method


# virtual methods
.method public build()Lcom/google/uwb/support/rftest/RfTestPerRxResult;
    .locals 34

    .line 315
    move-object/from16 v0, p0

    new-instance v1, Lcom/google/uwb/support/rftest/RfTestPerRxResult;

    iget v2, v0, Lcom/google/uwb/support/rftest/RfTestPerRxResult$Builder;->mStatus:I

    iget-wide v3, v0, Lcom/google/uwb/support/rftest/RfTestPerRxResult$Builder;->mAttempts:J

    iget-wide v5, v0, Lcom/google/uwb/support/rftest/RfTestPerRxResult$Builder;->mAcqDetect:J

    iget-wide v7, v0, Lcom/google/uwb/support/rftest/RfTestPerRxResult$Builder;->mAcqReject:J

    iget-wide v9, v0, Lcom/google/uwb/support/rftest/RfTestPerRxResult$Builder;->mRxFail:J

    iget-wide v11, v0, Lcom/google/uwb/support/rftest/RfTestPerRxResult$Builder;->mSyncCirReady:J

    iget-wide v13, v0, Lcom/google/uwb/support/rftest/RfTestPerRxResult$Builder;->mSfdFail:J

    move-object v15, v1

    move/from16 v16, v2

    iget-wide v1, v0, Lcom/google/uwb/support/rftest/RfTestPerRxResult$Builder;->mSfdFound:J

    move-wide/from16 v17, v1

    iget-wide v1, v0, Lcom/google/uwb/support/rftest/RfTestPerRxResult$Builder;->mPhrDecError:J

    move-wide/from16 v19, v1

    iget-wide v1, v0, Lcom/google/uwb/support/rftest/RfTestPerRxResult$Builder;->mPhrBitError:J

    move-wide/from16 v21, v1

    iget-wide v1, v0, Lcom/google/uwb/support/rftest/RfTestPerRxResult$Builder;->mPsduDecError:J

    move-wide/from16 v23, v1

    iget-wide v1, v0, Lcom/google/uwb/support/rftest/RfTestPerRxResult$Builder;->mPsduBitError:J

    move-wide/from16 v25, v1

    iget-wide v1, v0, Lcom/google/uwb/support/rftest/RfTestPerRxResult$Builder;->mStsFound:J

    move-wide/from16 v27, v1

    iget-wide v1, v0, Lcom/google/uwb/support/rftest/RfTestPerRxResult$Builder;->mEof:J

    move-wide/from16 v29, v1

    iget-object v1, v0, Lcom/google/uwb/support/rftest/RfTestPerRxResult$Builder;->mRawNtfData:[B

    iget-object v2, v0, Lcom/google/uwb/support/rftest/RfTestPerRxResult$Builder;->mRfTestOperationType:Lcom/google/uwb/support/base/RequiredParam;

    .line 317
    invoke-virtual {v2}, Lcom/google/uwb/support/base/RequiredParam;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v31, 0x0

    move-wide/from16 v32, v29

    move-object/from16 v29, v1

    move/from16 v30, v2

    move-object v1, v15

    move/from16 v2, v16

    move-wide/from16 v15, v17

    move-wide/from16 v17, v19

    move-wide/from16 v19, v21

    move-wide/from16 v21, v23

    move-wide/from16 v23, v25

    move-wide/from16 v25, v27

    move-wide/from16 v27, v32

    invoke-direct/range {v1 .. v31}, Lcom/google/uwb/support/rftest/RfTestPerRxResult;-><init>(IJJJJJJJJJJJJJ[BILcom/google/uwb/support/rftest/RfTestPerRxResult$1;)V

    .line 315
    move-object v15, v1

    return-object v15
.end method

.method public setAcqDetect(J)Lcom/google/uwb/support/rftest/RfTestPerRxResult$Builder;
    .locals 0
    .param p1, "acqDetect"    # J

    .line 242
    iput-wide p1, p0, Lcom/google/uwb/support/rftest/RfTestPerRxResult$Builder;->mAcqDetect:J

    .line 243
    return-object p0
.end method

.method public setAcqReject(J)Lcom/google/uwb/support/rftest/RfTestPerRxResult$Builder;
    .locals 0
    .param p1, "acqReject"    # J

    .line 247
    iput-wide p1, p0, Lcom/google/uwb/support/rftest/RfTestPerRxResult$Builder;->mAcqReject:J

    .line 248
    return-object p0
.end method

.method public setAttempts(J)Lcom/google/uwb/support/rftest/RfTestPerRxResult$Builder;
    .locals 0
    .param p1, "attempts"    # J

    .line 237
    iput-wide p1, p0, Lcom/google/uwb/support/rftest/RfTestPerRxResult$Builder;->mAttempts:J

    .line 238
    return-object p0
.end method

.method public setEof(J)Lcom/google/uwb/support/rftest/RfTestPerRxResult$Builder;
    .locals 0
    .param p1, "eof"    # J

    .line 297
    iput-wide p1, p0, Lcom/google/uwb/support/rftest/RfTestPerRxResult$Builder;->mEof:J

    .line 298
    return-object p0
.end method

.method public setOperationType(I)Lcom/google/uwb/support/rftest/RfTestPerRxResult$Builder;
    .locals 2
    .param p1, "rfTestOperationType"    # I

    .line 307
    iget-object v0, p0, Lcom/google/uwb/support/rftest/RfTestPerRxResult$Builder;->mRfTestOperationType:Lcom/google/uwb/support/base/RequiredParam;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/base/RequiredParam;->set(Ljava/lang/Object;)V

    .line 308
    return-object p0
.end method

.method public setPhrBitError(J)Lcom/google/uwb/support/rftest/RfTestPerRxResult$Builder;
    .locals 0
    .param p1, "phrBitError"    # J

    .line 277
    iput-wide p1, p0, Lcom/google/uwb/support/rftest/RfTestPerRxResult$Builder;->mPhrBitError:J

    .line 278
    return-object p0
.end method

.method public setPhrDecError(J)Lcom/google/uwb/support/rftest/RfTestPerRxResult$Builder;
    .locals 0
    .param p1, "phrDecError"    # J

    .line 272
    iput-wide p1, p0, Lcom/google/uwb/support/rftest/RfTestPerRxResult$Builder;->mPhrDecError:J

    .line 273
    return-object p0
.end method

.method public setPsduBitError(J)Lcom/google/uwb/support/rftest/RfTestPerRxResult$Builder;
    .locals 0
    .param p1, "psduBitError"    # J

    .line 287
    iput-wide p1, p0, Lcom/google/uwb/support/rftest/RfTestPerRxResult$Builder;->mPsduBitError:J

    .line 288
    return-object p0
.end method

.method public setPsduDecError(J)Lcom/google/uwb/support/rftest/RfTestPerRxResult$Builder;
    .locals 0
    .param p1, "psduDecError"    # J

    .line 282
    iput-wide p1, p0, Lcom/google/uwb/support/rftest/RfTestPerRxResult$Builder;->mPsduDecError:J

    .line 283
    return-object p0
.end method

.method public setRawNtfData([B)Lcom/google/uwb/support/rftest/RfTestPerRxResult$Builder;
    .locals 0
    .param p1, "rawNtfData"    # [B

    .line 302
    iput-object p1, p0, Lcom/google/uwb/support/rftest/RfTestPerRxResult$Builder;->mRawNtfData:[B

    .line 303
    return-object p0
.end method

.method public setRxFail(J)Lcom/google/uwb/support/rftest/RfTestPerRxResult$Builder;
    .locals 0
    .param p1, "rxFail"    # J

    .line 252
    iput-wide p1, p0, Lcom/google/uwb/support/rftest/RfTestPerRxResult$Builder;->mRxFail:J

    .line 253
    return-object p0
.end method

.method public setSfdFail(J)Lcom/google/uwb/support/rftest/RfTestPerRxResult$Builder;
    .locals 0
    .param p1, "sfdFail"    # J

    .line 262
    iput-wide p1, p0, Lcom/google/uwb/support/rftest/RfTestPerRxResult$Builder;->mSfdFail:J

    .line 263
    return-object p0
.end method

.method public setSfdFound(J)Lcom/google/uwb/support/rftest/RfTestPerRxResult$Builder;
    .locals 0
    .param p1, "sfdFound"    # J

    .line 267
    iput-wide p1, p0, Lcom/google/uwb/support/rftest/RfTestPerRxResult$Builder;->mSfdFound:J

    .line 268
    return-object p0
.end method

.method public setStatus(I)Lcom/google/uwb/support/rftest/RfTestPerRxResult$Builder;
    .locals 0
    .param p1, "status"    # I

    .line 232
    iput p1, p0, Lcom/google/uwb/support/rftest/RfTestPerRxResult$Builder;->mStatus:I

    .line 233
    return-object p0
.end method

.method public setStsFound(J)Lcom/google/uwb/support/rftest/RfTestPerRxResult$Builder;
    .locals 0
    .param p1, "stsFound"    # J

    .line 292
    iput-wide p1, p0, Lcom/google/uwb/support/rftest/RfTestPerRxResult$Builder;->mStsFound:J

    .line 293
    return-object p0
.end method

.method public setSyncCirReady(J)Lcom/google/uwb/support/rftest/RfTestPerRxResult$Builder;
    .locals 0
    .param p1, "syncCirReady"    # J

    .line 257
    iput-wide p1, p0, Lcom/google/uwb/support/rftest/RfTestPerRxResult$Builder;->mSyncCirReady:J

    .line 258
    return-object p0
.end method
