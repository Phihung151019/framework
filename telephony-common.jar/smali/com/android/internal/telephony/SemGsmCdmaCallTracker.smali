.class public Lcom/android/internal/telephony/SemGsmCdmaCallTracker;
.super Lcom/android/internal/telephony/GsmCdmaCallTracker;
.source "SemGsmCdmaCallTracker.java"


# static fields
.field private static final blacklist LOG_TAG:Ljava/lang/String; = "SemGsmCdmaCallTracker"


# instance fields
.field private blacklist mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

.field private blacklist mSemCallDetails:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/telephony/SemCallDetails;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/GsmCdmaPhone;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V
    .locals 1

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/GsmCdmaCallTracker;-><init>(Lcom/android/internal/telephony/GsmCdmaPhone;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V

    const/4 p2, 0x0

    .line 32
    iput-object p2, p0, Lcom/android/internal/telephony/SemGsmCdmaCallTracker;->mSemCallDetails:Ljava/util/ArrayList;

    .line 36
    iput-object p1, p0, Lcom/android/internal/telephony/SemGsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    .line 37
    iget-object p1, p1, Lcom/android/internal/telephony/SemPhoneInternal;->mSemCi:Lcom/android/internal/telephony/SemCommandsInterface;

    const/16 v0, 0x3f1

    invoke-interface {p1, p0, v0, p2}, Lcom/android/internal/telephony/SemCommandsInterface;->registerForCallDetailsChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized blacklist dialGsm(Ljava/lang/String;Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;)Lcom/android/internal/telephony/Connection;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    monitor-enter p0

    .line 45
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dialGsm - dial to "

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

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->log(Ljava/lang/String;)V

    .line 47
    iget-boolean v0, p2, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;->isEmergency:Z

    .line 50
    iget-object v1, p0, Lcom/android/internal/telephony/SemGsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    const-string v2, "ril.simoperator"

    const-string v3, "ETC"

    invoke-static {v1, v2, v3}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 51
    iget-object v2, p0, Lcom/android/internal/telephony/SemGsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    .line 52
    const-string v3, "default"

    iget-object v4, p0, Lcom/android/internal/telephony/CallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4}, Lcom/android/internal/telephony/CommandsInterface;->getModemService()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    const/16 v4, 0x65

    if-eqz v3, :cond_6

    .line 53
    iget-object v3, p0, Lcom/android/internal/telephony/SemGsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/GsmCdmaPhone;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v3

    const-string v5, "466"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    const/4 v5, 0x1

    if-nez v3, :cond_0

    const-string v3, "CBN"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_6

    :cond_0
    :goto_0
    if-nez v0, :cond_2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    .line 54
    :cond_1
    new-instance p1, Lcom/android/internal/telephony/CallStateException;

    const-string p2, "CS call not available"

    invoke-direct {p1, v5, p2}, Lcom/android/internal/telephony/CallStateException;-><init>(ILjava/lang/String;)V

    throw p1

    .line 56
    :cond_2
    :goto_1
    const-string v3, "CTC"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 57
    iget-object v1, p0, Lcom/android/internal/telephony/SemGsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getRadioAccessFamily()I

    move-result v1

    const/high16 v3, 0x80000

    and-int/2addr v1, v3

    if-eqz v1, :cond_4

    .line 58
    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/internal/telephony/SemGsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->isImsRegistered()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_2

    .line 59
    :cond_3
    new-instance p1, Lcom/android/internal/telephony/CallStateException;

    const-string p2, "Impossible to make CS Call with CTC card"

    invoke-direct {p1, v4, p2}, Lcom/android/internal/telephony/CallStateException;-><init>(ILjava/lang/String;)V

    throw p1

    :cond_4
    :goto_2
    if-nez v0, :cond_6

    .line 60
    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    if-eq v1, v5, :cond_5

    goto :goto_3

    .line 62
    :cond_5
    new-instance p1, Lcom/android/internal/telephony/CallStateException;

    const-string p2, "CS call not available now"

    invoke-direct {p1, v5, p2}, Lcom/android/internal/telephony/CallStateException;-><init>(ILjava/lang/String;)V

    throw p1

    .line 68
    :cond_6
    :goto_3
    iget-object v1, p0, Lcom/android/internal/telephony/SemGsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getMNOCarrierId()I

    move-result v1

    .line 69
    iget-object v2, p0, Lcom/android/internal/telephony/SemGsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    const-string v3, "JPN"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/TelephonyFeatures;->isCountrySpecific(I[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    if-nez v0, :cond_9

    iget-object v2, p0, Lcom/android/internal/telephony/SemGsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    .line 70
    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v2

    if-eqz v2, :cond_9

    const/16 v2, 0x62d

    if-eq v1, v2, :cond_7

    const/16 v2, 0x9d2

    if-eq v1, v2, :cond_7

    const/16 v2, 0x83e

    if-eq v1, v2, :cond_7

    const/16 v2, 0x97d

    if-eq v1, v2, :cond_7

    const/16 v2, 0x766

    if-ne v1, v2, :cond_9

    .line 73
    :cond_7
    iget-object v1, p0, Lcom/android/internal/telephony/SemGsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/ServiceStateTracker;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    .line 74
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    if-nez v1, :cond_8

    goto :goto_4

    .line 75
    :cond_8
    const-string p1, "dialGsm - Block dial CS call in home or single LTE / NR network"

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->log(Ljava/lang/String;)V

    .line 76
    new-instance p1, Lcom/android/internal/telephony/CallStateException;

    const-string p2, "cannot dial in current state"

    invoke-direct {p1, p2}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 81
    :cond_9
    :goto_4
    iget-object v1, p0, Lcom/android/internal/telephony/SemGsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    const-string v2, "DSG"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/TelephonyFeatures;->isMainOperatorSpecific(I[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/android/internal/telephony/SemGsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    const/16 v2, 0x9d6

    .line 82
    invoke-static {v1, v2}, Lcom/android/internal/telephony/SemTelephonyHelper;->isCarrierId(Lcom/android/internal/telephony/Phone;I)Z

    move-result v1

    if-eqz v1, :cond_b

    if-nez v0, :cond_b

    const-string v0, "us"

    iget-object v1, p0, Lcom/android/internal/telephony/SemGsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    .line 84
    invoke-static {v1}, Lcom/android/internal/telephony/SemTelephonyHelper;->getNetworkCountryIso(Lcom/android/internal/telephony/Phone;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto :goto_5

    .line 85
    :cond_a
    const-string p1, "dialGsm - do not try CS call for DSG"

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->log(Ljava/lang/String;)V

    .line 86
    new-instance p1, Lcom/android/internal/telephony/CallStateException;

    const-string p2, "CS call not supported for DSG"

    invoke-direct {p1, v4, p2}, Lcom/android/internal/telephony/CallStateException;-><init>(ILjava/lang/String;)V

    throw p1

    .line 89
    :cond_b
    :goto_5
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->dialGsm(Ljava/lang/String;Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;)Lcom/android/internal/telephony/Connection;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :goto_6
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public blacklist dispatchCsCallRadioTech(I)V
    .locals 13

    .line 231
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

    if-nez v0, :cond_0

    .line 232
    const-string p1, "dispatchCsCallRadioTech: mConnections is null"

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->log(Ljava/lang/String;)V

    return-void

    .line 238
    :cond_0
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v4, v0, v2

    if-eqz v4, :cond_2

    .line 240
    invoke-virtual {v4}, Lcom/android/internal/telephony/Connection;->getCallRadioTech()I

    move-result v5

    .line 241
    invoke-virtual {v4}, Lcom/android/internal/telephony/GsmCdmaConnection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    if-nez v3, :cond_1

    if-eq v5, p1, :cond_1

    .line 242
    sget-object v7, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v6, v7, :cond_1

    sget-object v7, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-eq v6, v7, :cond_1

    .line 244
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dispatchCsCallRadioTech - Call radio tech is changed. "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " -> "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ". Notify call quality for call network type update"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->log(Ljava/lang/String;)V

    const/4 v3, 0x1

    .line 249
    :cond_1
    invoke-virtual {v4, p1}, Lcom/android/internal/telephony/ConnectionExt;->setCallRadioTech(I)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    if-eqz v3, :cond_4

    .line 254
    iget-object p0, p0, Lcom/android/internal/telephony/SemGsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    new-instance v1, Landroid/telephony/CallQuality;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct/range {v1 .. v12}, Landroid/telephony/CallQuality;-><init>(IIIIIIIIIII)V

    .line 255
    invoke-static {p1}, Landroid/telephony/ServiceState;->rilRadioTechnologyToNetworkType(I)I

    move-result p1

    .line 254
    invoke-interface {v0, p0, v1, p1}, Lcom/android/internal/telephony/PhoneNotifier;->notifyCallQualityChanged(Lcom/android/internal/telephony/Phone;Landroid/telephony/CallQuality;I)V

    :cond_4
    return-void
.end method

.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 197
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x3f1

    if-eq v0, v1, :cond_0

    .line 216
    invoke-super {p0, p1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->handleMessage(Landroid/os/Message;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 200
    iput-object v0, p0, Lcom/android/internal/telephony/SemGsmCdmaCallTracker;->mSemCallDetails:Ljava/util/ArrayList;

    .line 201
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    if-eqz p1, :cond_2

    .line 202
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v0, :cond_2

    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez p1, :cond_2

    .line 203
    check-cast v0, Ljava/util/ArrayList;

    .line 204
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_2

    .line 206
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/android/internal/telephony/SemGsmCdmaCallTracker;->mSemCallDetails:Ljava/util/ArrayList;

    .line 207
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    check-cast v2, Lcom/android/internal/telephony/SemCallDetails;

    .line 208
    iget-object v3, p0, Lcom/android/internal/telephony/SemGsmCdmaCallTracker;->mSemCallDetails:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 210
    :cond_1
    iget-object p0, p0, Lcom/android/internal/telephony/SemGsmCdmaCallTracker;->mSemCallDetails:Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    :cond_2
    return-void
.end method

.method protected declared-synchronized blacklist handlePollCalls(Landroid/os/AsyncResult;)V
    .locals 11

    monitor-enter p0

    .line 96
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/SemGsmCdmaCallTracker;->mSemCallDetails:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 97
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_5

    .line 98
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    move v2, v1

    .line 100
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 101
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/DriverCall;

    .line 102
    iget-object v4, p0, Lcom/android/internal/telephony/SemGsmCdmaCallTracker;->mSemCallDetails:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/SemCallDetails;

    .line 104
    const-string v5, "dcs"

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/SemCallDetails;->getExtraValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 105
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/16 v6, 0x94

    if-ne v5, v6, :cond_1

    .line 106
    iget-object v5, v3, Lcom/android/internal/telephony/DriverCall;->name:Ljava/lang/String;

    invoke-static {v5}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_0

    .line 108
    :try_start_1
    array-length v6, v5

    if-lez v6, :cond_0

    .line 109
    new-instance v6, Ljava/lang/String;

    const-string v7, "EUC_KR"

    invoke-direct {v6, v5, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v6, v3, Lcom/android/internal/telephony/DriverCall;->name:Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto/16 :goto_6

    .line 112
    :catch_0
    :try_start_2
    const-string v5, ""

    iput-object v5, v3, Lcom/android/internal/telephony/DriverCall;->name:Ljava/lang/String;

    .line 113
    const-string v5, "handlePollCalls: ksc5601 encoding failed"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->log(Ljava/lang/String;)V

    .line 115
    :cond_0
    :goto_1
    invoke-interface {v0, v2, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 119
    :cond_1
    iget-object v5, p0, Lcom/android/internal/telephony/SemGsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    const/4 v6, 0x6

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/Phone;->getHalVersion(I)Lcom/android/internal/telephony/HalVersion;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_5:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/HalVersion;->lessOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 120
    const-string v5, "redirectnm"

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/SemCallDetails;->getExtraValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/android/internal/telephony/DriverCall;->forwardedNumber:Ljava/lang/String;

    if-eqz v5, :cond_2

    .line 122
    invoke-interface {v0, v2, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 124
    :cond_2
    const-string v5, "dualnumber"

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/SemCallDetails;->getExtraValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/internal/telephony/DriverCall;->forwardedNumber:Ljava/lang/String;

    if-eqz v4, :cond_3

    .line 126
    invoke-interface {v0, v2, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 131
    :cond_4
    iput-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .line 135
    :cond_5
    invoke-super {p0, p1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->handlePollCalls(Landroid/os/AsyncResult;)V

    .line 137
    iget-object v0, p0, Lcom/android/internal/telephony/SemGsmCdmaCallTracker;->mSemCallDetails:Ljava/util/ArrayList;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_c

    .line 138
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    .line 140
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    move v2, v1

    move v3, v2

    :goto_3
    iget-object v4, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

    array-length v5, v4

    if-ge v2, v5, :cond_c

    .line 141
    aget-object v4, v4, v2

    if-ge v3, v0, :cond_b

    .line 146
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/DriverCall;

    .line 148
    iget v5, v5, Lcom/android/internal/telephony/DriverCall;->index:I

    add-int/lit8 v6, v2, 0x1

    if-ne v5, v6, :cond_b

    .line 149
    iget-object v5, p0, Lcom/android/internal/telephony/SemGsmCdmaCallTracker;->mSemCallDetails:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/SemCallDetails;

    .line 150
    invoke-virtual {v4}, Lcom/android/internal/telephony/Connection;->getConnectionExtras()Landroid/os/Bundle;

    move-result-object v6

    if-nez v6, :cond_6

    .line 153
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 155
    :cond_6
    const-string v7, "isTwoPhone"

    invoke-virtual {v5, v7}, Lcom/android/internal/telephony/SemCallDetails;->getExtraValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    if-eqz v7, :cond_7

    const-string v7, "com.samsung.telephony.extra.IS_TWO_PHONE_MODE"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_7

    .line 156
    const-string v7, "com.samsung.telephony.extra.IS_TWO_PHONE_MODE"

    const-string v9, "true"

    const-string v10, "isTwoPhone"

    invoke-virtual {v5, v10}, Lcom/android/internal/telephony/SemCallDetails;->getExtraValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    invoke-virtual {v6, v7, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    move v7, v8

    goto :goto_4

    :cond_7
    move v7, v1

    .line 159
    :goto_4
    const-string v9, "cwToneSignal"

    invoke-virtual {v5, v9}, Lcom/android/internal/telephony/SemCallDetails;->getExtraValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_8

    const-string v9, "com.samsung.telephony.extra.CALL_WAITING_TONE_SIGNAL"

    invoke-virtual {v6, v9}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_8

    .line 160
    const-string v7, "com.samsung.telephony.extra.CALL_WAITING_TONE_SIGNAL"

    const-string v9, "cwToneSignal"

    invoke-virtual {v5, v9}, Lcom/android/internal/telephony/SemCallDetails;->getExtraValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v6, v7, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move v7, v8

    .line 163
    :cond_8
    const-string v9, "redirectpi"

    invoke-virtual {v5, v9}, Lcom/android/internal/telephony/SemCallDetails;->getExtraValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_9

    const-string v9, "com.samsung.telephony.extra.CALL_FORWARDING_PRESENTATION"

    invoke-virtual {v6, v9}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_9

    .line 164
    const-string v7, "com.samsung.telephony.extra.CALL_FORWARDING_PRESENTATION"

    const-string v9, "redirectpi"

    invoke-virtual {v5, v9}, Lcom/android/internal/telephony/SemCallDetails;->getExtraValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v7, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_9
    move v8, v7

    :goto_5
    if-eqz v8, :cond_a

    .line 168
    invoke-virtual {v4, v6}, Lcom/android/internal/telephony/Connection;->setConnectionExtras(Landroid/os/Bundle;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_a
    add-int/lit8 v3, v3, 0x1

    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_3

    .line 175
    :cond_c
    monitor-exit p0

    return-void

    :goto_6
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public blacklist hangup(Lcom/android/internal/telephony/GsmCdmaCall;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 188
    sget-object v0, Lcom/android/internal/telephony/SemGsmCdmaCallTracker;->LOG_TAG:Ljava/lang/String;

    const/4 v1, 0x5

    const-string v2, "hangup: "

    invoke-static {v1, v2}, Landroid/os/Debug;->getCallers(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    invoke-super {p0, p1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->hangup(Lcom/android/internal/telephony/GsmCdmaCall;)V

    return-void
.end method

.method public blacklist hangup(Lcom/android/internal/telephony/GsmCdmaConnection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 180
    sget-object v0, Lcom/android/internal/telephony/SemGsmCdmaCallTracker;->LOG_TAG:Ljava/lang/String;

    const/4 v1, 0x5

    const-string v2, "hangup: "

    invoke-static {v1, v2}, Landroid/os/Debug;->getCallers(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    invoke-super {p0, p1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->hangup(Lcom/android/internal/telephony/GsmCdmaConnection;)V

    return-void
.end method

.method protected blacklist isBackgroundCallOnly()Z
    .locals 2

    .line 263
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/GsmCdmaCall;

    .line 264
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    .line 265
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object p0

    sget-object v0, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
