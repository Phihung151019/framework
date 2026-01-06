.class public Lcom/android/internal/telephony/SehMessagingIndication;
.super Lvendor/samsung/hardware/radio/messaging/ISehRadioMessagingIndication$Stub;
.source "SehMessagingIndication.java"


# instance fields
.field blacklist mRil:Lcom/android/internal/telephony/SemRIL;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/telephony/SemRIL;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lvendor/samsung/hardware/radio/messaging/ISehRadioMessagingIndication$Stub;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/android/internal/telephony/SehMessagingIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    return-void
.end method


# virtual methods
.method public blacklist deviceReadyNoti(I)V
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/android/internal/telephony/SehMessagingIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SemRIL;->processIndication(I)V

    .line 48
    iget-object p1, p0, Lcom/android/internal/telephony/SehMessagingIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    const/16 v0, 0x2b00

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/SemRIL;->unsljLog(I)V

    .line 50
    iget-object p0, p0, Lcom/android/internal/telephony/SehMessagingIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    iget-object p0, p0, Lcom/android/internal/telephony/SemBaseCommands;->mSmsDeviceReadyRegistrant:Lcom/android/internal/telephony/Registrant;

    if-eqz p0, :cond_0

    .line 51
    new-instance p1, Landroid/os/AsyncResult;

    const/4 v0, 0x0

    invoke-direct {p1, v0, v0, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    :cond_0
    return-void
.end method

.method public blacklist getInterfaceHash()Ljava/lang/String;
    .locals 0

    .line 37
    const-string p0, "c1a8596db57e3bcc8e4e86f1eb7b2df7839ca140"

    return-object p0
.end method

.method public blacklist getInterfaceVersion()I
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public blacklist stkSmsSendResultIndication(II)V
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/android/internal/telephony/SehMessagingIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SemRIL;->processIndication(I)V

    .line 59
    filled-new-array {p2}, [I

    move-result-object p1

    .line 61
    iget-object p2, p0, Lcom/android/internal/telephony/SehMessagingIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    const/16 v0, 0x2afa

    invoke-virtual {p2, v0, p1}, Lcom/android/internal/telephony/SemRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 63
    iget-object p0, p0, Lcom/android/internal/telephony/SehMessagingIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    iget-object p0, p0, Lcom/android/internal/telephony/SemBaseCommands;->mCatSendSmsResultRegistrant:Lcom/android/internal/telephony/Registrant;

    if-eqz p0, :cond_0

    .line 64
    new-instance p2, Landroid/os/AsyncResult;

    const/4 v0, 0x0

    invoke-direct {p2, v0, p1, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    :cond_0
    return-void
.end method
