.class public Lcom/samsung/uwb/support/data/SecUwbSessionData;
.super Ljava/lang/Object;
.source "SecUwbSessionData.java"


# instance fields
.field mSessionId:I

.field mSessionState:I

.field mSessionType:I


# direct methods
.method public constructor <init>(III)V
    .locals 0
    .param p1, "sessionId"    # I
    .param p2, "sessionType"    # I
    .param p3, "sessionState"    # I

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput p1, p0, Lcom/samsung/uwb/support/data/SecUwbSessionData;->mSessionId:I

    .line 23
    iput p2, p0, Lcom/samsung/uwb/support/data/SecUwbSessionData;->mSessionType:I

    .line 24
    iput p3, p0, Lcom/samsung/uwb/support/data/SecUwbSessionData;->mSessionState:I

    .line 25
    return-void
.end method


# virtual methods
.method public getSessionId()I
    .locals 1

    .line 28
    iget v0, p0, Lcom/samsung/uwb/support/data/SecUwbSessionData;->mSessionId:I

    return v0
.end method

.method public getSessionState()I
    .locals 1

    .line 44
    iget v0, p0, Lcom/samsung/uwb/support/data/SecUwbSessionData;->mSessionState:I

    return v0
.end method

.method public getSessionType()I
    .locals 1

    .line 36
    iget v0, p0, Lcom/samsung/uwb/support/data/SecUwbSessionData;->mSessionType:I

    return v0
.end method

.method public setSessionId(I)V
    .locals 0
    .param p1, "sessionId"    # I

    .line 32
    iput p1, p0, Lcom/samsung/uwb/support/data/SecUwbSessionData;->mSessionId:I

    .line 33
    return-void
.end method

.method public setSessionState(I)V
    .locals 0
    .param p1, "sessionState"    # I

    .line 48
    iput p1, p0, Lcom/samsung/uwb/support/data/SecUwbSessionData;->mSessionState:I

    .line 49
    return-void
.end method

.method public setSessionType(I)V
    .locals 0
    .param p1, "sessionType"    # I

    .line 40
    iput p1, p0, Lcom/samsung/uwb/support/data/SecUwbSessionData;->mSessionType:I

    .line 41
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SessionData { sessionId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/uwb/support/data/SecUwbSessionData;->mSessionId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sessionType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/uwb/support/data/SecUwbSessionData;->mSessionType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sessionState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/uwb/support/data/SecUwbSessionData;->mSessionState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
