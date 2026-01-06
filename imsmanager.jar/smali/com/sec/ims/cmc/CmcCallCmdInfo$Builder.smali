.class public Lcom/sec/ims/cmc/CmcCallCmdInfo$Builder;
.super Ljava/lang/Object;
.source "CmcCallCmdInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/ims/cmc/CmcCallCmdInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field protected mExternalCallSlotAtPd:I

.field protected mPulledDialogId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/ims/cmc/CmcCallCmdInfo$Builder;->mPulledDialogId:Ljava/lang/String;

    const/4 v0, -0x1

    .line 91
    iput v0, p0, Lcom/sec/ims/cmc/CmcCallCmdInfo$Builder;->mExternalCallSlotAtPd:I

    return-void
.end method


# virtual methods
.method public build()Lcom/sec/ims/cmc/CmcCallCmdInfo;
    .locals 1

    .line 97
    new-instance v0, Lcom/sec/ims/cmc/CmcCallCmdInfo;

    invoke-direct {v0, p0}, Lcom/sec/ims/cmc/CmcCallCmdInfo;-><init>(Lcom/sec/ims/cmc/CmcCallCmdInfo$Builder;)V

    return-object v0
.end method

.method public setExternalCallSlotAtPd(I)Lcom/sec/ims/cmc/CmcCallCmdInfo$Builder;
    .locals 0

    .line 106
    iput p1, p0, Lcom/sec/ims/cmc/CmcCallCmdInfo$Builder;->mExternalCallSlotAtPd:I

    return-object p0
.end method

.method public setPulledDialogId(Ljava/lang/String;)Lcom/sec/ims/cmc/CmcCallCmdInfo$Builder;
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/sec/ims/cmc/CmcCallCmdInfo$Builder;->mPulledDialogId:Ljava/lang/String;

    return-object p0
.end method
