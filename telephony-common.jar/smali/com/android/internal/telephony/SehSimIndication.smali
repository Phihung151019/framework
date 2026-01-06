.class public Lcom/android/internal/telephony/SehSimIndication;
.super Lvendor/samsung/hardware/radio/sim/ISehRadioSimIndication$Stub;
.source "SehSimIndication.java"


# instance fields
.field private final blacklist mRil:Lcom/android/internal/telephony/SemRIL;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/telephony/SemRIL;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lvendor/samsung/hardware/radio/sim/ISehRadioSimIndication$Stub;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/android/internal/telephony/SehSimIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    return-void
.end method


# virtual methods
.method public final blacklist getInterfaceHash()Ljava/lang/String;
    .locals 0

    .line 48
    const-string p0, "e94363ef2041c98feabe84e756d983ad196394e8"

    return-object p0
.end method

.method public final blacklist getInterfaceVersion()I
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public blacklist phonebookInitCompleteIndication(I)V
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/android/internal/telephony/SehSimIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SemRIL;->processIndication(I)V

    .line 73
    iget-object p1, p0, Lcom/android/internal/telephony/SehSimIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    const/16 v0, 0x2b1b

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/SemRIL;->unsljLog(I)V

    .line 75
    iget-object p0, p0, Lcom/android/internal/telephony/SehSimIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    iget-object p0, p0, Lcom/android/internal/telephony/SemBaseCommands;->mPbInitCompleteRegistrant:Lcom/android/internal/telephony/Registrant;

    if-eqz p0, :cond_0

    .line 76
    invoke-virtual {p0}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant()V

    :cond_0
    return-void
.end method

