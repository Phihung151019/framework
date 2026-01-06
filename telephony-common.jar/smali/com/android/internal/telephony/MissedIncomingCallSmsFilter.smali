.class public Lcom/android/internal/telephony/MissedIncomingCallSmsFilter;
.super Ljava/lang/Object;
.source "MissedIncomingCallSmsFilter.java"


# static fields
.field private static final blacklist PSTN_CONNECTION_SERVICE_COMPONENT:Landroid/content/ComponentName;

.field private static final blacklist TAG:Ljava/lang/String; = "MissedIncomingCallSmsFilter"


# instance fields
.field private blacklist mCarrierConfig:Landroid/os/PersistableBundle;

.field private final blacklist mPhone:Lcom/android/internal/telephony/Phone;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 3

    .line 81
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.phone"

    const-string v2, "com.android.services.telephony.TelephonyConnectionService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/telephony/MissedIncomingCallSmsFilter;->PSTN_CONNECTION_SERVICE_COMPONENT:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/Phone;)V
    .locals 2

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput-object p1, p0, Lcom/android/internal/telephony/MissedIncomingCallSmsFilter;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 97
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "carrier_config"

    .line 98
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    if-eqz v0, :cond_0

    .line 100
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/MissedIncomingCallSmsFilter;->mCarrierConfig:Landroid/os/PersistableBundle;

    :cond_0
    return-void
.end method

