.class public Lcom/android/internal/telephony/cat/CommandParams;
.super Ljava/lang/Object;
.source "CommandParams.java"


# instance fields
.field greylist-max-r mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

.field blacklist mLoadIconFailed:Z


# direct methods
.method public constructor greylist-max-r <init>(Lcom/android/internal/telephony/cat/CommandDetails;)V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 35
    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/CommandParams;->mLoadIconFailed:Z

    .line 39
    iput-object p1, p0, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    return-void
.end method


# virtual methods
.method greylist-max-r getCommandType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iget p0, p0, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    invoke-static {p0}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->fromInt(I)Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object p0

    return-object p0
.end method

.method blacklist setIcon(Landroid/graphics/Bitmap;)Z
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/CommandDetails;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
