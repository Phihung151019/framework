.class public Lcom/sec/ims/cmc/CmcCallInfo$Builder;
.super Ljava/lang/Object;
.source "CmcCallInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/ims/cmc/CmcCallInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field protected mCmcCallState:I

.field protected mCmcType:I

.field protected mLineSlotId:I

.field protected mPdDeviceId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/sec/ims/cmc/CmcCallInfo;
    .locals 1

    .line 142
    new-instance v0, Lcom/sec/ims/cmc/CmcCallInfo;

    invoke-direct {v0, p0}, Lcom/sec/ims/cmc/CmcCallInfo;-><init>(Lcom/sec/ims/cmc/CmcCallInfo$Builder;)V

    return-object v0
.end method

.method public setCallState(I)Lcom/sec/ims/cmc/CmcCallInfo$Builder;
    .locals 0

    .line 156
    iput p1, p0, Lcom/sec/ims/cmc/CmcCallInfo$Builder;->mCmcCallState:I

    return-object p0
.end method

.method public setCmcType(I)Lcom/sec/ims/cmc/CmcCallInfo$Builder;
    .locals 0

    .line 151
    iput p1, p0, Lcom/sec/ims/cmc/CmcCallInfo$Builder;->mCmcType:I

    return-object p0
.end method

.method public setLineSlotId(I)Lcom/sec/ims/cmc/CmcCallInfo$Builder;
    .locals 0

    .line 146
    iput p1, p0, Lcom/sec/ims/cmc/CmcCallInfo$Builder;->mLineSlotId:I

    return-object p0
.end method

.method public setPdDeviceId(Ljava/lang/String;)Lcom/sec/ims/cmc/CmcCallInfo$Builder;
    .locals 0

    .line 161
    iput-object p1, p0, Lcom/sec/ims/cmc/CmcCallInfo$Builder;->mPdDeviceId:Ljava/lang/String;

    return-object p0
.end method
