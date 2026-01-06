.class public abstract Lcom/android/internal/telephony/ConnectionExt;
.super Lcom/android/internal/telephony/Connection;
.source "ConnectionExt.java"


# static fields
.field protected static final blacklist CONNECTION_IDENTIFIER_MO:Ljava/lang/String; = "MO"

.field protected static final blacklist CONNECTION_IDENTIFIER_MO_CONFERENCE:Ljava/lang/String; = "MO[]"

.field protected static final blacklist CONNECTION_IDENTIFIER_MT:Ljava/lang/String; = "MT"


# instance fields
.field private blacklist mBigData:Ljava/lang/String;

.field protected blacklist mHistory:Ljava/lang/String;

.field private blacklist mInitialPhone:Lcom/android/internal/telephony/Phone;


# direct methods
.method protected constructor blacklist <init>(I)V
    .locals 1

    .line 60
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/Connection;-><init>(I)V

    const/4 p1, 0x0

    .line 47
    iput-object p1, p0, Lcom/android/internal/telephony/ConnectionExt;->mInitialPhone:Lcom/android/internal/telephony/Phone;

    .line 50
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/ConnectionExt;->mBigData:Ljava/lang/String;

    .line 57
    iput-object p1, p0, Lcom/android/internal/telephony/ConnectionExt;->mHistory:Ljava/lang/String;

    return-void
.end method

