.class public Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;
.super Landroid/os/Handler;
.source "UsimDataDownloadHandler.java"


# instance fields
.field private final blacklist mCi:Lcom/android/internal/telephony/CommandsInterface;

.field private blacklist mImsManager:Lcom/android/ims/ImsManager;

.field private blacklist mPhone:Lcom/android/internal/telephony/Phone;

.field private final blacklist mPhoneId:I


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/CommandsInterface;I)V
    .locals 0

    .line 79
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 81
    iput-object p2, p0, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 82
    iput p3, p0, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->mPhoneId:I

    const/4 p2, 0x0

    .line 83
    iput-object p2, p0, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->mImsManager:Lcom/android/ims/ImsManager;

    .line 86
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    return-void
.end method

.method private blacklist ackViaIms()Z
    .locals 2

    .line 362
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isImsRegistered()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->isImsAvailable()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 367
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ackViaIms : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UsimDataDownloadHandler"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method private blacklist acknowledgeImsSms(IIZ[B)V
    .locals 2

    if-eqz p3, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x2

    .line 379
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sending result via acknowledgeImsSms: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " token: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " messageRef:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UsimDataDownloadHandler"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->mImsManager:Lcom/android/ims/ImsManager;

    if-eqz v0, :cond_2

    if-eqz p4, :cond_1

    .line 383
    array-length v0, p4

    if-lez v0, :cond_1

    .line 384
    const-string v0, "acknowledgeImsSms with pdu"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    iget-object p0, p0, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->mImsManager:Lcom/android/ims/ImsManager;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/ims/ImsManager;->acknowledgeSms(III[B)V

    return-void

    :catch_0
    move-exception p0

    goto :goto_1

    .line 387
    :cond_1
    const-string p4, "acknowledgeImsSms without pdu"

    invoke-static {v1, p4}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    iget-object p0, p0, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->mImsManager:Lcom/android/ims/ImsManager;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/ims/ImsManager;->acknowledgeSms(III)V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 393
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Failed to acknowledgeSms(). Error: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/ims/ImsException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method private blacklist acknowledgeSmsWithError(IIII)V
    .locals 3

    .line 319
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "acknowledgeSmsWithError- cause: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " smsSource: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " token: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " messageRef: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UsimDataDownloadHandler"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-ne p2, v0, :cond_0

    .line 321
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->ackViaIms()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 322
    invoke-direct {p0, p3, p4, v2, v1}, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->acknowledgeImsSms(IIZ[B)V

    return-void

    .line 324
    :cond_0
    iget-object p0, p0, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {p0, v2, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->acknowledgeLastIncomingGsmSms(ZILandroid/os/Message;)V

    return-void
.end method

.method private blacklist acknowledgeSmsWithSuccess(IIII)V
    .locals 2

    .line 309
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "acknowledgeSmsWithSuccess- cause: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " smsSource: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " token: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " messageRef: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UsimDataDownloadHandler"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    .line 311
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->ackViaIms()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 312
    invoke-direct {p0, p3, p4, v1, v0}, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->acknowledgeImsSms(IIZ[B)V

    return-void

    .line 314
    :cond_0
    iget-object p0, p0, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {p0, v1, p1, v0}, Lcom/android/internal/telephony/CommandsInterface;->acknowledgeLastIncomingGsmSms(ZILandroid/os/Message;)V

    return-void
.end method

.method private blacklist addUsimDataDownloadToMetrics(ZII)V
    .locals 3

    .line 346
    invoke-static {}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->getInstance()Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    move-result-object v0

    .line 347
    iget v1, p0, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->mPhoneId:I

    const-string v2, "3gpp"

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeIncomingSMSPP(ILjava/lang/String;Z)V

    .line 349
    iget v0, p0, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->mPhoneId:I

    invoke-static {v0}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 350
    iget p0, p0, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->mPhoneId:I

    invoke-static {p0}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getSmsStats()Lcom/android/internal/telephony/metrics/SmsStats;

    move-result-object p0

    invoke-virtual {p0, p2, p1, p3}, Lcom/android/internal/telephony/metrics/SmsStats;->onIncomingSmsPP(IZI)V

    :cond_0
    return-void
.end method

.method private static blacklist getEnvelopeBodyLength(II)I
    .locals 3

    .line 0
    add-int/lit8 v0, p1, 0x5

    const/16 v1, 0x7f

    const/4 v2, 0x2

    if-le p1, v1, :cond_0

    move p1, v2

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    add-int/2addr v0, p1

    if-eqz p0, :cond_1

    add-int/2addr v0, v2

    add-int/2addr v0, p0

    :cond_1
    return v0
.end method

.method private blacklist handleDataDownload(Lcom/android/internal/telephony/gsm/SmsMessage;II)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    .line 148
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/SmsMessage;->getDataCodingScheme()I

    move-result v4

    .line 149
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/SmsMessage;->getProtocolIdentifier()I

    move-result v5

    .line 150
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/SmsMessage;->getPdu()[B

    move-result-object v6

    const/4 v7, 0x0

    .line 152
    aget-byte v8, v6, v7

    const/16 v9, 0xff

    and-int/2addr v8, v9

    add-int/lit8 v10, v8, 0x1

    .line 154
    array-length v11, v6

    sub-int/2addr v11, v10

    .line 156
    invoke-static {v8, v11}, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->getEnvelopeBodyLength(II)I

    move-result v12

    add-int/lit8 v13, v12, 0x1

    const/16 v16, 0x2

    const/16 v14, 0x7f

    if-le v12, v14, :cond_0

    move/from16 v17, v16

    goto :goto_0

    :cond_0
    const/16 v17, 0x1

    :goto_0
    add-int v13, v13, v17

    move/from16 v17, v7

    .line 162
    new-array v7, v13, [B

    .line 165
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v18, 0x1

    const-string v15, "smsSource: "

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, ", Token: "

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, ", smsMessage.mMessageRef: "

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v15, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mMessageRef:I

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v15, "UsimDataDownloadHandler"

    invoke-static {v15, v9}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v9, -0x2f

    .line 168
    aput-byte v9, v7, v17

    const/16 v9, -0x7f

    if-le v12, v14, :cond_1

    .line 170
    aput-byte v9, v7, v18

    move/from16 v19, v16

    goto :goto_1

    :cond_1
    move/from16 v19, v18

    :goto_1
    add-int/lit8 v20, v19, 0x1

    int-to-byte v12, v12

    .line 172
    aput-byte v12, v7, v19

    add-int/lit8 v12, v19, 0x2

    .line 175
    sget-object v21, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->DEVICE_IDENTITIES:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    move/from16 v22, v9

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v9

    or-int/lit16 v9, v9, 0x80

    int-to-byte v9, v9

    aput-byte v9, v7, v20

    add-int/lit8 v9, v19, 0x3

    .line 176
    aput-byte v16, v7, v12

    add-int/lit8 v12, v19, 0x4

    const/16 v20, -0x7d

    .line 177
    aput-byte v20, v7, v9

    add-int/lit8 v9, v19, 0x5

    .line 178
    aput-byte v22, v7, v12

    if-eqz v8, :cond_2

    add-int/lit8 v12, v19, 0x6

    .line 182
    sget-object v20, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ADDRESS:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v14

    int-to-byte v14, v14

    aput-byte v14, v7, v9

    add-int/lit8 v9, v19, 0x7

    int-to-byte v14, v8

    .line 183
    aput-byte v14, v7, v12

    move/from16 v12, v18

    .line 184
    invoke-static {v6, v12, v7, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v9, v8

    :cond_2
    add-int/lit8 v8, v9, 0x1

    .line 189
    sget-object v12, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->SMS_TPDU:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v12}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v12

    or-int/lit16 v12, v12, 0x80

    int-to-byte v12, v12

    aput-byte v12, v7, v9

    const/16 v12, 0x7f

    if-le v11, v12, :cond_3

    add-int/lit8 v9, v9, 0x2

    .line 191
    aput-byte v22, v7, v8

    move v8, v9

    :cond_3
    add-int/lit8 v9, v8, 0x1

    int-to-byte v12, v11

    .line 193
    aput-byte v12, v7, v8

    .line 194
    invoke-static {v6, v10, v7, v9, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v9, v11

    if-eq v9, v13, :cond_4

    .line 199
    const-string v4, "startDataDownload() calculated incorrect envelope length, aborting."

    invoke-static {v15, v4}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    iget v1, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mMessageRef:I

    const/16 v4, 0xff

    invoke-direct {v0, v4, v2, v3, v1}, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->acknowledgeSmsWithError(IIII)V

    move/from16 v1, v17

    .line 202
    invoke-direct {v0, v1, v2, v1}, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->addUsimDataDownloadToMetrics(ZII)V

    return-void

    .line 206
    :cond_4
    invoke-static {v7}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    .line 207
    iget-object v7, v0, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget v8, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mMessageRef:I

    filled-new-array {v4, v5, v2, v8, v3}, [I

    move-result-object v3

    move/from16 v4, v16

    invoke-virtual {v0, v4, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v7, v6, v3}, Lcom/android/internal/telephony/CommandsInterface;->sendEnvelopeWithStatus(Ljava/lang/String;Landroid/os/Message;)V

    .line 211
    invoke-static {v1}, Lcom/android/internal/telephony/InboundSmsHandler;->getPduLength(Lcom/android/internal/telephony/SmsMessageBase;)I

    move-result v1

    const/4 v12, 0x1

    invoke-direct {v0, v12, v2, v1}, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->addUsimDataDownloadToMetrics(ZII)V

    return-void
.end method

.method private static blacklist is7bitDcs(I)Z
    .locals 1

    .line 0
    and-int/lit16 v0, p0, 0x8c

    if-eqz v0, :cond_1

    and-int/lit16 p0, p0, 0xf4

    const/16 v0, 0xf0

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private blacklist sendSmsAckForEnvelopeResponse(Lcom/android/internal/telephony/uicc/IccIoResult;IIIII)V
    .locals 9

    .line 242
    iget v0, p1, Lcom/android/internal/telephony/uicc/IccIoResult;->sw1:I

    .line 243
    iget v1, p1, Lcom/android/internal/telephony/uicc/IccIoResult;->sw2:I

    const/16 v2, 0x90

    .line 246
    const-string v3, "UsimDataDownloadHandler"

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v0, v2, :cond_0

    if-eqz v1, :cond_1

    :cond_0
    const/16 v2, 0x91

    if-ne v0, v2, :cond_2

    .line 247
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "USIM data download succeeded: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/IccIoResult;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v4

    goto :goto_2

    :cond_2
    const/16 v2, 0x93

    if-ne v0, v2, :cond_3

    if-nez v1, :cond_3

    .line 250
    const-string p1, "USIM data download failed: Toolkit busy"

    invoke-static {v3, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0xd4

    .line 251
    invoke-direct {p0, p1, p4, p5, p6}, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->acknowledgeSmsWithError(IIII)V

    return-void

    :cond_3
    const/16 v1, 0x62

    if-eq v0, v1, :cond_5

    const/16 v1, 0x63

    if-ne v0, v1, :cond_4

    goto :goto_1

    .line 258
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected SW1/SW2 response from UICC: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/IccIoResult;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    move v0, v5

    goto :goto_2

    .line 255
    :cond_5
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "USIM data download failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/IccIoResult;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 262
    :goto_2
    iget-object p1, p1, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    if-eqz p1, :cond_a

    .line 263
    array-length v1, p1

    if-nez v1, :cond_6

    goto :goto_5

    :cond_6
    const/4 v1, 0x3

    const/4 v2, 0x7

    const/4 v3, 0x2

    if-eqz v0, :cond_7

    .line 277
    array-length v6, p1

    add-int/lit8 v6, v6, 0x5

    new-array v6, v6, [B

    .line 278
    aput-byte v5, v6, v5

    .line 279
    aput-byte v2, v6, v4

    goto :goto_3

    .line 281
    :cond_7
    array-length v6, p1

    add-int/lit8 v6, v6, 0x6

    new-array v6, v6, [B

    .line 282
    aput-byte v5, v6, v5

    const/16 v7, -0x2b

    .line 283
    aput-byte v7, v6, v4

    .line 285
    aput-byte v2, v6, v3

    move v3, v1

    :goto_3
    add-int/lit8 v7, v3, 0x1

    int-to-byte p3, p3

    .line 288
    aput-byte p3, v6, v3

    add-int/lit8 p3, v3, 0x2

    int-to-byte v8, p2

    .line 289
    aput-byte v8, v6, v7

    .line 291
    invoke-static {p2}, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->is7bitDcs(I)Z

    move-result p2

    if-eqz p2, :cond_8

    .line 292
    array-length p2, p1

    mul-int/lit8 p2, p2, 0x8

    div-int/2addr p2, v2

    add-int/2addr v3, v1

    int-to-byte p2, p2

    .line 293
    aput-byte p2, v6, p3

    goto :goto_4

    :cond_8
    add-int/2addr v3, v1

    .line 295
    array-length p2, p1

    int-to-byte p2, p2

    aput-byte p2, v6, p3

    .line 298
    :goto_4
    array-length p2, p1

    invoke-static {p1, v5, v6, v3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-ne p4, v4, :cond_9

    .line 300
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->ackViaIms()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 301
    invoke-direct {p0, p5, p6, v4, v6}, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->acknowledgeImsSms(IIZ[B)V

    return-void

    .line 303
    :cond_9
    iget-object p0, p0, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 304
    invoke-static {v6}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    .line 303
    invoke-interface {p0, v0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->acknowledgeIncomingGsmSmsWithPdu(ZLjava/lang/String;Landroid/os/Message;)V

    return-void

    :cond_a
    :goto_5
    if-eqz v0, :cond_b

    .line 265
    invoke-direct {p0, v5, p4, p5, p6}, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->acknowledgeSmsWithSuccess(IIII)V

    return-void

    :cond_b
    const/16 p1, 0xd5

    .line 267
    invoke-direct {p0, p1, p4, p5, p6}, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->acknowledgeSmsWithError(IIII)V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 13

    .line 410
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    const-string v2, "UsimDataDownloadHandler"

    if-eq v0, v1, :cond_4

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-eq v0, v5, :cond_2

    if-eq v0, v3, :cond_0

    .line 463
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Ignoring unexpected message, what="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 442
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 444
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, [I

    .line 445
    aget v3, v0, v4

    .line 446
    aget v1, v0, v1

    .line 447
    aget v0, v0, v5

    .line 449
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Received EVENT_WRITE_SMS_COMPLETE from source : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez p1, :cond_1

    .line 452
    const-string p1, "Successfully wrote SMS-PP message to UICC"

    invoke-static {v2, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    invoke-direct {p0, v4, v3, v0, v1}, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->acknowledgeSmsWithSuccess(IIII)V

    return-void

    .line 455
    :cond_1
    const-string v4, "Failed to write SMS-PP message to UICC"

    invoke-static {v2, v4, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 p1, 0xff

    .line 456
    invoke-direct {p0, p1, v3, v0, v1}, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->acknowledgeSmsWithError(IIII)V

    return-void

    .line 418
    :cond_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 420
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, [I

    .line 421
    aget v10, v0, v5

    .line 422
    aget v12, v0, v3

    const/4 v3, 0x4

    .line 423
    aget v11, v0, v3

    .line 425
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Received EVENT_SEND_ENVELOPE_RESPONSE from source : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_3

    .line 428
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UICC Send Envelope failure, exception: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0xd5

    .line 430
    invoke-direct {p0, p1, v10, v11, v12}, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->acknowledgeSmsWithError(IIII)V

    return-void

    .line 436
    :cond_3
    const-string v3, "Successful in sending envelope response"

    invoke-static {v2, v3}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object v7, p1

    check-cast v7, Lcom/android/internal/telephony/uicc/IccIoResult;

    aget v8, v0, v4

    aget v9, v0, v1

    move-object v6, p0

    invoke-direct/range {v6 .. v12}, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->sendSmsAckForEnvelopeResponse(Lcom/android/internal/telephony/uicc/IccIoResult;IIIII)V

    return-void

    :cond_4
    move-object v6, p0

    .line 412
    const-string p0, "EVENT_START_DATA_DOWNLOAD"

    invoke-static {v2, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lcom/android/internal/telephony/gsm/SmsMessage;

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-direct {v6, p0, v0, p1}, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->handleDataDownload(Lcom/android/internal/telephony/gsm/SmsMessage;II)V

    return-void
.end method

.method blacklist handleUsimDataDownload(Lcom/android/internal/telephony/uicc/UsimServiceTable;Lcom/android/internal/telephony/gsm/SmsMessage;II)I
    .locals 3

    .line 107
    const-string v0, "UsimDataDownloadHandler"

    if-eqz p1, :cond_0

    sget-object v1, Lcom/android/internal/telephony/uicc/UsimServiceTable$UsimService;->DATA_DL_VIA_SMS_PP:Lcom/android/internal/telephony/uicc/UsimServiceTable$UsimService;

    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/uicc/UsimServiceTable;->isAvailable(Lcom/android/internal/telephony/uicc/UsimServiceTable$UsimService;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 109
    const-string p1, "Received SMS-PP data download, sending to UICC."

    invoke-static {v0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    invoke-virtual {p0, p2, p3, p4}, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->startDataDownload(Lcom/android/internal/telephony/gsm/SmsMessage;II)I

    move-result p0

    return p0

    .line 112
    :cond_0
    const-string p1, "DATA_DL_VIA_SMS_PP service not available, storing message to UICC."

    invoke-static {v0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    invoke-virtual {p2}, Lcom/android/internal/telephony/gsm/SmsMessage;->getServiceCenterAddress()Ljava/lang/String;

    move-result-object p1

    .line 114
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCDWithLength(Ljava/lang/String;)[B

    move-result-object p1

    .line 113
    invoke-static {p1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object p1

    .line 116
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 117
    invoke-virtual {p2}, Lcom/android/internal/telephony/gsm/SmsMessage;->getPdu()[B

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    iget v2, p2, Lcom/android/internal/telephony/gsm/SmsMessage;->mMessageRef:I

    filled-new-array {p3, v2, p4}, [I

    move-result-object p4

    const/4 v2, 0x3

    .line 118
    invoke-virtual {p0, v2, p4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p4

    .line 116
    invoke-interface {v0, v2, p1, v1, p4}, Lcom/android/internal/telephony/CommandsInterface;->writeSmsToSim(ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    const/4 p1, 0x0

    .line 121
    invoke-static {p2}, Lcom/android/internal/telephony/InboundSmsHandler;->getPduLength(Lcom/android/internal/telephony/SmsMessageBase;)I

    move-result p2

    .line 120
    invoke-direct {p0, p1, p3, p2}, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->addUsimDataDownloadToMetrics(ZII)V

    const/4 p0, -0x1

    return p0
.end method

.method public blacklist handleUsimDataDownloadWithPdu(ILcom/android/internal/telephony/uicc/UsimServiceTable;[BI)V
    .locals 3

    .line 509
    iget v0, p0, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->mPhoneId:I

    invoke-static {v0, p3}, Lcom/android/internal/telephony/gsm/SmsMessage;->semCreateFromPdu(I[B)Lcom/android/internal/telephony/gsm/SmsMessage;

    move-result-object p3

    if-nez p3, :cond_0

    return-void

    .line 514
    :cond_0
    const-string v0, "UsimDataDownloadHandler"

    if-eqz p2, :cond_1

    sget-object v1, Lcom/android/internal/telephony/uicc/UsimServiceTable$UsimService;->DATA_DL_VIA_SMS_PP:Lcom/android/internal/telephony/uicc/UsimServiceTable$UsimService;

    invoke-virtual {p2, v1}, Lcom/android/internal/telephony/uicc/UsimServiceTable;->isAvailable(Lcom/android/internal/telephony/uicc/UsimServiceTable$UsimService;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 516
    const-string p2, "Received SMS-PP data download, sending to UICC."

    invoke-static {v0, p2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    invoke-virtual {p0, p3, p4, p1}, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->startDataDownload(Lcom/android/internal/telephony/gsm/SmsMessage;II)I

    return-void

    .line 519
    :cond_1
    const-string p2, "DATA_DL_VIA_SMS_PP service not available, storing message to UICC."

    invoke-static {v0, p2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    invoke-virtual {p3}, Lcom/android/internal/telephony/gsm/SmsMessage;->getServiceCenterAddress()Ljava/lang/String;

    move-result-object p2

    .line 521
    invoke-static {p2}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCDWithLength(Ljava/lang/String;)[B

    move-result-object p2

    .line 520
    invoke-static {p2}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object p2

    .line 523
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 524
    invoke-virtual {p3}, Lcom/android/internal/telephony/gsm/SmsMessage;->getPdu()[B

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    iget v2, p3, Lcom/android/internal/telephony/gsm/SmsMessage;->mMessageRef:I

    filled-new-array {p4, v2, p1}, [I

    move-result-object p1

    const/4 v2, 0x3

    .line 525
    invoke-virtual {p0, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 523
    invoke-interface {v0, v2, p2, v1, p1}, Lcom/android/internal/telephony/CommandsInterface;->writeSmsToSim(ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    const/4 p1, 0x0

    .line 528
    invoke-static {p3}, Lcom/android/internal/telephony/InboundSmsHandler;->getPduLength(Lcom/android/internal/telephony/SmsMessageBase;)I

    move-result p2

    .line 527
    invoke-direct {p0, p1, p4, p2}, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->addUsimDataDownloadToMetrics(ZII)V

    return-void
.end method

.method public blacklist setImsManager(Lcom/android/ims/ImsManager;)V
    .locals 0

    .line 473
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->mImsManager:Lcom/android/ims/ImsManager;

    return-void
.end method

.method public blacklist setResourcesForTest(Landroid/content/res/Resources;)V
    .locals 0

    .line 485
    const-string p0, "UsimDataDownloadHandler"

    const-string p1, "setResourcesForTest"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public blacklist startDataDownload(Lcom/android/internal/telephony/gsm/SmsMessage;II)I
    .locals 1

    const/4 v0, 0x1

    .line 137
    invoke-virtual {p0, v0, p2, p3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 141
    :cond_0
    const-string p0, "UsimDataDownloadHandler"

    const-string p1, "startDataDownload failed to send message to start data download."

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x2

    return p0
.end method
