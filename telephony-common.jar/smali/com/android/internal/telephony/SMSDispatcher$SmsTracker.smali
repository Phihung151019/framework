.class public Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
.super Ljava/lang/Object;
.source "SMSDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SMSDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SmsTracker"
.end annotation


# instance fields
.field private final blacklist mAnomalyUnexpectedErrorFromRilUUID:Ljava/util/UUID;

.field private blacklist mAnyPartFailed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final greylist-max-r mAppInfo:Landroid/content/pm/PackageInfo;

.field private blacklist mCarrierId:I

.field private final greylist mData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final greylist mDeliveryIntent:Landroid/app/PendingIntent;

.field public final greylist-max-r mDestAddress:Ljava/lang/String;

.field public blacklist mErrorClass:I

.field public blacklist mExpectMore:Z

.field blacklist mFormat:Ljava/lang/String;

.field private blacklist mFullMessageText:Ljava/lang/String;

.field public blacklist mImsRetry:I

.field public blacklist mImsi:Ljava/lang/String;

.field private final blacklist mIsForVvm:Z

.field private blacklist mIsFromDefaultSmsApplication:Ljava/lang/Boolean;

.field private blacklist mIsText:Z

.field public final blacklist mMessageId:J

.field public greylist mMessageRef:I

.field public greylist-max-r mMessageUri:Landroid/net/Uri;

.field public blacklist mOrigAddr:Ljava/lang/String;

.field private greylist-max-r mPersistMessage:Z

.field public blacklist mPhoneId:I

.field public blacklist mPriority:I

.field public blacklist mResultCodeFromCarrierMessagingService:I

.field public blacklist mRetryCount:I

.field public final greylist mSentIntent:Landroid/app/PendingIntent;

.field private blacklist mSkipShortCodeDestAddrCheck:Z

.field public final blacklist mSmsHeader:Lcom/android/internal/telephony/SmsHeader;

.field private blacklist mSubId:I

.field private greylist-max-r mTimestamp:J

.field public blacklist mTotalPage:I

.field public final blacklist mUniqueMessageId:J

.field private blacklist mUnsentPartCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final blacklist mUserId:I

.field public blacklist mUsesImsServiceForIms:Z

