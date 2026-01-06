.class public Lcom/android/internal/telephony/WapPushOverSms;
.super Ljava/lang/Object;
.source "WapPushOverSms.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;
    }
.end annotation


# instance fields
.field private final greylist-max-r mContext:Landroid/content/Context;

.field private greylist mDeviceIdleController:Landroid/os/IDeviceIdleController;

.field blacklist mDispatchByApplication:Z

.field protected final blacklist mFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

.field blacklist mPowerWhitelistManager:Landroid/os/PowerWhitelistManager;

.field private blacklist mPushOrigAddr:Ljava/lang/String;

.field private blacklist mPushSafeNoti:Z

.field private blacklist mPushTwoPhoneNoti:Z

.field protected blacklist mSmsLogger:Lcom/android/internal/telephony/SmsLogger;

.field private greylist-max-r mUserManager:Landroid/os/UserManager;

.field private blacklist mWapPushAddress:Ljava/lang/String;

.field private volatile greylist-max-r mWapPushManager:Lcom/android/internal/telephony/IWapPushManager;

.field private blacklist mWapPushManagerPackage:Ljava/lang/String;

.field private blacklist mWapPushMessageId:Ljava/lang/String;

.field private blacklist mWapPushSubId:Ljava/lang/String;

.field private blacklist mWapPushTimeStamp:Ljava/lang/String;

