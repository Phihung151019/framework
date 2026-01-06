.class public final Lcom/google/uwb/support/rftest/RfTestPeriodicTxResult$Builder;
.super Ljava/lang/Object;
.source "RfTestPeriodicTxResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/uwb/support/rftest/RfTestPeriodicTxResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
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

.field private mStatus:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    new-instance v0, Lcom/google/uwb/support/base/RequiredParam;

    invoke-direct {v0}, Lcom/google/uwb/support/base/RequiredParam;-><init>()V

    iput-object v0, p0, Lcom/google/uwb/support/rftest/RfTestPeriodicTxResult$Builder;->mRfTestOperationType:Lcom/google/uwb/support/base/RequiredParam;

    return-void
.end method


# virtual methods
.method public build()Lcom/google/uwb/support/rftest/RfTestPeriodicTxResult;
    .locals 5

    .line 123
    new-instance v0, Lcom/google/uwb/support/rftest/RfTestPeriodicTxResult;

    iget v1, p0, Lcom/google/uwb/support/rftest/RfTestPeriodicTxResult$Builder;->mStatus:I

    iget-object v2, p0, Lcom/google/uwb/support/rftest/RfTestPeriodicTxResult$Builder;->mRawNtfData:[B

    iget-object v3, p0, Lcom/google/uwb/support/rftest/RfTestPeriodicTxResult$Builder;->mRfTestOperationType:Lcom/google/uwb/support/base/RequiredParam;

    invoke-virtual {v3}, Lcom/google/uwb/support/base/RequiredParam;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/uwb/support/rftest/RfTestPeriodicTxResult;-><init>(I[BILcom/google/uwb/support/rftest/RfTestPeriodicTxResult$1;)V

    return-object v0
.end method

.method public setOperationType(I)Lcom/google/uwb/support/rftest/RfTestPeriodicTxResult$Builder;
    .locals 2
    .param p1, "rfTestOperationType"    # I

    .line 115
    iget-object v0, p0, Lcom/google/uwb/support/rftest/RfTestPeriodicTxResult$Builder;->mRfTestOperationType:Lcom/google/uwb/support/base/RequiredParam;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/base/RequiredParam;->set(Ljava/lang/Object;)V

    .line 116
    return-object p0
.end method

.method public setRawNtfData([B)Lcom/google/uwb/support/rftest/RfTestPeriodicTxResult$Builder;
    .locals 0
    .param p1, "rawNtfData"    # [B

    .line 110
    iput-object p1, p0, Lcom/google/uwb/support/rftest/RfTestPeriodicTxResult$Builder;->mRawNtfData:[B

    .line 111
    return-object p0
.end method

.method public setStatus(I)Lcom/google/uwb/support/rftest/RfTestPeriodicTxResult$Builder;
    .locals 0
    .param p1, "status"    # I

    .line 105
    iput p1, p0, Lcom/google/uwb/support/rftest/RfTestPeriodicTxResult$Builder;->mStatus:I

    .line 106
    return-object p0
.end method
