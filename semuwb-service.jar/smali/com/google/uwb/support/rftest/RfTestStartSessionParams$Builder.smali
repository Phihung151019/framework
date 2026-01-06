.class public final Lcom/google/uwb/support/rftest/RfTestStartSessionParams$Builder;
.super Ljava/lang/Object;
.source "RfTestStartSessionParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/uwb/support/rftest/RfTestStartSessionParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mPsduData:[B

.field private mRfTestOperationType:Lcom/google/uwb/support/base/RequiredParam;
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

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    new-instance v0, Lcom/google/uwb/support/base/RequiredParam;

    invoke-direct {v0}, Lcom/google/uwb/support/base/RequiredParam;-><init>()V

    iput-object v0, p0, Lcom/google/uwb/support/rftest/RfTestStartSessionParams$Builder;->mRfTestOperationType:Lcom/google/uwb/support/base/RequiredParam;

    .line 98
    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/uwb/support/rftest/RfTestStartSessionParams$Builder;->mPsduData:[B

    .line 100
    return-void
.end method

.method public constructor <init>(Lcom/google/uwb/support/rftest/RfTestStartSessionParams$Builder;)V
    .locals 2
    .param p1, "builder"    # Lcom/google/uwb/support/rftest/RfTestStartSessionParams$Builder;

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    new-instance v0, Lcom/google/uwb/support/base/RequiredParam;

    invoke-direct {v0}, Lcom/google/uwb/support/base/RequiredParam;-><init>()V

    iput-object v0, p0, Lcom/google/uwb/support/rftest/RfTestStartSessionParams$Builder;->mRfTestOperationType:Lcom/google/uwb/support/base/RequiredParam;

    .line 98
    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/uwb/support/rftest/RfTestStartSessionParams$Builder;->mPsduData:[B

    .line 103
    iget-object v0, p0, Lcom/google/uwb/support/rftest/RfTestStartSessionParams$Builder;->mRfTestOperationType:Lcom/google/uwb/support/base/RequiredParam;

    iget-object v1, p1, Lcom/google/uwb/support/rftest/RfTestStartSessionParams$Builder;->mRfTestOperationType:Lcom/google/uwb/support/base/RequiredParam;

    invoke-virtual {v1}, Lcom/google/uwb/support/base/RequiredParam;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/base/RequiredParam;->set(Ljava/lang/Object;)V

    .line 104
    iget-object v0, p1, Lcom/google/uwb/support/rftest/RfTestStartSessionParams$Builder;->mPsduData:[B

    iput-object v0, p0, Lcom/google/uwb/support/rftest/RfTestStartSessionParams$Builder;->mPsduData:[B

    .line 105
    return-void
.end method

.method public constructor <init>(Lcom/google/uwb/support/rftest/RfTestStartSessionParams;)V
    .locals 2
    .param p1, "params"    # Lcom/google/uwb/support/rftest/RfTestStartSessionParams;

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    new-instance v0, Lcom/google/uwb/support/base/RequiredParam;

    invoke-direct {v0}, Lcom/google/uwb/support/base/RequiredParam;-><init>()V

    iput-object v0, p0, Lcom/google/uwb/support/rftest/RfTestStartSessionParams$Builder;->mRfTestOperationType:Lcom/google/uwb/support/base/RequiredParam;

    .line 98
    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/uwb/support/rftest/RfTestStartSessionParams$Builder;->mPsduData:[B

    .line 108
    iget-object v0, p0, Lcom/google/uwb/support/rftest/RfTestStartSessionParams$Builder;->mRfTestOperationType:Lcom/google/uwb/support/base/RequiredParam;

    invoke-static {p1}, Lcom/google/uwb/support/rftest/RfTestStartSessionParams;->access$000(Lcom/google/uwb/support/rftest/RfTestStartSessionParams;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/base/RequiredParam;->set(Ljava/lang/Object;)V

    .line 109
    invoke-static {p1}, Lcom/google/uwb/support/rftest/RfTestStartSessionParams;->access$100(Lcom/google/uwb/support/rftest/RfTestStartSessionParams;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/uwb/support/rftest/RfTestStartSessionParams$Builder;->mPsduData:[B

    .line 110
    return-void
.end method


# virtual methods
.method public build()Lcom/google/uwb/support/rftest/RfTestStartSessionParams;
    .locals 4

    .line 124
    new-instance v0, Lcom/google/uwb/support/rftest/RfTestStartSessionParams;

    iget-object v1, p0, Lcom/google/uwb/support/rftest/RfTestStartSessionParams$Builder;->mRfTestOperationType:Lcom/google/uwb/support/base/RequiredParam;

    .line 125
    invoke-virtual {v1}, Lcom/google/uwb/support/base/RequiredParam;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/google/uwb/support/rftest/RfTestStartSessionParams$Builder;->mPsduData:[B

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/uwb/support/rftest/RfTestStartSessionParams;-><init>(I[BLcom/google/uwb/support/rftest/RfTestStartSessionParams$1;)V

    .line 124
    return-object v0
.end method

.method public setPsduData([B)Lcom/google/uwb/support/rftest/RfTestStartSessionParams$Builder;
    .locals 0
    .param p1, "psduData"    # [B

    .line 118
    iput-object p1, p0, Lcom/google/uwb/support/rftest/RfTestStartSessionParams$Builder;->mPsduData:[B

    .line 119
    return-object p0
.end method

.method public setRfTestOperationType(I)Lcom/google/uwb/support/rftest/RfTestStartSessionParams$Builder;
    .locals 2
    .param p1, "rfTestOperationType"    # I

    .line 113
    iget-object v0, p0, Lcom/google/uwb/support/rftest/RfTestStartSessionParams$Builder;->mRfTestOperationType:Lcom/google/uwb/support/base/RequiredParam;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/base/RequiredParam;->set(Ljava/lang/Object;)V

    .line 114
    return-object p0
.end method
