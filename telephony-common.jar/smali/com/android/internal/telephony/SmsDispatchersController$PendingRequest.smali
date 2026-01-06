.class public Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;
.super Ljava/lang/Object;
.source "SmsDispatchersController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SmsDispatchersController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PendingRequest"
.end annotation


# static fields
.field public static final blacklist TYPE_DATA:I = 0x1

.field public static final blacklist TYPE_MULTIPART_TEXT:I = 0x3

.field public static final blacklist TYPE_MULTIPART_TEXT_WITH_CALLBACK_NUMBER_AND_PRIORITY:I = 0x67

.field public static final blacklist TYPE_MULTIPART_TEXT_WITH_OPTIONS:I = 0x68

.field public static final blacklist TYPE_RETRY_SMS:I = 0x4

.field public static final blacklist TYPE_TEXT:I = 0x2

.field public static final blacklist TYPE_TEXT_WITH_CALLBACK_NUMBER_AND_PRIORITY:I = 0x65

.field public static final blacklist TYPE_TEXT_WITH_OPTIONS:I = 0x66

.field private static final blacklist sNextUniqueMessageId:Ljava/util/concurrent/atomic/AtomicLong;


# instance fields
.field public final blacklist callbackNumber:Ljava/lang/String;

.field public final blacklist callingPackage:Ljava/lang/String;

.field public final blacklist callingUser:I

.field public final blacklist confirmId:I

.field public final blacklist data:[B

.field public final blacklist deliveryIntents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/PendingIntent;",
            ">;"
        }
    .end annotation
.end field

.field public final blacklist destAddr:Ljava/lang/String;

.field public final blacklist destPort:I

.field public final blacklist encodingType:I

.field public final blacklist expectMore:Z

.field public final blacklist expiry:I

.field public final blacklist isForVvm:Z

.field public final blacklist isMtSmsPolling:Z

.field public final blacklist messageId:J

.field public final blacklist messageUri:Landroid/net/Uri;

.field public final blacklist persistMessage:Z

.field public final blacklist priority:I

.field public final blacklist replyPath:Z

.field public final blacklist scAddr:Ljava/lang/String;

.field public final blacklist sentIntents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/PendingIntent;",
            ">;"
        }
    .end annotation
.end field

.field public final blacklist serviceType:I

.field public final blacklist skipShortCodeCheck:Z

.field public final blacklist texts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final blacklist tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

.field public final blacklist type:I

.field public final blacklist uniqueMessageId:J

.field public final blacklist validityPeriod:I


# direct methods
.method public static synthetic blacklist $r8$lambda$jVExf0ZvCtc_nFdVC9TyW4_GBoE(J)J
    .locals 2

    const-wide/16 v0, 0x1

    add-long/2addr p0, v0

    const-wide v0, 0x7fffffffffffffffL

    .line 363
    rem-long/2addr p0, v0

    return-wide p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 3

    .line 267
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->sNextUniqueMessageId:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method public constructor blacklist <init>(ILcom/android/internal/telephony/SMSDispatcher$SmsTracker;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Z[BILjava/util/ArrayList;Landroid/net/Uri;ZIZIJZZ)V
    .locals 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/app/PendingIntent;",
            ">;Z[BI",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/net/Uri;",
            "ZIZIJZZ)V"
        }
    .end annotation

    const/16 v26, -0x1

    const/16 v27, -0x1

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, -0x1

    const/16 v25, -0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v9, p9

    move-object/from16 v10, p10

    move/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    move/from16 v14, p14

    move/from16 v15, p15

    move/from16 v16, p16

    move/from16 v17, p17

    move-wide/from16 v18, p18

    move/from16 v20, p20

    move/from16 v21, p21

    .line 312
    invoke-direct/range {v0 .. v27}, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;-><init>(ILcom/android/internal/telephony/SMSDispatcher$SmsTracker;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Z[BILjava/util/ArrayList;Landroid/net/Uri;ZIZIJZZLjava/lang/String;ZIIII)V

    return-void
.end method

.method public constructor blacklist <init>(ILcom/android/internal/telephony/SMSDispatcher$SmsTracker;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Z[BILjava/util/ArrayList;Landroid/net/Uri;ZIZIJZZLjava/lang/String;ZIIII)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/app/PendingIntent;",
            ">;Z[BI",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/net/Uri;",
            "ZIZIJZZ",
            "Ljava/lang/String;",
            "ZIIII)V"
        }
    .end annotation

    .line 324
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 325
    iput p1, p0, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->type:I

    .line 326
    iput-object p2, p0, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .line 327
    iput-object p3, p0, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->callingPackage:Ljava/lang/String;

    .line 328
    iput p4, p0, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->callingUser:I

    .line 329
    iput-object p5, p0, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->destAddr:Ljava/lang/String;

    .line 330
    iput-object p6, p0, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->scAddr:Ljava/lang/String;

    .line 331
    iput-object p7, p0, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->sentIntents:Ljava/util/ArrayList;

    .line 332
    iput-object p8, p0, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->deliveryIntents:Ljava/util/ArrayList;

    .line 333
    iput-boolean p9, p0, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->isForVvm:Z

    .line 335
    iput-object p10, p0, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->data:[B

    .line 336
    iput p11, p0, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->destPort:I

    .line 338
    iput-object p12, p0, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->texts:Ljava/util/ArrayList;

    .line 339
    iput-object p13, p0, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->messageUri:Landroid/net/Uri;

    .line 340
    iput-boolean p14, p0, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->persistMessage:Z

    .line 341
    iput p15, p0, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->priority:I

    move/from16 p1, p16

    .line 342
    iput-boolean p1, p0, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->expectMore:Z

    move/from16 p1, p17

    .line 343
    iput p1, p0, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->validityPeriod:I

    move-wide/from16 p3, p18

    .line 344
    iput-wide p3, p0, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->messageId:J

    move/from16 p1, p20

    .line 345
    iput-boolean p1, p0, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->skipShortCodeCheck:Z

    if-eqz p2, :cond_0

    .line 347
    iget-wide p1, p2, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mUniqueMessageId:J

    iput-wide p1, p0, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->uniqueMessageId:J

    :goto_0
    move/from16 p1, p21

    goto :goto_1

    .line 349
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->getNextUniqueMessageId()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->uniqueMessageId:J

    goto :goto_0

    .line 351
    :goto_1
    iput-boolean p1, p0, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->isMtSmsPolling:Z

    move-object/from16 p1, p22

    .line 352
    iput-object p1, p0, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->callbackNumber:Ljava/lang/String;

    move/from16 p1, p23

    .line 353
    iput-boolean p1, p0, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->replyPath:Z

    move/from16 p1, p24

    .line 354
    iput p1, p0, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->expiry:I

    move/from16 p1, p25

    .line 355
    iput p1, p0, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->serviceType:I

    move/from16 p1, p26

    .line 356
    iput p1, p0, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->encodingType:I

    move/from16 p1, p27

    .line 357
    iput p1, p0, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->confirmId:I

    return-void
.end method

.method public static blacklist getNextUniqueMessageId()J
    .locals 2

    .line 362
    sget-object v0, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->sNextUniqueMessageId:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->getAndUpdate(Ljava/util/function/LongUnaryOperator;)J

    move-result-wide v0

    return-wide v0
.end method
