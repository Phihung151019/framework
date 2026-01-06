.class public Lcom/samsung/uwb/support/data/SecUwbSessionList;
.super Ljava/lang/Object;
.source "SecUwbSessionList.java"


# instance fields
.field mSecUwbSessionData:[Lcom/samsung/uwb/support/data/SecUwbSessionData;

.field mSessionCount:I

.field public mStatus:I


# direct methods
.method public constructor <init>(II[Lcom/samsung/uwb/support/data/SecUwbSessionData;)V
    .locals 0
    .param p1, "status"    # I
    .param p2, "sessionCount"    # I
    .param p3, "secUwbSessionData"    # [Lcom/samsung/uwb/support/data/SecUwbSessionData;

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput p1, p0, Lcom/samsung/uwb/support/data/SecUwbSessionList;->mStatus:I

    .line 50
    iput p2, p0, Lcom/samsung/uwb/support/data/SecUwbSessionList;->mSessionCount:I

    .line 51
    iput-object p3, p0, Lcom/samsung/uwb/support/data/SecUwbSessionList;->mSecUwbSessionData:[Lcom/samsung/uwb/support/data/SecUwbSessionData;

    .line 52
    return-void
.end method

.method public constructor <init>([B)V
    .locals 9
    .param p1, "uciResponse"    # [B

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    if-eqz p1, :cond_1

    array-length v0, p1

    if-lez v0, :cond_1

    .line 28
    new-instance v0, Lcom/samsung/uwb/support/util/UwbByteStream;

    invoke-direct {v0, p1}, Lcom/samsung/uwb/support/util/UwbByteStream;-><init>([B)V

    .line 29
    .local v0, "stream":Lcom/samsung/uwb/support/util/UwbByteStream;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/uwb/support/util/UwbByteStream;->readAsInt(I)I

    move-result v2

    iput v2, p0, Lcom/samsung/uwb/support/data/SecUwbSessionList;->mStatus:I

    .line 30
    iget v2, p0, Lcom/samsung/uwb/support/data/SecUwbSessionList;->mStatus:I

    if-nez v2, :cond_1

    .line 31
    invoke-virtual {v0, v1}, Lcom/samsung/uwb/support/util/UwbByteStream;->readAsInt(I)I

    move-result v2

    .line 32
    .local v2, "sessionCount":I
    const/4 v3, 0x0

    .line 33
    .local v3, "sessionData":[Lcom/samsung/uwb/support/data/SecUwbSessionData;
    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/samsung/uwb/support/util/UwbByteStream;->hasRemaining()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 34
    new-array v3, v2, [Lcom/samsung/uwb/support/data/SecUwbSessionData;

    .line 35
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_0

    .line 36
    const/4 v5, 0x4

    invoke-virtual {v0, v5}, Lcom/samsung/uwb/support/util/UwbByteStream;->readAsIntLE(I)I

    move-result v5

    .line 37
    .local v5, "sessionId":I
    invoke-virtual {v0, v1}, Lcom/samsung/uwb/support/util/UwbByteStream;->readAsInt(I)I

    move-result v6

    .line 38
    .local v6, "sessionType":I
    invoke-virtual {v0, v1}, Lcom/samsung/uwb/support/util/UwbByteStream;->readAsInt(I)I

    move-result v7

    .line 39
    .local v7, "sessionState":I
    new-instance v8, Lcom/samsung/uwb/support/data/SecUwbSessionData;

    invoke-direct {v8, v5, v6, v7}, Lcom/samsung/uwb/support/data/SecUwbSessionData;-><init>(III)V

    aput-object v8, v3, v4

    .line 35
    .end local v5    # "sessionId":I
    .end local v6    # "sessionType":I
    .end local v7    # "sessionState":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 42
    .end local v4    # "i":I
    :cond_0
    iput v2, p0, Lcom/samsung/uwb/support/data/SecUwbSessionList;->mSessionCount:I

    .line 43
    iput-object v3, p0, Lcom/samsung/uwb/support/data/SecUwbSessionList;->mSecUwbSessionData:[Lcom/samsung/uwb/support/data/SecUwbSessionData;

    .line 46
    .end local v0    # "stream":Lcom/samsung/uwb/support/util/UwbByteStream;
    .end local v2    # "sessionCount":I
    .end local v3    # "sessionData":[Lcom/samsung/uwb/support/data/SecUwbSessionData;
    :cond_1
    return-void
.end method


# virtual methods
.method public getSessionCount()I
    .locals 1

    .line 63
    iget v0, p0, Lcom/samsung/uwb/support/data/SecUwbSessionList;->mSessionCount:I

    return v0
.end method

.method public getSessionData()[Lcom/samsung/uwb/support/data/SecUwbSessionData;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/samsung/uwb/support/data/SecUwbSessionList;->mSecUwbSessionData:[Lcom/samsung/uwb/support/data/SecUwbSessionData;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .line 55
    iget v0, p0, Lcom/samsung/uwb/support/data/SecUwbSessionList;->mStatus:I

    return v0
.end method

.method public setSessionCount(I)V
    .locals 0
    .param p1, "sessionCount"    # I

    .line 67
    iput p1, p0, Lcom/samsung/uwb/support/data/SecUwbSessionList;->mSessionCount:I

    .line 68
    return-void
.end method

.method public setSessionData([Lcom/samsung/uwb/support/data/SecUwbSessionData;)V
    .locals 0
    .param p1, "secUwbSessionData"    # [Lcom/samsung/uwb/support/data/SecUwbSessionData;

    .line 75
    iput-object p1, p0, Lcom/samsung/uwb/support/data/SecUwbSessionList;->mSecUwbSessionData:[Lcom/samsung/uwb/support/data/SecUwbSessionData;

    .line 76
    return-void
.end method

.method public setStatus(I)V
    .locals 0
    .param p1, "status"    # I

    .line 59
    iput p1, p0, Lcom/samsung/uwb/support/data/SecUwbSessionList;->mStatus:I

    .line 60
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UwbSessionList { status = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/uwb/support/data/SecUwbSessionList;->mStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sessionCount = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/uwb/support/data/SecUwbSessionList;->mSessionCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sessionData = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/uwb/support/data/SecUwbSessionList;->mSecUwbSessionData:[Lcom/samsung/uwb/support/data/SecUwbSessionData;

    .line 82
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 80
    return-object v0
.end method
