.class public Lcom/android/internal/telephony/SehDataIndication;
.super Lvendor/samsung/hardware/radio/data/ISehRadioDataIndication$Stub;
.source "SehDataIndication.java"


# static fields
.field public static final blacklist SETTINGS_GLOBAL:Ljava/lang/String; = "global"

.field public static final blacklist SETTINGS_SECURE:Ljava/lang/String; = "secure"

.field public static final blacklist SETTINGS_SYSTEM:Ljava/lang/String; = "system"

.field public static final blacklist SIM_APN_URI:Landroid/net/Uri;

.field public static final blacklist SPRINT_GLOBAL_APN:Ljava/lang/String; = "cinet.spcs"


# instance fields
.field private final blacklist mRil:Lcom/android/internal/telephony/SemRIL;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 43
    const-string v0, "content://telephony/carriers/sim_apn_list"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/SehDataIndication;->SIM_APN_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/SemRIL;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lvendor/samsung/hardware/radio/data/ISehRadioDataIndication$Stub;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/android/internal/telephony/SehDataIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    return-void
.end method


# virtual methods
.method public final blacklist getInterfaceHash()Ljava/lang/String;
    .locals 0

    .line 57
    const-string p0, "1c18f89373d68cf0030dbdb95f4a9287fe232a2e"

    return-object p0
.end method