.field public blacklist mValidityPeriod:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmData(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)Ljava/util/HashMap;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mData:Ljava/util/HashMap;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsForVvm(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mIsForVvm:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSkipShortCodeDestAddrCheck(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSkipShortCodeDestAddrCheck:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUserId(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mUserId:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmPersistMessage(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mPersistMessage:Z

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;JLjava/lang/String;)V
    .locals 2

    .line 3266
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3186
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mTimestamp:J

    .line 3221
    const-string v0, "43043600-ea7a-44d2-9ae6-a58567ac7886"

    .line 3222
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mAnomalyUnexpectedErrorFromRilUUID:Ljava/util/UUID;

    const/4 v0, 0x0

    .line 3267
    iput-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mData:Ljava/util/HashMap;

    .line 3268
    iput-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    .line 3269
    iput-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDeliveryIntent:Landroid/app/PendingIntent;

    .line 3270
    iput-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mAppInfo:Landroid/content/pm/PackageInfo;

    .line 3271
    iput-object p1, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDestAddress:Ljava/lang/String;

    const/4 p1, 0x0

    .line 3272
    iput-boolean p1, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mUsesImsServiceForIms:Z

    .line 3273
    iput-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSmsHeader:Lcom/android/internal/telephony/SmsHeader;

    .line 3274
    iput-wide p2, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageId:J

    .line 3275
    iput p1, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mUserId:I

    .line 3276
    iput p1, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mPriority:I

    .line 3277
    iput p1, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mValidityPeriod:I

    .line 3278
    iput-boolean p1, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mIsForVvm:Z

    .line 3279
    iput p1, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mCarrierId:I

    .line 3280
    iput-boolean p1, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSkipShortCodeDestAddrCheck:Z

    const-wide/16 p2, 0x0

    .line 3281
    iput-wide p2, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mUniqueMessageId:J

    .line 3282
    iput p1, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mResultCodeFromCarrierMessagingService:I

    .line 3283
    iput-object p4, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mFullMessageText:Ljava/lang/String;

    .line 3285
    invoke-direct {p0}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->setTotalPage()V

    return-void
.end method

.method private constructor blacklist <init>(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/content/pm/PackageInfo;Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/net/Uri;Lcom/android/internal/telephony/SmsHeader;ZLjava/lang/String;IZZIIIZJIIZJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/app/PendingIntent;",
            "Landroid/app/PendingIntent;",
            "Landroid/content/pm/PackageInfo;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            "Ljava/util/concurrent/atomic/AtomicBoolean;",
            "Landroid/net/Uri;",
            "Lcom/android/internal/telephony/SmsHeader;",
            "Z",
            "Ljava/lang/String;",
            "IZZIIIZJIIZJ)V"
        }
    .end annotation

    .line 3231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3186
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mTimestamp:J

    .line 3221
    const-string v0, "43043600-ea7a-44d2-9ae6-a58567ac7886"

    .line 3222
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mAnomalyUnexpectedErrorFromRilUUID:Ljava/util/UUID;

    .line 3232
    iput-object p1, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mData:Ljava/util/HashMap;

    .line 3233
    iput-object p2, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    .line 3234
    iput-object p3, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDeliveryIntent:Landroid/app/PendingIntent;

    const/4 p1, 0x0

    .line 3235
    iput p1, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    .line 3236
    iput-object p4, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mAppInfo:Landroid/content/pm/PackageInfo;

    .line 3237
    iput-object p5, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDestAddress:Ljava/lang/String;

    .line 3238
    iput-object p6, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mFormat:Ljava/lang/String;

    .line 3239
    iput-boolean p11, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mExpectMore:Z

    .line 3240
    iput p1, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mImsRetry:I

    .line 3241
    iput-boolean p1, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mUsesImsServiceForIms:Z

    move/from16 p2, p23

    .line 3242
    iput p2, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageRef:I

    .line 3243
    iput-object p7, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mUnsentPartCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 3244
    iput-object p8, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mAnyPartFailed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3245
    iput-object p9, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageUri:Landroid/net/Uri;

    .line 3246
    iput-object p10, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSmsHeader:Lcom/android/internal/telephony/SmsHeader;

    .line 3247
    iput-object p12, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mFullMessageText:Ljava/lang/String;

    .line 3248
    iput p13, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSubId:I

    move/from16 p2, p14

    .line 3249
    iput-boolean p2, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mIsText:Z

    move/from16 p2, p15

    .line 3250
    iput-boolean p2, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mPersistMessage:Z

    move/from16 p2, p16

    .line 3251
    iput p2, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mUserId:I

    move/from16 p2, p17

    .line 3252
    iput p2, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mPriority:I

    move/from16 p2, p18

    .line 3253
    iput p2, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mValidityPeriod:I

    move/from16 p2, p19

    .line 3254
    iput-boolean p2, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mIsForVvm:Z

    move-wide/from16 p2, p20

    .line 3255
    iput-wide p2, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageId:J

    move/from16 p2, p22

    .line 3256
    iput p2, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mCarrierId:I

    move/from16 p2, p24

    .line 3257
    iput-boolean p2, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSkipShortCodeDestAddrCheck:Z

    move-wide/from16 p2, p25

    .line 3258
    iput-wide p2, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mUniqueMessageId:J

    .line 3259
    iput p1, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mResultCodeFromCarrierMessagingService:I

    .line 3261
    invoke-direct {p0}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->setTotalPage()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/content/pm/PackageInfo;Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/net/Uri;Lcom/android/internal/telephony/SmsHeader;ZLjava/lang/String;IZZIIIZJIIZJLcom/android/internal/telephony/SMSDispatcher-IA;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p26}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;-><init>(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/content/pm/PackageInfo;Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/net/Uri;Lcom/android/internal/telephony/SmsHeader;ZLjava/lang/String;IZZIIIZJIIZJ)V

    return-void
.end method

.method private blacklist generateUUID(II)Ljava/util/UUID;
    .locals 7

    int-to-long v0, p1

    int-to-long p1, p2

    .line 3630
    new-instance v2, Ljava/util/UUID;

    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mAnomalyUnexpectedErrorFromRilUUID:Ljava/util/UUID;

    invoke-virtual {v3}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v3

    iget-object p0, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mAnomalyUnexpectedErrorFromRilUUID:Ljava/util/UUID;

    .line 3631
    invoke-virtual {p0}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v5

    const/16 p0, 0x20

    shl-long p0, p1, p0

    add-long/2addr p0, v0

    add-long/2addr v5, p0

    invoke-direct {v2, v3, v4, v5, v6}, Ljava/util/UUID;-><init>(JJ)V

    return-object v2
.end method

.method private blacklist persistOrUpdateMessage(Landroid/content/Context;II)V
    .locals 1

    .line 3502
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 3503
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->updateMessageState(Landroid/content/Context;II)V

    return-void

    .line 3505
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->persistSentMessageIfRequired(Landroid/content/Context;II)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageUri:Landroid/net/Uri;

    return-void
.end method

.method private blacklist persistSentMessageIfRequired(Landroid/content/Context;II)Landroid/net/Uri;
    .locals 7

    .line 3442
    iget-boolean v0, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mIsText:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mPersistMessage:Z

    if-eqz v0, :cond_9

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->isFromDefaultSmsApplication(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_5

    .line 3445
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Persist SMS into "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x5

    if-ne p2, v2, :cond_1

    .line 3446
    const-string v3, "FAILED"

    goto :goto_0

    :cond_1
    const-string v3, "SENT"

    :goto_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3445
    const-string v3, "SMSDispatcher"

    invoke-static {v3, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3447
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 3448
    iget v4, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSubId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "sub_id"

    invoke-virtual {v0, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3449
    const-string v4, "address"

    iget-object v5, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDestAddress:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3450
    const-string v4, "body"

    iget-object v5, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mFullMessageText:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3451
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "date"

    invoke-virtual {v0, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const/4 v4, 0x1

    .line 3452
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "seen"

    invoke-virtual {v0, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3453
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "read"

    invoke-virtual {v0, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3454
    iget-object v5, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mAppInfo:Landroid/content/pm/PackageInfo;

    if-eqz v5, :cond_2

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    goto :goto_1

    :cond_2
    move-object v5, v1

    .line 3455
    :goto_1
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 3456
    const-string v6, "creator"

    invoke-virtual {v0, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3458
    :cond_3
    iget-object v5, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDeliveryIntent:Landroid/app/PendingIntent;

    if-eqz v5, :cond_4

    const/16 v5, 0x20

    .line 3459
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "status"

    invoke-virtual {v0, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_4
    const/4 v5, -0x1

    if-ne p3, v5, :cond_5

    if-eq p3, v5, :cond_6

    .line 3463
    :cond_5
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const-string v5, "error_code"

    invoke-virtual {v0, v5, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3466
    :cond_6
    invoke-static {}, Lcom/android/internal/telephony/SMSDispatcher;->getEnableMultiSim()Z

    move-result p3

    if-eqz p3, :cond_7

    .line 3467
    iget p3, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mPhoneId:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const-string v5, "sim_slot"

    invoke-virtual {v0, v5, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3468
    const-string p3, "sim_imsi"

    iget-object p0, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mImsi:Ljava/lang/String;

    invoke-virtual {v0, p3, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3471
    :cond_7
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    .line 3472
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 3474
    :try_start_0
    sget-object p1, Landroid/provider/Telephony$Sms$Sent;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, p1, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_8

    if-ne p2, v2, :cond_8

    .line 3481
    new-instance p2, Landroid/content/ContentValues;

    invoke-direct {p2, v4}, Landroid/content/ContentValues;-><init>(I)V

    .line 3482
    const-string p3, "type"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, p3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3483
    invoke-virtual {p0, p1, p2, v1, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_4

    :catch_0
    move-exception p0

    goto :goto_3

    .line 3490
    :cond_8
    :goto_2
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p1

    .line 3487
    :goto_3
    :try_start_1
    const-string p1, "writeOutboxMessage: Failed to persist outbox message"

    invoke-static {v3, p1, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3490
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v1

    :goto_4
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3491
    throw p0

    :cond_9
    :goto_5
    return-object v1
.end method

.method private blacklist reportAnomaly(II)V
    .locals 3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/16 v0, 0x1d

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    const/4 v0, 0x7

    if-eq p1, v0, :cond_0

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    .line 3621
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SMS failed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " with error "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", errorCode "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SMSDispatcher"

    invoke-static {v2, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3623
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->generateUUID(II)Ljava/util/UUID;

    move-result-object p1

    iget p0, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mCarrierId:I

    .line 3622
    invoke-static {p1, v1, p0}, Landroid/telephony/AnomalyReporter;->reportAnomaly(Ljava/util/UUID;Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method private blacklist setTotalPage()V
    .locals 2

    .line 3724
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mUnsentPartCount:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-le v0, v1, :cond_0

    .line 3725
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mUnsentPartCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mTotalPage:I

    return-void

    .line 3727
    :cond_0
    iput v1, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mTotalPage:I

    return-void
.end method

.method private blacklist updateMessageState(Landroid/content/Context;II)V
    .locals 3

    .line 3388
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageUri:Landroid/net/Uri;

    if-nez v0, :cond_0

    return-void

    .line 3391
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 3392
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "type"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3393
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const-string v1, "error_code"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3394
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 3396
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object p0, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageUri:Landroid/net/Uri;

    const/4 p3, 0x0

    invoke-virtual {p1, p0, v0, p3, p3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    const/4 p1, 0x1

    if-eq p0, p1, :cond_1

    .line 3398
    const-string p0, "SMSDispatcher"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Failed to move message to "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 3401
    :cond_1
    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3402
    throw p0
.end method


# virtual methods
.method public blacklist getAppInfo()Landroid/content/pm/ApplicationInfo;
    .locals 0

    .line 3306
    iget-object p0, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mAppInfo:Landroid/content/pm/PackageInfo;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    return-object p0
.end method

.method public blacklist getAppPackageName()Ljava/lang/String;
    .locals 0

    .line 3298
    iget-object p0, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mAppInfo:Landroid/content/pm/PackageInfo;

    if-eqz p0, :cond_0

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist getData()Ljava/util/HashMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 3290
    iget-object p0, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mData:Ljava/util/HashMap;

    return-object p0
.end method

.method protected blacklist getInterval()J
    .locals 4

    .line 3411
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mTimestamp:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public blacklist getPduLength()I
    .locals 2

    .line 3350
    iget-object p0, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mData:Ljava/util/HashMap;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 3353
    :cond_0
    const-string v1, "pdu"

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    if-nez p0, :cond_1

    return v0

    .line 3357
    :cond_1
    array-length p0, p0

    return p0
.end method

.method protected blacklist isAnyPartFailed()Z
    .locals 0

    .line 3427
    iget-object p0, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mAnyPartFailed:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist isFromDefaultSmsApplication(Landroid/content/Context;)Z
    .locals 3

    .line 3311
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mIsFromDefaultSmsApplication:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 3313
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3315
    :try_start_0
    iget v2, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSubId:I

    invoke-static {p1, v2}, Lcom/android/internal/telephony/util/TelephonyUtils;->getSubscriptionUserHandle(Landroid/content/Context;I)Landroid/os/UserHandle;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3317
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3321
    invoke-virtual {p0}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->getAppPackageName()Ljava/lang/String;

    move-result-object v0

    .line 3320
    invoke-static {p1, v0, v2}, Lcom/android/internal/telephony/SmsApplication;->isDefaultSmsApplicationAsUser(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mIsFromDefaultSmsApplication:Ljava/lang/Boolean;

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 3317
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3318
    throw p0

    .line 3323
    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mIsFromDefaultSmsApplication:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public blacklist isMtSmsPollingMessage(Landroid/content/Context;)Z
    .locals 1

    .line 3333
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mFullMessageText:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 3338
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x1040396

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 3339
    iget-object p0, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mFullMessageText:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method protected blacklist isSinglePartOrLastPart()Z
    .locals 1

    .line 3419
    iget-object p0, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mUnsentPartCount:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    return v0
.end method

.method public greylist-max-r onFailed(Landroid/content/Context;II)V
    .locals 10

    .line 3531
    const-string v0, "SMSDispatcher"

    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mAnyPartFailed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 3532
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 3536
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mUnsentPartCount:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    .line 3537
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v3

    goto :goto_1

    :cond_2
    :goto_0
    move v1, v2

    :goto_1
    if-eqz v1, :cond_3

    const/4 v4, 0x5

    .line 3540
    invoke-direct {p0, p1, v4, p3}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->persistOrUpdateMessage(Landroid/content/Context;II)V

    .line 3542
    :cond_3
    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    if-eqz v4, :cond_c

    .line 3545
    :try_start_0
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 3546
    iget-object v5, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageUri:Landroid/net/Uri;

    if-eqz v5, :cond_4

    .line 3548
    const-string v6, "uri"

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_4
    const/4 v5, -0x1

    if-eq p3, v5, :cond_5

    .line 3551
    const-string v5, "errorCode"

    invoke-virtual {v4, v5, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3554
    :cond_5
    iget v5, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSubId:I

    invoke-static {p1, v5}, Landroid/telephony/SmsManager;->getSmsManagerForContextAndSubscriptionId(Landroid/content/Context;I)Landroid/telephony/SmsManager;

    move-result-object v5

    const-string v6, "sms_cdma_sent_fail_display"

    invoke-virtual {v5, v6}, Landroid/telephony/SmsManager;->getSmsSetting(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 3555
    const-string v5, "destAddr"

    iget-object v6, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mOrigAddr:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v5, 0x0

    .line 3556
    iput-object v5, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mOrigAddr:Ljava/lang/String;

    .line 3558
    :cond_6
    iget v5, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSubId:I

    invoke-static {p1, v5}, Landroid/telephony/SmsManager;->getSmsManagerForContextAndSubscriptionId(Landroid/content/Context;I)Landroid/telephony/SmsManager;

    move-result-object v5

    const-string v6, "sms_error_class_retry"

    invoke-virtual {v5, v6}, Landroid/telephony/SmsManager;->getSmsSetting(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 3559
    const-string v5, "errorClass"

    iget v6, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mErrorClass:I

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3560
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "errorClass : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mErrorClass:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3561
    iput v3, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mErrorClass:I

    .line 3564
    :cond_7
    iget-object v5, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mUnsentPartCount:Ljava/util/concurrent/atomic/AtomicInteger;
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v6, "LastSentMsg"

    const-string v7, "SendNextMsg"

    if-eqz v5, :cond_8

    if-eqz v1, :cond_8

    .line 3566
    :try_start_1
    invoke-virtual {v4, v7, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3568
    invoke-virtual {v4, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_2

    :cond_8
    if-nez v5, :cond_9

    .line 3570
    invoke-virtual {v4, v7, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3571
    invoke-virtual {v4, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3573
    :cond_9
    :goto_2
    iget v5, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mPhoneId:I

    invoke-static {v4, v5}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    .line 3574
    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->isSupportTiantong()Z

    move-result v5

    if-eqz v5, :cond_a

    if-eqz p1, :cond_a

    .line 3576
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "satellite_mode_enabled"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_a

    .line 3577
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Tiantong. Change error: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move p2, v2

    .line 3582
    :cond_a
    invoke-static {}, Lcom/android/internal/telephony/SmsLogger;->getInstance()Lcom/android/internal/telephony/SmsLogger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SMSTracker ["

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "] onFailed, Error :"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", ErrorCode : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", ErrorClass : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mErrorClass:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget v5, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mPhoneId:I

    invoke-virtual {v2, v0, v3, v5}, Lcom/android/internal/telephony/SmsLogger;->logAndAdd(Ljava/lang/String;Ljava/lang/String;I)V

    .line 3585
    iget-wide v2, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageId:J

    const-wide/16 v5, 0x0

    cmp-long v5, v2, v5

    if-eqz v5, :cond_b

    .line 3588
    const-string v5, "MessageId"

    invoke-virtual {v4, v5, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 3590
    :cond_b
    const-string v2, "format"

    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mFormat:Ljava/lang/String;

    invoke-virtual {v4, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3591
    const-string v2, "ims"

    iget-boolean v3, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mUsesImsServiceForIms:Z

    invoke-virtual {v4, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3592
    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, p1, p2, v4}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 3594
    :catch_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to send result "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageId:J

    .line 3595
    invoke-static {v3, v4}, Lcom/android/internal/telephony/SmsController;->formatCrossStackMessageId(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3594
    invoke-static {v0, v2}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3598
    :cond_c
    :goto_3
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->reportAnomaly(II)V

    if-eqz v1, :cond_d

    if-eqz p1, :cond_d

    .line 3601
    invoke-static {p1}, Lcom/android/internal/telephony/SmsHQMAgent;->getInstance(Landroid/content/Context;)Lcom/android/internal/telephony/SmsHQMAgent;

    move-result-object v2

    .line 3602
    invoke-virtual {p0}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->getAppPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->isFromDefaultSmsApplication(Landroid/content/Context;)Z

    move-result v4

    .line 3603
    invoke-virtual {p0}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->getInterval()J

    move-result-wide v6

    iget v8, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mTotalPage:I

    iget v9, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mPhoneId:I

    const/4 v5, 0x0

    .line 3601
    invoke-virtual/range {v2 .. v9}, Lcom/android/internal/telephony/SmsHQMAgent;->sendSMTRToImsLogAgent(Ljava/lang/String;ZZJII)V

    :cond_d
    return-void
.end method

.method public blacklist onFailed(Landroid/content/Context;IIILjava/lang/String;)V
    .locals 0

    .line 3517
    iput p4, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mPhoneId:I

    .line 3518
    iput-object p5, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mImsi:Ljava/lang/String;

    .line 3519
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->onFailed(Landroid/content/Context;II)V

    return-void
.end method

.method public greylist-max-r onSent(Landroid/content/Context;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 3654
    const-string v2, "text"

    const-string v3, "SMSDispatcher"

    .line 3658
    iget-object v4, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mUnsentPartCount:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_1

    .line 3659
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v4

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    move v4, v5

    goto :goto_1

    :cond_1
    :goto_0
    move v4, v6

    :goto_1
    const/4 v7, -0x1

    if-eqz v4, :cond_3

    .line 3663
    iget-object v8, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mAnyPartFailed:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz v8, :cond_2

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v8

    if-eqz v8, :cond_2

    const/4 v8, 0x5

    move v9, v5

    goto :goto_2

    :cond_2
    const/4 v8, 0x2

    move v9, v6

    .line 3669
    :goto_2
    invoke-direct {v0, v1, v8, v7}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->persistOrUpdateMessage(Landroid/content/Context;II)V

    move v13, v9

    goto :goto_3

    :cond_3
    move v13, v6

    .line 3671
    :goto_3
    iget-object v8, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    if-eqz v8, :cond_8

    .line 3674
    :try_start_0
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 3675
    iget-object v9, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageUri:Landroid/net/Uri;

    if-eqz v9, :cond_4

    .line 3677
    const-string v10, "uri"

    invoke-virtual {v9}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v10, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3679
    :cond_4
    iget-object v9, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mUnsentPartCount:Ljava/util/concurrent/atomic/AtomicInteger;
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v10, "LastSentMsg"

    const-string v11, "SendNextMsg"

    if-eqz v9, :cond_5

    if-eqz v4, :cond_5

    .line 3681
    :try_start_1
    invoke-virtual {v8, v11, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3683
    invoke-virtual {v8, v10, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_4

    :cond_5
    if-nez v9, :cond_6

    .line 3685
    invoke-virtual {v8, v11, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3686
    invoke-virtual {v8, v10, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3688
    :cond_6
    :goto_4
    iget v6, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mPhoneId:I

    invoke-static {v8, v6}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    .line 3690
    invoke-static {}, Lcom/android/internal/telephony/SmsLogger;->getInstance()Lcom/android/internal/telephony/SmsLogger;

    move-result-object v6

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SMSTracker ["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, "] onSent uri : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3691
    iget-object v10, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageUri:Landroid/net/Uri;

    if-eqz v10, :cond_7

    invoke-virtual {v10}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_5

    :cond_7
    const/4 v10, 0x0

    :goto_5
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " isSinglePartOrLastPart : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iget v10, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mPhoneId:I

    .line 3690
    invoke-virtual {v6, v3, v9, v10}, Lcom/android/internal/telephony/SmsLogger;->logAndAdd(Ljava/lang/String;Ljava/lang/String;I)V

    .line 3693
    const-string v6, "format"

    iget-object v9, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mFormat:Ljava/lang/String;

    invoke-virtual {v8, v6, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3694
    const-string v6, "ims"

    iget-boolean v9, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mUsesImsServiceForIms:Z

    invoke-virtual {v8, v6, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3695
    iget-object v6, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v6, v1, v7, v8}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V

    .line 3698
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 3699
    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 3702
    invoke-virtual {v6}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v6

    .line 3704
    iget-object v7, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mData:Ljava/util/HashMap;

    if-eqz v7, :cond_8

    invoke-virtual {v7, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_8

    .line 3705
    iget-object v7, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDestAddress:Ljava/lang/String;

    iget-object v8, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mData:Ljava/util/HashMap;

    .line 3706
    invoke-virtual {v8, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3705
    invoke-static {v7, v6, v2, v5}, Lcom/android/internal/telephony/SMSDispatcher;->storeSMS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_6

    .line 3711
    :catch_0
    const-string v2, "Failed to send result"

    invoke-static {v3, v2}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    :goto_6
    if-eqz v4, :cond_9

    if-eqz v1, :cond_9

    .line 3716
    invoke-static {v1}, Lcom/android/internal/telephony/SmsHQMAgent;->getInstance(Landroid/content/Context;)Lcom/android/internal/telephony/SmsHQMAgent;

    move-result-object v10

    .line 3717
    invoke-virtual {v0}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->getAppPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->isFromDefaultSmsApplication(Landroid/content/Context;)Z

    move-result v12

    .line 3718
    invoke-virtual {v0}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->getInterval()J

    move-result-wide v14

    iget v1, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mTotalPage:I

    iget v0, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mPhoneId:I

    move/from16 v17, v0

    move/from16 v16, v1

    .line 3716
    invoke-virtual/range {v10 .. v17}, Lcom/android/internal/telephony/SmsHQMAgent;->sendSMTRToImsLogAgent(Ljava/lang/String;ZZJII)V

    :cond_9
    return-void
.end method

.method public blacklist onSent(Landroid/content/Context;ILjava/lang/String;)V
    .locals 0

    .line 3641
    iput p2, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mPhoneId:I

    .line 3642
    iput-object p3, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mImsi:Ljava/lang/String;

    .line 3643
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->onSent(Landroid/content/Context;)V

    return-void
.end method

.method public greylist-max-r updateSentMessageStatus(Landroid/content/Context;I)V
    .locals 3

    .line 3365
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 3367
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 3368
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v1, "status"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3370
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 3372
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object p0, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageUri:Landroid/net/Uri;

    const/4 p2, 0x0

    invoke-virtual {p1, p0, v0, p2, p2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3374
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3375
    throw p0

    :cond_0
    return-void
.end method
