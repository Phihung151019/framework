.class public Lcom/android/internal/telephony/imsphone/SemImsPhoneConnection;
.super Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
.source "SemImsPhoneConnection.java"


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/telephony/Phone;Lcom/android/ims/ImsCall;Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/internal/telephony/imsphone/ImsPhoneCall;Z)V
    .locals 0

    .line 40
    invoke-direct/range {p0 .. p5}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;-><init>(Lcom/android/internal/telephony/Phone;Lcom/android/ims/ImsCall;Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/internal/telephony/imsphone/ImsPhoneCall;Z)V

    .line 43
    const-string p1, "MT"

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ConnectionExt;->initializeHistory(Ljava/lang/String;)V

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/internal/telephony/imsphone/ImsPhoneCall;ZZLcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs;)V
    .locals 0

    .line 50
    invoke-direct/range {p0 .. p7}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;-><init>(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/internal/telephony/imsphone/ImsPhoneCall;ZZLcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs;)V

    .line 53
    const-string p1, "MO"

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ConnectionExt;->initializeHistory(Ljava/lang/String;)V

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/Phone;[Ljava/lang/String;Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/internal/telephony/imsphone/ImsPhoneCall;Z)V
    .locals 0

    .line 59
    invoke-direct/range {p0 .. p5}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;-><init>(Lcom/android/internal/telephony/Phone;[Ljava/lang/String;Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/internal/telephony/imsphone/ImsPhoneCall;Z)V

    const/16 p1, 0x200

    .line 62
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ConnectionBase;->setInternalAttribute(I)V

    .line 65
    const-string p1, "MO[]"

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ConnectionExt;->initializeHistory(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist log(Ljava/lang/String;)V
    .locals 0

    .line 161
    const-string p0, "SemImsPhoneConnection"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method protected whitelist test-api finalize()V
    .locals 2

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "finalize: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getTelecomCallId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/imsphone/SemImsPhoneConnection;->log(Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lcom/android/internal/telephony/ConnectionExt;->mHistory:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 101
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getImsReasonInfo()Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ConnectionExt;->appendDisconnectHistory(ZLandroid/telephony/ims/ImsReasonInfo;)V

    .line 102
    invoke-virtual {p0}, Lcom/android/internal/telephony/ConnectionExt;->writeConnectionHistoryLog()V

    .line 105
    :cond_0
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->finalize()V

    return-void
.end method

.method public blacklist getPreciseState()Lcom/android/internal/telephony/Call$State;
    .locals 2

    .line 131
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    .line 132
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 134
    sget-object v1, Lcom/android/internal/telephony/Call$State;->DISCONNECTING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_0

    .line 135
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mStateWhenDisconnecting:Lcom/android/internal/telephony/Call$State;

    return-object p0

    :cond_0
    return-object v0
.end method

.method public blacklist isEmergencyImsConnection()Z
    .locals 0

    .line 145
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->isEmergency()Z

    move-result p0

    return p0
.end method

.method public greylist-max-r onDisconnect()Z
    .locals 3

    .line 82
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->onDisconnect()Z

    move-result v0

    .line 85
    iget-object v1, p0, Lcom/android/internal/telephony/ConnectionExt;->mHistory:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 86
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getImsReasonInfo()Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/ConnectionExt;->appendDisconnectHistory(ZLandroid/telephony/ims/ImsReasonInfo;)V

    .line 87
    invoke-virtual {p0}, Lcom/android/internal/telephony/ConnectionExt;->writeConnectionHistoryLog()V

    :cond_0
    return v0
.end method

.method public blacklist setTelecomCallId(Ljava/lang/String;)V
    .locals 0

    .line 72
    invoke-super {p0, p1}, Lcom/android/internal/telephony/Connection;->setTelecomCallId(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/SemImsPhoneConnection;->setTelecomCallIdToIms()V

    return-void
.end method

.method public blacklist setTelecomCallIdToIms()V
    .locals 3

    .line 151
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getTelecomCallId()Ljava/lang/String;

    move-result-object v0

    .line 152
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 153
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setTelecomCallIdToIms - callId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/imsphone/SemImsPhoneConnection;->log(Ljava/lang/String;)V

    .line 154
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 155
    const-string v2, "com.samsung.telephony.extra.ims.IMSDC_TELECOM_CALL_ID"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    const-string v0, "com.samsung.telephony.event.IMSDC_UPDATETELECOMCALLID"

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->sendConnectionEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public greylist-max-r update(Lcom/android/ims/ImsCall;Lcom/android/internal/telephony/Call$State;)Z
    .locals 1

    .line 116
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    .line 118
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->update(Lcom/android/ims/ImsCall;Lcom/android/internal/telephony/Call$State;)Z

    move-result p1

    .line 121
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ConnectionExt;->appendStateUpdateHistory(Lcom/android/internal/telephony/Call$State;)V

    return p1
.end method