.field private blacklist mlinkWarningNoti:Z


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V
    .locals 1

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 949
    iput-boolean v0, p0, Lcom/android/internal/telephony/WapPushOverSms;->mPushSafeNoti:Z

    .line 952
    iput-boolean v0, p0, Lcom/android/internal/telephony/WapPushOverSms;->mlinkWarningNoti:Z

    .line 955
    iput-boolean v0, p0, Lcom/android/internal/telephony/WapPushOverSms;->mPushTwoPhoneNoti:Z

    .line 958
    iput-boolean v0, p0, Lcom/android/internal/telephony/WapPushOverSms;->mDispatchByApplication:Z

    .line 170
    iput-object p2, p0, Lcom/android/internal/telephony/WapPushOverSms;->mFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

    .line 171
    iput-object p1, p0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    .line 173
    const-string p2, "deviceidle"

    .line 174
    invoke-static {p2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p2

    .line 173
    invoke-static {p2}, Landroid/os/IDeviceIdleController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IDeviceIdleController;

    move-result-object p2

    iput-object p2, p0, Lcom/android/internal/telephony/WapPushOverSms;->mDeviceIdleController:Landroid/os/IDeviceIdleController;

    .line 176
    const-class p2, Landroid/os/PowerWhitelistManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/PowerWhitelistManager;

    iput-object p2, p0, Lcom/android/internal/telephony/WapPushOverSms;->mPowerWhitelistManager:Landroid/os/PowerWhitelistManager;

    .line 177
    const-class p2, Landroid/os/UserManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/UserManager;

    iput-object p2, p0, Lcom/android/internal/telephony/WapPushOverSms;->mUserManager:Landroid/os/UserManager;

    .line 179
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/WapPushOverSms;->bindWapPushManagerService(Landroid/content/Context;)V

    .line 181
    invoke-static {}, Lcom/android/internal/telephony/SmsLogger;->getInstance()Lcom/android/internal/telephony/SmsLogger;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/WapPushOverSms;->mSmsLogger:Lcom/android/internal/telephony/SmsLogger;

    return-void
.end method

.method private blacklist bindWapPushManagerService(Landroid/content/Context;)V
    .locals 3

    .line 117
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/internal/telephony/IWapPushManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/internal/telephony/WapPushOverSms;->resolveSystemService(Landroid/content/pm/PackageManager;Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v1

    .line 119
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    .line 120
    invoke-virtual {p1, v0, p0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 123
    :cond_0
    monitor-enter p0

    .line 124
    :try_start_0
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/WapPushOverSms;->mWapPushManagerPackage:Ljava/lang/String;

    .line 125
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 121
    :cond_1
    :goto_0
    const-string p0, "WAP PUSH"

    const-string p1, "bindService() for wappush manager failed"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist decodeWapPdu([BLcom/android/internal/telephony/InboundSmsHandler;)Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;
    .locals 30

    move-object/from16 v1, p0

    move-object/from16 v4, p1

    .line 204
    const-string v10, "WAP PUSH"

    new-instance v11, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;

    const/4 v12, 0x0

    invoke-direct {v11, v1, v12}, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;-><init>(Lcom/android/internal/telephony/WapPushOverSms;Lcom/android/internal/telephony/WapPushOverSms-IA;)V

    const/4 v13, 0x2

    if-nez v4, :cond_0

    .line 209
    iput v13, v11, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->statusCode:I

    return-object v11

    :cond_0
    const/4 v14, 0x0

    .line 215
    :try_start_0
    aget-byte v0, v4, v14

    and-int/lit16 v0, v0, 0xff

    const/4 v15, 0x1

    .line 216
    aget-byte v2, v4, v15

    and-int/lit16 v2, v2, 0xff

    .line 219
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/InboundSmsHandler;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v3

    const/4 v5, 0x6

    const/4 v6, -0x1

    if-eq v2, v5, :cond_2

    const/4 v7, 0x7

    if-eq v2, v7, :cond_2

    .line 223
    iget-object v0, v1, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x10e0187

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    if-eq v0, v6, :cond_1

    add-int/lit8 v2, v0, 0x1

    .line 226
    aget-byte v8, v4, v0

    and-int/lit16 v8, v8, 0xff

    add-int/2addr v0, v13

    .line 227
    aget-byte v2, v4, v2

    and-int/lit16 v2, v2, 0xff

    if-eq v2, v5, :cond_3

    if-eq v2, v7, :cond_3

    .line 236
    iput v15, v11, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->statusCode:I

    return-object v11

    :catch_0
    move-exception v0

    goto/16 :goto_19

    .line 241
    :cond_1
    iput v15, v11, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->statusCode:I

    return-object v11

    :cond_2
    move v8, v0

    move v0, v13

    .line 246
    :cond_3
    invoke-static {}, Lcom/android/internal/telephony/TelephonyComponentFactory;->getInstance()Lcom/android/internal/telephony/TelephonyComponentFactory;

    move-result-object v5

    const-class v7, Lcom/android/internal/telephony/WspTypeDecoder;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/android/internal/telephony/TelephonyComponentFactory;->inject(Ljava/lang/String;)Lcom/android/internal/telephony/TelephonyComponentFactory;

    move-result-object v5

    .line 247
    invoke-virtual {v5, v4}, Lcom/android/internal/telephony/TelephonyComponentFactory;->makeWspTypeDecoder([B)Lcom/android/internal/telephony/WspTypeDecoder;

    move-result-object v5

    .line 255
    invoke-virtual {v5, v0}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeUintvarInteger(I)Z

    move-result v7

    if-nez v7, :cond_4

    .line 257
    iput v13, v11, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->statusCode:I

    return-object v11

    .line 260
    :cond_4
    invoke-virtual {v5}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    move-result-wide v6

    long-to-int v6, v6

    .line 261
    invoke-virtual {v5}, Lcom/android/internal/telephony/WspTypeDecoder;->getDecodedDataLength()I

    move-result v7

    add-int/2addr v7, v0

    .line 277
    invoke-virtual {v5, v7}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeContentType(I)Z

    move-result v0

    if-nez v0, :cond_5

    .line 279
    iput v13, v11, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->statusCode:I

    return-object v11

    .line 283
    :cond_5
    invoke-virtual {v5}, Lcom/android/internal/telephony/WspTypeDecoder;->getValueString()Ljava/lang/String;

    move-result-object v0

    .line 284
    invoke-virtual {v5}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    move-result-wide v16

    .line 289
    invoke-virtual {v5}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    move-result-wide v12

    long-to-int v12, v12

    .line 290
    iget-object v13, v1, Lcom/android/internal/telephony/WapPushOverSms;->mWapPushManager:Lcom/android/internal/telephony/IWapPushManager;
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move/from16 v18, v6

    const-string v6, "application/vnd.omaloc-supl-init"

    const-string v14, "application/vnd.wap.coc"

    const-string v15, "application/vnd.wap.mms-message"

    if-nez v13, :cond_25

    .line 291
    const-string v13, "application/vnd.syncml.dm+wbxml"

    const-string v9, "application/vnd.syncml.dm+xml"

    move/from16 v21, v2

    const-string v2, "application/vnd.syncml.notification"

    const-string v4, "application/vnd.oma.drm.rights+xml"

    move/from16 v22, v8

    const-string v8, "application/vnd.oma.drm.rights+wbxml"

    move/from16 v23, v12

    const-string v12, "application/vnd.syncml.ds.notification"

    const-string v1, "application/json"

    move/from16 v24, v3

    const-string v3, "application/vnd.wap.emn+wbxml"

    move-object/from16 v25, v10

    const-string v10, "application/vnd.docomo.pf"

    move-object/from16 v26, v5

    if-nez v0, :cond_6

    sparse-switch v23, :sswitch_data_0

    const/4 v5, 0x1

    .line 354
    :try_start_1
    iput v5, v11, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->statusCode:I

    return-object v11

    :catch_1
    move-exception v0

    move-object/from16 v10, v25

    goto/16 :goto_19

    :sswitch_0
    move-object v0, v6

    :goto_0
    move/from16 v12, v23

    goto/16 :goto_1

    :sswitch_1
    move-object v0, v10

    goto :goto_0

    :sswitch_2
    move-object v0, v3

    goto :goto_0

    :sswitch_3
    move-object v0, v1

    goto :goto_0

    :sswitch_4
    move-object v0, v12

    goto :goto_0

    :sswitch_5
    move-object v0, v8

    goto :goto_0

    :sswitch_6
    move-object v0, v4

    goto :goto_0

    :sswitch_7
    move-object v0, v2

    goto :goto_0

    :sswitch_8
    move-object v0, v9

    goto :goto_0

    :sswitch_9
    move-object v0, v13

    goto :goto_0

    :sswitch_a
    move-object v0, v15

    goto :goto_0

    .line 334
    :sswitch_b
    const-string v0, "application/vnd.wap.connectivity-wbxml"

    goto :goto_0

    :sswitch_c
    move-object v0, v14

    goto :goto_0

    .line 304
    :sswitch_d
    const-string v0, "application/vnd.wap.slc"

    goto :goto_0

    .line 301
    :sswitch_e
    const-string v0, "application/vnd.wap.sic"

    goto :goto_0

    .line 358
    :cond_6
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    const/16 v12, 0x4a

    goto/16 :goto_1

    .line 360
    :cond_7
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    const/16 v12, 0x4b

    goto/16 :goto_1

    .line 362
    :cond_8
    const-string v4, "application/vnd.wap.sic"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    const/16 v12, 0x2e

    goto/16 :goto_1

    .line 364
    :cond_9
    const-string v4, "application/vnd.wap.slc"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    const/16 v12, 0x30

    goto/16 :goto_1

    .line 366
    :cond_a
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    const/16 v12, 0x32

    goto :goto_1

    .line 368
    :cond_b
    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    const/16 v12, 0x3e

    goto :goto_1

    .line 370
    :cond_c
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    const/16 v12, 0x312

    goto :goto_1

    .line 372
    :cond_d
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    const/16 v12, 0x310

    goto :goto_1

    .line 379
    :cond_e
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    const/16 v12, 0x44

    goto :goto_1

    .line 381
    :cond_f
    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    const/16 v12, 0x4e

    goto :goto_1

    .line 383
    :cond_10
    const-string v2, "application/vnd.wap.connectivity-wbxml"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    const/16 v12, 0x36

    goto :goto_1

    .line 385
    :cond_11
    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    const/16 v12, 0x42

    goto :goto_1

    .line 387
    :cond_12
    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    const/16 v12, 0x43

    goto :goto_1

    .line 389
    :cond_13
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    const/16 v12, 0x30a

    goto :goto_1

    .line 391
    :cond_14
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    const/16 v12, 0x5b

    .line 402
    :goto_1
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/InboundSmsHandler;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getSmsConfig()Lcom/android/internal/telephony/SmsConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/SmsConfig;->getMnoName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SKT_KR"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_16

    .line 403
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/InboundSmsHandler;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getSmsConfig()Lcom/android/internal/telephony/SmsConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/SmsConfig;->getMnoName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "KT_KR"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_16

    .line 404
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/InboundSmsHandler;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getSmsConfig()Lcom/android/internal/telephony/SmsConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/SmsConfig;->getMnoName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LGU"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_15

    goto :goto_2

    :cond_15
    move-object/from16 v10, v25

    move-object/from16 v2, v26

    goto :goto_3

    :cond_16
    :goto_2
    add-int v1, v7, v18

    const/16 v19, 0x1

    add-int/lit8 v1, v1, -0x1

    move-object/from16 v2, v26

    .line 406
    invoke-virtual {v2, v7, v1}, Lcom/android/internal/telephony/WspTypeDecoder;->seekSktHpsHeaderId(II)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 407
    const-string v1, "cww_client"

    iput-object v1, v11, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->wapAppId:Ljava/lang/String;

    .line 408
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "wapAppId : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v11, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->wapAppId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    move-object/from16 v10, v25

    :try_start_2
    invoke-static {v10, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :cond_17
    move-object/from16 v10, v25

    .line 415
    :goto_3
    :try_start_3
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v1
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_0

    move-object/from16 v26, v2

    .line 416
    :try_start_4
    invoke-virtual {v1}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getPhoneRestrictionPolicy()Landroid/sec/enterprise/PhoneRestrictionPolicy;

    move-result-object v2

    .line 417
    invoke-virtual {v1}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getDeviceInventory()Landroid/sec/enterprise/DeviceInventory;

    move-result-object v3

    .line 418
    const-string v4, "gsm.operator.isroaming"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 419
    invoke-virtual {v1}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getRoamingPolicy()Landroid/sec/enterprise/RoamingPolicy;

    move-result-object v4

    invoke-virtual {v4}, Landroid/sec/enterprise/RoamingPolicy;->isRoamingPushEnabled()Z

    move-result v4

    if-eqz v4, :cond_19

    goto :goto_6

    :catch_2
    move-object/from16 v13, p0

    move-object/from16 v4, p1

    move-object/from16 v20, v0

    :goto_4
    move-object/from16 v29, v6

    :goto_5
    move/from16 v1, v18

    move/from16 v28, v21

    move/from16 v27, v22

    const/16 v0, 0x3e

    goto/16 :goto_a

    .line 420
    :cond_18
    :goto_6
    invoke-virtual {v2}, Landroid/sec/enterprise/PhoneRestrictionPolicy;->isWapPushAllowed()Z

    move-result v4

    if-nez v4, :cond_1a

    .line 421
    :cond_19
    const-string v1, " MDM RoamingPush or WapPush Disabled "

    invoke-static {v10, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x1

    .line 422
    iput v5, v11, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->statusCode:I

    return-object v11

    .line 426
    :cond_1a
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_1c

    .line 427
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    const-string v4, "gsm.operator.isroaming"

    const-string v5, "false"
    :try_end_4
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_0

    move/from16 v8, v24

    :try_start_5
    invoke-static {v8, v4, v5}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 428
    const-string v5, "true"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b

    invoke-virtual {v1}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getRoamingPolicy()Landroid/sec/enterprise/RoamingPolicy;

    move-result-object v1

    invoke-virtual {v1}, Landroid/sec/enterprise/RoamingPolicy;->isRoamingPushEnabled()Z

    move-result v1

    if-nez v1, :cond_1b

    .line 429
    const-string v1, " MDM RoamingPush Disabled"

    invoke-static {v10, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x1

    .line 430
    iput v5, v11, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->statusCode:I
    :try_end_5
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_0

    return-object v11

    :catch_3
    move-object/from16 v13, p0

    move-object/from16 v4, p1

    move-object/from16 v20, v0

    move-object/from16 v29, v6

    move/from16 v24, v8

    goto :goto_5

    :cond_1b
    :goto_7
    const/16 v1, 0x3e

    goto :goto_8

    :cond_1c
    move/from16 v8, v24

    goto :goto_7

    :goto_8
    if-ne v1, v12, :cond_20

    const/4 v5, 0x1

    .line 435
    :try_start_6
    invoke-virtual {v2, v5}, Landroid/sec/enterprise/PhoneRestrictionPolicy;->getEmergencyCallOnly(Z)Z

    move-result v3

    if-nez v3, :cond_1d

    invoke-virtual {v2}, Landroid/sec/enterprise/PhoneRestrictionPolicy;->isIncomingMmsAllowed()Z

    move-result v3

    if-nez v3, :cond_1e

    :cond_1d
    move-object/from16 v13, p0

    move-object/from16 v4, p1

    move-object/from16 v20, v0

    move v0, v1

    move-object/from16 v29, v6

    move/from16 v24, v8

    move/from16 v1, v18

    move/from16 v28, v21

    move/from16 v27, v22

    move-object/from16 v18, v15

    move v15, v7

    goto/16 :goto_b

    .line 439
    :cond_1e
    invoke-virtual {v2}, Landroid/sec/enterprise/PhoneRestrictionPolicy;->isBlockMmsWithStorageEnabled()Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 440
    const-string v3, "blocking mms with storage"

    invoke-static {v10, v3}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_6
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_6 .. :try_end_6} :catch_0

    move-object/from16 v13, p0

    .line 441
    :try_start_7
    iget-object v5, v13, Lcom/android/internal/telephony/WapPushOverSms;->mWapPushAddress:Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_7} :catch_7
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_7 .. :try_end_7} :catch_0

    move v3, v7

    :try_start_8
    iget-object v7, v13, Lcom/android/internal/telephony/WapPushOverSms;->mWapPushTimeStamp:Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_8 .. :try_end_8} :catch_0

    move/from16 v24, v8

    :try_start_9
    iget-object v8, v13, Lcom/android/internal/telephony/WapPushOverSms;->mWapPushMessageId:Ljava/lang/String;

    iget-object v9, v13, Lcom/android/internal/telephony/WapPushOverSms;->mWapPushSubId:Ljava/lang/String;
    :try_end_9
    .catch Ljava/lang/NullPointerException; {:try_start_9 .. :try_end_9} :catch_4
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_9 .. :try_end_9} :catch_0

    move v4, v3

    const/4 v3, 0x0

    move-object/from16 v23, v6

    const/4 v6, -0x1

    move-object/from16 v20, v0

    move v0, v1

    move/from16 v1, v18

    move/from16 v28, v21

    move/from16 v27, v22

    move-object/from16 v29, v23

    move-object/from16 v18, v15

    move v15, v4

    move-object/from16 v4, p1

    :try_start_a
    invoke-virtual/range {v2 .. v9}, Landroid/sec/enterprise/PhoneRestrictionPolicy;->storeBlockedSmsMms(Z[BLjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x1

    .line 443
    iput v5, v11, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->statusCode:I

    return-object v11

    :catch_4
    move-object/from16 v4, p1

    move-object/from16 v20, v0

    move v0, v1

    move-object/from16 v29, v6

    :goto_9
    move/from16 v1, v18

    move/from16 v28, v21

    move/from16 v27, v22

    move-object/from16 v18, v15

    move v15, v3

    goto/16 :goto_d

    :catch_5
    move-object/from16 v4, p1

    move-object/from16 v20, v0

    move v0, v1

    move-object/from16 v29, v6

    move/from16 v24, v8

    goto :goto_9

    :catch_6
    :cond_1f
    move-object/from16 v13, p0

    :catch_7
    move-object/from16 v4, p1

    move-object/from16 v20, v0

    move v0, v1

    move-object/from16 v29, v6

    move/from16 v24, v8

    move/from16 v1, v18

    move/from16 v28, v21

    move/from16 v27, v22

    :goto_a
    move-object/from16 v18, v15

    move v15, v7

    goto :goto_d

    .line 436
    :goto_b
    const-string v2, "emergency call only or incoming MMS not allowed"

    invoke-static {v10, v2}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x1

    .line 437
    iput v5, v11, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->statusCode:I

    return-object v11

    :cond_20
    move-object/from16 v13, p0

    move-object/from16 v4, p1

    move-object/from16 v20, v0

    move v0, v1

    move-object/from16 v29, v6

    move/from16 v24, v8

    move/from16 v1, v18

    move/from16 v28, v21

    move/from16 v27, v22

    move-object/from16 v18, v15

    move v15, v7

    .line 448
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    .line 449
    :goto_c
    array-length v6, v4

    if-ge v5, v6, :cond_21

    .line 450
    aget-byte v6, v4, v5

    int-to-char v6, v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_c

    .line 452
    :cond_21
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_22

    .line 453
    iget-object v5, v13, Lcom/android/internal/telephony/WapPushOverSms;->mWapPushAddress:Ljava/lang/String;

    iget-object v6, v13, Lcom/android/internal/telephony/WapPushOverSms;->mWapPushTimeStamp:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v7, 0x1

    invoke-virtual {v3, v5, v6, v2, v7}, Landroid/sec/enterprise/DeviceInventory;->storeSMS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_a
    .catch Ljava/lang/NullPointerException; {:try_start_a .. :try_end_a} :catch_9
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_a .. :try_end_a} :catch_0

    goto :goto_d

    :catch_8
    move-object/from16 v13, p0

    move-object/from16 v4, p1

    move-object/from16 v20, v0

    move-object/from16 v26, v2

    goto/16 :goto_4

    :catch_9
    :cond_22
    :goto_d
    const/16 v2, 0x32

    if-eq v12, v2, :cond_23

    if-eq v12, v0, :cond_23

    const/16 v0, 0x44

    if-eq v12, v0, :cond_23

    move-object/from16 v2, v20

    :goto_e
    const/4 v0, 0x0

    goto :goto_f

    :cond_23
    move-object/from16 v2, v20

    const/4 v0, 0x1

    goto :goto_f

    :cond_24
    move-object/from16 v10, v25

    const/4 v5, 0x1

    .line 397
    :try_start_b
    iput v5, v11, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->statusCode:I

    return-object v11

    :cond_25
    move-object v13, v1

    move/from16 v28, v2

    move/from16 v24, v3

    move-object/from16 v26, v5

    move-object/from16 v29, v6

    move/from16 v27, v8

    move/from16 v1, v18

    move-object/from16 v18, v15

    move v15, v7

    move-object v2, v0

    goto :goto_e

    :goto_f
    if-nez v0, :cond_2f

    .line 473
    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/telephony/WspTypeDecoder;->getDecodedDataLength()I

    move-result v0

    add-int v7, v15, v0

    .line 475
    new-array v3, v1, [B

    const/4 v5, 0x0

    .line 476
    invoke-static {v4, v15, v3, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-eqz v2, :cond_26

    .line 480
    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    move-object v6, v4

    const/4 v8, 0x0

    goto :goto_10

    :cond_26
    add-int v0, v15, v1

    .line 484
    array-length v5, v4

    sub-int/2addr v5, v0

    new-array v6, v5, [B

    const/4 v8, 0x0

    .line 485
    invoke-static {v4, v0, v6, v8, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 488
    :goto_10
    invoke-static/range {v24 .. v24}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v0

    if-eqz v0, :cond_27

    .line 489
    array-length v5, v0

    if-lez v5, :cond_27

    aget v0, v0, v8

    :goto_11
    move v5, v0

    goto :goto_12

    .line 490
    :cond_27
    invoke-static {}, Landroid/telephony/SmsManager;->getDefaultSmsSubscriptionId()I

    move-result v0

    goto :goto_11

    :goto_12
    if-eqz v2, :cond_2a

    move-object/from16 v0, v18

    .line 495
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_b
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_b .. :try_end_b} :catch_0

    if-eqz v0, :cond_2a

    .line 497
    :try_start_c
    new-instance v0, Lcom/google/android/mms/pdu/PduParser;

    invoke-static {v5}, Lcom/android/internal/telephony/WapPushOverSms;->shouldParseContentDisposition(I)Z

    move-result v8

    invoke-direct {v0, v6, v8}, Lcom/google/android/mms/pdu/PduParser;-><init>([BZ)V

    invoke-virtual {v0}, Lcom/google/android/mms/pdu/PduParser;->parse()Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_a

    goto :goto_13

    :catch_a
    move-exception v0

    .line 499
    :try_start_d
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to parse PDU: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_13
    if-eqz v0, :cond_29

    .line 502
    invoke-virtual {v0}, Lcom/google/android/mms/pdu/GenericPdu;->getMessageType()I

    move-result v8

    const/16 v9, 0x82

    if-ne v8, v9, :cond_29

    .line 503
    move-object v8, v0

    check-cast v8, Lcom/google/android/mms/pdu/NotificationInd;

    .line 504
    invoke-virtual {v8}, Lcom/google/android/mms/pdu/NotificationInd;->getFrom()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v9

    if-eqz v9, :cond_29

    iget-object v9, v13, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    .line 505
    invoke-virtual {v8}, Lcom/google/android/mms/pdu/NotificationInd;->getFrom()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v8

    const/4 v12, 0x0

    invoke-static {v9, v8, v12}, Lcom/android/internal/telephony/BlockChecker;->isBlocked(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v8

    if-eqz v8, :cond_29

    .line 506
    invoke-direct {v13}, Lcom/android/internal/telephony/WapPushOverSms;->isSecSMSPackage()Z

    move-result v8

    if-nez v8, :cond_28

    const/4 v8, 0x1

    .line 507
    iput v8, v11, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->statusCode:I

    goto/16 :goto_1a

    :cond_28
    const/4 v8, 0x1

    .line 510
    iput-boolean v8, v11, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->isBlockedNumber:Z

    :cond_29
    move-object v12, v0

    goto :goto_14

    :cond_2a
    const/4 v12, 0x0

    :goto_14
    add-int v0, v7, v1

    const/16 v19, 0x1

    add-int/lit8 v0, v0, -0x1

    move-object/from16 v1, v26

    .line 521
    invoke-virtual {v1, v7, v0}, Lcom/android/internal/telephony/WspTypeDecoder;->seekXWapApplicationId(II)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 522
    invoke-virtual {v1}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    move-result-wide v7

    long-to-int v0, v7

    .line 523
    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeXWapApplicationId(I)Z

    .line 524
    invoke-virtual {v1}, Lcom/android/internal/telephony/WspTypeDecoder;->getValueString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2b

    .line 530
    invoke-virtual {v1}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    move-result-wide v7

    long-to-int v0, v7

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v7, 0x4

    const/4 v14, 0x0

    goto :goto_15

    :cond_2b
    const/16 v7, 0x21

    const/4 v14, 0x1

    .line 536
    :goto_15
    iput-object v0, v11, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->wapAppId:Ljava/lang/String;

    if-nez v2, :cond_2c

    .line 538
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    goto :goto_16

    :cond_2c
    move-object v8, v2

    .line 539
    :goto_16
    iput-object v8, v11, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->contentType:Ljava/lang/String;

    if-eqz v2, :cond_2e

    move-object/from16 v8, v29

    .line 543
    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2e

    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/InboundSmsHandler;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/telephony/Phone;->getSmsConfig()Lcom/android/internal/telephony/SmsConfig;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/telephony/SmsConfig;->getMnoName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    const-string v9, "SOFTBANK"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2e

    if-eqz v14, :cond_2d

    .line 545
    const-string v4, "x-oma-application:ulp.ua"

    .line 546
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2e

    const/4 v8, 0x1

    .line 548
    iput v8, v11, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->statusCode:I

    goto/16 :goto_1a

    :cond_2d
    const/4 v8, 0x1

    add-int/2addr v7, v15

    add-int/2addr v7, v8

    .line 552
    aget-byte v0, v4, v7

    const/16 v4, -0x70

    if-eq v0, v4, :cond_2e

    .line 554
    iput v8, v11, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->statusCode:I

    goto/16 :goto_1a

    .line 563
    :cond_2e
    iput v5, v11, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->subId:I

    move/from16 v8, v24

    .line 564
    iput v8, v11, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->phoneId:I

    .line 565
    iput-object v12, v11, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->parsedPdu:Lcom/google/android/mms/pdu/GenericPdu;

    .line 566
    iput-object v2, v11, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->mimeType:Ljava/lang/String;

    move/from16 v5, v27

    .line 567
    iput v5, v11, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->transactionId:I

    move/from16 v7, v28

    .line 568
    iput v7, v11, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->pduType:I

    .line 569
    iput-object v3, v11, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->header:[B

    .line 570
    iput-object v6, v11, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->intentData:[B

    .line 571
    invoke-virtual {v1}, Lcom/android/internal/telephony/WspTypeDecoder;->getContentParameters()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, v11, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->contentTypeParameters:Ljava/util/HashMap;

    const/4 v9, -0x1

    .line 572
    iput v9, v11, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->statusCode:I

    goto/16 :goto_1a

    :cond_2f
    move-object/from16 v0, v18

    move/from16 v8, v24

    move/from16 v5, v27

    move/from16 v7, v28

    const/4 v9, -0x1

    .line 574
    iput-object v2, v11, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->mimeType:Ljava/lang/String;

    .line 575
    iput v5, v11, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->transactionId:I

    .line 576
    iput v7, v11, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->pduType:I

    .line 577
    iput v15, v11, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->headerStartIndex:I

    .line 578
    iput v1, v11, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->headerLength:I

    .line 580
    new-array v3, v1, [B

    const/4 v5, 0x0

    .line 581
    invoke-static {v4, v15, v3, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-eqz v2, :cond_30

    .line 585
    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_30

    move-object v3, v4

    goto :goto_17

    :cond_30
    add-int v7, v15, v1

    .line 589
    array-length v1, v4

    sub-int/2addr v1, v7

    new-array v3, v1, [B

    const/4 v5, 0x0

    .line 590
    invoke-static {v4, v7, v3, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 593
    :goto_17
    invoke-static {v8}, Landroid/telephony/SubscriptionManager;->getSubscriptionId(I)I

    move-result v1

    .line 594
    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v4

    if-nez v4, :cond_31

    .line 595
    invoke-static {}, Landroid/telephony/SmsManager;->getDefaultSmsSubscriptionId()I

    move-result v1

    :cond_31
    if-eqz v2, :cond_33

    .line 599
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_d
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_d .. :try_end_d} :catch_0

    if-eqz v0, :cond_33

    .line 601
    :try_start_e
    new-instance v0, Lcom/google/android/mms/pdu/PduParser;

    invoke-static {v1}, Lcom/android/internal/telephony/WapPushOverSms;->shouldParseContentDisposition(I)Z

    move-result v1

    invoke-direct {v0, v3, v1}, Lcom/google/android/mms/pdu/PduParser;-><init>([BZ)V

    invoke-virtual {v0}, Lcom/google/android/mms/pdu/PduParser;->parse()Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v12
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_b

    goto :goto_18

    :catch_b
    move-exception v0

    .line 603
    :try_start_f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to parse PDU: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v12, 0x0

    :goto_18
    if-eqz v12, :cond_33

    .line 606
    invoke-virtual {v12}, Lcom/google/android/mms/pdu/GenericPdu;->getMessageType()I

    move-result v0

    const/16 v1, 0x82

    if-ne v0, v1, :cond_33

    .line 607
    check-cast v12, Lcom/google/android/mms/pdu/NotificationInd;

    .line 611
    invoke-virtual {v12}, Lcom/google/android/mms/pdu/NotificationInd;->getContentLocation()[B

    move-result-object v0

    .line 612
    invoke-virtual {v12}, Lcom/google/android/mms/pdu/NotificationInd;->getTransactionId()[B

    move-result-object v1

    .line 613
    invoke-virtual {v12}, Lcom/google/android/mms/pdu/NotificationInd;->getMessageSize()J

    move-result-wide v2

    .line 610
    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/telephony/WapPushCache;->putWapMessageSize([B[BJ)V

    .line 615
    invoke-virtual {v12}, Lcom/google/android/mms/pdu/NotificationInd;->getFrom()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v0

    if-eqz v0, :cond_33

    iget-object v0, v13, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    .line 616
    invoke-virtual {v12}, Lcom/google/android/mms/pdu/NotificationInd;->getFrom()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v1

    const/4 v12, 0x0

    invoke-static {v0, v1, v12}, Lcom/android/internal/telephony/BlockChecker;->isBlocked(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 617
    invoke-direct {v13}, Lcom/android/internal/telephony/WapPushOverSms;->isSecSMSPackage()Z

    move-result v0

    if-nez v0, :cond_32

    const/4 v5, 0x1

    .line 618
    iput v5, v11, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->statusCode:I

    goto :goto_1a

    :cond_32
    const/4 v5, 0x1

    .line 621
    iput-boolean v5, v11, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->isBlockedNumber:Z

    .line 625
    :cond_33
    iput v9, v11, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->statusCode:I
    :try_end_f
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_f .. :try_end_f} :catch_0

    goto :goto_1a

    .line 631
    :goto_19
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ignoring dispatchWapPdu() array index exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x2

    .line 632
    iput v1, v11, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->statusCode:I

    :goto_1a
    return-object v11

    :sswitch_data_0
    .sparse-switch
        0x2e -> :sswitch_e
        0x30 -> :sswitch_d
        0x32 -> :sswitch_c
        0x36 -> :sswitch_b
        0x3e -> :sswitch_a
        0x42 -> :sswitch_9
        0x43 -> :sswitch_8
        0x44 -> :sswitch_7
        0x4a -> :sswitch_6
        0x4b -> :sswitch_5
        0x4e -> :sswitch_4
        0x5b -> :sswitch_3
        0xce -> :sswitch_4
        0x30a -> :sswitch_2
        0x310 -> :sswitch_1
        0x312 -> :sswitch_0
    .end sparse-switch
.end method

.method private blacklist dispatchWapPdu_DMNoti([BILcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;Lcom/android/internal/telephony/InboundSmsHandler;I)V
    .locals 8

    .line 1166
    new-instance v1, Landroid/content/Intent;

    const-string v0, "com.samsung.provider.Telephony.WAP_PUSH_DM_NOTI_RECEIVED"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v0, 0x20

    .line 1167
    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v0, 0x1000000

    .line 1168
    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1169
    const-string v0, "pdus"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 1170
    const-string p1, "pushtype"

    invoke-virtual {v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1171
    invoke-virtual {p4}, Lcom/android/internal/telephony/InboundSmsHandler;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p1

    .line 1172
    const-string p2, "sim_slot_id"

    invoke-virtual {v1, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1176
    const-string p1, "WAP PUSH"

    const-string p2, "com.samsung.provider.Telephony.WAP_PUSH_DM_NOTI_RECEIVED is sent"

    invoke-static {p1, p2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 1177
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/WapPushOverSms;->handleSmsWhitelisting(Landroid/content/ComponentName;)Landroid/os/Bundle;

    move-result-object v4

    .line 1178
    iget-object p0, p0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    invoke-static {p0, p5}, Lcom/android/internal/telephony/util/TelephonyUtils;->getSubscriptionUserHandle(Landroid/content/Context;I)Landroid/os/UserHandle;

    move-result-object p0

    if-nez p0, :cond_0

    .line 1180
    sget-object p0, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    :cond_0
    move-object v6, p0

    .line 1182
    const-string v2, "android.permission.RECEIVE_WAP_PUSH"

    const-string v3, "android:receive_wap_push"

    move-object v5, p3

    move-object v0, p4

    move v7, p5

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchIntent(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;Landroid/os/UserHandle;I)V

    return-void
.end method

.method private blacklist dispatchWapPdu_MMS([BIIIILcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;Lcom/android/internal/telephony/InboundSmsHandler;I)V
    .locals 14

    move/from16 v1, p4

    move/from16 v2, p5

    .line 1087
    new-array v3, v2, [B

    const/4 v4, 0x0

    .line 1088
    invoke-static {p1, v1, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v1, v2

    .line 1090
    array-length v2, p1

    sub-int/2addr v2, v1

    new-array v5, v2, [B

    .line 1091
    invoke-static {p1, v1, v5, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1093
    invoke-virtual/range {p7 .. p7}, Lcom/android/internal/telephony/InboundSmsHandler;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    .line 1095
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.provider.Telephony.WAP_PUSH_DELIVER"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1096
    const-string v2, "application/vnd.wap.mms-message"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1097
    const-string v2, "transactionId"

    move/from16 v6, p2

    invoke-virtual {v1, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1098
    const-string v2, "pduType"

    move/from16 v6, p3

    invoke-virtual {v1, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1099
    const-string v2, "header"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 1100
    const-string v2, "data"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 1101
    invoke-static {v1, v0}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    .line 1103
    iget-boolean v2, p0, Lcom/android/internal/telephony/WapPushOverSms;->mPushSafeNoti:Z

    const-string v3, "WAP PUSH"

    const/4 v5, 0x1

    if-ne v2, v5, :cond_0

    .line 1104
    const-string v6, "safeNoti"

    invoke-virtual {v1, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1105
    const-string v2, "putExtra safeNoti"

    invoke-static {v3, v2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1109
    :cond_0
    iget-boolean v2, p0, Lcom/android/internal/telephony/WapPushOverSms;->mlinkWarningNoti:Z

    if-ne v2, v5, :cond_1

    .line 1110
    const-string v6, "link_Warning"

    invoke-virtual {v1, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1111
    const-string v2, "putExtra linkWarning"

    invoke-static {v3, v2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1115
    :cond_1
    iget-boolean v2, p0, Lcom/android/internal/telephony/WapPushOverSms;->mPushTwoPhoneNoti:Z

    if-ne v2, v5, :cond_2

    .line 1116
    const-string v6, "twoPhoneNoti"

    invoke-virtual {v1, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1117
    const-string v2, "putExtra twoPhoneNoti"

    invoke-static {v3, v2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1124
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    move/from16 v13, p8

    invoke-static {v2, v13}, Lcom/android/internal/telephony/util/TelephonyUtils;->getSubscriptionUserHandle(Landroid/content/Context;I)Landroid/os/UserHandle;

    move-result-object v2

    .line 1125
    iget-object v6, p0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    invoke-static {v6, v5, v2}, Lcom/android/internal/telephony/SmsApplication;->getDefaultMmsApplicationAsUser(Landroid/content/Context;ZLandroid/os/UserHandle;)Landroid/content/ComponentName;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 1130
    invoke-virtual {v1, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1134
    iget-object v6, p0, Lcom/android/internal/telephony/WapPushOverSms;->mSmsLogger:Lcom/android/internal/telephony/SmsLogger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Delivering MMS to: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1135
    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1134
    invoke-virtual {v6, v3, v7, v0}, Lcom/android/internal/telephony/SmsLogger;->add(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1137
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/WapPushOverSms;->mDeviceIdleController:Landroid/os/IDeviceIdleController;

    .line 1138
    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "mms-app"

    .line 1137
    invoke-interface {v3, v5, v4, v4, v6}, Landroid/os/IDeviceIdleController;->addPowerSaveTempWhitelistAppForMms(Ljava/lang/String;IILjava/lang/String;)J

    move-result-wide v3

    .line 1139
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object v5

    .line 1140
    invoke-virtual {v5, v3, v4}, Landroid/app/BroadcastOptions;->setTemporaryAppWhitelistDuration(J)V

    .line 1141
    invoke-virtual {v5}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move-object v10, v3

    goto :goto_1

    :catch_0
    :cond_3
    const/4 v3, 0x0

    goto :goto_0

    :goto_1
    if-nez v2, :cond_4

    .line 1147
    sget-object v2, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    :cond_4
    move-object v12, v2

    .line 1152
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Contact_SupportWhitePages"

    invoke-virtual {v2, v0, v3}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1153
    iget-object p0, p0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    invoke-static {p0, v1, v10}, Lcom/whitepages/nameid/NameIDBlockingHelper;->wrapIntent(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v1

    :cond_5
    move-object v7, v1

    .line 1157
    const-string v8, "android.permission.RECEIVE_MMS"

    const-string v9, "android:receive_mms"

    move-object/from16 v11, p6

    move-object/from16 v6, p7

    invoke-virtual/range {v6 .. v13}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchIntent(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;Landroid/os/UserHandle;I)V

    return-void
.end method

.method private blacklist dispatchWapPdu_PushCO([BIIIILcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;Lcom/android/internal/telephony/InboundSmsHandler;Ljava/lang/String;I)V
    .locals 2

    .line 1037
    new-array v0, p5, [B

    const/4 v1, 0x0

    .line 1038
    invoke-static {p1, p4, v0, v1, p5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p4, p1

    .line 1041
    new-instance p1, Landroid/content/Intent;

    const-string p5, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    invoke-direct {p1, p5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1042
    const-string p5, "application/vnd.wap.coc"

    invoke-virtual {p1, p5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p5, 0x1000000

    .line 1044
    invoke-virtual {p1, p5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/16 p5, 0x20

    .line 1045
    invoke-virtual {p1, p5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1047
    const-string p5, "transactionId"

    invoke-virtual {p1, p5, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1048
    const-string p2, "pduType"

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1049
    const-string p2, "header"

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 1050
    const-string p2, "data"

    invoke-virtual {p1, p2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 1051
    invoke-virtual {p7}, Lcom/android/internal/telephony/InboundSmsHandler;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p2

    invoke-static {p1, p2}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    .line 1054
    iget-object p2, p0, Lcom/android/internal/telephony/WapPushOverSms;->mPushOrigAddr:Ljava/lang/String;

    if-eqz p2, :cond_0

    .line 1055
    const-string p3, "origaddr"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1058
    :cond_0
    const-string p2, "cww_client"

    invoke-virtual {p2, p8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 1059
    iget-object p2, p0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    const-string p3, "power"

    invoke-virtual {p2, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/PowerManager;

    .line 1060
    invoke-virtual {p2}, Landroid/os/PowerManager;->isDeviceIdleMode()Z

    move-result p2

    .line 1061
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "SUPL msg received. mInIdleMode = "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p4, "WAP PUSH"

    invoke-static {p4, p3}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p3, 0x1

    if-ne p2, p3, :cond_1

    .line 1063
    const-string p2, "SUPL msg received in doze mode. It will wakeup"

    invoke-static {p4, p2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1065
    :try_start_0
    iget-object p2, p0, Lcom/android/internal/telephony/WapPushOverSms;->mDeviceIdleController:Landroid/os/IDeviceIdleController;

    const-string p3, "WPS-search"

    invoke-interface {p2, p3}, Landroid/os/IDeviceIdleController;->exitIdle(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    const/4 p2, 0x0

    .line 1072
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/WapPushOverSms;->handleSmsWhitelisting(Landroid/content/ComponentName;)Landroid/os/Bundle;

    move-result-object p4

    .line 1073
    iget-object p0, p0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    invoke-static {p0, p9}, Lcom/android/internal/telephony/util/TelephonyUtils;->getSubscriptionUserHandle(Landroid/content/Context;I)Landroid/os/UserHandle;

    move-result-object p0

    if-nez p0, :cond_2

    .line 1075
    sget-object p0, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    .line 1077
    :cond_2
    const-string p2, "android.permission.RECEIVE_WAP_PUSH"

    const-string p3, "android:receive_wap_push"

    move-object p5, p6

    move-object p6, p0

    move-object p0, p7

    move p7, p9

    invoke-virtual/range {p0 .. p7}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchIntent(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;Landroid/os/UserHandle;I)V

    return-void
.end method

.method public static blacklist getAppOpsStringPermissionForIntent(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 904
    const-string v0, "application/vnd.wap.mms-message"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 905
    const-string p0, "android:receive_mms"

    return-object p0

    .line 907
    :cond_0
    const-string p0, "android:receive_wap_push"

    return-object p0
.end method

.method public static blacklist getPermissionForType(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 889
    const-string v0, "application/vnd.wap.mms-message"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 890
    const-string p0, "android.permission.RECEIVE_MMS"

    return-object p0

    .line 892
    :cond_0
    const-string p0, "android.permission.RECEIVE_WAP_PUSH"

    return-object p0
.end method

.method private blacklist isSecSMSPackage()Z
    .locals 2

    .line 965
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_MESSAGE_CONFIG_PACKAGE_NAME"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 967
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 968
    const-string v0, "com.samsung.android.messaging"

    .line 971
    :cond_0
    iget-object p0, p0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/SmsApplication;->getDefaultSmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 973
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_2

    .line 975
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v1

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public static blacklist isUSOpenDevice()Z
    .locals 2

    .line 1242
    const-string v0, "ro.simbased.changetype"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1243
    const-string v1, "SED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private static blacklist resolveSystemService(Landroid/content/pm/PackageManager;Landroid/content/Intent;)Landroid/content/ComponentName;
    .locals 5

    const/high16 v0, 0x100000

    .line 138
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    .line 144
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 145
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 146
    new-instance v3, Landroid/content/ComponentName;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v4, v2, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v4, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_1

    add-int/lit8 v1, v1, 0x1

    move-object v0, v3

    goto :goto_0

    .line 149
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Multiple system services handle "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    return-object v0
.end method

.method private blacklist setWpaPushMessageIdSubId(IJ)V
    .locals 0

    .line 1201
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/internal/telephony/WapPushOverSms;->mWapPushMessageId:Ljava/lang/String;

    .line 1202
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/WapPushOverSms;->mWapPushSubId:Ljava/lang/String;

    return-void
.end method

.method private static blacklist shouldParseContentDisposition(I)Z
    .locals 2

    .line 882
    invoke-static {p0}, Landroid/telephony/SmsManager;->getSmsManagerForSubscriptionId(I)Landroid/telephony/SmsManager;

    move-result-object p0

    .line 883
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getCarrierConfigValues()Landroid/os/Bundle;

    move-result-object p0

    const-string v0, "supportMmsContentDisposition"

    const/4 v1, 0x1

    .line 884
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public blacklist dispatchWapPdu([BLcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;Lcom/android/internal/telephony/InboundSmsHandler;Ljava/lang/String;IJ)I
    .locals 20

    move-object/from16 v1, p0

    move-object/from16 v6, p2

    move-object/from16 v2, p4

    move/from16 v8, p5

    move-wide/from16 v3, p6

    .line 651
    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/InboundSmsHandler;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getSmsConfig()Lcom/android/internal/telephony/SmsConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsConfig;->getMnoName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 652
    const-string v5, "WAP PUSH"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "MnoName = "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    invoke-direct {v1, v8, v3, v4}, Lcom/android/internal/telephony/WapPushOverSms;->setWpaPushMessageIdSubId(IJ)V

    move-object/from16 v5, p1

    move-object/from16 v8, p3

    .line 656
    invoke-direct {v1, v5, v8}, Lcom/android/internal/telephony/WapPushOverSms;->decodeWapPdu([BLcom/android/internal/telephony/InboundSmsHandler;)Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;

    move-result-object v7

    .line 657
    iget v9, v7, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->statusCode:I

    const/4 v11, -0x1

    if-eq v9, v11, :cond_0

    return v9

    .line 662
    :cond_0
    iget-boolean v9, v7, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->isBlockedNumber:Z

    const/4 v10, 0x1

    if-eqz v9, :cond_1

    if-eqz v6, :cond_1

    .line 663
    invoke-virtual {v6, v10}, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->setBlockedNumber(Z)V

    .line 666
    :cond_1
    iget-object v9, v1, Lcom/android/internal/telephony/WapPushOverSms;->mWapPushManager:Lcom/android/internal/telephony/IWapPushManager;

    const/4 v12, 0x0

    const/4 v13, 0x2

    if-nez v9, :cond_a

    .line 667
    iget-object v9, v7, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->mimeType:Ljava/lang/String;

    if-eqz v9, :cond_2

    const-string v14, "application/vnd.wap.coc"

    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 668
    iget v3, v7, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->transactionId:I

    iget v4, v7, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->pduType:I

    iget v5, v7, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->headerStartIndex:I

    iget v6, v7, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->headerLength:I

    iget-object v9, v7, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->wapAppId:Ljava/lang/String;

    move-object/from16 v2, p1

    move-object/from16 v7, p2

    move/from16 v10, p5

    invoke-direct/range {v1 .. v10}, Lcom/android/internal/telephony/WapPushOverSms;->dispatchWapPdu_PushCO([BIIIILcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;Lcom/android/internal/telephony/InboundSmsHandler;Ljava/lang/String;I)V

    return v11

    :cond_2
    move/from16 v8, p5

    .line 671
    iget-object v5, v7, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->mimeType:Ljava/lang/String;

    if-eqz v5, :cond_4

    const-string v6, "application/vnd.wap.mms-message"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 672
    sget-boolean v0, Lcom/android/internal/telephony/TelephonyFeatures;->IS_TABLET:Z

    if-eqz v0, :cond_3

    .line 673
    iget-object v0, v1, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 674
    invoke-virtual {v0, v8}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v0

    .line 675
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isSmsCapable()Z

    move-result v0

    if-nez v0, :cond_3

    .line 676
    const-string v0, "WAP PUSH"

    const-string v1, "Device does not support receiving mms."

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v10

    .line 680
    :cond_3
    iget v3, v7, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->transactionId:I

    iget v4, v7, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->pduType:I

    iget v5, v7, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->headerStartIndex:I

    iget v6, v7, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->headerLength:I

    move-object/from16 v2, p1

    move-object/from16 v7, p2

    move v9, v8

    move-object/from16 v8, p3

    invoke-direct/range {v1 .. v9}, Lcom/android/internal/telephony/WapPushOverSms;->dispatchWapPdu_MMS([BIIIILcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;Lcom/android/internal/telephony/InboundSmsHandler;I)V

    return v11

    .line 682
    :cond_4
    invoke-static {}, Lcom/android/internal/telephony/WapPushOverSms;->isUSOpenDevice()Z

    move-result v5

    if-eqz v5, :cond_9

    const-string v5, "DISH_US"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-direct {v1}, Lcom/android/internal/telephony/WapPushOverSms;->isSecSMSPackage()Z

    move-result v5

    if-nez v5, :cond_9

    iget-object v5, v7, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->mimeType:Ljava/lang/String;

    if-eqz v5, :cond_9

    const-string v6, "application/vnd.wap.slc"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 683
    new-instance v2, Lcom/android/internal/telephony/WapPushMessage;

    invoke-direct {v2}, Lcom/android/internal/telephony/WapPushMessage;-><init>()V

    .line 686
    :try_start_0
    const-string v3, "WAP PUSH"

    const-string v4, "parse wpMessage."

    invoke-static {v3, v4}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    iget-object v3, v7, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->intentData:[B

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/WapPushMessage;->parse([B)V

    .line 688
    const-string v3, "WAP PUSH"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 694
    invoke-virtual {v2}, Lcom/android/internal/telephony/WapPushMessage;->getHref()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_8

    invoke-virtual {v2}, Lcom/android/internal/telephony/WapPushMessage;->getHref()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_5

    goto/16 :goto_1

    .line 699
    :cond_5
    const-string v3, "WAP PUSH"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dispatchWapPdu : PUSH_SL = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/internal/telephony/WapPushMessage;->getHref()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    invoke-virtual {v2}, Lcom/android/internal/telephony/WapPushMessage;->getHref()Ljava/lang/String;

    move-result-object v3

    const-string v4, "dop.dishcloud.io"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {v2}, Lcom/android/internal/telephony/WapPushMessage;->getHref()Ljava/lang/String;

    move-result-object v3

    const-string v4, "dish.com"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 701
    const-string v0, "WAP PUSH"

    const-string v1, "it\'s discarded because it\'s not a URL received from dish.com or dop.dishcloud.io"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v10

    .line 706
    :cond_6
    :try_start_1
    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.sec.unifiedwfc"

    const-string v5, "com.sec.unifiedwfc.wappush.WapPushReceiver"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v2

    .line 707
    new-instance v2, Landroid/content/Intent;

    const-string v5, "com.sec.unifiedwfc.action.WAP_PUSH_SL"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 708
    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/InboundSmsHandler;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v5

    .line 709
    const-string v6, "gsm.sim.operator.numeric"

    const-string v7, "00000"

    invoke-static {v5, v6, v7}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 710
    invoke-virtual {v4}, Lcom/android/internal/telephony/WapPushMessage;->getHref()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 711
    const-string v4, "operator_numeric"

    invoke-virtual {v2, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 712
    const-string v4, "mno_name"

    invoke-virtual {v2, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 713
    const-string v4, "slotId"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 714
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 v3, 0x1000000

    .line 715
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 716
    const-string v3, "WAP PUSH"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "operator_numeric = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " mno_name = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " slotId = "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    invoke-virtual {v1, v12}, Lcom/android/internal/telephony/WapPushOverSms;->handleSmsWhitelisting(Landroid/content/ComponentName;)Landroid/os/Bundle;

    move-result-object v5

    .line 719
    iget-object v0, v1, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    invoke-static {v0, v8}, Lcom/android/internal/telephony/util/TelephonyUtils;->getSubscriptionUserHandle(Landroid/content/Context;I)Landroid/os/UserHandle;

    move-result-object v0

    if-nez v0, :cond_7

    .line 721
    sget-object v0, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    :cond_7
    move-object v7, v0

    .line 724
    const-string v3, "com.sec.unifiedwfc.permission.SEND_WAP_PUSH_SL"

    const/4 v4, 0x0

    move-object/from16 v6, p2

    move-object/from16 v1, p3

    invoke-virtual/range {v1 .. v8}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchIntent(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;Landroid/os/UserHandle;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 727
    :catch_0
    const-string v0, "WAP PUSH"

    const-string v1, "ActivityNotFound"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v11

    .line 695
    :cond_8
    :goto_1
    const-string v0, "WAP PUSH"

    const-string v1, "href is empty"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v10

    :catch_1
    move-exception v0

    .line 690
    const-string v1, "WAP PUSH"

    const-string v2, "Fail to parse WAP Push message."

    invoke-static {v1, v2, v0}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v13

    .line 736
    :cond_9
    iget-object v0, v7, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->mimeType:Ljava/lang/String;

    if-eqz v0, :cond_a

    const-string v5, "application/vnd.syncml.notification"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/16 v3, 0x44

    move-object/from16 v2, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p5

    .line 737
    invoke-direct/range {v1 .. v6}, Lcom/android/internal/telephony/WapPushOverSms;->dispatchWapPdu_DMNoti([BILcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;Lcom/android/internal/telephony/InboundSmsHandler;I)V

    return v11

    :cond_a
    move/from16 v8, p5

    .line 747
    iget-object v0, v7, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->wapAppId:Ljava/lang/String;

    const/16 v5, 0x13b

    if-eqz v0, :cond_d

    .line 750
    :try_start_2
    iget-object v0, v1, Lcom/android/internal/telephony/WapPushOverSms;->mWapPushManager:Lcom/android/internal/telephony/IWapPushManager;

    if-nez v0, :cond_b

    goto :goto_2

    .line 755
    :cond_b
    monitor-enter p0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 756
    :try_start_3
    iget-object v6, v1, Lcom/android/internal/telephony/WapPushOverSms;->mPowerWhitelistManager:Landroid/os/PowerWhitelistManager;

    iget-object v9, v1, Lcom/android/internal/telephony/WapPushOverSms;->mWapPushManagerPackage:Ljava/lang/String;

    const-string v14, "mms-mgr"

    invoke-virtual {v6, v9, v13, v5, v14}, Landroid/os/PowerWhitelistManager;->whitelistAppTemporarilyForEvent(Ljava/lang/String;IILjava/lang/String;)J

    .line 759
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 761
    :try_start_4
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 762
    const-string v9, "transactionId"

    iget v14, v7, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->transactionId:I

    invoke-virtual {v6, v9, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 763
    const-string v9, "pduType"

    iget v14, v7, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->pduType:I

    invoke-virtual {v6, v9, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 764
    const-string v9, "header"

    iget-object v14, v7, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->header:[B

    invoke-virtual {v6, v9, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 765
    const-string v9, "data"

    iget-object v14, v7, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->intentData:[B

    invoke-virtual {v6, v9, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 766
    const-string v9, "contentTypeParameters"

    iget-object v14, v7, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->contentTypeParameters:Ljava/util/HashMap;

    invoke-virtual {v6, v9, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 767
    iget v9, v7, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->phoneId:I

    invoke-static {v6, v9}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    .line 768
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_c

    .line 769
    const-string v9, "address"

    invoke-virtual {v6, v9, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 772
    :cond_c
    iget-object v9, v7, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->wapAppId:Ljava/lang/String;

    iget-object v14, v7, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->contentType:Ljava/lang/String;

    invoke-interface {v0, v9, v14, v6}, Lcom/android/internal/telephony/IWapPushManager;->processMessage(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)I

    move-result v0
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2

    and-int/lit8 v6, v0, 0x1

    if-lez v6, :cond_d

    const v6, 0x8000

    and-int/2addr v0, v6

    if-nez v0, :cond_d

    return v10

    :catchall_0
    move-exception v0

    .line 759
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_2

    .line 789
    :catch_2
    :cond_d
    :goto_2
    iget-object v0, v7, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->mimeType:Ljava/lang/String;

    if-nez v0, :cond_e

    return v13

    .line 794
    :cond_e
    new-instance v0, Landroid/content/Intent;

    const-string v6, "android.provider.Telephony.WAP_PUSH_DELIVER"

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 795
    iget-object v6, v7, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->mimeType:Ljava/lang/String;

    invoke-virtual {v0, v6}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 796
    const-string v6, "transactionId"

    iget v9, v7, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->transactionId:I

    invoke-virtual {v0, v6, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 797
    const-string v6, "pduType"

    iget v9, v7, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->pduType:I

    invoke-virtual {v0, v6, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 798
    const-string v6, "header"

    iget-object v9, v7, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->header:[B

    invoke-virtual {v0, v6, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 799
    const-string v6, "data"

    iget-object v9, v7, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->intentData:[B

    invoke-virtual {v0, v6, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 800
    const-string v6, "contentTypeParameters"

    iget-object v9, v7, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->contentTypeParameters:Ljava/util/HashMap;

    invoke-virtual {v0, v6, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 801
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_f

    .line 802
    const-string v6, "address"

    invoke-virtual {v0, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 806
    :cond_f
    iget-object v2, v1, Lcom/android/internal/telephony/WapPushOverSms;->mPushOrigAddr:Ljava/lang/String;

    if-eqz v2, :cond_10

    .line 807
    const-string v6, "origaddr"

    invoke-virtual {v0, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_10
    const-wide/16 v14, 0x0

    cmp-long v2, v3, v14

    if-eqz v2, :cond_11

    .line 811
    const-string v2, "messageId"

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 816
    :cond_11
    iget-object v2, v1, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    invoke-static {v2, v8}, Lcom/android/internal/telephony/util/TelephonyUtils;->getSubscriptionUserHandle(Landroid/content/Context;I)Landroid/os/UserHandle;

    move-result-object v2

    .line 817
    iget-object v3, v1, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    invoke-static {v3, v10, v2}, Lcom/android/internal/telephony/SmsApplication;->getDefaultMmsApplicationAsUser(Landroid/content/Context;ZLandroid/os/UserHandle;)Landroid/content/ComponentName;

    move-result-object v3

    if-eqz v3, :cond_12

    .line 823
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 826
    iget-object v4, v1, Lcom/android/internal/telephony/WapPushOverSms;->mPowerWhitelistManager:Landroid/os/PowerWhitelistManager;

    .line 827
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v6, "mms-app"

    .line 826
    invoke-virtual {v4, v3, v13, v5, v6}, Landroid/os/PowerWhitelistManager;->whitelistAppTemporarilyForEvent(Ljava/lang/String;IILjava/lang/String;)J

    move-result-wide v15

    .line 829
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object v14

    const/16 v18, 0x13b

    .line 830
    const-string v19, ""

    const/16 v17, 0x0

    invoke-virtual/range {v14 .. v19}, Landroid/app/BroadcastOptions;->setTemporaryAppAllowlist(JIILjava/lang/String;)V

    .line 834
    invoke-virtual {v14}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v12

    :cond_12
    move-object v5, v12

    .line 838
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v3

    iget v4, v7, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->phoneId:I

    const-string v6, "CscFeature_Contact_SupportWhitePages"

    invoke-virtual {v3, v4, v6}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 839
    iget-object v3, v1, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    invoke-static {v3, v0, v5}, Lcom/whitepages/nameid/NameIDBlockingHelper;->wrapIntent(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    .line 844
    :cond_13
    const-string v3, "application/json"

    iget-object v4, v7, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->mimeType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 845
    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.samsung.qosindicator"

    const-string v6, "com.samsung.qosindicator.QosReceiver"

    invoke-direct {v3, v4, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 846
    const-string v4, "WAP PUSH"

    const-string v6, "QosInicator_WapPush"

    invoke-static {v4, v6}, Lcom/android/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 848
    const-string v6, "com.samsung.qosindicator.action.WAP_PUSH"

    invoke-virtual {v4, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v6, 0x20

    .line 849
    invoke-virtual {v4, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 850
    invoke-virtual {v4, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 851
    const-string v3, "WAPPUSH_ORIGINAL_INTENT"

    invoke-virtual {v4, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 852
    iget-object v3, v1, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 853
    const-string v3, "WAP PUSH"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "qosIntent Action"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    if-nez v2, :cond_15

    .line 859
    iget-object v1, v1, Lcom/android/internal/telephony/WapPushOverSms;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1}, Landroid/os/UserManager;->getMainUser()Landroid/os/UserHandle;

    move-result-object v2

    .line 864
    :cond_15
    iget-object v1, v7, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->mimeType:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/internal/telephony/WapPushOverSms;->getPermissionForType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v1, v7, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->mimeType:Ljava/lang/String;

    .line 865
    invoke-static {v1}, Lcom/android/internal/telephony/WapPushOverSms;->getAppOpsStringPermissionForIntent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v6, p2

    move-object/from16 v1, p3

    move-object v7, v2

    move-object v2, v0

    .line 864
    invoke-virtual/range {v1 .. v8}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchIntent(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;Landroid/os/UserHandle;I)V

    return v11
.end method

.method public blacklist dispatchWapPushAddress(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1025
    iput-object p1, p0, Lcom/android/internal/telephony/WapPushOverSms;->mPushOrigAddr:Ljava/lang/String;

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 1027
    iput-object p1, p0, Lcom/android/internal/telephony/WapPushOverSms;->mPushOrigAddr:Ljava/lang/String;

    return-void
.end method

.method public blacklist dispatchWapPushLinkWarningNoti(Z)V
    .locals 0

    .line 992
    iput-boolean p1, p0, Lcom/android/internal/telephony/WapPushOverSms;->mlinkWarningNoti:Z

    return-void
.end method

.method public blacklist dispatchWapPushSafeNoti(Z)V
    .locals 0

    .line 983
    iput-boolean p1, p0, Lcom/android/internal/telephony/WapPushOverSms;->mPushSafeNoti:Z

    return-void
.end method

.method public blacklist dispatchWapPushTwoPhoneNoti(Z)V
    .locals 0

    .line 1015
    iput-boolean p1, p0, Lcom/android/internal/telephony/WapPushOverSms;->mPushTwoPhoneNoti:Z

    return-void
.end method

.method public blacklist dispose()V
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/android/internal/telephony/WapPushOverSms;->mWapPushManager:Lcom/android/internal/telephony/IWapPushManager;

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    return-void

    .line 190
    :cond_0
    const-string p0, "WAP PUSH"

    const-string v0, "dispose: not bound to a wappush manager"

    invoke-static {p0, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method blacklist handleSmsWhitelisting(Landroid/content/ComponentName;)Landroid/os/Bundle;
    .locals 2

    if-eqz p1, :cond_0

    .line 1209
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 1210
    const-string v0, "sms-app"

    goto :goto_0

    .line 1212
    :cond_0
    iget-object p1, p0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 1213
    const-string v0, "sms-broadcast"

    .line 1216
    :goto_0
    :try_start_0
    iget-object p0, p0, Lcom/android/internal/telephony/WapPushOverSms;->mDeviceIdleController:Landroid/os/IDeviceIdleController;

    const/4 v1, 0x0

    invoke-interface {p0, p1, v1, v1, v0}, Landroid/os/IDeviceIdleController;->addPowerSaveTempWhitelistAppForSms(Ljava/lang/String;IILjava/lang/String;)J

    move-result-wide p0

    .line 1218
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object v0

    .line 1219
    invoke-virtual {v0, p0, p1}, Landroid/app/BroadcastOptions;->setTemporaryAppWhitelistDuration(J)V

    .line 1220
    invoke-virtual {v0}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public greylist-max-r isWapPushForMms([BLcom/android/internal/telephony/InboundSmsHandler;)Z
    .locals 0

    .line 875
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/WapPushOverSms;->decodeWapPdu([BLcom/android/internal/telephony/InboundSmsHandler;)Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;

    move-result-object p0

    .line 876
    iget p1, p0, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->statusCode:I

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    const-string p1, "application/vnd.wap.mms-message"

    iget-object p0, p0, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->mimeType:Ljava/lang/String;

    .line 877
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist isWapPushForSupl([BLcom/android/internal/telephony/InboundSmsHandler;)Z
    .locals 0

    .line 1001
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/WapPushOverSms;->decodeWapPdu([BLcom/android/internal/telephony/InboundSmsHandler;)Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;

    move-result-object p0

    .line 1003
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "WspTypeDecoder mimeType : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->mimeType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " wapAppId : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->wapAppId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "WAP PUSH"

    invoke-static {p2, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1005
    iget p1, p0, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->statusCode:I

    const/4 p2, -0x1

    if-ne p1, p2, :cond_1

    const-string p1, "application/vnd.omaloc-supl-init"

    iget-object p2, p0, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->mimeType:Ljava/lang/String;

    .line 1006
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "cww_client"

    iget-object p0, p0, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->wapAppId:Ljava/lang/String;

    .line 1007
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method protected blacklist isWapPushManagerAvailable()Z
    .locals 0

    .line 1227
    iget-object p0, p0, Lcom/android/internal/telephony/WapPushOverSms;->mWapPushManager:Lcom/android/internal/telephony/IWapPushManager;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method protected blacklist isWapPushManagerSupported()Z
    .locals 1

    .line 1234
    iget-object p0, p0, Lcom/android/internal/telephony/WapPushOverSms;->mWapPushManager:Lcom/android/internal/telephony/IWapPushManager;

    if-nez p0, :cond_1

    .line 1235
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSmsSubscriptionId()I

    move-result p0

    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result p0

    .line 1234
    invoke-static {p0}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "DCM"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public whitelist onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .line 159
    invoke-static {p2}, Lcom/android/internal/telephony/IWapPushManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IWapPushManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/WapPushOverSms;->mWapPushManager:Lcom/android/internal/telephony/IWapPushManager;

    return-void
.end method

.method public whitelist onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    const/4 p1, 0x0

    .line 165
    iput-object p1, p0, Lcom/android/internal/telephony/WapPushOverSms;->mWapPushManager:Lcom/android/internal/telephony/IWapPushManager;

    return-void
.end method

.method public blacklist setWpaPushAddressTimeStamp(Ljava/lang/String;J)V
    .locals 0

    .line 1196
    iput-object p1, p0, Lcom/android/internal/telephony/WapPushOverSms;->mWapPushAddress:Ljava/lang/String;

    .line 1197
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/WapPushOverSms;->mWapPushTimeStamp:Ljava/lang/String;

    return-void
.end method