.method private blacklist getCmcCallTracker()Lcom/android/internal/telephony/CmcCallTracker;
    .locals 0

    .line 456
    invoke-direct {p0}, Lcom/android/internal/telephony/ConnectionExt;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 457
    invoke-virtual {p0}, Lcom/android/internal/telephony/SemPhoneInternal;->getCmcCallTracker()Lcom/android/internal/telephony/CmcCallTracker;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private blacklist getDateString()Ljava/lang/String;
    .locals 1

    .line 331
    :try_start_0
    invoke-static {}, Ljava/time/LocalDateTime;->now()Ljava/time/LocalDateTime;

    move-result-object p0

    const-string v0, "MM-dd"

    invoke-static {v0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/time/LocalDateTime;->format(Ljava/time/format/DateTimeFormatter;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 335
    :catch_0
    const-string p0, "00-00"

    return-object p0
.end method

.method private blacklist getImsPhone()Lcom/android/internal/telephony/Phone;
    .locals 2

    .line 442
    invoke-direct {p0}, Lcom/android/internal/telephony/ConnectionExt;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 447
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    return-object p0

    .line 451
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object p0

    return-object p0
.end method

.method private blacklist getPhone()Lcom/android/internal/telephony/Phone;
    .locals 3

    .line 421
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    return-object v0

    .line 427
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/ConnectionExt;->mInitialPhone:Lcom/android/internal/telephony/Phone;

    const-string v2, "ConnectionExt"

    if-eqz v0, :cond_2

    .line 428
    const-string v0, "No phone. Use initial phone"

    invoke-static {v2, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    iget-object p0, p0, Lcom/android/internal/telephony/ConnectionExt;->mInitialPhone:Lcom/android/internal/telephony/Phone;

    return-object p0

    .line 432
    :cond_2
    const-string p0, "No phone"

    invoke-static {v2, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method private blacklist getPhoneId()I
    .locals 0

    .line 437
    invoke-direct {p0}, Lcom/android/internal/telephony/ConnectionExt;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 438
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method private blacklist getTimeString()Ljava/lang/String;
    .locals 1

    .line 342
    :try_start_0
    invoke-static {}, Ljava/time/LocalDateTime;->now()Ljava/time/LocalDateTime;

    move-result-object p0

    const-string v0, "HH:mm:ss"

    invoke-static {v0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/time/LocalDateTime;->format(Ljava/time/format/DateTimeFormatter;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 346
    :catch_0
    const-string p0, "00:00:00"

    return-object p0
.end method

.method private blacklist log(Ljava/lang/String;)V
    .locals 2

    .line 491
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/internal/telephony/ConnectionExt;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/internal/telephony/ConnectionExt;->typeToString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "] "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ConnectionExt"

    invoke-static {p1, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist loge(Ljava/lang/String;)V
    .locals 2

    .line 495
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/internal/telephony/ConnectionExt;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/internal/telephony/ConnectionExt;->typeToString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "] "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ConnectionExt"

    invoke-static {p1, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist typeToString()Ljava/lang/String;
    .locals 1

    .line 461
    instance-of v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;

    if-eqz v0, :cond_0

    const-string p0, "GsmCdmaConn"

    return-object p0

    .line 462
    :cond_0
    instance-of p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    if-eqz p0, :cond_1

    const-string p0, "ImsPhoneConn"

    return-object p0

    .line 463
    :cond_1
    const-string p0, "Unknown"

    return-object p0
.end method


# virtual methods
.method protected blacklist appendDisconnectHistory(ZLandroid/telephony/ims/ImsReasonInfo;)V
    .locals 11

    .line 266
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    .line 267
    instance-of v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    .line 269
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x20

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 270
    const-string v3, " -> ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/internal/telephony/ConnectionExt;->getTimeString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " / "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v1, :cond_0

    if-nez p1, :cond_0

    .line 273
    iget v6, p0, Lcom/android/internal/telephony/Connection;->mCause:I

    if-nez v6, :cond_0

    sget-object v6, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v6, :cond_0

    move v6, v5

    goto :goto_0

    :cond_0
    move v6, v4

    :goto_0
    if-eqz v1, :cond_1

    if-nez p1, :cond_1

    .line 274
    iget p1, p0, Lcom/android/internal/telephony/Connection;->mCause:I

    if-nez p1, :cond_1

    sget-object p1, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, p1, :cond_1

    move p1, v5

    goto :goto_1

    :cond_1
    move p1, v4

    .line 277
    :goto_1
    iget v0, p0, Lcom/android/internal/telephony/Connection;->mCause:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/16 v1, 0x2d

    if-eq v0, v1, :cond_2

    const/16 v1, 0x33

    if-eq v0, v1, :cond_2

    const/16 v1, 0x34

    if-eq v0, v1, :cond_2

    if-nez v6, :cond_2

    if-eqz p1, :cond_3

    :cond_2
    move v4, v5

    :cond_3
    if-eqz v4, :cond_5

    .line 282
    invoke-static {v0}, Landroid/telephony/DisconnectCause;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    const-string v0, ", "

    if-eqz p2, :cond_4

    .line 284
    const-string v1, "(reasonInfo: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/telephony/ims/ImsReasonInfo;->getCode()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/telephony/ims/ImsReasonInfo;->getExtraCode()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 286
    :cond_4
    const-string v1, "(cause: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getPreciseDisconnectCause()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getVendorDisconnectCause()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 289
    :cond_5
    const-string v0, "ETC_"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/internal/telephony/Connection;->mCause:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 293
    :goto_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getDurationMillis()J

    move-result-wide v0

    const-wide/16 v7, 0x0

    cmp-long v5, v0, v7

    if-lez v5, :cond_6

    .line 295
    const-string v5, "(duration: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v7, 0x3e8

    div-long v9, v0, v7

    invoke-virtual {v2, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, "."

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    rem-long/2addr v0, v7

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "sec)"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_6
    if-nez v5, :cond_7

    .line 297
    const-string v0, "(duration: 0)"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    :goto_3
    if-eqz v6, :cond_8

    .line 301
    const-string v0, "(CS fallback?)"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    if-eqz p1, :cond_9

    .line 302
    const-string p1, "(ImsCall redial?)"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    if-nez v4, :cond_b

    .line 305
    const-string p1, " <-- "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/internal/telephony/Connection;->mCause:I

    invoke-static {p1}, Landroid/telephony/DisconnectCause;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_a

    .line 307
    const-string p1, "("

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 309
    :cond_a
    const-string p1, "(callFailCause: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getPreciseDisconnectCause()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", vendorCause: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getVendorDisconnectCause()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    :cond_b
    :goto_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/android/internal/telephony/ConnectionExt;->mHistory:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/ConnectionExt;->mHistory:Ljava/lang/String;

    return-void
.end method

.method protected blacklist appendStateUpdateHistory(Lcom/android/internal/telephony/Call$State;)V
    .locals 2

    .line 253
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    if-eq p1, v0, :cond_0

    .line 255
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 256
    const-string v1, " -> "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    const-string v1, "("

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/internal/telephony/ConnectionExt;->getTimeString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 260
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/internal/telephony/ConnectionExt;->mHistory:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/ConnectionExt;->mHistory:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public blacklist confirmSdCallPullRequest()V
    .locals 4

    .line 405
    invoke-direct {p0}, Lcom/android/internal/telephony/ConnectionExt;->getCmcCallTracker()Lcom/android/internal/telephony/CmcCallTracker;

    move-result-object v0

    .line 406
    invoke-virtual {p0}, Lcom/android/internal/telephony/ConnectionBase;->getCmcExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 407
    const-string v2, "com.samsung.telephony.extra.CMC_SESSION_ID"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 408
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0

    .line 409
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/CmcCallTracker;->confirmSdCallPullRequest(I)V

    return-void

    .line 411
    :cond_0
    const-string v0, "confirmSdCallPullRequest - No CMC session ID"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ConnectionExt;->log(Ljava/lang/String;)V

    return-void
.end method

.method protected blacklist getBigData()Ljava/lang/String;
    .locals 0

    .line 235
    iget-object p0, p0, Lcom/android/internal/telephony/ConnectionExt;->mBigData:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getConvertedNumber()Ljava/lang/String;
    .locals 1

    .line 76
    iget-boolean v0, p0, Lcom/android/internal/telephony/Connection;->mNumberConverted:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mConvertedNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 80
    :cond_0
    invoke-super {p0}, Lcom/android/internal/telephony/Connection;->getConvertedNumber()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 77
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/internal/telephony/Connection;->mAddress:Ljava/lang/String;

    return-object p0
.end method

.method protected blacklist getOwnerMainTag(Lcom/android/internal/telephony/CallTracker;)Ljava/lang/String;
    .locals 1

    .line 467
    const-string p0, "GsmCdmaConnection"

    if-nez p1, :cond_0

    return-object p0

    .line 469
    :cond_0
    instance-of v0, p1, Lcom/android/internal/telephony/SemSatelliteCallTracker;

    if-eqz v0, :cond_1

    .line 470
    const-string p0, "SatelliteConnection"

    return-object p0

    .line 471
    :cond_1
    instance-of p1, p1, Lcom/android/internal/telephony/GsmCdmaCallTracker;

    if-eqz p1, :cond_2

    return-object p0

    .line 474
    :cond_2
    const-string p0, "Connection"

    return-object p0
.end method

.method protected blacklist getOwnerSubTag(Lcom/android/internal/telephony/CallTracker;)Ljava/lang/String;
    .locals 1

    .line 479
    const-string p0, "[GsmCdmaConn] "

    if-nez p1, :cond_0

    return-object p0

    .line 481
    :cond_0
    instance-of v0, p1, Lcom/android/internal/telephony/SemSatelliteCallTracker;

    if-eqz v0, :cond_1

    .line 482
    const-string p0, "[STCT-Conn] "

    return-object p0

    .line 483
    :cond_1
    instance-of p1, p1, Lcom/android/internal/telephony/GsmCdmaCallTracker;

    if-eqz p1, :cond_2

    return-object p0

    .line 486
    :cond_2
    const-string p0, "[Conn] "

    return-object p0
.end method

.method public blacklist getPreciseState()Lcom/android/internal/telephony/Call$State;
    .locals 1

    .line 209
    const-string v0, "getPreciseState() should be overridden"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ConnectionExt;->loge(Ljava/lang/String;)V

    .line 210
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object p0

    return-object p0
.end method

.method protected blacklist initializeHistory(Ljava/lang/String;)V
    .locals 4

    .line 240
    instance-of v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    .line 242
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 243
    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/internal/telephony/ConnectionExt;->getDateString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_0

    const-string v0, "PS"

    goto :goto_0

    :cond_0
    const-string v0, "CS"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ") "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " / "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/internal/telephony/ConnectionExt;->getTimeString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 248
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/ConnectionExt;->mHistory:Ljava/lang/String;

    return-void
.end method

.method public blacklist isEmergencyImsConnection()Z
    .locals 1

    .line 215
    const-string v0, "isEmergencyImsConnection() should be overridden"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ConnectionExt;->loge(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method protected blacklist isMidCallSupport()Z
    .locals 7

    .line 359
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getConnectionExtras()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 362
    :cond_0
    const-string v2, "feature_caps"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    .line 365
    :cond_1
    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 366
    array-length v2, v0

    move v3, v1

    :goto_0
    const/4 v4, 0x1

    if-ge v3, v2, :cond_3

    aget-object v5, v0, v3

    if-eqz v5, :cond_2

    .line 367
    const-string v6, "+g.3gpp.mid-call"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    return v4

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 373
    :cond_3
    invoke-direct {p0}, Lcom/android/internal/telephony/ConnectionExt;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 374
    invoke-virtual {v0}, Lcom/android/internal/telephony/SemPhoneInternal;->isVendorTestEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v0}, Lcom/android/internal/telephony/SemPhoneInternal;->getVendorTelephonyTester()Lcom/android/internal/telephony/SemTelephonyTester;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/SemTelephonyTester;->isSimulateMidCallSupport()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 375
    const-string v0, "isMidCallSupport - Support mid-call for TEST"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ConnectionExt;->log(Ljava/lang/String;)V

    return v4

    :cond_4
    return v1
.end method

.method public blacklist isNumberConverted()Z
    .locals 0

    .line 351
    iget-boolean p0, p0, Lcom/android/internal/telephony/Connection;->mNumberConverted:Z

    return p0
.end method

.method public blacklist migrateFrom(Lcom/android/internal/telephony/Connection;)V
    .locals 1

    .line 85
    invoke-super {p0, p1}, Lcom/android/internal/telephony/Connection;->migrateFrom(Lcom/android/internal/telephony/Connection;)V

    if-nez p1, :cond_0

    goto :goto_0

    .line 89
    :cond_0
    instance-of v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;

    if-eqz v0, :cond_1

    .line 91
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/Connection;->mNumberPresentation:I

    .line 92
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getCnapName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/Connection;->mCnapName:Ljava/lang/String;

    .line 93
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getCnapNamePresentation()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/Connection;->mCnapNamePresentation:I

    const/16 v0, 0x40

    .line 94
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ConnectionBase;->setInternalAttribute(I)V

    .line 96
    invoke-virtual {p1}, Lcom/android/internal/telephony/ConnectionBase;->getCmcExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ConnectionBase;->setCmcExtras(Landroid/os/Bundle;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected blacklist notifyDisconnect(I)V
    .locals 0

    .line 195
    invoke-super {p0, p1}, Lcom/android/internal/telephony/Connection;->notifyDisconnect(I)V

    .line 198
    invoke-direct {p0}, Lcom/android/internal/telephony/ConnectionExt;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 199
    invoke-virtual {p1}, Lcom/android/internal/telephony/SemPhoneInternal;->getCallTrackerHelper()Lcom/android/internal/telephony/SemCallTrackerHelper;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 201
    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/SemCallTrackerHelper;->setCallTime(Lcom/android/internal/telephony/Connection;)V

    :cond_1
    return-void
.end method

.method public blacklist onOriginalConnectionReplaced(Lcom/android/internal/telephony/Connection;)V
    .locals 2

    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onOriginalConnectionReplaced - Listeners: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", connection: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    invoke-static {p0}, Lcom/android/internal/telephony/TelephonyLogUtils;->connectionToString(Lcom/android/internal/telephony/Connection;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/internal/telephony/TelephonyLogUtils;->connectionToString(Lcom/android/internal/telephony/Connection;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 182
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ConnectionExt;->log(Ljava/lang/String;)V

    .line 185
    invoke-super {p0, p1}, Lcom/android/internal/telephony/Connection;->onOriginalConnectionReplaced(Lcom/android/internal/telephony/Connection;)V

    return-void
.end method

.method public blacklist requireConfirmationBeforeSdCallPull(Z)V
    .locals 0

    .line 396
    invoke-direct {p0}, Lcom/android/internal/telephony/ConnectionExt;->getCmcCallTracker()Lcom/android/internal/telephony/CmcCallTracker;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 398
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/CmcCallTracker;->requireConfirmationBeforeSdCallPull(Z)V

    :cond_0
    return-void
.end method

.method public blacklist setBigData(I)V
    .locals 2

    .line 226
    invoke-virtual {p0}, Lcom/android/internal/telephony/ConnectionBase;->getSipErrorCode()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/internal/telephony/ConnectionExt;->getPreciseState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/android/internal/telephony/SemCallTrackerHelper;->makeBigDataString(IILcom/android/internal/telephony/Call$State;)Ljava/lang/String;

    move-result-object p1

    .line 229
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCallData: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ConnectionExt;->log(Ljava/lang/String;)V

    .line 230
    iput-object p1, p0, Lcom/android/internal/telephony/ConnectionExt;->mBigData:Ljava/lang/String;

    return-void
.end method

.method public blacklist setCallRadioTech(I)V
    .locals 2

    .line 145
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getCallRadioTech()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCallRadioTech - Listeners: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", callRadioTech: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getCallRadioTech()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ConnectionExt;->log(Ljava/lang/String;)V

    .line 150
    :cond_0
    invoke-super {p0, p1}, Lcom/android/internal/telephony/Connection;->setCallRadioTech(I)V

    return-void
.end method

.method public blacklist setCmcPullable(Z)V
    .locals 0

    .line 385
    iput-boolean p1, p0, Lcom/android/internal/telephony/ConnectionBase;->mIsCmcPullable:Z

    .line 387
    invoke-direct {p0}, Lcom/android/internal/telephony/ConnectionExt;->getCmcCallTracker()Lcom/android/internal/telephony/CmcCallTracker;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 389
    invoke-virtual {p0}, Lcom/android/internal/telephony/CmcCallTracker;->setCmcPullable()V

    :cond_0
    return-void
.end method

.method public blacklist setConnectionCapabilities(I)V
    .locals 3

    .line 127
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getConnectionCapabilities()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setConnectionCapabilities - Listeners: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", connectionCapabilities: 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getConnectionCapabilities()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " -> 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 128
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ConnectionExt;->log(Ljava/lang/String;)V

    .line 133
    :cond_0
    invoke-super {p0, p1}, Lcom/android/internal/telephony/Connection;->setConnectionCapabilities(I)V

    return-void
.end method

.method protected blacklist setEmergencyImsConnection(Z)V
    .locals 0

    .line 221
    const-string p1, "setEmergencyImsConnection() should be overridden"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ConnectionExt;->loge(Ljava/lang/String;)V

    return-void
.end method

.method protected blacklist setInitialPhone(Lcom/android/internal/telephony/Phone;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/android/internal/telephony/ConnectionExt;->mInitialPhone:Lcom/android/internal/telephony/Phone;

    return-void
.end method

.method public blacklist setTelecomCallIdToIms()V
    .locals 1

    .line 417
    const-string v0, "setTelecomCallIdToIms() should be overridden"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ConnectionExt;->loge(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist setVideoProvider(Landroid/telecom/Connection$VideoProvider;)V
    .locals 2

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setVideoProvider - Listeners: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ConnectionExt;->log(Ljava/lang/String;)V

    .line 163
    invoke-super {p0, p1}, Lcom/android/internal/telephony/Connection;->setVideoProvider(Landroid/telecom/Connection$VideoProvider;)V

    return-void
.end method

.method public greylist-max-r setVideoState(I)V
    .locals 2

    .line 110
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getVideoState()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setVideoState - Listeners: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", videoState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getVideoState()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ConnectionExt;->log(Ljava/lang/String;)V

    .line 114
    :cond_0
    invoke-super {p0, p1}, Lcom/android/internal/telephony/Connection;->setVideoState(I)V

    return-void
.end method

.method public blacklist updateConferenceParticipants(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/ims/internal/ConferenceParticipant;",
            ">;)V"
        }
    .end annotation

    .line 174
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ConnectionBase;->setParticipants(Ljava/util/List;)V

    .line 176
    invoke-super {p0, p1}, Lcom/android/internal/telephony/Connection;->updateConferenceParticipants(Ljava/util/List;)V

    return-void
.end method

.method protected blacklist writeConnectionHistoryLog()V
    .locals 4

    .line 318
    invoke-direct {p0}, Lcom/android/internal/telephony/ConnectionExt;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 319
    invoke-virtual {v0}, Lcom/android/internal/telephony/SemPhoneInternal;->getTelephonyLogger()Lcom/android/internal/telephony/TelephonyLogger;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 321
    iget-object v2, p0, Lcom/android/internal/telephony/ConnectionExt;->mHistory:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 322
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getTelecomCallId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/ConnectionExt;->mHistory:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/TelephonyLogger;->writeConnectionHistoryLog(Ljava/lang/String;)V

    .line 323
    iput-object v1, p0, Lcom/android/internal/telephony/ConnectionExt;->mHistory:Ljava/lang/String;

    :cond_1
    return-void
.end method
