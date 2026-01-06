.class public Lcom/sec/esecomm/TAResponse;
.super Lcom/sec/esecomm/TACommand;
.source "TAResponse.java"


# static fields
.field static final blacklist TAG:Ljava/lang/String; = "TAReponse"


# instance fields
.field private blacklist mErrCode:I

.field private blacklist mErrDescription:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Lcom/sec/esecomm/TACommand;-><init>()V

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/esecomm/TAResponse;->mErrDescription:Ljava/lang/String;

    .line 24
    return-void
.end method


# virtual methods
.method public blacklist getErrCode()I
    .locals 1

    .line 36
    iget v0, p0, Lcom/sec/esecomm/TAResponse;->mErrCode:I

    return v0
.end method

.method public blacklist getErrDescription()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/sec/esecomm/TAResponse;->mErrDescription:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/sec/esecomm/TACommand;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n[Error -> mErrCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sec/esecomm/TAResponse;->mErrCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mErrDescription: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/esecomm/TAResponse;->mErrDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
