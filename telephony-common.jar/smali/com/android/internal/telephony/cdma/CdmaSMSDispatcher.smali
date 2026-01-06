.class public Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;
.super Lcom/android/internal/telephony/SMSDispatcher;
.source "CdmaSMSDispatcher.java"


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/SmsDispatchersController;)V
    .locals 0

    .line 80
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/SMSDispatcher;-><init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/SmsDispatchersController;)V

    .line 81
    const-string p0, "CdmaSMSDispatcher"

    const-string p1, "CdmaSMSDispatcher created"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method protected blacklist calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .locals 0

    const/4 p0, 0x0

    .line 151
    invoke-static {p1, p2, p0}, Lcom/android/internal/telephony/cdma/SmsMessage;->calculateLength(Ljava/lang/CharSequence;ZZ)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object p0

    return-object p0
.end method

.method protected blacklist calculateLength(Ljava/lang/CharSequence;ZZ)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .locals 0

    .line 712
    invoke-static {p1, p2, p3}, Lcom/android/internal/telephony/cdma/SmsMessage;->calculateLengthForEms(Ljava/lang/CharSequence;ZZ)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object p0

    return-object p0
.end method

.method protected blacklist checkEcmPolicy(ZLjava/lang/String;)Z
    .locals 6

    .line 765
    const-string v0, "ril.cdma.inecmmode"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 766
    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getSmsConfig()Lcom/android/internal/telephony/SmsConfig;

    move-result-object v2

    const-string v3, "sms_ecm_incoming_sms"

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/SmsConfig;->getSmsSetting(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-nez p1, :cond_0

    return v1

    :cond_0
    if-eqz v0, :cond_1

    return v3

    :cond_1
    return v1

    .line 776
    :cond_2
    const-string v2, "ril.cdma.ine911"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 777
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkEcmPolicy ine911 : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " ecm : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "CdmaSMSDispatcher"

    invoke-static {v5, v4}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v2, v3, :cond_3

    if-eqz p2, :cond_3

    .line 781
    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsDispatchersController:Lcom/android/internal/telephony/SmsDispatchersController;

    invoke-virtual {v4}, Lcom/android/internal/telephony/SmsDispatchersController;->getDcnAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 782
    const-string p0, "This is DCN number"

    invoke-static {v5, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_3
    if-ne v2, v3, :cond_4

    if-ne p1, v3, :cond_4

    .line 787
    iget-object p2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p2}, Lcom/android/internal/telephony/SemPhoneInternal;->hasImsCall()Z

    move-result p2

    if-nez p2, :cond_4

    return v3

    :cond_4
    if-ne v0, v3, :cond_5

    if-nez v2, :cond_5

    if-ne p1, v3, :cond_5

    .line 792
    const-string p1, "exit ECBM mode"

    invoke-static {v5, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 793
    iget-object p0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->exitEmergencyCallbackMode()V

    :cond_5
    return v1
.end method

.method public greylist-max-r getFormat()Ljava/lang/String;
    .locals 0

    .line 87
    const-string p0, "3gpp2"

    return-object p0
.end method

.method protected blacklist getSubmitPdu(Ljava/lang/String;Ljava/lang/String;I[BZ)Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    .locals 0

    .line 129
    invoke-static {p1, p2, p3, p4, p5}, Lcom/android/internal/telephony/util/SMSDispatcherUtil;->getSubmitPduCdma(Ljava/lang/String;Ljava/lang/String;I[BZ)Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;

    move-result-object p0

    return-object p0
.end method

.method protected blacklist getSubmitPdu(Ljava/lang/String;Ljava/lang/String;I[BZI)Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    .locals 0

    .line 144
    invoke-static {p1, p2, p3, p4, p5}, Lcom/android/internal/telephony/util/SMSDispatcherUtil;->getSubmitPduCdma(Ljava/lang/String;Ljava/lang/String;I[BZ)Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;

    move-result-object p0

    return-object p0
.end method

.method protected blacklist getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;II)Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    .locals 0

    .line 122
    invoke-static/range {p1 .. p6}, Lcom/android/internal/telephony/util/SMSDispatcherUtil;->getSubmitPduCdma(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;I)Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;

    move-result-object p0

    return-object p0
.end method

.method protected blacklist getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;III)Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    .locals 0

    .line 137
    invoke-static/range {p1 .. p6}, Lcom/android/internal/telephony/util/SMSDispatcherUtil;->getSubmitPduCdma(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;I)Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;

    move-result-object p0

    return-object p0
.end method

.method protected blacklist getSubmitPduForAutoLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;II)Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    .locals 0

    .line 811
    invoke-static/range {p1 .. p6}, Lcom/android/internal/telephony/util/SMSDispatcherUtil;->getSubmitPduCdmaForAutoLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;I)Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;

    move-result-object p0

    return-object p0
.end method

.method protected blacklist handleStatusReport(Ljava/lang/Object;)V
    .locals 1

    .line 101
    instance-of v0, p1, Lcom/android/internal/telephony/cdma/SmsMessage;

    if-eqz v0, :cond_0

    .line 105
    check-cast p1, Lcom/android/internal/telephony/cdma/SmsMessage;

    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->getPdu()[B

    move-result-object p1

    .line 106
    iget-object p0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsDispatchersController:Lcom/android/internal/telephony/SmsDispatchersController;

    const-string v0, "3gpp2"

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/SmsDispatchersController;->handleSmsStatusReport(Ljava/lang/String;[B)V

    return-void

    .line 108
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "handleStatusReport() called for object type "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CdmaSMSDispatcher"

    invoke-static {p1, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected blacklist isAscii7bitSupportedForLongMessage()Z
    .locals 2

    .line 720
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 721
    const-string v1, "carrier_config"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    .line 725
    iget-object p0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 728
    const-string v0, "ascii_7_bit_support_for_long_message"

    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method protected blacklist sendAckSMSforCCTUnlock(ILjava/lang/String;)V
    .locals 19

    move-object/from16 v1, p0

    .line 322
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendAckSMSforCCTUnlock resultText= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/android/internal/telephony/TelephonyFeatures;->SHIP_BUILD:Z

    if-nez v2, :cond_0

    move-object/from16 v2, p2

    goto :goto_0

    :cond_0
    const-string v2, "xxxx"

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "CdmaSMSDispatcher"

    invoke-static {v2, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    invoke-static/range {p2 .. p2}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPduForCCTUnlock(Ljava/lang/String;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v0

    .line 325
    const-string v2, "20868"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v3, v0}, Lcom/android/internal/telephony/SMSDispatcher;->getSmsTrackerMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)Ljava/util/HashMap;

    move-result-object v4

    .line 326
    invoke-virtual {v1}, Lcom/android/internal/telephony/SMSDispatcher;->nextMessageRef()I

    move-result v16

    .line 327
    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v7

    const-wide/16 v14, 0x0

    .line 329
    invoke-static {}, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->getNextUniqueMessageId()J

    move-result-wide v17

    .line 327
    const-string v2, "com.android.phone"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x0

    move/from16 v3, p1

    invoke-virtual/range {v1 .. v18}, Lcom/android/internal/telephony/SMSDispatcher;->getSmsTracker(Ljava/lang/String;ILjava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;Landroid/net/Uri;ZLjava/lang/String;ZZZJIJ)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v0

    .line 330
    iget-object v2, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mAppInfo:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const-string v3, "com.android.phone"

    iput-object v3, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 331
    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/SMSDispatcher;->sendSubmitPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    return-void
.end method

.method protected blacklist sendDatawithOrigPort(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 19

    if-eqz p9, :cond_0

    const/4 v0, 0x1

    :goto_0
    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move/from16 v3, p5

    move-object/from16 v4, p7

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 341
    :goto_1
    invoke-static {v2, v1, v3, v4, v0}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;I[BZ)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v5

    if-eqz v5, :cond_2

    move-object/from16 v0, p0

    .line 344
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/SMSDispatcher;->getSmsTrackerMap(Ljava/lang/String;Ljava/lang/String;I[BLcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)Ljava/util/HashMap;

    move-result-object v4

    .line 345
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/SMSDispatcher;->nextMessageRef()I

    move-result v16

    .line 346
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v7

    const-wide/16 v14, 0x0

    .line 348
    invoke-static {}, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->getNextUniqueMessageId()J

    move-result-wide v17

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v5, p8

    move-object/from16 v6, p9

    .line 346
    invoke-virtual/range {v1 .. v18}, Lcom/android/internal/telephony/SMSDispatcher;->getSmsTracker(Ljava/lang/String;ILjava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;Landroid/net/Uri;ZLjava/lang/String;ZZZJIJ)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v0

    .line 350
    invoke-virtual {v1}, Lcom/android/internal/telephony/SMSDispatcher;->getCarrierAppPackageName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 352
    const-string v3, "CdmaSMSDispatcher"

    const-string v4, "Found carrier package."

    invoke-static {v3, v4}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    new-instance v3, Lcom/android/internal/telephony/SMSDispatcher$DataSmsSender;

    invoke-direct {v3, v1, v0}, Lcom/android/internal/telephony/SMSDispatcher$DataSmsSender;-><init>(Lcom/android/internal/telephony/SMSDispatcher;Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 354
    new-instance v0, Lcom/android/internal/telephony/SMSDispatcher$SmsSenderCallback;

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/SMSDispatcher$SmsSenderCallback;-><init>(Lcom/android/internal/telephony/SMSDispatcher;Lcom/android/internal/telephony/SMSDispatcher$SmsSender;)V

    invoke-virtual {v3, v2, v0}, Lcom/android/internal/telephony/SMSDispatcher$SmsSender;->sendSmsByCarrierApp(Ljava/lang/String;Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallback;)V

    return-void

    .line 356
    :cond_1
    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/SMSDispatcher;->sendSubmitPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    :cond_2
    return-void
.end method

.method public blacklist sendDomainChangeSms(Ljava/lang/String;IB)V
    .locals 19

    move-object/from16 v1, p0

    .line 285
    iget-object v0, v1, Lcom/android/internal/telephony/SMSDispatcher;->mSmsDispatchersController:Lcom/android/internal/telephony/SmsDispatchersController;

    const-string v2, "CdmaSMSDispatcher"

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 286
    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsDispatchersController;->getDcnAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 288
    :cond_0
    const-string v0, "mImsSMSDispatcher is null"

    invoke-static {v2, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v3

    .line 291
    :goto_0
    const-string v4, "gsm.sim.state"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "ABSENT"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 292
    const-string v0, "uicc is absent"

    invoke-static {v2, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    if-eqz v0, :cond_4

    .line 296
    const-string v4, "0000"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, ""

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    move/from16 v4, p3

    .line 299
    invoke-static {v4, v0}, Lcom/android/internal/telephony/cdma/SmsMessage;->getDomainChangeNotification(BLjava/lang/String;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v4

    .line 300
    invoke-virtual {v1, v0, v3, v3, v4}, Lcom/android/internal/telephony/SMSDispatcher;->getSmsTrackerMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)Ljava/util/HashMap;

    move-result-object v4

    .line 301
    invoke-virtual {v1}, Lcom/android/internal/telephony/SMSDispatcher;->nextMessageRef()I

    move-result v16

    .line 303
    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v7

    const-wide/16 v14, 0x0

    .line 304
    invoke-static {}, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->getNextUniqueMessageId()J

    move-result-wide v17

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x0

    move/from16 v3, p2

    move-object v0, v2

    move-object/from16 v2, p1

    .line 302
    invoke-virtual/range {v1 .. v18}, Lcom/android/internal/telephony/SMSDispatcher;->getSmsTracker(Ljava/lang/String;ILjava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;Landroid/net/Uri;ZLjava/lang/String;ZZZJIJ)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v2

    .line 306
    invoke-virtual {v1}, Lcom/android/internal/telephony/SMSDispatcher;->getCarrierAppPackageName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 308
    const-string v4, "Found carrier package."

    invoke-static {v0, v4}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    new-instance v0, Lcom/android/internal/telephony/SMSDispatcher$TextSmsSender;

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/SMSDispatcher$TextSmsSender;-><init>(Lcom/android/internal/telephony/SMSDispatcher;Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 310
    new-instance v2, Lcom/android/internal/telephony/SMSDispatcher$SmsSenderCallback;

    invoke-direct {v2, v1, v0}, Lcom/android/internal/telephony/SMSDispatcher$SmsSenderCallback;-><init>(Lcom/android/internal/telephony/SMSDispatcher;Lcom/android/internal/telephony/SMSDispatcher$SmsSender;)V

    invoke-virtual {v0, v3, v2}, Lcom/android/internal/telephony/SMSDispatcher$SmsSender;->sendSmsByCarrierApp(Ljava/lang/String;Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallback;)V

    return-void

    .line 312
    :cond_3
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/SMSDispatcher;->sendSubmitPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    :cond_4
    :goto_1
    return-void
.end method

.method protected blacklist sendMultipartText(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;IZJ)V
    .locals 33
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

    move-object/from16 v1, p0

    move-object/from16 v0, p5

    move-object/from16 v2, p6

    move-object/from16 v3, p7

    .line 415
    const-string v4, "sendMultipartText "

    const-string v5, "CdmaSMSDispatcher"

    invoke-static {v5, v4}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/SMSDispatcher;->getMultipartMessageText(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v13

    .line 417
    invoke-static {}, Lcom/android/internal/telephony/SMSDispatcher;->getNextConcatenatedRef()I

    move-result v4

    and-int/lit16 v4, v4, 0xff

    .line 418
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 422
    new-instance v8, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v8, v6}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 423
    new-instance v9, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v7, 0x0

    invoke-direct {v9, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    move v10, v7

    move v11, v10

    :goto_0
    if-ge v10, v6, :cond_3

    .line 427
    iget-object v14, v1, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v14}, Lcom/android/internal/telephony/Phone;->getSmsConfig()Lcom/android/internal/telephony/SmsConfig;

    move-result-object v14

    const-string v15, "SPRINT"

    const-string v7, "USCC"

    const-string v12, "VZW"

    filled-new-array {v12, v15, v7}, [Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v14, v7}, Lcom/android/internal/telephony/SmsConfig;->isMnoName([Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 428
    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    const/4 v12, 0x0

    const/4 v14, 0x1

    invoke-static {v7, v12, v14}, Lcom/android/internal/telephony/cdma/SmsMessage;->calculateLengthForEms(Ljava/lang/CharSequence;ZZ)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v7

    goto :goto_1

    :cond_0
    const/4 v12, 0x0

    const/4 v14, 0x1

    .line 430
    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    invoke-static {v7, v12, v14}, Lcom/android/internal/telephony/cdma/SmsMessage;->calculateLength(Ljava/lang/CharSequence;ZZ)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v7

    .line 432
    :goto_1
    iget v7, v7, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    if-eq v11, v7, :cond_2

    if-eqz v11, :cond_1

    if-ne v11, v14, :cond_2

    :cond_1
    move v11, v7

    :cond_2
    add-int/lit8 v10, v10, 0x1

    move v7, v12

    goto :goto_0

    :cond_3
    move v12, v7

    .line 438
    new-array v7, v6, [Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move v10, v12

    :goto_2
    if-ge v10, v6, :cond_c

    .line 440
    new-instance v14, Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    invoke-direct {v14}, Lcom/android/internal/telephony/SmsHeader$ConcatRef;-><init>()V

    .line 441
    iput v4, v14, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    add-int/lit8 v15, v10, 0x1

    .line 442
    iput v15, v14, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    .line 443
    iput v6, v14, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    const/4 v12, 0x1

    .line 444
    iput-boolean v12, v14, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->isEightBits:Z

    .line 445
    new-instance v12, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct {v12}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    .line 446
    iput-object v14, v12, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    if-eqz v2, :cond_4

    .line 449
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-le v14, v10, :cond_4

    .line 450
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/app/PendingIntent;

    goto :goto_3

    :cond_4
    const/4 v14, 0x0

    :goto_3
    if-eqz v3, :cond_5

    .line 454
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v10, :cond_5

    .line 455
    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/PendingIntent;

    move-object/from16 v24, v2

    goto :goto_4

    :cond_5
    const/16 v24, 0x0

    .line 458
    :goto_4
    new-instance v2, Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-direct {v2}, Lcom/android/internal/telephony/cdma/sms/UserData;-><init>()V

    .line 459
    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v3, v18

    check-cast v3, Ljava/lang/String;

    iput-object v3, v2, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    .line 460
    iget-object v3, v1, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getSmsConfig()Lcom/android/internal/telephony/SmsConfig;

    move-result-object v3

    move/from16 v25, v4

    const-string v4, "sms_segmented_sms"

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/SmsConfig;->getSmsSetting(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 461
    iput-object v12, v2, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    :cond_6
    const/4 v3, 0x1

    if-ne v11, v3, :cond_9

    .line 465
    iget-object v3, v1, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v3

    move-object/from16 v26, v5

    const-string v5, "HKG"

    move/from16 v27, v6

    const-string v6, "TPE"

    move-object/from16 v28, v7

    const-string v7, "CHN"

    filled-new-array {v7, v5, v6}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/internal/telephony/TelephonyFeatures;->isCountrySpecific(I[Ljava/lang/String;)Z

    move-result v3

    const/4 v5, 0x2

    if-eqz v3, :cond_7

    .line 466
    iput v5, v2, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    :goto_5
    const/4 v3, 0x1

    goto :goto_6

    .line 468
    :cond_7
    iget-object v3, v1, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getSmsConfig()Lcom/android/internal/telephony/SmsConfig;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/SmsConfig;->getSmsSetting(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8

    const/16 v3, 0x9

    .line 469
    iput v3, v2, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    goto :goto_5

    .line 471
    :cond_8
    iput v5, v2, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    goto :goto_5

    :cond_9
    move-object/from16 v26, v5

    move/from16 v27, v6

    move-object/from16 v28, v7

    const/4 v3, 0x4

    .line 475
    iput v3, v2, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    goto :goto_5

    .line 477
    :goto_6
    iput-boolean v3, v2, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncodingSet:Z

    .line 483
    iget-object v4, v1, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v18

    if-eqz v24, :cond_a

    add-int/lit8 v6, v27, -0x1

    if-ne v10, v6, :cond_a

    move/from16 v21, v3

    :goto_7
    move-object/from16 v19, p3

    move-object/from16 v22, p8

    move/from16 v23, p9

    move-object/from16 v20, v2

    goto :goto_8

    :cond_a
    const/16 v21, 0x0

    goto :goto_7

    :goto_8
    invoke-static/range {v18 .. v23}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(ILjava/lang/String;Lcom/android/internal/telephony/cdma/sms/UserData;ZLjava/lang/String;I)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v2

    if-eqz v2, :cond_b

    .line 487
    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    .line 486
    invoke-virtual {v1, v5, v6, v4, v2}, Lcom/android/internal/telephony/SMSDispatcher;->getSmsTrackerMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)Ljava/util/HashMap;

    move-result-object v4

    .line 488
    invoke-virtual {v1}, Lcom/android/internal/telephony/SMSDispatcher;->nextMessageRef()I

    move-result v21

    .line 490
    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v7

    const/16 v18, 0x0

    const-wide/16 v19, 0x0

    move v2, v10

    const/4 v10, 0x0

    move/from16 v17, v11

    move-object v11, v12

    const/4 v12, 0x0

    move-object v5, v14

    const/4 v14, 0x1

    move/from16 v22, v15

    const/4 v15, 0x1

    move/from16 v23, v17

    const/16 v17, 0x0

    move/from16 v16, p9

    move/from16 v32, v2

    move/from16 v30, v3

    move/from16 v29, v23

    move-object/from16 v6, v24

    move-object/from16 v31, v26

    move-object/from16 v0, v28

    const/16 v28, 0x0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-wide/from16 v23, p11

    move/from16 v26, v25

    move/from16 v25, v22

    move/from16 v22, p10

    .line 489
    invoke-virtual/range {v1 .. v24}, Lcom/android/internal/telephony/SMSDispatcher;->getSmsTracker(Ljava/lang/String;ILjava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/net/Uri;Lcom/android/internal/telephony/SmsHeader;ZLjava/lang/String;ZZIIZJIZJ)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v4

    .line 494
    aput-object v4, v0, v32

    move-object/from16 v3, v31

    goto :goto_9

    :cond_b
    move/from16 v30, v3

    move/from16 v29, v11

    move-object/from16 v31, v26

    move-object/from16 v0, v28

    const/16 v28, 0x0

    move/from16 v26, v25

    move/from16 v25, v15

    .line 496
    const-string v2, "CdmaSMSDispatcher.sendText(): getSubmitPdu() returned null"

    move-object/from16 v3, v31

    invoke-static {v3, v2}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    iget-object v2, v1, Lcom/android/internal/telephony/SMSDispatcher;->mSmsHQMAgent:Lcom/android/internal/telephony/SmsHQMAgent;

    iget-object v4, v1, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v4

    const-string v5, "0"

    const-string v6, "CSD_sendMultipartText_getSubmitPduNull"

    invoke-virtual {v2, v5, v6, v4}, Lcom/android/internal/telephony/SmsHQMAgent;->sendSMOTInfoToHQM(Ljava/lang/String;Ljava/lang/String;I)V

    :goto_9
    move-object/from16 v2, p6

    move-object v7, v0

    move-object v5, v3

    move/from16 v10, v25

    move/from16 v4, v26

    move/from16 v6, v27

    move/from16 v12, v28

    move/from16 v11, v29

    move-object/from16 v0, p5

    move-object/from16 v3, p7

    goto/16 :goto_2

    :cond_c
    move-object v3, v5

    move-object v0, v7

    .line 501
    invoke-virtual {v1}, Lcom/android/internal/telephony/SMSDispatcher;->getCarrierAppPackageName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_d

    .line 503
    const-string v4, "Found carrier package."

    invoke-static {v3, v4}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    new-instance v3, Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSender;

    move-object/from16 v4, p5

    invoke-direct {v3, v1, v4, v0}, Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSender;-><init>(Lcom/android/internal/telephony/SMSDispatcher;Ljava/util/ArrayList;[Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 505
    new-instance v0, Lcom/android/internal/telephony/SMSDispatcher$SmsSenderCallback;

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/SMSDispatcher$SmsSenderCallback;-><init>(Lcom/android/internal/telephony/SMSDispatcher;Lcom/android/internal/telephony/SMSDispatcher$SmsSender;)V

    invoke-virtual {v3, v2, v0}, Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSender;->sendSmsByCarrierApp(Ljava/lang/String;Lcom/android/internal/telephony/SMSDispatcher$SmsSenderCallback;)V

    return-void

    .line 507
    :cond_d
    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->sendSubmitPdu([Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    return-void
.end method

.method protected blacklist sendMultipartTextwithOptions(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/net/Uri;Ljava/lang/String;IZIIIZJ)V
    .locals 26
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

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p7

    .line 628
    const-string v6, "sendMultipartTextwithOptions "

    const-string v7, "CdmaSMSDispatcher"

    invoke-static {v7, v6}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    invoke-static {}, Lcom/android/internal/telephony/SMSDispatcher;->getNextConcatenatedRef()I

    move-result v6

    and-int/lit16 v6, v6, 0xff

    .line 631
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v9, 0x0

    move v10, v9

    move v11, v10

    :goto_0
    const/4 v12, 0x1

    if-ge v10, v8, :cond_2

    .line 635
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/CharSequence;

    invoke-static {v13, v9, v12}, Lcom/android/internal/telephony/cdma/SmsMessage;->calculateLength(Ljava/lang/CharSequence;ZZ)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v13

    .line 636
    iget v13, v13, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    if-eq v11, v13, :cond_1

    if-eqz v11, :cond_0

    if-ne v11, v12, :cond_1

    :cond_0
    move v11, v13

    :cond_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 642
    :cond_2
    new-array v10, v8, [Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move v13, v9

    :goto_1
    if-ge v13, v8, :cond_8

    .line 644
    new-instance v14, Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    invoke-direct {v14}, Lcom/android/internal/telephony/SmsHeader$ConcatRef;-><init>()V

    .line 645
    iput v6, v14, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    add-int/lit8 v15, v13, 0x1

    .line 646
    iput v15, v14, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    .line 647
    iput v8, v14, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    .line 648
    iput-boolean v12, v14, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->isEightBits:Z

    .line 649
    new-instance v9, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct {v9}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    .line 650
    iput-object v14, v9, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    if-eqz v3, :cond_3

    .line 653
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-le v14, v13, :cond_3

    .line 654
    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/app/PendingIntent;

    goto :goto_2

    :cond_3
    const/4 v14, 0x0

    :goto_2
    if-eqz v4, :cond_4

    .line 658
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-le v12, v13, :cond_4

    .line 659
    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/app/PendingIntent;

    goto :goto_3

    :cond_4
    const/4 v12, 0x0

    .line 662
    :goto_3
    new-instance v3, Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-direct {v3}, Lcom/android/internal/telephony/cdma/sms/UserData;-><init>()V

    .line 663
    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v4, v16

    check-cast v4, Ljava/lang/String;

    iput-object v4, v3, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    .line 664
    iput-object v9, v3, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    const/4 v4, 0x1

    if-ne v11, v4, :cond_6

    .line 667
    iget-object v4, v1, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v4

    const-string v9, "HKG"

    move/from16 v16, v6

    const-string v6, "TPE"

    move/from16 p10, v8

    const-string v8, "CHN"

    filled-new-array {v8, v9, v6}, [Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/internal/telephony/TelephonyFeatures;->isCountrySpecific(I[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    const/4 v4, 0x2

    .line 668
    iput v4, v3, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    :goto_4
    const/4 v4, 0x1

    goto :goto_5

    :cond_5
    const/16 v4, 0x9

    .line 670
    iput v4, v3, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    goto :goto_4

    :cond_6
    move/from16 v16, v6

    move/from16 p10, v8

    const/4 v4, 0x4

    .line 673
    iput v4, v3, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    goto :goto_4

    .line 675
    :goto_5
    iput-boolean v4, v3, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncodingSet:Z

    if-eqz v12, :cond_7

    add-int/lit8 v8, p10, -0x1

    if-ne v13, v8, :cond_7

    move v6, v4

    goto :goto_6

    :cond_7
    const/4 v6, 0x0

    .line 680
    :goto_6
    invoke-static {v0, v3, v6}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Lcom/android/internal/telephony/cdma/sms/UserData;Z)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v3

    .line 684
    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    move-object/from16 v8, p2

    .line 683
    invoke-virtual {v1, v0, v8, v6, v3}, Lcom/android/internal/telephony/SMSDispatcher;->getSmsTrackerMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)Ljava/util/HashMap;

    move-result-object v3

    .line 686
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Found Package : "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    const-string v6, "callingPkg"

    invoke-virtual {v3, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move/from16 v6, v16

    .line 688
    invoke-virtual {v1}, Lcom/android/internal/telephony/SMSDispatcher;->nextMessageRef()I

    move-result v16

    move-object v9, v7

    .line 690
    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v7

    move/from16 v17, v13

    const/4 v13, 0x0

    move-object v5, v14

    move/from16 v18, v15

    const-wide/16 v14, 0x0

    move-object/from16 v19, v9

    const/4 v9, 0x0

    move-object/from16 v20, v10

    const/4 v10, 0x0

    move/from16 v21, v11

    const/4 v11, 0x1

    move/from16 v22, v6

    move-object v6, v12

    const/4 v12, 0x1

    move-object/from16 v8, p6

    move-object/from16 v2, p7

    move/from16 v24, v4

    move/from16 v25, v17

    move-object/from16 p9, v19

    move-object/from16 v0, v20

    move/from16 v23, v21

    const/16 v21, 0x0

    move/from16 v20, p10

    move-object v4, v3

    move/from16 v19, v18

    move/from16 v3, p8

    move-wide/from16 v17, p14

    .line 689
    invoke-virtual/range {v1 .. v18}, Lcom/android/internal/telephony/SMSDispatcher;->getSmsTracker(Ljava/lang/String;ILjava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;Landroid/net/Uri;ZLjava/lang/String;ZZZJIJ)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v4

    .line 692
    aput-object v4, v0, v25

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p7

    move-object/from16 v7, p9

    move-object v10, v0

    move/from16 v13, v19

    move/from16 v8, v20

    move/from16 v9, v21

    move/from16 v6, v22

    move/from16 v11, v23

    move/from16 v12, v24

    move-object/from16 v0, p1

    goto/16 :goto_1

    :cond_8
    move-object/from16 p9, v7

    move-object v0, v10

    .line 695
    invoke-virtual {v1}, Lcom/android/internal/telephony/SMSDispatcher;->getCarrierAppPackageName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 697
    const-string v3, "Found carrier package."

    move-object/from16 v9, p9

    invoke-static {v9, v3}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    new-instance v3, Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSender;

    move-object/from16 v4, p3

    invoke-direct {v3, v1, v4, v0}, Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSender;-><init>(Lcom/android/internal/telephony/SMSDispatcher;Ljava/util/ArrayList;[Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 699
    new-instance v0, Lcom/android/internal/telephony/SMSDispatcher$SmsSenderCallback;

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/SMSDispatcher$SmsSenderCallback;-><init>(Lcom/android/internal/telephony/SMSDispatcher;Lcom/android/internal/telephony/SMSDispatcher$SmsSender;)V

    invoke-virtual {v3, v2, v0}, Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSender;->sendSmsByCarrierApp(Ljava/lang/String;Lcom/android/internal/telephony/SMSDispatcher$SmsSenderCallback;)V

    return-void

    .line 701
    :cond_9
    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->sendSubmitPdu([Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    return-void
.end method

.method public blacklist sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 13

    .line 158
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    .line 160
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendSms:  isIms()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    invoke-virtual {p0}, Lcom/android/internal/telephony/SMSDispatcher;->isIms()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mRetryCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mImsRetry="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mImsRetry:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " mMessageRef="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageRef:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " mUsesImsServiceForIms="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mUsesImsServiceForIms:Z

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " SS="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageId:J

    .line 167
    invoke-static {v7, v8}, Lcom/android/internal/telephony/SmsController;->formatCrossStackMessageId(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 160
    const-string v7, "CdmaSMSDispatcher"

    invoke-static {v7, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    invoke-virtual {p1}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->getData()Ljava/util/HashMap;

    move-result-object v1

    const-string v8, "pdu"

    invoke-virtual {v1, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 170
    invoke-virtual {p1}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->getData()Ljava/util/HashMap;

    move-result-object v8

    const-string v9, "destAddr"

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const/4 v9, 0x1

    .line 174
    invoke-virtual {p0, v8, v9}, Lcom/android/internal/telephony/SMSDispatcher;->isSMSBlocked(Ljava/lang/String;Z)Z

    move-result v10

    const/4 v11, 0x2

    if-eqz v10, :cond_0

    .line 176
    :try_start_0
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object v0

    .line 177
    invoke-virtual {v0, v11}, Landroid/app/BroadcastOptions;->setPendingIntentBackgroundActivityStartMode(I)Landroid/app/BroadcastOptions;

    .line 179
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 180
    const-string v1, "LastSentMsg"

    invoke-virtual {v4, v1, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 181
    iget-object v1, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    .line 182
    invoke-virtual {v0}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v8

    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 181
    invoke-virtual/range {v1 .. v8}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p0, v0

    .line 184
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-void

    :cond_0
    if-eqz v8, :cond_1

    .line 192
    const-string v9, "(?<=.{2}).(?=.{2})"

    const-string v10, ""

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 195
    :cond_1
    iget-object v9, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mAppInfo:Landroid/content/pm/PackageInfo;

    if-eqz v9, :cond_2

    .line 196
    iget-object v9, v9, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const/4 v9, 0x0

    .line 198
    :goto_0
    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    .line 199
    const-string v12, "sendSms: - CDMA "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v12, " isIms()="

    .line 200
    invoke-virtual {v10, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lcom/android/internal/telephony/SMSDispatcher;->isIms()Z

    move-result v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    const-string v12, " mno="

    .line 201
    invoke-virtual {v10, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v12, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v12}, Lcom/android/internal/telephony/Phone;->getSmsConfig()Lcom/android/internal/telephony/SmsConfig;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/internal/telephony/SmsConfig;->getMnoName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 202
    invoke-virtual {v10, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v2, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    invoke-virtual {v10, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 203
    invoke-virtual {v10, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v2, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mImsRetry:I

    invoke-virtual {v10, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 204
    invoke-virtual {v10, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v2, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageRef:I

    invoke-virtual {v10, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 205
    invoke-virtual {v10, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-boolean v2, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mUsesImsServiceForIms:Z

    invoke-virtual {v10, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 206
    invoke-virtual {v10, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v2, " da="

    .line 207
    invoke-virtual {v10, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, " packageName="

    .line 208
    invoke-virtual {v10, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 209
    sget-boolean v2, Lcom/android/internal/telephony/TelephonyFeatures;->SHIP_BUILD:Z

    if-nez v2, :cond_3

    .line 210
    const-string v2, " pdu : "

    invoke-virtual {v10, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 212
    :cond_3
    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsLogger:Lcom/android/internal/telephony/SmsLogger;

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v4

    invoke-virtual {v2, v7, v3, v4}, Lcom/android/internal/telephony/SmsLogger;->logAndAdd(Ljava/lang/String;Ljava/lang/String;I)V

    .line 217
    invoke-virtual {p0}, Lcom/android/internal/telephony/SMSDispatcher;->isIms()Z

    move-result v2

    const/16 v3, 0x14

    if-nez v2, :cond_4

    if-eqz v0, :cond_4

    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 218
    invoke-interface {v2}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v2

    if-eq v2, v3, :cond_4

    .line 219
    invoke-static {}, Lcom/android/internal/telephony/satellite/SatelliteController;->getInstance()Lcom/android/internal/telephony/satellite/SatelliteController;

    move-result-object v2

    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2, v4}, Lcom/android/internal/telephony/satellite/SatelliteController;->shouldSendSmsToDatagramDispatcher(Lcom/android/internal/telephony/Phone;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 220
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 222
    :try_start_1
    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/telephony/SMSDispatcher;->getNotInServiceError(I)I

    move-result v0

    const/4 v4, -0x1

    invoke-virtual {p1, v3, v0, v4}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->onFailed(Landroid/content/Context;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 224
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 v0, 0x0

    .line 227
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/SMSDispatcher;->notifySmsSentFailedToEmergencyStateTracker(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;Z)V

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    .line 224
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 225
    throw p0

    .line 231
    :cond_4
    invoke-virtual {p0, v11, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 235
    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getDataNetworkType()I

    move-result v2

    const/16 v4, 0xe

    if-eq v2, v4, :cond_6

    const/16 v4, 0xd

    if-eq v2, v4, :cond_5

    const/16 v4, 0x13

    if-eq v2, v4, :cond_5

    if-ne v2, v3, :cond_7

    .line 236
    :cond_5
    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 240
    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/ServiceStateTracker;->isConcurrentVoiceAndDataAllowed()Z

    move-result v2

    if-nez v2, :cond_7

    :cond_6
    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 241
    invoke-interface {v2}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getVoiceNetworkType()I

    move-result v2

    const/4 v3, 0x7

    if-ne v2, v3, :cond_7

    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v2, Lcom/android/internal/telephony/GsmCdmaPhone;

    iget-object v2, v2, Lcom/android/internal/telephony/GsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    .line 253
    :cond_7
    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getUnitTestMode()Z

    move-result v2

    if-nez v2, :cond_a

    const-string v2, "android.telephony.cts"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    goto :goto_1

    .line 260
    :cond_8
    iget v2, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    if-nez v2, :cond_9

    iget-boolean p1, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mExpectMore:Z

    if-eqz p1, :cond_9

    .line 261
    iget-object p0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSemCi:Lcom/android/internal/telephony/SemCommandsInterface;

    invoke-interface {p0, v1, v0}, Lcom/android/internal/telephony/SemCommandsInterface;->secSendCdmaSmsMore([BLandroid/os/Message;)V

    return-void

    .line 263
    :cond_9
    iget-object p0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSemCi:Lcom/android/internal/telephony/SemCommandsInterface;

    invoke-interface {p0, v1, v0}, Lcom/android/internal/telephony/SemCommandsInterface;->secSendCdmaSms([BLandroid/os/Message;)V

    return-void

    .line 254
    :cond_a
    :goto_1
    iget v2, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    if-nez v2, :cond_b

    iget-boolean p1, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mExpectMore:Z

    if-eqz p1, :cond_b

    .line 255
    iget-object p0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {p0, v1, v0}, Lcom/android/internal/telephony/CommandsInterface;->sendCdmaSMSExpectMore([BLandroid/os/Message;)V

    return-void

    .line 257
    :cond_b
    iget-object p0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {p0, v1, v0}, Lcom/android/internal/telephony/CommandsInterface;->sendCdmaSms([BLandroid/os/Message;)V

    return-void
.end method

.method public blacklist sendStatusReportMessage(Lcom/android/internal/telephony/cdma/SmsMessage;)V
    .locals 1

    const/16 v0, 0xa

    .line 96
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method protected blacklist sendSubmitPdu([Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 12

    .line 739
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p1, v2

    .line 740
    iget-object v4, v3, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDestAddress:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-virtual {p0, v5, v4}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->checkEcmPolicy(ZLjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 741
    iget-object p1, v3, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    if-eqz p1, :cond_0

    .line 743
    :try_start_0
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object p1

    const/4 v0, 0x2

    .line 744
    invoke-virtual {p1, v0}, Landroid/app/BroadcastOptions;->setPendingIntentBackgroundActivityStartMode(I)Landroid/app/BroadcastOptions;

    .line 746
    iget-object v4, v3, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    .line 747
    invoke-virtual {p1}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v11

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 746
    invoke-virtual/range {v4 .. v11}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 753
    :catch_0
    :cond_0
    iget-object p1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const/4 v0, 0x4

    invoke-virtual {v3, p1, v0, v1}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->onFailed(Landroid/content/Context;II)V

    .line 754
    iget-object p1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsHQMAgent:Lcom/android/internal/telephony/SmsHQMAgent;

    iget-object p0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p0

    const-string v0, "0"

    const-string v1, "CSD_sendSubmitPdu_ECM"

    invoke-virtual {p1, v0, v1, p0}, Lcom/android/internal/telephony/SmsHQMAgent;->sendSMOTInfoToHQM(Ljava/lang/String;Ljava/lang/String;I)V

    return-void

    .line 758
    :cond_1
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/SMSDispatcher;->sendRawPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method protected blacklist sendText(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;IJ)V
    .locals 20

    move-object/from16 v2, p0

    move-object/from16 v5, p3

    .line 368
    const-string v0, "sendText "

    const-string v1, "CdmaSMSDispatcher"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 371
    invoke-virtual {v2, v5, v0}, Lcom/android/internal/telephony/SMSDispatcher;->isSMSBlocked(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz p6, :cond_0

    .line 373
    :try_start_0
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object v1

    const/4 v3, 0x2

    .line 374
    invoke-virtual {v1, v3}, Landroid/app/BroadcastOptions;->setPendingIntentBackgroundActivityStartMode(I)Landroid/app/BroadcastOptions;

    .line 376
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 377
    const-string v3, "LastSentMsg"

    invoke-virtual {v7, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 378
    iget-object v5, v2, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    .line 379
    invoke-virtual {v1}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v11

    const/4 v6, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v4, p6

    .line 378
    invoke-virtual/range {v4 .. v11}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 381
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-void

    .line 388
    :cond_0
    iget-object v3, v2, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 389
    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v3

    if-eqz p7, :cond_1

    :goto_0
    move v7, v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    const/4 v8, 0x0

    move-object/from16 v4, p4

    move-object/from16 v6, p5

    move-object/from16 v9, p8

    move/from16 v10, p9

    .line 388
    invoke-static/range {v3 .. v10}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;Ljava/lang/String;I)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v0

    .line 390
    invoke-virtual {v2, v5, v4, v6, v0}, Lcom/android/internal/telephony/SMSDispatcher;->getSmsTrackerMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)Ljava/util/HashMap;

    move-result-object v5

    .line 391
    invoke-virtual {v2}, Lcom/android/internal/telephony/SMSDispatcher;->nextMessageRef()I

    move-result v17

    .line 393
    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v8

    const/4 v14, 0x0

    const-wide/16 v15, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x1

    move-object/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-wide/from16 v18, p10

    .line 392
    invoke-virtual/range {v2 .. v19}, Lcom/android/internal/telephony/SMSDispatcher;->getSmsTracker(Ljava/lang/String;ILjava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;Landroid/net/Uri;ZLjava/lang/String;ZZZJIJ)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v0

    .line 396
    invoke-virtual {v2}, Lcom/android/internal/telephony/SMSDispatcher;->getCarrierAppPackageName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 398
    const-string v4, "Found carrier package."

    invoke-static {v1, v4}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    new-instance v1, Lcom/android/internal/telephony/SMSDispatcher$TextSmsSender;

    invoke-direct {v1, v2, v0}, Lcom/android/internal/telephony/SMSDispatcher$TextSmsSender;-><init>(Lcom/android/internal/telephony/SMSDispatcher;Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 400
    new-instance v0, Lcom/android/internal/telephony/SMSDispatcher$SmsSenderCallback;

    invoke-direct {v0, v2, v1}, Lcom/android/internal/telephony/SMSDispatcher$SmsSenderCallback;-><init>(Lcom/android/internal/telephony/SMSDispatcher;Lcom/android/internal/telephony/SMSDispatcher$SmsSender;)V

    invoke-virtual {v1, v3, v0}, Lcom/android/internal/telephony/SMSDispatcher$SmsSender;->sendSmsByCarrierApp(Ljava/lang/String;Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallback;)V

    return-void

    .line 402
    :cond_2
    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/SMSDispatcher;->sendSubmitPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    return-void
.end method

.method protected blacklist sendTextwithOptions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/net/Uri;Ljava/lang/String;IZIIIIJ)V
    .locals 20

    move-object/from16 v2, p0

    move-object/from16 v0, p1

    move-object/from16 v1, p7

    .line 523
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendTextwithOptions destAddr : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v11, "CdmaSMSDispatcher"

    invoke-static {v11, v3}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    const-string v12, "0"

    if-lez p13, :cond_0

    .line 526
    const-string v0, "sendTextwithOptions: confirmId is a special GSM function, should never be called in CDMA!"

    invoke-static {v11, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    iget-object v0, v2, Lcom/android/internal/telephony/SMSDispatcher;->mSmsHQMAgent:Lcom/android/internal/telephony/SmsHQMAgent;

    iget-object v1, v2, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    const-string v2, "CSD_sendTextwithOptions_confirmId"

    invoke-virtual {v0, v12, v2, v1}, Lcom/android/internal/telephony/SmsHQMAgent;->sendSMOTInfoToHQM(Ljava/lang/String;Ljava/lang/String;I)V

    return-void

    :cond_0
    const/4 v13, 0x1

    .line 533
    invoke-virtual {v2, v0, v13}, Lcom/android/internal/telephony/SMSDispatcher;->isSMSBlocked(Ljava/lang/String;Z)Z

    move-result v3

    const-string v14, "LastSentMsg"

    const/4 v15, 0x2

    if-eqz v3, :cond_1

    .line 535
    :try_start_0
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object v0

    .line 536
    invoke-virtual {v0, v15}, Landroid/app/BroadcastOptions;->setPendingIntentBackgroundActivityStartMode(I)Landroid/app/BroadcastOptions;

    .line 538
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 539
    invoke-virtual {v1, v14, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    if-eqz p4, :cond_b

    .line 541
    iget-object v2, v2, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    .line 542
    invoke-virtual {v0}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 p5, p4

    move-object/from16 p12, v0

    move-object/from16 p8, v1

    move-object/from16 p6, v2

    move/from16 p7, v3

    move-object/from16 p9, v4

    move-object/from16 p10, v5

    move-object/from16 p11, v6

    .line 541
    invoke-virtual/range {p5 .. p12}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 545
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_5

    .line 552
    :cond_1
    iget-object v3, v2, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v3

    const-string v4, "LGT"

    const-string v5, "KOO"

    const-string v6, "SKT"

    const-string v7, "KTT"

    filled-new-array {v6, v7, v4, v5}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/internal/telephony/TelephonyFeatures;->isMainOperatorSpecific(I[Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v3, :cond_6

    .line 555
    new-instance v3, Lcom/android/internal/telephony/SMSDispatcher$KoreanAddressSeparator;

    invoke-direct {v3, v2, v0}, Lcom/android/internal/telephony/SMSDispatcher$KoreanAddressSeparator;-><init>(Lcom/android/internal/telephony/SMSDispatcher;Ljava/lang/String;)V

    move v6, v5

    .line 558
    iget-object v5, v3, Lcom/android/internal/telephony/SMSDispatcher$KoreanAddressSeparator;->mDestAddr:Ljava/lang/String;

    .line 559
    iget-object v9, v3, Lcom/android/internal/telephony/SMSDispatcher$KoreanAddressSeparator;->mSenderAddr:Ljava/lang/String;

    if-eqz v9, :cond_2

    .line 562
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    move-object/from16 v3, p2

    move-object v7, v5

    move-object/from16 v5, p3

    goto :goto_1

    .line 566
    :cond_3
    iget-object v0, v2, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v3

    if-eqz p5, :cond_4

    move v7, v13

    goto :goto_0

    :cond_4
    move v7, v6

    :goto_0
    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object/from16 v4, p2

    move-object/from16 v6, p3

    invoke-static/range {v3 .. v10}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;Ljava/lang/String;I)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v0

    move-object v3, v4

    move-object v7, v5

    move-object v5, v6

    goto :goto_2

    :goto_1
    if-eqz p5, :cond_5

    move v6, v13

    .line 563
    :cond_5
    invoke-static {v3, v7, v5, v6, v4}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v0

    :goto_2
    move-object v4, v0

    move-object v0, v7

    goto :goto_3

    :cond_6
    move-object/from16 v3, p2

    move v6, v5

    move-object/from16 v5, p3

    if-eqz p5, :cond_7

    move v6, v13

    .line 570
    :cond_7
    invoke-static {v3, v0, v5, v6, v4}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v4

    :goto_3
    if-eqz v4, :cond_9

    .line 574
    invoke-virtual {v2, v0, v3, v5, v4}, Lcom/android/internal/telephony/SMSDispatcher;->getSmsTrackerMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)Ljava/util/HashMap;

    move-result-object v0

    .line 576
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Found Package : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v11, v3}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    const-string v3, "callingPkg"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 579
    invoke-virtual {v2}, Lcom/android/internal/telephony/SMSDispatcher;->nextMessageRef()I

    move-result v17

    .line 580
    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v8

    const/4 v14, 0x0

    const-wide/16 v15, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x1

    move-object v3, v5

    move-object v5, v0

    move-object v0, v11

    move-object v11, v3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v9, p6

    move/from16 v4, p8

    move-wide/from16 v18, p14

    move-object v3, v1

    invoke-virtual/range {v2 .. v19}, Lcom/android/internal/telephony/SMSDispatcher;->getSmsTracker(Ljava/lang/String;ILjava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;Landroid/net/Uri;ZLjava/lang/String;ZZZJIJ)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v1

    .line 584
    invoke-virtual {v2}, Lcom/android/internal/telephony/SMSDispatcher;->getCarrierAppPackageName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 586
    const-string v4, "Found carrier package."

    invoke-static {v0, v4}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    new-instance v0, Lcom/android/internal/telephony/SMSDispatcher$TextSmsSender;

    invoke-direct {v0, v2, v1}, Lcom/android/internal/telephony/SMSDispatcher$TextSmsSender;-><init>(Lcom/android/internal/telephony/SMSDispatcher;Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 588
    new-instance v1, Lcom/android/internal/telephony/SMSDispatcher$SmsSenderCallback;

    invoke-direct {v1, v2, v0}, Lcom/android/internal/telephony/SMSDispatcher$SmsSenderCallback;-><init>(Lcom/android/internal/telephony/SMSDispatcher;Lcom/android/internal/telephony/SMSDispatcher$SmsSender;)V

    invoke-virtual {v0, v3, v1}, Lcom/android/internal/telephony/SMSDispatcher$SmsSender;->sendSmsByCarrierApp(Ljava/lang/String;Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallback;)V

    return-void

    .line 590
    :cond_8
    const-string v3, "No carrier package."

    invoke-static {v0, v3}, Lcom/android/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/SMSDispatcher;->sendSubmitPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    return-void

    :cond_9
    move-object v0, v11

    .line 594
    const-string v1, "CdmaSMSDispatcher.sendText(): getSubmitPdu() returned null"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p4, :cond_a

    .line 597
    :try_start_1
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object v1

    .line 598
    invoke-virtual {v1, v15}, Landroid/app/BroadcastOptions;->setPendingIntentBackgroundActivityStartMode(I)Landroid/app/BroadcastOptions;

    .line 600
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 601
    invoke-virtual {v3, v14, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 602
    iget-object v4, v2, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    .line 603
    invoke-virtual {v1}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 p5, p4

    move-object/from16 p12, v1

    move-object/from16 p8, v3

    move-object/from16 p6, v4

    move/from16 p7, v5

    move-object/from16 p9, v6

    move-object/from16 p10, v7

    move-object/from16 p11, v8

    .line 602
    invoke-virtual/range {p5 .. p12}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    .line 605
    :catch_1
    const-string v1, "Intent has been canceled!"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    :cond_a
    :goto_4
    iget-object v0, v2, Lcom/android/internal/telephony/SMSDispatcher;->mSmsHQMAgent:Lcom/android/internal/telephony/SmsHQMAgent;

    iget-object v1, v2, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    const-string v2, "CSD_sendTextwithOptions_getSubmitPduNull"

    invoke-virtual {v0, v12, v2, v1}, Lcom/android/internal/telephony/SmsHQMAgent;->sendSMOTInfoToHQM(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_b
    :goto_5
    return-void
.end method

.method protected blacklist shouldBlockSmsForEcbm()Z
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isInEcm()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/SMSDispatcher;->isCdmaMo()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/SMSDispatcher;->isIms()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
