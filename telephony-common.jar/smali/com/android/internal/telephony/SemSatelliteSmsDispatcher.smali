.class public Lcom/android/internal/telephony/SemSatelliteSmsDispatcher;
.super Lcom/android/internal/telephony/SMSDispatcher;
.source "SemSatelliteSmsDispatcher.java"


# static fields
.field private static final blacklist LOG_TAG:Ljava/lang/String; = "SemSatelliteSmsDispatcher"


# instance fields
.field private blacklist mPhone:Lcom/android/internal/telephony/Phone;

.field private blacklist mTpmr:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/SmsDispatchersController;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/SMSDispatcher;-><init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/SmsDispatchersController;)V

    .line 34
    iput-object p1, p0, Lcom/android/internal/telephony/SemSatelliteSmsDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    const/4 p1, -0x1

    .line 35
    iput p1, p0, Lcom/android/internal/telephony/SemSatelliteSmsDispatcher;->mTpmr:I

    .line 36
    const-string p1, "SemSatelliteSmsDispatcher created"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemSatelliteSmsDispatcher;->logd(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist getSatelliteCommandsInterface()Lcom/android/internal/telephony/CommandsInterface;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/android/internal/telephony/SemSatelliteSmsDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast p0, Lcom/android/internal/telephony/SemSatellitePhone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/SemSatellitePhone;->getSatelliteCommandsInterface()Lcom/android/internal/telephony/CommandsInterface;

    move-result-object p0

    return-object p0
.end method

.method private blacklist getSatelliteModeStatus()Z
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/android/internal/telephony/SemSatelliteSmsDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast p0, Lcom/android/internal/telephony/SemSatellitePhone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/SemSatellitePhone;->getSatelliteModeStatus()Z

    move-result p0

    return p0
.end method

.method private blacklist logd(Ljava/lang/String;)V
    .locals 0

    .line 195
    sget-object p0, Lcom/android/internal/telephony/SemSatelliteSmsDispatcher;->LOG_TAG:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist loge(Ljava/lang/String;)V
    .locals 0

    .line 199
    sget-object p0, Lcom/android/internal/telephony/SemSatelliteSmsDispatcher;->LOG_TAG:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist setTPMRintoTPDU([BI)V
    .locals 4

    if-eqz p1, :cond_3

    .line 110
    array-length v0, p1

    if-gtz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 115
    aget-byte v1, p1, v0

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-eq v1, v2, :cond_1

    goto :goto_1

    .line 119
    :cond_1
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/SemSatelliteSmsDispatcher;->updateTPMR(I)V

    .line 122
    iget v1, p0, Lcom/android/internal/telephony/SemSatelliteSmsDispatcher;->mTpmr:I

    const/16 v3, 0xff

    and-int/2addr v1, v3

    iput v1, p0, Lcom/android/internal/telephony/SemSatelliteSmsDispatcher;->mTpmr:I

    if-lt v1, v3, :cond_2

    .line 124
    iput v0, p0, Lcom/android/internal/telephony/SemSatelliteSmsDispatcher;->mTpmr:I

    goto :goto_0

    :cond_2
    add-int/2addr v1, v2

    .line 127
    iput v1, p0, Lcom/android/internal/telephony/SemSatelliteSmsDispatcher;->mTpmr:I

    .line 129
    :goto_0
    iget v0, p0, Lcom/android/internal/telephony/SemSatelliteSmsDispatcher;->mTpmr:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "persist.radio.tpmr_sms"

    invoke-direct {p0, p2, v1, v0}, Lcom/android/internal/telephony/SemSatelliteSmsDispatcher;->setTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)V

    .line 131
    iget p2, p0, Lcom/android/internal/telephony/SemSatelliteSmsDispatcher;->mTpmr:I

    int-to-byte p2, p2

    aput-byte p2, p1, v2

    .line 132
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "setTPMRintoTPDU mTpmr : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/internal/telephony/SemSatelliteSmsDispatcher;->mTpmr:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemSatelliteSmsDispatcher;->logd(Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method

.method private blacklist setTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 147
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 149
    invoke-static {p2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez p3, :cond_0

    move-object p3, v1

    :cond_0
    const/16 v3, 0x2c

    const/16 v4, 0x20

    .line 154
    invoke-virtual {p3, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p3

    .line 155
    const-string v3, ","

    if-eqz v2, :cond_1

    .line 156
    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 159
    :goto_0
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v4

    if-nez v4, :cond_2

    return-void

    :cond_2
    const/4 v4, 0x0

    :goto_1
    if-ge v4, p1, :cond_4

    if-eqz v2, :cond_3

    .line 165
    array-length v5, v2

    if-ge v4, v5, :cond_3

    .line 166
    aget-object v5, v2, v4

    goto :goto_2

    :cond_3
    move-object v5, v1

    .line 168
    :goto_2
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 171
    :cond_4
    invoke-virtual {v0, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz v2, :cond_5

    add-int/lit8 v1, p1, 0x1

    .line 173
    :goto_3
    array-length v4, v2

    if-ge v1, v4, :cond_5

    .line 174
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    aget-object v4, v2, v1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 178
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 179
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 181
    :try_start_0
    const-string v2, "utf-8"

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    array-length v1, v2
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 183
    :catch_0
    const-string v2, "setTelephonyProperty: utf-8 not supported"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/SemSatelliteSmsDispatcher;->loge(Ljava/lang/String;)V

    :goto_4
    const/16 v2, 0x5b

    if-le v1, v2, :cond_6

    .line 186
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setTelephonyProperty: property too long phoneId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " property="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " value: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " propVal="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemSatelliteSmsDispatcher;->loge(Ljava/lang/String;)V

    return-void

    .line 191
    :cond_6
    invoke-static {p2, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected blacklist calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .locals 0

    .line 279
    invoke-static {p1, p2}, Lcom/android/internal/telephony/util/SMSDispatcherUtil;->calculateLengthGsm(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object p0

    return-object p0
.end method

.method public blacklist calculateLength(Ljava/lang/CharSequence;ZZ)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .locals 0

    .line 285
    invoke-static {p1, p2}, Lcom/android/internal/telephony/util/SMSDispatcherUtil;->calculateLengthGsm(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object p0

    return-object p0
.end method

.method public blacklist dispose()V
    .locals 0

    .line 0
    return-void
.end method

.method protected blacklist getFormat()Ljava/lang/String;
    .locals 0

    .line 239
    const-string p0, "3gpp"

    return-object p0
.end method

.method protected blacklist getSubmitPdu(Ljava/lang/String;Ljava/lang/String;I[BZ)Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    .locals 0

    .line 258
    invoke-static {p1, p2, p3, p4, p5}, Lcom/android/internal/telephony/util/SMSDispatcherUtil;->getSubmitPduGsm(Ljava/lang/String;Ljava/lang/String;I[BZ)Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;

    move-result-object p0

    return-object p0
.end method

.method protected blacklist getSubmitPdu(Ljava/lang/String;Ljava/lang/String;I[BZI)Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    .locals 0

    .line 273
    invoke-static/range {p1 .. p6}, Lcom/android/internal/telephony/util/SMSDispatcherUtil;->getSubmitPduGsm(Ljava/lang/String;Ljava/lang/String;I[BZI)Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;

    move-result-object p0

    return-object p0
.end method

.method protected blacklist getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;II)Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    .locals 0

    const/4 p0, 0x0

    .line 251
    invoke-static {p1, p2, p3, p4, p0}, Lcom/android/internal/telephony/util/SMSDispatcherUtil;->getSubmitPduGsm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;

    move-result-object p0

    return-object p0
.end method

.method protected blacklist getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;III)Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    .locals 0

    move-object p0, p1

    move-object p1, p2

    move-object p2, p3

    move p3, p4

    const/4 p4, 0x0

    move p5, p8

    .line 266
    invoke-static/range {p0 .. p5}, Lcom/android/internal/telephony/util/SMSDispatcherUtil;->getSubmitPduGsm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZII)Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;

    move-result-object p0

    return-object p0
.end method

.method protected blacklist getSubmitPduForAutoLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;II)Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    .locals 0

    const/4 p0, 0x0

    .line 292
    invoke-static {p1, p2, p3, p4, p0}, Lcom/android/internal/telephony/util/SMSDispatcherUtil;->getSubmitPduGsmForAutoLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;

    move-result-object p0

    return-object p0
.end method

.method protected blacklist sendDatawithOrigPort(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 0

    .line 205
    const-string p1, "sendDatawithOrigPort"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemSatelliteSmsDispatcher;->logd(Ljava/lang/String;)V

    return-void
.end method

.method protected blacklist sendMultipartText(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;IZJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/lang/String;",
            "IZJ)V"
        }
    .end annotation

    .line 226
    const-string p1, "sendMultipartText"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemSatelliteSmsDispatcher;->logd(Ljava/lang/String;)V

    return-void
.end method

.method protected blacklist sendMultipartTextwithOptions(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/net/Uri;Ljava/lang/String;IZIIIZJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "IZIIIZJ)V"
        }
    .end annotation

    .line 234
    const-string p1, "sendMultipartTextwithOptions"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemSatelliteSmsDispatcher;->logd(Ljava/lang/String;)V

    return-void
.end method

.method protected blacklist sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 13

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendSms:  isSat()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    invoke-direct {p0}, Lcom/android/internal/telephony/SemSatelliteSmsDispatcher;->getSatelliteModeStatus()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mRetryCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mImsRetry="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mImsRetry:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mMessageRef="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageRef:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " mUsesImsServiceForIms="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mUsesImsServiceForIms:Z

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageId:J

    .line 57
    invoke-static {v5, v6}, Lcom/android/internal/telephony/SmsController;->formatCrossStackMessageId(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 51
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemSatelliteSmsDispatcher;->logd(Ljava/lang/String;)V

    const/4 v0, 0x2

    .line 58
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 59
    invoke-virtual {p1}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->getData()Ljava/util/HashMap;

    move-result-object v5

    .line 60
    const-string v6, "pdu"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    .line 61
    const-string v7, "smsc"

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    invoke-static {v5}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v5

    .line 62
    invoke-virtual {p1}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->getData()Ljava/util/HashMap;

    move-result-object v7

    const-string v8, "destAddr"

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    if-eqz v7, :cond_0

    .line 64
    const-string v8, "(?<=.{2}).(?=.{2})"

    const-string v9, ""

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 67
    :cond_0
    iget v8, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    if-lez v8, :cond_1

    const/4 v9, 0x0

    .line 71
    aget-byte v10, v6, v9

    and-int/lit8 v11, v10, 0x1

    const/4 v12, 0x1

    if-ne v11, v12, :cond_1

    or-int/lit8 v10, v10, 0x4

    int-to-byte v10, v10

    .line 72
    aput-byte v10, v6, v9

    .line 73
    iget v9, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageRef:I

    int-to-byte v9, v9

    aput-byte v9, v6, v12

    :cond_1
    if-nez v8, :cond_2

    .line 78
    iget-object v8, p0, Lcom/android/internal/telephony/SemSatelliteSmsDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v8}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v8

    invoke-direct {p0, v6, v8}, Lcom/android/internal/telephony/SemSatelliteSmsDispatcher;->setTPMRintoTPDU([BI)V

    .line 81
    :cond_2
    invoke-static {v6}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    .line 83
    iget-object v8, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mAppInfo:Landroid/content/pm/PackageInfo;

    if-eqz v8, :cond_3

    .line 84
    iget-object v8, v8, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    goto :goto_0

    :cond_3
    const/4 v8, 0x0

    .line 86
    :goto_0
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    .line 87
    const-string v10, "sendSms: - GSM "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v10, " isSat()="

    .line 88
    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0}, Lcom/android/internal/telephony/SemSatelliteSmsDispatcher;->getSatelliteModeStatus()Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    const-string v10, " mno="

    .line 89
    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v10, p0, Lcom/android/internal/telephony/SemSatelliteSmsDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v10}, Lcom/android/internal/telephony/Phone;->getSmsConfig()Lcom/android/internal/telephony/SmsConfig;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/internal/telephony/SmsConfig;->getMnoName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 90
    invoke-virtual {v9, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    invoke-virtual {v9, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 91
    invoke-virtual {v9, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mImsRetry:I

    invoke-virtual {v9, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 92
    invoke-virtual {v9, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageRef:I

    invoke-virtual {v9, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 93
    invoke-virtual {v9, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-boolean v1, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mUsesImsServiceForIms:Z

    invoke-virtual {v9, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    const-string v1, " smsc="

    .line 94
    invoke-virtual {v9, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " da="

    .line 95
    invoke-virtual {v9, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " packageName="

    .line 96
    invoke-virtual {v9, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 97
    sget-boolean v1, Lcom/android/internal/telephony/TelephonyFeatures;->SHIP_BUILD:Z

    if-nez v1, :cond_4

    .line 98
    const-string v1, " pdu : "

    invoke-virtual {v9, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 100
    :cond_4
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsLogger:Lcom/android/internal/telephony/SmsLogger;

    sget-object v2, Lcom/android/internal/telephony/SemSatelliteSmsDispatcher;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/SemSatelliteSmsDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/internal/telephony/SmsLogger;->logAndAdd(Ljava/lang/String;Ljava/lang/String;I)V

    .line 102
    iget v1, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    if-nez v1, :cond_5

    iget-boolean p1, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mExpectMore:Z

    if-eqz p1, :cond_5

    .line 103
    invoke-direct {p0}, Lcom/android/internal/telephony/SemSatelliteSmsDispatcher;->getSatelliteCommandsInterface()Lcom/android/internal/telephony/CommandsInterface;

    move-result-object p0

    invoke-interface {p0, v5, v6, v0}, Lcom/android/internal/telephony/CommandsInterface;->sendSMSExpectMore(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    return-void

    .line 105
    :cond_5
    invoke-direct {p0}, Lcom/android/internal/telephony/SemSatelliteSmsDispatcher;->getSatelliteCommandsInterface()Lcom/android/internal/telephony/CommandsInterface;

    move-result-object p0

    invoke-interface {p0, v5, v6, v0}, Lcom/android/internal/telephony/CommandsInterface;->sendSMS(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method protected blacklist sendText(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;IJ)V
    .locals 0

    .line 211
    const-string p1, "sendText"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemSatelliteSmsDispatcher;->logd(Ljava/lang/String;)V

    return-void
.end method

.method protected blacklist sendTextwithOptions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/net/Uri;Ljava/lang/String;IZIIIIJ)V
    .locals 0

    .line 218
    const-string p1, "sendTextwithOptions"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemSatelliteSmsDispatcher;->logd(Ljava/lang/String;)V

    return-void
.end method

.method protected blacklist shouldBlockSmsForEcbm()Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist updateTPMR(I)V
    .locals 2

    .line 136
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 137
    const-string v0, "persist.radio.tpmr_sms"

    const-string v1, "0"

    invoke-static {p1, v0, v1}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 139
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 142
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    and-int/lit16 p1, p1, 0xff

    iput p1, p0, Lcom/android/internal/telephony/SemSatelliteSmsDispatcher;->mTpmr:I

    return-void

    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 140
    iput p1, p0, Lcom/android/internal/telephony/SemSatelliteSmsDispatcher;->mTpmr:I

    return-void
.end method