.method public final blacklist getInterfaceVersion()I
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public blacklist needApnProfileIndication(Ljava/lang/String;)Lvendor/samsung/hardware/radio/data/SehApnProfile;
    .locals 12

    .line 92
    new-instance v0, Lvendor/samsung/hardware/radio/data/SehApnProfile;

    invoke-direct {v0}, Lvendor/samsung/hardware/radio/data/SehApnProfile;-><init>()V

    .line 94
    iget-object v1, p0, Lcom/android/internal/telephony/SehDataIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    iget-object v1, v1, Lcom/android/internal/telephony/SemRIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    .line 97
    aget v1, v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    .line 100
    :goto_0
    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    .line 101
    iget-object p0, p0, Lcom/android/internal/telephony/SehDataIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    const-string p1, "needApnProfileIndication invalid subid"

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SemRIL;->riljLog(Ljava/lang/String;)V

    return-object v3

    .line 106
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/SehDataIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    iget-object v2, v2, Lcom/android/internal/telephony/SemBaseCommands;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v2, Lcom/android/internal/telephony/SehDataIndication;->SIM_APN_URI:Landroid/net/Uri;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "filtered/subId/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const-string v6, "apn"

    const-string v7, "protocol"

    const-string v8, "user"

    const-string v9, "password"

    const-string v10, "authtype"

    const-string v11, "roaming_protocol"

    filled-new-array/range {v6 .. v11}, [Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v7, p1

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p1, :cond_b

    .line 110
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 112
    :cond_2
    const-string v1, "apn"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 113
    const-string v2, "cinet.spcs"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    .line 117
    :cond_3
    const-string v2, "cdma"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 156
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_2

    goto/16 :goto_7

    :catchall_0
    move-exception v0

    move-object p0, v0

    move-object v3, p1

    goto/16 :goto_9

    :catch_0
    move-exception v0

    goto/16 :goto_8

    .line 120
    :cond_4
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v4, ""

    if-eqz v2, :cond_5

    .line 121
    :try_start_2
    iput-object v4, v0, Lvendor/samsung/hardware/radio/data/SehApnProfile;->apn:Ljava/lang/String;

    goto :goto_2

    .line 123
    :cond_5
    iput-object v1, v0, Lvendor/samsung/hardware/radio/data/SehApnProfile;->apn:Ljava/lang/String;

    .line 125
    :goto_2
    const-string v1, "protocol"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 126
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 127
    iput-object v4, v0, Lvendor/samsung/hardware/radio/data/SehApnProfile;->proto:Ljava/lang/String;

    goto :goto_3

    .line 129
    :cond_6
    iput-object v1, v0, Lvendor/samsung/hardware/radio/data/SehApnProfile;->proto:Ljava/lang/String;

    .line 131
    :goto_3
    const-string v1, "roaming_protocol"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 132
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 133
    iput-object v4, v0, Lvendor/samsung/hardware/radio/data/SehApnProfile;->roamingProto:Ljava/lang/String;

    goto :goto_4

    .line 135
    :cond_7
    iput-object v1, v0, Lvendor/samsung/hardware/radio/data/SehApnProfile;->roamingProto:Ljava/lang/String;

    .line 137
    :goto_4
    const-string v1, "user"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 138
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 139
    iput-object v4, v0, Lvendor/samsung/hardware/radio/data/SehApnProfile;->user:Ljava/lang/String;

    goto :goto_5

    .line 141
    :cond_8
    iput-object v1, v0, Lvendor/samsung/hardware/radio/data/SehApnProfile;->user:Ljava/lang/String;

    .line 143
    :goto_5
    const-string v1, "password"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 144
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 145
    iput-object v4, v0, Lvendor/samsung/hardware/radio/data/SehApnProfile;->pw:Ljava/lang/String;

    goto :goto_6

    .line 147
    :cond_9
    iput-object v1, v0, Lvendor/samsung/hardware/radio/data/SehApnProfile;->pw:Ljava/lang/String;

    .line 149
    :goto_6
    const-string v1, "authtype"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 150
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 151
    iput-object v4, v0, Lvendor/samsung/hardware/radio/data/SehApnProfile;->auth:Ljava/lang/String;

    goto :goto_7

    .line 153
    :cond_a
    iput-object v1, v0, Lvendor/samsung/hardware/radio/data/SehApnProfile;->auth:Ljava/lang/String;
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_b
    :goto_7
    if-eqz p1, :cond_c

    .line 164
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_c
    return-object v0

    :catchall_1
    move-exception v0

    move-object p0, v0

    goto :goto_9

    :catch_1
    move-exception v0

    move-object p1, v3

    .line 160
    :goto_8
    :try_start_3
    iget-object p0, p0, Lcom/android/internal/telephony/SehDataIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "needApnProfileIndication sql execption: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SemRIL;->riljLog(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz p1, :cond_d

    .line 164
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_d
    return-object v3

    :goto_9
    if-eqz v3, :cond_e

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 166
    :cond_e
    throw p0
.end method

.method public blacklist needPacketUsage(Ljava/lang/String;)Lvendor/samsung/hardware/radio/data/SehPacketUsage;
    .locals 2

    .line 79
    new-instance p0, Lvendor/samsung/hardware/radio/data/SehPacketUsage;

    invoke-direct {p0}, Lvendor/samsung/hardware/radio/data/SehPacketUsage;-><init>()V

    .line 80
    const-string v0, "rmnet"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    .line 81
    iput-wide v0, p0, Lvendor/samsung/hardware/radio/data/SehPacketUsage;->rxBytes:J

    .line 82
    iput-wide v0, p0, Lvendor/samsung/hardware/radio/data/SehPacketUsage;->txBytes:J

    return-object p0

    .line 84
    :cond_0
    invoke-static {p1}, Landroid/net/TrafficStats;->getRxBytes(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lvendor/samsung/hardware/radio/data/SehPacketUsage;->rxBytes:J

    .line 85
    invoke-static {p1}, Landroid/net/TrafficStats;->getTxBytes(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lvendor/samsung/hardware/radio/data/SehPacketUsage;->txBytes:J

    return-object p0
.end method

.method public blacklist needSettingValueIndication(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    .line 173
    const-string v0, "system"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 174
    iget-object p0, p0, Lcom/android/internal/telephony/SehDataIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    iget-object p0, p0, Lcom/android/internal/telephony/SemBaseCommands;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p1, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0

    .line 175
    :cond_0
    const-string v0, "global"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 176
    iget-object p0, p0, Lcom/android/internal/telephony/SehDataIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    iget-object p0, p0, Lcom/android/internal/telephony/SemBaseCommands;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p1, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0

    .line 177
    :cond_1
    const-string v0, "secure"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 178
    iget-object p0, p0, Lcom/android/internal/telephony/SehDataIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    iget-object p0, p0, Lcom/android/internal/telephony/SemBaseCommands;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p1, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0

    .line 207
    :cond_2
    iget-object p0, p0, Lcom/android/internal/telephony/SehDataIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    const-string p1, "needSettingValueIndication wrong table value."

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SemRIL;->riljLog(Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0
.end method

.method public blacklist rrcStateChanged(ILvendor/samsung/hardware/radio/data/SehRrcStateInfo;)V
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/android/internal/telephony/SehDataIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SemRIL;->processIndication(I)V

    .line 61
    iget-object p1, p0, Lcom/android/internal/telephony/SehDataIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    const/16 v0, 0x2b50

    invoke-virtual {p1, v0, p2}, Lcom/android/internal/telephony/SemRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 63
    iget-object p0, p0, Lcom/android/internal/telephony/SehDataIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    iget-object p0, p0, Lcom/android/internal/telephony/SemBaseCommands;->mRRCStateChangeRegistrants:Lcom/android/internal/telephony/RegistrantList;

    if-eqz p0, :cond_0

    .line 64
    new-instance p1, Landroid/os/AsyncResult;

    const/4 v0, 0x0

    invoke-direct {p1, v0, p2, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    :cond_0
    return-void
.end method

.method public blacklist timerStatusChangedInd(I[I)V
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/android/internal/telephony/SehDataIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SemRIL;->processIndication(I)V

    .line 71
    iget-object p1, p0, Lcom/android/internal/telephony/SehDataIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    const/16 v0, 0x2b3b

    invoke-virtual {p1, v0, p2}, Lcom/android/internal/telephony/SemRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 73
    iget-object p0, p0, Lcom/android/internal/telephony/SehDataIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    iget-object p0, p0, Lcom/android/internal/telephony/SemBaseCommands;->mT3346TimerRegistrant:Lcom/android/internal/telephony/Registrant;

    if-eqz p0, :cond_0

    .line 74
    new-instance p1, Landroid/os/AsyncResult;

    const/4 v0, 0x0

    invoke-direct {p1, v0, p2, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    :cond_0
    return-void
.end method
