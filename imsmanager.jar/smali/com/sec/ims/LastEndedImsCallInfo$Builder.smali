.class public Lcom/sec/ims/LastEndedImsCallInfo$Builder;
.super Ljava/lang/Object;
.source "LastEndedImsCallInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/ims/LastEndedImsCallInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field protected mErrorCode:I

.field protected mErrorMessage:Ljava/lang/String;

.field protected mIsCallDrop:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 70
    iput-boolean v0, p0, Lcom/sec/ims/LastEndedImsCallInfo$Builder;->mIsCallDrop:Z

    .line 71
    iput v0, p0, Lcom/sec/ims/LastEndedImsCallInfo$Builder;->mErrorCode:I

    .line 72
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/ims/LastEndedImsCallInfo$Builder;->mErrorMessage:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public build()Lcom/sec/ims/LastEndedImsCallInfo;
    .locals 1

    .line 77
    new-instance v0, Lcom/sec/ims/LastEndedImsCallInfo;

    invoke-direct {v0, p0}, Lcom/sec/ims/LastEndedImsCallInfo;-><init>(Lcom/sec/ims/LastEndedImsCallInfo$Builder;)V

    return-object v0
.end method

.method public setErrorCode(I)V
    .locals 0

    .line 85
    iput p1, p0, Lcom/sec/ims/LastEndedImsCallInfo$Builder;->mErrorCode:I

    return-void
.end method

.method public setErrorMessage(Ljava/lang/String;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/sec/ims/LastEndedImsCallInfo$Builder;->mErrorMessage:Ljava/lang/String;

    return-void
.end method

.method public setIsCallDrop(Z)V
    .locals 0

    .line 81
    iput-boolean p1, p0, Lcom/sec/ims/LastEndedImsCallInfo$Builder;->mIsCallDrop:Z

    return-void
.end method
