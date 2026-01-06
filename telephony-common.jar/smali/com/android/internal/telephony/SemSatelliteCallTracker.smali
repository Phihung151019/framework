.class public Lcom/android/internal/telephony/SemSatelliteCallTracker;
.super Lcom/android/internal/telephony/GsmCdmaCallTracker;
.source "SemSatelliteCallTracker.java"


# instance fields
.field private blacklist mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/telephony/GsmCdmaPhone;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/GsmCdmaCallTracker;-><init>(Lcom/android/internal/telephony/GsmCdmaPhone;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V

    .line 27
    iput-object p1, p0, Lcom/android/internal/telephony/SemSatelliteCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    return-void
.end method

.method private varargs blacklist sLog(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 6

    const/16 v2, 0xb

    const/4 v4, 0x3

    const/16 v1, 0xb

    move-object v0, p0

    move-object v3, p1

    move-object v5, p2

    .line 112
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/SemSatelliteCallTracker;->sLog(IILjava/lang/String;I[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized blacklist dialGsm(Ljava/lang/String;Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;)Lcom/android/internal/telephony/Connection;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    monitor-enter p0

    .line 32
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dialSatellite - dial to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/internal/telephony/SemTelephonyUtils;->maskPii(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ". "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/android/internal/telephony/TelephonyLogUtils;->dialArgsToString(Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SemSatelliteCallTracker;->log(Ljava/lang/String;)V

    .line 33
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->dialGsm(Ljava/lang/String;Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;)Lcom/android/internal/telephony/Connection;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public blacklist hangupAllSatelliteConnections()V
    .locals 1

    .line 37
    const-string v0, "CallRoute - hangupAllSatelliteConnections"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SemSatelliteCallTracker;->log(Ljava/lang/String;)V

    .line 38
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->hangupAllConnections(Lcom/android/internal/telephony/GsmCdmaCall;)V

    .line 39
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->hangupAllConnections(Lcom/android/internal/telephony/GsmCdmaCall;)V

    .line 40
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->hangupAllConnections(Lcom/android/internal/telephony/GsmCdmaCall;)V

    return-void
.end method

.method protected greylist-max-r log(Ljava/lang/String;)V
    .locals 1

    .line 99
    const-string v0, ""

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/SemSatelliteCallTracker;->sLog(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method protected varargs blacklist sLog(IILjava/lang/String;I[Ljava/lang/Object;)V
    .locals 6

    .line 103
    iget-object p0, p0, Lcom/android/internal/telephony/SemSatelliteCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/SemPhoneInternal;->getTelephonyLogger()Lcom/android/internal/telephony/TelephonyLogger;

    move-result-object p0

    :goto_0
    move-object v0, p0

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    goto :goto_0

    :goto_1
    if-eqz v0, :cond_1

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    .line 105
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/TelephonyLogger;->writeFlowLogFromChinaSatellite(IILjava/lang/String;I[Ljava/lang/Object;)V

    return-void

    .line 107
    :cond_1
    const-string p0, "SemSatelliteCallTracker"

    const-string p1, "sLog - No mPhone"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected blacklist sendBigDataCallEnd(ZI)V
    .locals 3

    .line 58
    iget-object v0, p0, Lcom/android/internal/telephony/SemSatelliteCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SemPhoneInternal;->getSatelliteState()Landroid/telephony/satellite/SemSatelliteState;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 59
    invoke-virtual {v0}, Landroid/telephony/satellite/SemSatelliteState;->getSatelliteServiceState()Landroid/telephony/satellite/SemSatelliteServiceState;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 60
    invoke-virtual {v0}, Landroid/telephony/satellite/SemSatelliteState;->getSatelliteServiceState()Landroid/telephony/satellite/SemSatelliteServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/satellite/SemSatelliteServiceState;->getRegistrationState()Landroid/telephony/satellite/SemSatelliteRegistrationStateResult;

    move-result-object v1

    if-nez v1, :cond_0

    goto/16 :goto_1

    .line 63
    :cond_0
    invoke-virtual {v0}, Landroid/telephony/satellite/SemSatelliteState;->getSatelliteServiceState()Landroid/telephony/satellite/SemSatelliteServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/satellite/SemSatelliteServiceState;->getRegistrationState()Landroid/telephony/satellite/SemSatelliteRegistrationStateResult;

    move-result-object v0

    .line 65
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x80

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 66
    const-string v2, "{\"JVER\":\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "QXG1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    const-string v2, "\",\"Ctyp\":\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 68
    const-string v2, "\",\"Etyp\":\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_1

    const-string p1, "13"

    goto :goto_0

    :cond_1
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    const-string p1, "\",\"PLMN\":\""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/internal/telephony/SemSatelliteCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-static {p1}, Lcom/android/internal/telephony/SemTelephonyHelper;->getSimOperatorNumericForPhone(Lcom/android/internal/telephony/Phone;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    const-string p1, "\",\"ACT_\":\""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x8

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 71
    const-string p1, "\",\"RAC_\":\""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x0

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 72
    const-string p2, "\",\"LAC_\":\""

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/telephony/satellite/SemSatelliteRegistrationStateResult;->getLac()I

    move-result p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 73
    const-string p2, "\",\"TAC_\":\""

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 74
    const-string p2, "\",\"C_ID\":\""

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/telephony/satellite/SemSatelliteRegistrationStateResult;->getCi()I

    move-result p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 75
    const-string p2, "\",\"PhID\":\""

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 76
    const-string p2, "\",\"DLCh\":\""

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/telephony/satellite/SemSatelliteRegistrationStateResult;->getArfcn()I

    move-result p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 77
    const-string p2, "\",\"RgSt\":\""

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/telephony/satellite/SemSatelliteRegistrationStateResult;->getRegState()I

    move-result p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 78
    const-string p2, "\",\"RjCu\":\""

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/telephony/satellite/SemSatelliteRegistrationStateResult;->getRejectCause()I

    move-result p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 80
    const-string p2, "\",\"GRIP\":\""

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 81
    const-string p2, "\",\"EARJ\":\""

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 82
    const-string p2, "\",\"AUST\":\""

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 83
    const-string p2, "\",\"CDTP\":\""

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 84
    const-string p2, "\",\"TxAS\":\""

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 85
    const-string p2, "\",\"MSIM\":\""

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 86
    const-string p2, "\"}"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    .line 89
    const-string v0, "com.samsung.intent.action.BIG_DATA_INFO"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 90
    const-string v0, "feature"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 91
    const-string p1, "bigdata_info"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 92
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "BigData: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/SemTelephonyUtils;->maskPii(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SemSatelliteCallTracker;->log(Ljava/lang/String;)V

    .line 93
    iget-object p0, p0, Lcom/android/internal/telephony/SemSatelliteCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p0

    sget-object p1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v0, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    invoke-virtual {p0, p2, p1, v0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method

.method protected blacklist updateConnectionExtras(Lcom/android/internal/telephony/Connection;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 45
    iget-object v0, p0, Lcom/android/internal/telephony/SemSatelliteCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    check-cast v0, Lcom/android/internal/telephony/SemSatellitePhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SemSatellitePhone;->getSatelliteModeStatus()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 46
    const-string v0, "updateConnectionExtras - SATELLITE_CALL"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SemSatelliteCallTracker;->log(Ljava/lang/String;)V

    .line 47
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getConnectionExtras()Landroid/os/Bundle;

    move-result-object p0

    if-nez p0, :cond_0

    .line 49
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    .line 51
    :cond_0
    const-string v0, "com.samsung.telephony.extra.SATELLITE_CALL"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 52
    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/Connection;->setConnectionExtras(Landroid/os/Bundle;)V

    :cond_1
    return-void
.end method
