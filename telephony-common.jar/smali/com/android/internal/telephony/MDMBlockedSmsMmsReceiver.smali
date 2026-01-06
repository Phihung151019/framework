.class public Lcom/android/internal/telephony/MDMBlockedSmsMmsReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MDMBlockedSmsMmsReceiver.java"


# static fields
.field private static blacklist mCdmaInboundSmsHandler:Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;

.field private static blacklist mGsmInboundSmsHandler:Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;

.field private static blacklist mMDMBlockedSmsMmsReceiver:Lcom/android/internal/telephony/MDMBlockedSmsMmsReceiver;


# direct methods
.method private constructor blacklist <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static blacklist getInstance(Lcom/android/internal/telephony/InboundSmsHandler;)Lcom/android/internal/telephony/MDMBlockedSmsMmsReceiver;
    .locals 1

    .line 44
    sget-object v0, Lcom/android/internal/telephony/MDMBlockedSmsMmsReceiver;->mMDMBlockedSmsMmsReceiver:Lcom/android/internal/telephony/MDMBlockedSmsMmsReceiver;

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Lcom/android/internal/telephony/MDMBlockedSmsMmsReceiver;

    invoke-direct {v0}, Lcom/android/internal/telephony/MDMBlockedSmsMmsReceiver;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/MDMBlockedSmsMmsReceiver;->mMDMBlockedSmsMmsReceiver:Lcom/android/internal/telephony/MDMBlockedSmsMmsReceiver;

    .line 47
    :cond_0
    instance-of v0, p0, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;

    if-eqz v0, :cond_1

    .line 48
    check-cast p0, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;

    sput-object p0, Lcom/android/internal/telephony/MDMBlockedSmsMmsReceiver;->mGsmInboundSmsHandler:Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;

    goto :goto_0

    .line 49
    :cond_1
    instance-of v0, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;

    if-eqz v0, :cond_2

    .line 50
    check-cast p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;

    sput-object p0, Lcom/android/internal/telephony/MDMBlockedSmsMmsReceiver;->mCdmaInboundSmsHandler:Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;

    .line 52
    :cond_2
    :goto_0
    sget-object p0, Lcom/android/internal/telephony/MDMBlockedSmsMmsReceiver;->mMDMBlockedSmsMmsReceiver:Lcom/android/internal/telephony/MDMBlockedSmsMmsReceiver;

    return-object p0
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13

    .line 58
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Received blocked SmsMms intent :"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "MDMBlockedSmsMmsReceiver"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    const-string p1, "com.samsung.android.knox.intent.extra.PDU_INTERNAL"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v3

    if-eqz v3, :cond_a

    .line 63
    const-string p1, "com.samsung.android.knox.intent.action.SEND_BLOCKED_SMS_INTERNAL"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string v10, "smsBlockHandler"

    const/4 v0, -0x1

    const/4 v11, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_3

    .line 64
    const-string p1, "com.samsung.android.knox.intent.extra.SEND_TYPE_INTERNAL"

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v11, :cond_0

    .line 66
    sget-object v2, Lcom/android/internal/telephony/MDMBlockedSmsMmsReceiver;->mGsmInboundSmsHandler:Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;

    goto :goto_0

    :cond_0
    const/4 p2, 0x2

    if-ne p1, p2, :cond_1

    .line 68
    sget-object v2, Lcom/android/internal/telephony/MDMBlockedSmsMmsReceiver;->mCdmaInboundSmsHandler:Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;

    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    .line 71
    invoke-virtual {v2, v3, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->handleBlockedSms([BI)V

    .line 74
    :cond_2
    invoke-virtual {p0, v11}, Landroid/content/BroadcastReceiver;->getResultExtras(Z)Landroid/os/Bundle;

    move-result-object p0

    .line 75
    invoke-virtual {p0, v10, v11}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void

    .line 76
    :cond_3
    const-string p1, "com.samsung.android.knox.intent.action.SEND_BLOCKED_MMS_INTERNAL"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 81
    :try_start_0
    sget-object p1, Lcom/android/internal/telephony/MDMBlockedSmsMmsReceiver;->mGsmInboundSmsHandler:Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;

    if-eqz p1, :cond_4

    :goto_1
    move-object v5, p1

    goto :goto_2

    .line 83
    :cond_4
    sget-object p1, Lcom/android/internal/telephony/MDMBlockedSmsMmsReceiver;->mCdmaInboundSmsHandler:Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;

    if-eqz p1, :cond_5

    goto :goto_1

    :cond_5
    move-object v5, v2

    .line 87
    :goto_2
    const-string p1, "com.samsung.android.knox.intent.extra.MESSAGE_ID_INTERNAL"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 88
    const-string v2, "com.samsung.android.knox.intent.extra.SUB_ID_INTERNAL"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 89
    const-string v4, "com.samsung.android.knox.intent.extra.ORIG_ADDRESS_INTERNAL"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v5, :cond_9

    move-object v4, v2

    .line 91
    sget-object v2, Lcom/android/internal/telephony/InboundSmsHandler;->mWapPush:Lcom/android/internal/telephony/WapPushOverSms;

    const/4 v12, 0x0

    if-eqz v4, :cond_6

    .line 92
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    move v7, v4

    goto :goto_3

    :catch_0
    move-exception v0

    move-object p1, v0

    goto :goto_6

    :cond_6
    move v7, v12

    :goto_3
    if-eqz p1, :cond_7

    .line 93
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    goto :goto_4

    :cond_7
    const-wide/16 v8, 0x0

    :goto_4
    const/4 v4, 0x0

    .line 91
    invoke-virtual/range {v2 .. v9}, Lcom/android/internal/telephony/WapPushOverSms;->dispatchWapPdu([BLcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;Lcom/android/internal/telephony/InboundSmsHandler;Ljava/lang/String;IJ)I

    move-result p1

    if-ne p1, v0, :cond_9

    .line 96
    const-string p1, "com.samsung.android.knox.intent.extra.TIME_STAMP_INTERNAL"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 97
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 98
    :goto_5
    array-length v0, v3

    if-ge v12, v0, :cond_8

    .line 99
    aget-byte v0, v3, v12

    int-to-char v0, v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    .line 101
    :cond_8
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_9

    .line 103
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 102
    invoke-virtual {v5, v6, p1, p2, v11}, Lcom/android/internal/telephony/InboundSmsHandler;->storeSMS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_7

    .line 108
    :goto_6
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "MDMBlockedSmsMmsReceiver onReceive exception: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    :cond_9
    :goto_7
    invoke-virtual {p0, v11}, Landroid/content/BroadcastReceiver;->getResultExtras(Z)Landroid/os/Bundle;

    move-result-object p0

    .line 112
    invoke-virtual {p0, v10, v11}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_a
    return-void
.end method