.method private blacklist createMissedIncomingCallEvent(JLjava/lang/String;I)V
    .locals 4

    .line 334
    iget-object v0, p0, Lcom/android/internal/telephony/MissedIncomingCallSmsFilter;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "telecom"

    .line 335
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    if-eqz v0, :cond_1

    .line 338
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    if-eqz p3, :cond_0

    .line 341
    const-string v2, "tel"

    const/4 v3, 0x0

    invoke-static {v2, p3, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    .line 343
    const-string v2, "android.telecom.extra.INCOMING_CALL_ADDRESS"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 346
    :cond_0
    const-string p3, "com.samsung.telecom.extra.CALL_PRESENTATION"

    invoke-virtual {v1, p3, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 351
    const-string p3, "android.telecom.extra.CALL_CREATED_EPOCH_TIME_MILLIS"

    invoke-virtual {v1, p3, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 352
    iget-object p1, p0, Lcom/android/internal/telephony/MissedIncomingCallSmsFilter;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/MissedIncomingCallSmsFilter;->makePstnPhoneAccountHandle(Lcom/android/internal/telephony/Phone;)Landroid/telecom/PhoneAccountHandle;

    move-result-object p0

    invoke-virtual {v0, p0, v1}, Landroid/telecom/TelecomManager;->addNewIncomingCall(Landroid/telecom/PhoneAccountHandle;Landroid/os/Bundle;)V

    :cond_1
    return-void
.end method

.method private blacklist getEpochTime(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    .locals 2

    .line 165
    invoke-static {}, Ljava/time/LocalDateTime;->now()Ljava/time/LocalDateTime;

    move-result-object p0

    .line 166
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    invoke-virtual {p0}, Ljava/time/LocalDateTime;->getYear()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    .line 176
    :cond_0
    const-string v0, "yyyyMMddHHmm"

    invoke-static {v0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    .line 177
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Ljava/time/LocalDateTime;->parse(Ljava/lang/CharSequence;Ljava/time/format/DateTimeFormatter;)Ljava/time/LocalDateTime;

    move-result-object v0

    .line 178
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    .line 179
    invoke-virtual {v0, p0}, Ljava/time/LocalDateTime;->isAfter(Ljava/time/chrono/ChronoLocalDateTime;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 181
    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/time/LocalDateTime;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object p0

    invoke-virtual {p0}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object p0

    .line 182
    invoke-virtual {p0}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide p0

    return-wide p0
.end method

.method private blacklist getPresentation(Ljava/lang/String;)I
    .locals 0

    .line 373
    const-string p0, "\u901a\u77e5\u4e0d\u53ef\u80fd"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x3

    return p0

    .line 375
    :cond_0
    const-string p0, "\u975e\u901a\u77e5\u8a2d\u5b9a"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x2

    return p0

    .line 377
    :cond_1
    const-string p0, "\u516c\u8846\u96fb\u8a71"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x4

    return p0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method private blacklist makePstnPhoneAccountHandle(Lcom/android/internal/telephony/Phone;)Landroid/telecom/PhoneAccountHandle;
    .locals 2

    .line 359
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "telephony_subscription_service"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/SubscriptionManager;

    .line 361
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/SubscriptionManager;->getSubscriptionUserHandle(I)Landroid/os/UserHandle;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 363
    new-instance v0, Landroid/telecom/PhoneAccountHandle;

    sget-object v1, Lcom/android/internal/telephony/MissedIncomingCallSmsFilter;->PSTN_CONNECTION_SERVICE_COMPONENT:Landroid/content/ComponentName;

    .line 364
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1, p0}, Landroid/telecom/PhoneAccountHandle;-><init>(Landroid/content/ComponentName;Ljava/lang/String;Landroid/os/UserHandle;)V

    return-object v0

    .line 366
    :cond_0
    new-instance p0, Landroid/telecom/PhoneAccountHandle;

    sget-object v0, Lcom/android/internal/telephony/MissedIncomingCallSmsFilter;->PSTN_CONNECTION_SERVICE_COMPONENT:Landroid/content/ComponentName;

    .line 367
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Landroid/telecom/PhoneAccountHandle;-><init>(Landroid/content/ComponentName;Ljava/lang/String;)V

    return-object p0
.end method

.method private blacklist processSms(Ljava/lang/String;)Z
    .locals 22

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 195
    iget-object v2, v1, Lcom/android/internal/telephony/MissedIncomingCallSmsFilter;->mCarrierConfig:Landroid/os/PersistableBundle;

    const-string v3, "missed_incoming_call_sms_pattern_string_array"

    invoke-virtual {v2, v3}, Landroid/os/PersistableBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    if-eqz v7, :cond_0

    .line 197
    array-length v2, v7

    if-nez v2, :cond_1

    :cond_0
    move/from16 v16, v8

    goto/16 :goto_e

    .line 203
    :cond_1
    iget-object v2, v1, Lcom/android/internal/telephony/MissedIncomingCallSmsFilter;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    const-string v3, "DCM"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/TelephonyFeatures;->isNetworkCodeSpecific(I[Ljava/lang/String;)Z

    move-result v9

    const/4 v11, 0x1

    if-eqz v9, :cond_3

    .line 208
    const-string v2, "\n"

    invoke-virtual {v0, v2, v8}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    .line 209
    const-string v3, "\u6d77\u5916"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 210
    array-length v3, v2

    add-int/lit8 v4, v0, 0x2

    if-ge v3, v4, :cond_2

    .line 211
    sget-object v0, Lcom/android/internal/telephony/MissedIncomingCallSmsFilter;->TAG:Ljava/lang/String;

    const-string v1, "Missed incoming call SMS length is too short!"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v8

    .line 215
    :cond_2
    aget-object v3, v2, v0

    add-int/2addr v0, v11

    .line 216
    aget-object v0, v2, v0

    .line 218
    invoke-direct {v1, v0}, Lcom/android/internal/telephony/MissedIncomingCallSmsFilter;->getPresentation(Ljava/lang/String;)I

    move-result v2

    move-object v12, v0

    move v13, v2

    move-object v0, v3

    goto :goto_0

    :cond_3
    move v13, v11

    const/4 v12, 0x0

    .line 224
    :goto_0
    invoke-direct {v1, v0}, Lcom/android/internal/telephony/MissedIncomingCallSmsFilter;->splitCalls(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_b

    .line 226
    array-length v0, v14

    if-lez v0, :cond_b

    .line 227
    array-length v15, v14

    move v2, v8

    move v3, v2

    :goto_1
    if-ge v2, v15, :cond_a

    aget-object v4, v14, v2

    .line 232
    array-length v5, v7

    move v6, v8

    :goto_2
    if-ge v6, v5, :cond_9

    move/from16 v16, v8

    aget-object v8, v7, v6

    const/16 v0, 0x21

    .line 235
    :try_start_0
    invoke-static {v8, v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0
    :try_end_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_7

    .line 242
    invoke-virtual {v0, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 244
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v8

    if-eqz v8, :cond_8

    const-wide/16 v17, 0x0

    .line 246
    :try_start_1
    const-string v3, "month"

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2

    .line 247
    :try_start_2
    const-string v4, "day"

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    .line 248
    :try_start_3
    const-string v5, "hour"

    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_0

    .line 249
    :try_start_4
    const-string v6, "minute"

    invoke-virtual {v0, v6}, Ljava/util/regex/Matcher;->group(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_3

    move-wide/from16 v19, v17

    goto :goto_6

    :catch_0
    :goto_3
    const/4 v5, 0x0

    goto :goto_5

    :catch_1
    :goto_4
    const/4 v4, 0x0

    goto :goto_3

    :catch_2
    const/4 v3, 0x0

    goto :goto_4

    .line 259
    :catch_3
    :goto_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    const/4 v6, 0x0

    .line 264
    :goto_6
    :try_start_5
    const-string v8, "year"

    invoke-virtual {v0, v8}, Ljava/util/regex/Matcher;->group(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_7

    :catch_4
    const/4 v8, 0x0

    :goto_7
    cmp-long v21, v19, v17

    if-nez v21, :cond_5

    move/from16 v21, v2

    move-object v2, v8

    .line 271
    :try_start_6
    invoke-direct/range {v1 .. v6}, Lcom/android/internal/telephony/MissedIncomingCallSmsFilter;->getEpochTime(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v19

    cmp-long v2, v19, v17

    if-nez v2, :cond_4

    .line 273
    sget-object v2, Lcom/android/internal/telephony/MissedIncomingCallSmsFilter;->TAG:Ljava/lang/String;

    const-string v3, "Can\'t get the time. Use the current time."

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_8

    .line 280
    :catch_5
    sget-object v2, Lcom/android/internal/telephony/MissedIncomingCallSmsFilter;->TAG:Ljava/lang/String;

    const-string v3, "Can\'t get the time for missed incoming call"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_8
    move-wide/from16 v2, v19

    goto :goto_9

    :cond_5
    move/from16 v21, v2

    goto :goto_8

    .line 285
    :goto_9
    const-string v4, ""

    if-eqz v9, :cond_6

    .line 286
    :try_start_7
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    if-ne v13, v11, :cond_7

    move-object v4, v12

    goto :goto_a

    .line 291
    :cond_6
    const-string v5, "callerId"

    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_a

    .line 296
    :catch_6
    sget-object v0, Lcom/android/internal/telephony/MissedIncomingCallSmsFilter;->TAG:Ljava/lang/String;

    const-string v5, "Caller id is not provided or can\'t be parsed."

    invoke-static {v0, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    :cond_7
    :goto_a
    invoke-direct {v1, v2, v3, v4, v13}, Lcom/android/internal/telephony/MissedIncomingCallSmsFilter;->createMissedIncomingCallEvent(JLjava/lang/String;I)V

    move v3, v11

    goto :goto_c

    :cond_8
    move/from16 v21, v2

    goto :goto_b

    :catch_7
    move-exception v0

    move/from16 v21, v2

    .line 237
    sget-object v2, Lcom/android/internal/telephony/MissedIncomingCallSmsFilter;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Configuration error. Unexpected missed incoming call sms pattern: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", e="

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_b
    add-int/lit8 v6, v6, 0x1

    move/from16 v8, v16

    move/from16 v2, v21

    const/4 v11, 0x1

    goto/16 :goto_2

    :cond_9
    move/from16 v21, v2

    move/from16 v16, v8

    :goto_c
    add-int/lit8 v2, v21, 0x1

    move/from16 v8, v16

    const/4 v11, 0x1

    goto/16 :goto_1

    :cond_a
    move v8, v3

    goto :goto_d

    :cond_b
    move/from16 v16, v8

    move/from16 v8, v16

    :goto_d
    if-nez v8, :cond_c

    .line 308
    sget-object v0, Lcom/android/internal/telephony/MissedIncomingCallSmsFilter;->TAG:Ljava/lang/String;

    const-string v1, "SMS did not match any missed incoming call SMS pattern."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    return v8

    .line 198
    :goto_e
    sget-object v0, Lcom/android/internal/telephony/MissedIncomingCallSmsFilter;->TAG:Ljava/lang/String;

    const-string v1, "Missed incoming call SMS pattern is not configured!"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v16
.end method

.method private blacklist shouldReplaceLineFeed(Ljava/lang/String;)Z
    .locals 0

    .line 147
    const-string p0, "\uff83\uff9a\uff8b\uff9e\u96fb\u8a71"

    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "\u6d77\u5916"

    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "\u901a\u77e5\u4e0d\u53ef\u80fd"

    .line 148
    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "\u975e\u901a\u77e5\u8a2d\u5b9a"

    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "\u516c\u8846\u96fb\u8a71"

    .line 149
    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

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

.method private blacklist splitCalls(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_1

    .line 316
    const-string p0, "(\\n|\\s\\n)(\\n|\\s\\n)"

    invoke-virtual {p1, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 317
    sget-object p1, Lcom/android/internal/telephony/MissedIncomingCallSmsFilter;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "splitTheMultipleCalls no of calls = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p0, :cond_0

    .line 318
    array-length v1, p0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 319
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 317
    invoke-static {p1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public blacklist filter([[BLjava/lang/String;)Z
    .locals 3

    .line 114
    array-length v0, p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/MissedIncomingCallSmsFilter;->mCarrierConfig:Landroid/os/PersistableBundle;

    if-eqz v0, :cond_3

    .line 120
    const-string v1, "missed_incoming_call_sms_originator_string_array"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 123
    aget-object p1, p1, v2

    invoke-static {p1, p2}, Landroid/telephony/SmsMessage;->createFromPdu([BLjava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 125
    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 126
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 129
    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object p1

    .line 130
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/MissedIncomingCallSmsFilter;->shouldReplaceLineFeed(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 131
    const-string p2, "\\s\n"

    const-string v0, "\n"

    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 134
    :cond_1
    const-string p2, "\n\n"

    invoke-virtual {p1, p2, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p1

    .line 135
    array-length p2, p1

    move v0, v2

    :goto_0
    if-ge v2, p2, :cond_2

    aget-object v1, p1, v2

    .line 136
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/MissedIncomingCallSmsFilter;->processSms(Ljava/lang/String;)Z

    move-result v1

    or-int/2addr v0, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v0

    :cond_3
    return v2
.end method