.method public blacklist releaseCompleteMessageIndication(ILvendor/samsung/hardware/radio/sim/SehSsReleaseComplete;)V
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/android/internal/telephony/SehSimIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SemRIL;->processIndication(I)V

    .line 177
    new-instance p1, Lcom/android/internal/telephony/SSReleaseCompleteNotification;

    invoke-direct {p1}, Lcom/android/internal/telephony/SSReleaseCompleteNotification;-><init>()V

    .line 179
    iget v0, p2, Lvendor/samsung/hardware/radio/sim/SehSsReleaseComplete;->size:I

    iput v0, p1, Lcom/android/internal/telephony/SSReleaseCompleteNotification;->size:I

    .line 180
    iget v0, p2, Lvendor/samsung/hardware/radio/sim/SehSsReleaseComplete;->dataLen:I

    iput v0, p1, Lcom/android/internal/telephony/SSReleaseCompleteNotification;->dataLen:I

    .line 181
    iget v0, p2, Lvendor/samsung/hardware/radio/sim/SehSsReleaseComplete;->params:I

    iput v0, p1, Lcom/android/internal/telephony/SSReleaseCompleteNotification;->params:I

    .line 182
    iget v0, p2, Lvendor/samsung/hardware/radio/sim/SehSsReleaseComplete;->status:I

    iput v0, p1, Lcom/android/internal/telephony/SSReleaseCompleteNotification;->status:I

    .line 183
    iget-object p2, p2, Lvendor/samsung/hardware/radio/sim/SehSsReleaseComplete;->data:Ljava/lang/String;

    iput-object p2, p1, Lcom/android/internal/telephony/SSReleaseCompleteNotification;->data:Ljava/lang/String;

    .line 185
    iget-object p2, p0, Lcom/android/internal/telephony/SehSimIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    const/16 v0, 0x2af9

    invoke-virtual {p2, v0, p1}, Lcom/android/internal/telephony/SemRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 187
    iget-object p0, p0, Lcom/android/internal/telephony/SehSimIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    iget-object p0, p0, Lcom/android/internal/telephony/SemBaseCommands;->mReleaseCompleteMessageRegistrant:Lcom/android/internal/telephony/Registrant;

    if-eqz p0, :cond_0

    .line 188
    new-instance p2, Landroid/os/AsyncResult;

    const/4 v0, 0x0

    invoke-direct {p2, v0, p1, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    :cond_0
    return-void
.end method

.method public blacklist sapNotify(I[B)V
    .locals 2

    .line 199
    iget-object v0, p0, Lcom/android/internal/telephony/SehSimIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SemRIL;->processIndication(I)V

    .line 201
    iget-object p1, p0, Lcom/android/internal/telephony/SehSimIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    const/16 v0, 0x2b05

    invoke-static {p2}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/telephony/SemRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 203
    iget-object p0, p0, Lcom/android/internal/telephony/SehSimIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    iget-object p0, p0, Lcom/android/internal/telephony/SemBaseCommands;->mSapRegistant:Lcom/android/internal/telephony/Registrant;

    if-eqz p0, :cond_0

    .line 204
    new-instance p1, Landroid/os/AsyncResult;

    const/4 v0, 0x0

    invoke-direct {p1, v0, p2, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    :cond_0
    return-void
.end method

.method public blacklist simCountMismatchedIndication(II)V
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/android/internal/telephony/SehSimIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SemRIL;->processIndication(I)V

    .line 144
    filled-new-array {p2}, [I

    move-result-object p1

    .line 146
    iget-object p2, p0, Lcom/android/internal/telephony/SehSimIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    const/16 v0, 0x2b32

    invoke-virtual {p2, v0, p1}, Lcom/android/internal/telephony/SemRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 148
    iget-object p0, p0, Lcom/android/internal/telephony/SehSimIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    iget-object p0, p0, Lcom/android/internal/telephony/SemBaseCommands;->mSimCountMismatchRegistrants:Lcom/android/internal/telephony/RegistrantList;

    if-eqz p0, :cond_0

    .line 149
    new-instance p2, Landroid/os/AsyncResult;

    const/4 v0, 0x0

    invoke-direct {p2, v0, p1, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    :cond_0
    return-void
.end method

.method public blacklist simOnOffStateChangedNotify(II)V
    .locals 2

    .line 160
    iget-object v0, p0, Lcom/android/internal/telephony/SehSimIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SemRIL;->processIndication(I)V

    .line 162
    iget-object p1, p0, Lcom/android/internal/telephony/SehSimIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x2b46

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/SemRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 164
    iget-object p0, p0, Lcom/android/internal/telephony/SehSimIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    iget-object p0, p0, Lcom/android/internal/telephony/SemBaseCommands;->mSimOnOffNotiRegistrants:Lcom/android/internal/telephony/RegistrantList;

    if-eqz p0, :cond_0

    .line 165
    new-instance p1, Landroid/os/AsyncResult;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v0, 0x0

    invoke-direct {p1, v0, p2, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    :cond_0
    return-void
.end method

.method public blacklist simPhonebookReadyIndication(I)V
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/android/internal/telephony/SehSimIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SemRIL;->processIndication(I)V

    .line 58
    iget-object p1, p0, Lcom/android/internal/telephony/SehSimIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    const/16 v0, 0x2b0d

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/SemRIL;->unsljLog(I)V

    .line 60
    iget-object p0, p0, Lcom/android/internal/telephony/SehSimIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    iget-object p0, p0, Lcom/android/internal/telephony/SemBaseCommands;->mSimPbReadyRegistrants:Lcom/android/internal/telephony/RegistrantList;

    if-eqz p0, :cond_0

    .line 61
    invoke-virtual {p0}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants()V

    :cond_0
    return-void
.end method

.method public blacklist simSwapStateChangedIndication(II)V
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/android/internal/telephony/SehSimIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SemRIL;->processIndication(I)V

    .line 125
    filled-new-array {p2}, [I

    move-result-object p1

    .line 127
    iget-object p2, p0, Lcom/android/internal/telephony/SehSimIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    const/16 v0, 0x2b31

    invoke-virtual {p2, v0, p1}, Lcom/android/internal/telephony/SemRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 129
    iget-object p0, p0, Lcom/android/internal/telephony/SehSimIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    iget-object p0, p0, Lcom/android/internal/telephony/SemBaseCommands;->mSimSwapRegistrants:Lcom/android/internal/telephony/RegistrantList;

    if-eqz p0, :cond_0

    .line 130
    new-instance p2, Landroid/os/AsyncResult;

    const/4 v0, 0x0

    invoke-direct {p2, v0, p1, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    :cond_0
    return-void
.end method

.method public blacklist stkCallControlResultIndication(ILjava/lang/String;)V
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/android/internal/telephony/SehSimIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SemRIL;->processIndication(I)V

    .line 108
    iget-object p1, p0, Lcom/android/internal/telephony/SehSimIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    const/16 v0, 0x2afb

    invoke-virtual {p1, v0, p2}, Lcom/android/internal/telephony/SemRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 110
    iget-object p0, p0, Lcom/android/internal/telephony/SehSimIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    iget-object p0, p0, Lcom/android/internal/telephony/SemBaseCommands;->mCatCallControlResultRegistrant:Lcom/android/internal/telephony/Registrant;

    if-eqz p0, :cond_0

    .line 111
    new-instance p1, Landroid/os/AsyncResult;

    const/4 v0, 0x0

    invoke-direct {p1, v0, p2, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    :cond_0
    return-void
.end method

.method public blacklist stkSmsSendResultIndication(II)V
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/android/internal/telephony/SehSimIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SemRIL;->processIndication(I)V

    .line 90
    filled-new-array {p2}, [I

    move-result-object p1

    .line 92
    iget-object p2, p0, Lcom/android/internal/telephony/SehSimIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    const/16 v0, 0x2afa

    invoke-virtual {p2, v0, p1}, Lcom/android/internal/telephony/SemRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 94
    iget-object p0, p0, Lcom/android/internal/telephony/SehSimIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    iget-object p0, p0, Lcom/android/internal/telephony/SemBaseCommands;->mCatSendSmsResultRegistrant:Lcom/android/internal/telephony/Registrant;

    if-eqz p0, :cond_0

    .line 95
    new-instance p2, Landroid/os/AsyncResult;

    const/4 v0, 0x0

    invoke-direct {p2, v0, p1, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    :cond_0
    return-void
.end method
