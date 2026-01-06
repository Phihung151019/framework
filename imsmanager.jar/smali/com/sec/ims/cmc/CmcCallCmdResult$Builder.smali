.class public Lcom/sec/ims/cmc/CmcCallCmdResult$Builder;
.super Ljava/lang/Object;
.source "CmcCallCmdResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/ims/cmc/CmcCallCmdResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field protected mCallId:I

.field protected mCmdResult:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/sec/ims/cmc/CmcCallCmdResult;
    .locals 1

    .line 133
    new-instance v0, Lcom/sec/ims/cmc/CmcCallCmdResult;

    invoke-direct {v0, p0}, Lcom/sec/ims/cmc/CmcCallCmdResult;-><init>(Lcom/sec/ims/cmc/CmcCallCmdResult$Builder;)V

    return-object v0
.end method

.method public setCallId(I)Lcom/sec/ims/cmc/CmcCallCmdResult$Builder;
    .locals 0

    .line 137
    iput p1, p0, Lcom/sec/ims/cmc/CmcCallCmdResult$Builder;->mCallId:I

    return-object p0
.end method

.method public setCmdResult(I)Lcom/sec/ims/cmc/CmcCallCmdResult$Builder;
    .locals 0

    .line 142
    iput p1, p0, Lcom/sec/ims/cmc/CmcCallCmdResult$Builder;->mCmdResult:I

    return-object p0
.end method
