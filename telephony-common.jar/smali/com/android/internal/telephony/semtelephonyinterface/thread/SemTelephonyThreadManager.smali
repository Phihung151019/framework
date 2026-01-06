.class public Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyThreadManager;
.super Ljava/lang/Object;
.source "SemTelephonyThreadManager.java"


# instance fields
.field private final blacklist mPhone:Lcom/android/internal/telephony/Phone;

.field private blacklist mSemTelephonyCommendToRIL:Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyCommendToRIL;

.field private blacklist mSemTelephonyMessengerNSRI:Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyMessengerNSRI;

.field private blacklist mSemTelephonySmsNSRI:Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonySmsNSRI;

.field private blacklist mSemTelephonyUiccOperation:Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyUiccOperation;

.field private blacklist scCmdResult:[B


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyThreadManager;->mPhone:Lcom/android/internal/telephony/Phone;

    return-void
.end method

.method private blacklist getSemTelephonyCommendToRIL()Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyCommendToRIL;
    .locals 2

    .line 120
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyThreadManager;->mSemTelephonyCommendToRIL:Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyCommendToRIL;

    if-nez v0, :cond_0

    .line 121
    new-instance v0, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyCommendToRIL;

    iget-object v1, p0, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyThreadManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyCommendToRIL;-><init>(Lcom/android/internal/telephony/Phone;)V

    iput-object v0, p0, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyThreadManager;->mSemTelephonyCommendToRIL:Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyCommendToRIL;

    .line 122
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    .line 129
    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyThreadManager;->mSemTelephonyCommendToRIL:Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyCommendToRIL;

    return-object p0

    :goto_1
    const/4 v1, 0x0

    .line 125
    iput-object v1, p0, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyThreadManager;->mSemTelephonyCommendToRIL:Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyCommendToRIL;

    .line 126
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 127
    throw v0
.end method

.method private blacklist messengerNSRIStart()V
    .locals 2

    .line 60
    iget-object v0, p0, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyThreadManager;->mSemTelephonyMessengerNSRI:Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyMessengerNSRI;

    if-nez v0, :cond_0

    .line 61
    new-instance v0, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyMessengerNSRI;

    iget-object v1, p0, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyThreadManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyMessengerNSRI;-><init>(Lcom/android/internal/telephony/Phone;)V

    iput-object v0, p0, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyThreadManager;->mSemTelephonyMessengerNSRI:Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyMessengerNSRI;

    .line 62
    const-string v0, "SemTelephonyThreadManager"

    const-string v1, "[NSRI_Messenger] messengerNSRIStart"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    iget-object p0, p0, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyThreadManager;->mSemTelephonyMessengerNSRI:Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyMessengerNSRI;

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method


# virtual methods
.method public blacklist NSRI_requestProc(I[B)[B
    .locals 4

    .line 68
    const-class v0, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyThreadManager;

    monitor-enter v0

    .line 69
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyThreadManager;->messengerNSRIStart()V

    .line 70
    const-string v1, "SemTelephonyThreadManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[NSRI_Messenger] NSRI_requestProc() ==START==  datalen="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    iget-object v1, p0, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyThreadManager;->mSemTelephonyMessengerNSRI:Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyMessengerNSRI;

    invoke-virtual {v1, p2, p1}, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyMessengerNSRI;->commonNSRIRequestProcCmd([BI)[B

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyThreadManager;->scCmdResult:[B

    .line 72
    const-string p1, "SemTelephonyThreadManager"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[NSRI_Messenger] NSRI_requestProc()  ==END== retResult.length="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyThreadManager;->scCmdResult:[B

    array-length v1, v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    iget-object p0, p0, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyThreadManager;->scCmdResult:[B

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 74
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public blacklist checkNSRIUSIMstate_int()I
    .locals 3

    .line 105
    iget-object v0, p0, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyThreadManager;->mSemTelephonySmsNSRI:Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonySmsNSRI;

    const-string v1, "SemTelephonyThreadManager"

    if-nez v0, :cond_0

    .line 106
    new-instance v0, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonySmsNSRI;

    iget-object v2, p0, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyThreadManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonySmsNSRI;-><init>(Lcom/android/internal/telephony/Phone;)V

    iput-object v0, p0, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyThreadManager;->mSemTelephonySmsNSRI:Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonySmsNSRI;

    .line 107
    const-string v0, "[NSRI_SMS] create "

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iget-object v0, p0, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyThreadManager;->mSemTelephonySmsNSRI:Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonySmsNSRI;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 111
    :cond_0
    const-string v0, "[NSRI_SMS] checkNSRIUsimCmd() ==START==  "

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    iget-object p0, p0, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyThreadManager;->mSemTelephonySmsNSRI:Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonySmsNSRI;

    if-eqz p0, :cond_1

    .line 113
    invoke-virtual {p0}, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonySmsNSRI;->checkNSRIUsimCmd()I

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist getCommendToRILInfo(II)Ljava/lang/String;
    .locals 0

    .line 139
    invoke-direct {p0}, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyThreadManager;->getSemTelephonyCommendToRIL()Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyCommendToRIL;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyCommendToRIL;->getInfo(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist setGbaBootstrappingParams(Lcom/android/internal/telephony/Phone;[BLjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 143
    iget-object v0, p0, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyThreadManager;->mSemTelephonyUiccOperation:Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyUiccOperation;

    if-nez v0, :cond_0

    .line 144
    new-instance v0, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyUiccOperation;

    invoke-direct {v0}, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyUiccOperation;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyThreadManager;->mSemTelephonyUiccOperation:Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyUiccOperation;

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyThreadManager;->mSemTelephonyUiccOperation:Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyUiccOperation;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 147
    const-string v0, "SemTelephonyThreadManager"

    const-string v1, "UICC operation start"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    iget-object v0, p0, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyThreadManager;->mSemTelephonyUiccOperation:Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyUiccOperation;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 150
    :cond_1
    iget-object p0, p0, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyThreadManager;->mSemTelephonyUiccOperation:Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyUiccOperation;

    invoke-virtual {p0, p2, p3, p4, p1}, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyUiccOperation;->setGbaBootstrappingParams([BLjava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/Phone;)V

    return-void
.end method

.method public blacklist sms_NSRI_decryptsms(I[B)[B
    .locals 2

    .line 78
    iget-object v0, p0, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyThreadManager;->mSemTelephonySmsNSRI:Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonySmsNSRI;

    if-nez v0, :cond_0

    .line 79
    new-instance v0, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonySmsNSRI;

    iget-object v1, p0, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyThreadManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonySmsNSRI;-><init>(Lcom/android/internal/telephony/Phone;)V

    iput-object v0, p0, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyThreadManager;->mSemTelephonySmsNSRI:Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonySmsNSRI;

    .line 80
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 83
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[NSRI_SMS] sms_NSRI_decryptsms() ==START==  in_len="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemTelephonyThreadManager"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    iget-object v0, p0, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyThreadManager;->mSemTelephonySmsNSRI:Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonySmsNSRI;

    if-eqz v0, :cond_1

    .line 85
    invoke-virtual {v0, p2, p1}, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonySmsNSRI;->smsNSRIDecryptCmd([BI)[B

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyThreadManager;->scCmdResult:[B

    .line 87
    :cond_1
    iget-object p0, p0, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyThreadManager;->scCmdResult:[B

    return-object p0
.end method

.method public blacklist sms_NSRI_decryptsmsintxside(ILjava/lang/String;[B)[B
    .locals 3

    .line 91
    iget-object v0, p0, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyThreadManager;->mSemTelephonySmsNSRI:Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonySmsNSRI;

    if-nez v0, :cond_0

    .line 92
    new-instance v0, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonySmsNSRI;

    iget-object v1, p0, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyThreadManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonySmsNSRI;-><init>(Lcom/android/internal/telephony/Phone;)V

    iput-object v0, p0, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyThreadManager;->mSemTelephonySmsNSRI:Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonySmsNSRI;

    .line 93
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 96
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[NSRI_SMS] sms_NSRI_decryptsmsintxside() ==START==  in_len="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "  phonenumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    const-string v1, "SemTelephonyThreadManager"

    invoke-static {v1, p2}, Lcom/android/telephony/Rlog;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 96
    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    iget-object v0, p0, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyThreadManager;->mSemTelephonySmsNSRI:Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonySmsNSRI;

    if-eqz v0, :cond_1

    .line 99
    invoke-virtual {v0, p2, p3, p1}, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonySmsNSRI;->smsNSRIDecryptTxCmd(Ljava/lang/String;[BI)[B

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyThreadManager;->scCmdResult:[B

    .line 101
    :cond_1
    iget-object p0, p0, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyThreadManager;->scCmdResult:[B

    return-object p0
.end method

.method public blacklist sms_NSRI_encryptsms(ILjava/lang/String;[B)[B
    .locals 3

    .line 46
    iget-object v0, p0, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyThreadManager;->mSemTelephonySmsNSRI:Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonySmsNSRI;

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonySmsNSRI;

    iget-object v1, p0, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyThreadManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonySmsNSRI;-><init>(Lcom/android/internal/telephony/Phone;)V

    iput-object v0, p0, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyThreadManager;->mSemTelephonySmsNSRI:Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonySmsNSRI;

    .line 48
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 51
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[NSRI_SMS] sms_NSRI_encryptsms() ==START==  in_len="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "  phonenumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    const-string v1, "SemTelephonyThreadManager"

    invoke-static {v1, p2}, Lcom/android/telephony/Rlog;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 51
    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    iget-object v0, p0, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyThreadManager;->mSemTelephonySmsNSRI:Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonySmsNSRI;

    if-eqz v0, :cond_1

    .line 54
    invoke-virtual {v0, p2, p3, p1}, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonySmsNSRI;->smsNSRIEncryptCmd(Ljava/lang/String;[BI)[B

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyThreadManager;->scCmdResult:[B

    .line 56
    :cond_1
    iget-object p0, p0, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyThreadManager;->scCmdResult:[B

    return-object p0
.end method

.method public blacklist supplyPerso(Lcom/android/internal/telephony/Phone;Ljava/lang/String;)Z
    .locals 0

    .line 133
    new-instance p0, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyCheckIccPerso;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyCheckIccPerso;-><init>(Lcom/android/internal/telephony/Phone;)V

    .line 134
    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    .line 135
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyCheckIccPerso;->checkPerso(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
