.class public Lcom/android/internal/telephony/SemBigDataInfoController;
.super Landroid/os/Handler;
.source "SemBigDataInfoController.java"


# static fields
.field private static final blacklist DBG:Z

.field private static final blacklist LC_TX_TM:[Ljava/lang/String;

.field private static final blacklist NR_TX_TM:[Ljava/lang/String;


# instance fields
.field private blacklist bNetworkDiagnosticSupport:Z

.field private final blacklist bSupportModemActivityInfo:Z

.field private blacklist bUtMode:Z

.field private blacklist mBatteryChargeType:I

.field private blacklist mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private blacklist mBatteryStatus:I

.field private blacklist mBatteryVoltage:I

.field private blacklist mBigDataFeature:I

.field private blacklist mBigDataPath:I

.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private blacklist mPhone:Lcom/android/internal/telephony/Phone;

.field private blacklist mPreviousSurveyFeature:Ljava/lang/String;

.field private blacklist mScgFailureCount:I

.field private blacklist mScgFailureDupEndTime:J

.field private blacklist mScgFailureDupStartTime:J

.field private blacklist mScgFailureMsg:Ljava/lang/String;

.field private blacklist mSemHqmManager:Landroid/os/SemHqmManager;

.field private blacklist sBigDataAction:Ljava/lang/String;

.field private blacklist sBigDataComId:Ljava/lang/String;

.field private blacklist sBigDataFeature:Ljava/lang/String;

.field private blacklist sBigDataInfo:Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmBatteryChargeType(Lcom/android/internal/telephony/SemBigDataInfoController;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/SemBigDataInfoController;->mBatteryChargeType:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmBigDataFeature(Lcom/android/internal/telephony/SemBigDataInfoController;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/SemBigDataInfoController;->mBigDataFeature:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmBigDataPath(Lcom/android/internal/telephony/SemBigDataInfoController;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/SemBigDataInfoController;->mBigDataPath:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPhone(Lcom/android/internal/telephony/SemBigDataInfoController;)Lcom/android/internal/telephony/Phone;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/SemBigDataInfoController;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetsBigDataAction(Lcom/android/internal/telephony/SemBigDataInfoController;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/SemBigDataInfoController;->sBigDataAction:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetsBigDataComId(Lcom/android/internal/telephony/SemBigDataInfoController;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/SemBigDataInfoController;->sBigDataComId:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetsBigDataFeature(Lcom/android/internal/telephony/SemBigDataInfoController;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/SemBigDataInfoController;->sBigDataFeature:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetsBigDataInfo(Lcom/android/internal/telephony/SemBigDataInfoController;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/SemBigDataInfoController;->sBigDataInfo:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputbUtMode(Lcom/android/internal/telephony/SemBigDataInfoController;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/internal/telephony/SemBigDataInfoController;->bUtMode:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmBatteryChargeType(Lcom/android/internal/telephony/SemBigDataInfoController;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/internal/telephony/SemBigDataInfoController;->mBatteryChargeType:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmBatteryStats(Lcom/android/internal/telephony/SemBigDataInfoController;Lcom/android/internal/app/IBatteryStats;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/internal/telephony/SemBigDataInfoController;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmBatteryStatus(Lcom/android/internal/telephony/SemBigDataInfoController;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/internal/telephony/SemBigDataInfoController;->mBatteryStatus:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmBatteryVoltage(Lcom/android/internal/telephony/SemBigDataInfoController;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/internal/telephony/SemBigDataInfoController;->mBatteryVoltage:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmBigDataFeature(Lcom/android/internal/telephony/SemBigDataInfoController;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/internal/telephony/SemBigDataInfoController;->mBigDataFeature:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmBigDataPath(Lcom/android/internal/telephony/SemBigDataInfoController;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/internal/telephony/SemBigDataInfoController;->mBigDataPath:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputsBigDataAction(Lcom/android/internal/telephony/SemBigDataInfoController;Ljava/lang/String;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/internal/telephony/SemBigDataInfoController;->sBigDataAction:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputsBigDataComId(Lcom/android/internal/telephony/SemBigDataInfoController;Ljava/lang/String;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/internal/telephony/SemBigDataInfoController;->sBigDataComId:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputsBigDataFeature(Lcom/android/internal/telephony/SemBigDataInfoController;Ljava/lang/String;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/internal/telephony/SemBigDataInfoController;->sBigDataFeature:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputsBigDataInfo(Lcom/android/internal/telephony/SemBigDataInfoController;Ljava/lang/String;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/internal/telephony/SemBigDataInfoController;->sBigDataInfo:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mToString(Lcom/android/internal/telephony/SemBigDataInfoController;I)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemBigDataInfoController;->ToString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$minsertLog(Lcom/android/internal/telephony/SemBigDataInfoController;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lcom/android/internal/telephony/SemBigDataInfoController;->insertLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$minsertLogToBatteryStatsService(Lcom/android/internal/telephony/SemBigDataInfoController;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemBigDataInfoController;->insertLogToBatteryStatsService(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$misSemHqmEnable(Lcom/android/internal/telephony/SemBigDataInfoController;)Z
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/SemBigDataInfoController;->isSemHqmEnable()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mpreLogCEND(Lcom/android/internal/telephony/SemBigDataInfoController;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemBigDataInfoController;->preLogCEND(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mpreLogDROP(Lcom/android/internal/telephony/SemBigDataInfoController;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemBigDataInfoController;->preLogDROP(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 5

    .line 41
    sget-boolean v0, Lcom/android/internal/telephony/util/TelephonyUtils;->IS_DEBUGGABLE:Z

    sput-boolean v0, Lcom/android/internal/telephony/SemBigDataInfoController;->DBG:Z

    .line 141
    const-string v0, "NR_TX3_TM"

    const-string v1, "NR_TX4_TM"

    const-string v2, "NR_TX0_TM"

    const-string v3, "NR_TX1_TM"

    const-string v4, "NR_TX2_TM"

    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/SemBigDataInfoController;->NR_TX_TM:[Ljava/lang/String;

    .line 146
    const-string v0, "LC_TX3_TM"

    const-string v1, "LC_TX4_TM"

    const-string v2, "LC_TX0_TM"

    const-string v3, "LC_TX1_TM"

    const-string v4, "LC_TX2_TM"

    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/SemBigDataInfoController;->LC_TX_TM:[Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/Phone;)V
    .locals 3

    .line 350
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const/4 v0, 0x0

    .line 45
    iput-boolean v0, p0, Lcom/android/internal/telephony/SemBigDataInfoController;->bNetworkDiagnosticSupport:Z

    .line 46
    iput-boolean v0, p0, Lcom/android/internal/telephony/SemBigDataInfoController;->bUtMode:Z

    .line 47
    const-string v1, ""

    iput-object v1, p0, Lcom/android/internal/telephony/SemBigDataInfoController;->mPreviousSurveyFeature:Ljava/lang/String;

    .line 48
    iput-object v1, p0, Lcom/android/internal/telephony/SemBigDataInfoController;->mScgFailureMsg:Ljava/lang/String;

    .line 49
    iput v0, p0, Lcom/android/internal/telephony/SemBigDataInfoController;->mScgFailureCount:I

    const-wide/16 v1, 0x0

    .line 50
    iput-wide v1, p0, Lcom/android/internal/telephony/SemBigDataInfoController;->mScgFailureDupStartTime:J

    .line 51
    iput-wide v1, p0, Lcom/android/internal/telephony/SemBigDataInfoController;->mScgFailureDupEndTime:J

    const/4 v1, 0x0

    .line 125
    iput-object v1, p0, Lcom/android/internal/telephony/SemBigDataInfoController;->sBigDataComId:Ljava/lang/String;

    .line 126
    iput-object v1, p0, Lcom/android/internal/telephony/SemBigDataInfoController;->sBigDataInfo:Ljava/lang/String;

    .line 127
    iput v0, p0, Lcom/android/internal/telephony/SemBigDataInfoController;->mBigDataFeature:I

    .line 128
    iput-object v1, p0, Lcom/android/internal/telephony/SemBigDataInfoController;->sBigDataFeature:Ljava/lang/String;

    .line 129
    iput-object v1, p0, Lcom/android/internal/telephony/SemBigDataInfoController;->sBigDataAction:Ljava/lang/String;

    .line 130
    iput v0, p0, Lcom/android/internal/telephony/SemBigDataInfoController;->mBigDataPath:I

    .line 131
    iput v0, p0, Lcom/android/internal/telephony/SemBigDataInfoController;->mBatteryChargeType:I

    const/4 v2, 0x1

    .line 132
    iput v2, p0, Lcom/android/internal/telephony/SemBigDataInfoController;->mBatteryStatus:I

    .line 133
    iput v0, p0, Lcom/android/internal/telephony/SemBigDataInfoController;->mBatteryVoltage:I

    .line 134
    iput-object v1, p0, Lcom/android/internal/telephony/SemBigDataInfoController;->mSemHqmManager:Landroid/os/SemHqmManager;

    .line 151
    new-instance v0, Lcom/android/internal/telephony/SemBigDataInfoController$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/SemBigDataInfoController$1;-><init>(Lcom/android/internal/telephony/SemBigDataInfoController;)V

    iput-object v0, p0, Lcom/android/internal/telephony/SemBigDataInfoController;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 351
    iput-object p1, p0, Lcom/android/internal/telephony/SemBigDataInfoController;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 352
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/SemBigDataInfoController;->mContext:Landroid/content/Context;

    .line 353
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemBigDataInfoController;->checkVersionOfNetworkDiagnostic(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/internal/telephony/SemBigDataInfoController;->bNetworkDiagnosticSupport:Z

    .line 354
    invoke-direct {p0}, Lcom/android/internal/telephony/SemBigDataInfoController;->checkUserTrialEnvironment()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/internal/telephony/SemBigDataInfoController;->bUtMode:Z

    .line 356
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    .line 357
    const-string v0, "com.samsung.intent.action.BIG_DATA_INFO"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 358
    const-string v0, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 359
    const-string v0, "sec.intent.action.networkdiagnostic.UT_MODE_CHANGED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 360
    iget-object v0, p0, Lcom/android/internal/telephony/SemBigDataInfoController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/telephony/SemBigDataInfoController;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, p1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 362
    invoke-static {}, Lcom/android/internal/telephony/SemBigDataInfoController;->isSatisfiedDevice()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/internal/telephony/SemBigDataInfoController;->bSupportModemActivityInfo:Z

    return-void
.end method

.method private blacklist ToString(I)Ljava/lang/String;
    .locals 0

    const/16 p0, 0x1000

    if-eq p1, p0, :cond_1

    const/16 p0, 0x1001

    if-eq p1, p0, :cond_0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    const/4 p0, 0x0

    return-object p0

    .line 344
    :pswitch_0
    const-string p0, "SDGM"

    return-object p0

    .line 342
    :pswitch_1
    const-string p0, "STSI"

    return-object p0

    .line 340
    :pswitch_2
    const-string p0, "SSSI"

    return-object p0

    .line 333
    :pswitch_3
    const-string p0, "NIDF"

    return-object p0

    .line 331
    :pswitch_4
    const-string p0, "NIDS"

    return-object p0

    .line 329
    :pswitch_5
    const-string p0, "CPAI"

    return-object p0

    .line 327
    :pswitch_6
    const-string p0, "MLPM"

    return-object p0

    .line 325
    :pswitch_7
    const-string p0, "TJCT"

    return-object p0

    .line 323
    :pswitch_8
    const-string p0, "UCOF"

    return-object p0

    .line 321
    :pswitch_9
    const-string p0, "DAST"

    return-object p0

    .line 319
    :pswitch_a
    const-string p0, "TXDH"

    return-object p0

    .line 317
    :pswitch_b
    const-string p0, "TFEI"

    return-object p0

    .line 315
    :pswitch_c
    const-string p0, "SCGC"

    return-object p0

    .line 313
    :pswitch_d
    const-string p0, "MMWF"

    return-object p0

    .line 310
    :pswitch_e
    const-string p0, "CMAI"

    return-object p0

    .line 307
    :pswitch_f
    const-string p0, "SCGF"

    return-object p0

    .line 305
    :pswitch_10
    const-string p0, "ENST"

    return-object p0

    .line 303
    :pswitch_11
    const-string p0, "UCSI"

    return-object p0

    .line 301
    :pswitch_12
    const-string p0, "INTG"

    return-object p0

    .line 299
    :pswitch_13
    const-string p0, "PMLI"

    return-object p0

    .line 297
    :pswitch_14
    const-string p0, "MUTE"

    return-object p0

    .line 295
    :pswitch_15
    const-string p0, "RFPD"

    return-object p0

    .line 293
    :pswitch_16
    const-string p0, "MMRJ"

    return-object p0

    .line 291
    :pswitch_17
    const-string p0, "NSVC"

    return-object p0

    .line 289
    :pswitch_18
    const-string p0, "RLFI"

    return-object p0

    .line 287
    :pswitch_19
    const-string p0, "RFDV"

    return-object p0

    .line 285
    :pswitch_1a
    const-string p0, "MIPI"

    return-object p0

    .line 283
    :pswitch_1b
    const-string p0, "RLFC"

    return-object p0

    .line 281
    :pswitch_1c
    const-string p0, "SIMD"

    return-object p0

    .line 279
    :pswitch_1d
    const-string p0, "ATTI"

    return-object p0

    .line 277
    :pswitch_1e
    const-string p0, "ATTF"

    return-object p0

    .line 275
    :pswitch_1f
    const-string p0, "ATTS"

    return-object p0

    .line 273
    :pswitch_20
    const-string p0, "PDPI"

    return-object p0

    .line 271
    :pswitch_21
    const-string p0, "PDPF"

    return-object p0

    .line 269
    :pswitch_22
    const-string p0, "PDPS"

    return-object p0

    .line 267
    :pswitch_23
    const-string p0, "SMSI"

    return-object p0

    .line 265
    :pswitch_24
    const-string p0, "SMSF"

    return-object p0

    .line 263
    :pswitch_25
    const-string p0, "SMSS"

    return-object p0

    .line 261
    :pswitch_26
    const-string p0, "CRSH"

    return-object p0

    .line 259
    :pswitch_27
    const-string p0, "DROP"

    return-object p0

    .line 257
    :pswitch_28
    const-string p0, "CEND"

    return-object p0

    .line 338
    :cond_0
    const-string p0, "TTSC"

    return-object p0

    .line 336
    :cond_1
    const-string p0, "TTZS"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2000
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist checkDuplicated(Ljava/lang/String;Ljava/lang/String;J)Z
    .locals 4

    .line 533
    const-string v0, "SCGF"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    .line 534
    iget-object v0, p0, Lcom/android/internal/telephony/SemBigDataInfoController;->mPreviousSurveyFeature:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 535
    iget-object v0, p0, Lcom/android/internal/telephony/SemBigDataInfoController;->mScgFailureMsg:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 536
    iput-wide p3, p0, Lcom/android/internal/telephony/SemBigDataInfoController;->mScgFailureDupEndTime:J

    .line 537
    sget-boolean p1, Lcom/android/internal/telephony/SemBigDataInfoController;->DBG:Z

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "duplicated SCGF is delivered: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/internal/telephony/SemBigDataInfoController;->mScgFailureCount:I

    add-int/2addr p2, v3

    iput p2, p0, Lcom/android/internal/telephony/SemBigDataInfoController;->mScgFailureCount:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "(ea)"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SemBigDataInfoController"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v3

    .line 540
    :cond_1
    iget v0, p0, Lcom/android/internal/telephony/SemBigDataInfoController;->mScgFailureCount:I

    if-le v0, v3, :cond_2

    .line 541
    invoke-direct {p0}, Lcom/android/internal/telephony/SemBigDataInfoController;->updateDuplicated()V

    .line 545
    :cond_2
    iput-wide p3, p0, Lcom/android/internal/telephony/SemBigDataInfoController;->mScgFailureDupStartTime:J

    .line 546
    iput v3, p0, Lcom/android/internal/telephony/SemBigDataInfoController;->mScgFailureCount:I

    .line 547
    iput-object p2, p0, Lcom/android/internal/telephony/SemBigDataInfoController;->mScgFailureMsg:Ljava/lang/String;

    goto :goto_0

    .line 549
    :cond_3
    iget-object p2, p0, Lcom/android/internal/telephony/SemBigDataInfoController;->mPreviousSurveyFeature:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 550
    iget p2, p0, Lcom/android/internal/telephony/SemBigDataInfoController;->mScgFailureCount:I

    if-le p2, v3, :cond_4

    .line 551
    invoke-direct {p0}, Lcom/android/internal/telephony/SemBigDataInfoController;->updateDuplicated()V

    .line 554
    :cond_4
    iput v2, p0, Lcom/android/internal/telephony/SemBigDataInfoController;->mScgFailureCount:I

    .line 555
    const-string p2, ""

    iput-object p2, p0, Lcom/android/internal/telephony/SemBigDataInfoController;->mScgFailureMsg:Ljava/lang/String;

    .line 557
    :goto_0
    iput-object p1, p0, Lcom/android/internal/telephony/SemBigDataInfoController;->mPreviousSurveyFeature:Ljava/lang/String;

    return v2
.end method

.method private blacklist checkUserTrialEnvironment()Z
    .locals 1

    .line 529
    const-string p0, "nedi.ut_mode"

    const-string v0, "normal"

    invoke-static {p0, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "ut"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private blacklist checkVersionOfNetworkDiagnostic(Landroid/content/Context;)Z
    .locals 3

    const/4 p0, 0x0

    .line 520
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string v0, "com.samsung.android.networkdiagnostic"

    invoke-virtual {p1, v0, p0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    .line 521
    const-string v0, "SemBigDataInfoController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NetworkDiagnostic package version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    iget p1, p1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const v0, 0xe4fa2a2

    if-lt p1, v0, :cond_0

    const/4 p0, 0x1

    :catch_0
    :cond_0
    return p0
.end method

.method private blacklist deleteByKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 p0, 0x0

    move v0, p0

    :cond_0
    :goto_0
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 496
    invoke-virtual {p2, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    add-int/lit8 v1, v0, 0x7

    .line 498
    const-string v2, "\""

    invoke-virtual {p2, v2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 499
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v3, v0, -0x2

    invoke-virtual {p2, p0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p2, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_1
    return-object p2
.end method

.method private blacklist deleteCID(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 486
    const-string v0, "C_ID"

    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/SemBigDataInfoController;->deleteByKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 488
    const-string v0, "CID"

    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/SemBigDataInfoController;->deleteByKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private declared-synchronized blacklist getBatteryStatsService()Lcom/android/internal/app/IBatteryStats;
    .locals 3

    monitor-enter p0

    .line 658
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/SemBigDataInfoController;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    if-nez v0, :cond_0

    .line 659
    const-string v0, "batterystats"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 661
    invoke-static {v0}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/SemBigDataInfoController;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 664
    :try_start_1
    new-instance v1, Lcom/android/internal/telephony/SemBigDataInfoController$2;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/SemBigDataInfoController$2;-><init>(Lcom/android/internal/telephony/SemBigDataInfoController;)V

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 671
    :try_start_2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 676
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/SemBigDataInfoController;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_1
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method private blacklist insertLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v4, p3

    move-object/from16 v12, p4

    move/from16 v13, p6

    .line 390
    sget-boolean v14, Lcom/android/internal/telephony/SemBigDataInfoController;->DBG:Z

    const-string v15, "SemBigDataInfoController"

    if-eqz v14, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "insertLog - feature: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", extra: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", path: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    :cond_0
    iget-object v1, v0, Lcom/android/internal/telephony/SemBigDataInfoController;->mContext:Landroid/content/Context;

    if-nez v1, :cond_1

    .line 393
    const-string v0, "insertLog: Context is null"

    invoke-static {v15, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    and-int/lit8 v1, v13, 0x2

    .line 397
    const-string v2, "RFDV"

    if-lez v1, :cond_6

    .line 398
    invoke-direct {v0}, Lcom/android/internal/telephony/SemBigDataInfoController;->isSemHqmEnable()Z

    move-result v1

    if-eqz v1, :cond_6

    if-eqz v14, :cond_2

    .line 399
    const-string v1, "insertLog: send bigdata to HQM server"

    invoke-static {v15, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    :cond_2
    const-string v1, "Modem"

    move-object/from16 v3, p1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 412
    invoke-direct {v0, v12}, Lcom/android/internal/telephony/SemBigDataInfoController;->deleteCID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v14, :cond_4

    .line 413
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "insertLog - deleteCIDextra: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v15, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    move-object v1, v12

    .line 418
    :cond_4
    :goto_0
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string v6, ""

    const/4 v7, 0x1

    if-eqz v5, :cond_5

    .line 419
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, v7

    invoke-virtual {v1, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    move-object v8, v1

    move-object v9, v6

    goto :goto_1

    .line 421
    :cond_5
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, v7

    invoke-virtual {v1, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    move-object v9, v1

    move-object v8, v6

    .line 424
    :goto_1
    iget-object v1, v0, Lcom/android/internal/telephony/SemBigDataInfoController;->mSemHqmManager:Landroid/os/SemHqmManager;

    if-eqz v1, :cond_6

    move-object v5, v2

    const/4 v2, 0x0

    move-object v6, v5

    .line 425
    const-string v5, "ph"

    move-object v7, v6

    const-string v6, "0.0"

    move-object v10, v7

    const-string v7, "sec"

    move-object v11, v10

    const-string v10, ""

    move-object v13, v11

    move-object/from16 v11, p2

    invoke-virtual/range {v1 .. v11}, Landroid/os/SemHqmManager;->sendHWParamToHQMwithAppId(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 429
    const-string v1, "CRSH"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 430
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 431
    const-string v2, "bigdata_info"

    invoke-virtual {v1, v2, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.samsung.android.qmdservice.ACTION_BIG_DATA_INFO"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 434
    invoke-virtual {v2, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 435
    const-string v1, "com.samsung.android.qmdservice"

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 436
    iget-object v1, v0, Lcom/android/internal/telephony/SemBigDataInfoController;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_2

    :cond_6
    move-object v13, v2

    :cond_7
    :goto_2
    and-int/lit8 v1, p6, 0x1

    if-lez v1, :cond_c

    .line 443
    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    if-eqz v14, :cond_d

    .line 444
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "insertLog: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " do not send to CF"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_8
    if-eqz v14, :cond_9

    .line 448
    const-string v1, "insertLog: send bigdata to DMA"

    invoke-static {v15, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    :cond_9
    const-string v1, "TTSC"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    if-eqz v14, :cond_a

    .line 451
    const-string v1, "insertLog: send bigdata to CF: TTSC"

    invoke-static {v15, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    :cond_a
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 454
    const-string v2, "tracking_id"

    const-string v3, "4K1-399-5554100"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    const-string v2, "feature"

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    const-string v2, "type"

    const-string v3, "ev"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    iget-object v2, v0, Lcom/android/internal/telephony/SemBigDataInfoController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "pkg_name"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v12, :cond_b

    .line 459
    const-string v2, "extra"

    invoke-virtual {v1, v2, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    :cond_b
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 463
    const-string v3, "com.sec.android.diagmonagent.intent.USE_APP_FEATURE_SURVEY"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 464
    invoke-virtual {v2, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 465
    const-string v1, "com.sec.android.diagmonagent"

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 466
    iget-object v1, v0, Lcom/android/internal/telephony/SemBigDataInfoController;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_c
    and-int/lit8 v1, p6, 0x4

    if-lez v1, :cond_d

    .line 471
    invoke-direct {v0, v4, v12}, Lcom/android/internal/telephony/SemBigDataInfoController;->insertLogToNedi(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    return-void
.end method

.method private blacklist insertLogToBatteryStatsService(Ljava/lang/String;)V
    .locals 17

    move-object/from16 v0, p1

    .line 609
    const-string v1, "SemBigDataInfoController"

    move-object/from16 v2, p0

    iget-boolean v3, v2, Lcom/android/internal/telephony/SemBigDataInfoController;->bSupportModemActivityInfo:Z

    if-nez v3, :cond_0

    goto/16 :goto_5

    .line 612
    :cond_0
    :try_start_0
    sget-boolean v3, Lcom/android/internal/telephony/SemBigDataInfoController;->DBG:Z

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "feature: CMAI, extra: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object/from16 v16, v1

    goto/16 :goto_3

    :catch_1
    move-exception v0

    goto/16 :goto_4

    .line 614
    :cond_1
    :goto_0
    :try_start_1
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 616
    const-string v0, "SLP_TM"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 617
    const-string v4, "IDL_TM"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x5

    .line 619
    new-array v6, v5, [I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v7, 0x0

    move v8, v7

    :goto_1
    if-ge v8, v5, :cond_2

    .line 621
    :try_start_2
    sget-object v9, Lcom/android/internal/telephony/SemBigDataInfoController;->NR_TX_TM:[Ljava/lang/String;

    aget-object v9, v9, v8

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    aput v9, v6, v8
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 623
    :cond_2
    :try_start_3
    const-string v8, "NR_RX_TM"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    .line 624
    const-string v9, "NR_TX_BYTE"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v9

    .line 625
    const-string v11, "NR_RX_BYTE"

    invoke-virtual {v3, v11}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v11

    .line 627
    new-array v13, v5, [I
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    :goto_2
    if-ge v7, v5, :cond_3

    .line 629
    :try_start_4
    sget-object v14, Lcom/android/internal/telephony/SemBigDataInfoController;->LC_TX_TM:[Ljava/lang/String;

    aget-object v14, v14, v7

    invoke-virtual {v3, v14}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v14

    aput v14, v13, v7
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 631
    :cond_3
    :try_start_5
    const-string v7, "LC_RX_TM"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 632
    const-string v14, "LC_TX_BYTE"

    invoke-virtual {v3, v14}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v14

    .line 633
    const-string v5, "LC_RX_BYTE"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 635
    new-instance v5, Landroid/os/SemModemActivityInfo$MobileActivity;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0

    move-object/from16 v16, v1

    const/4 v1, 0x5

    :try_start_6
    invoke-direct {v5, v1}, Landroid/os/SemModemActivityInfo$MobileActivity;-><init>(I)V

    .line 636
    invoke-virtual {v5, v6}, Landroid/os/SemModemActivityInfo$MobileActivity;->setTxTimeMillis([I)V

    .line 637
    invoke-virtual {v5, v8}, Landroid/os/SemModemActivityInfo$MobileActivity;->setRxTimeMillis(I)V

    .line 638
    invoke-virtual {v5, v9, v10}, Landroid/os/SemModemActivityInfo$MobileActivity;->setTxBytes(J)V

    .line 639
    invoke-virtual {v5, v11, v12}, Landroid/os/SemModemActivityInfo$MobileActivity;->setRxBytes(J)V

    .line 641
    new-instance v1, Landroid/os/SemModemActivityInfo$MobileActivity;

    const/4 v6, 0x5

    invoke-direct {v1, v6}, Landroid/os/SemModemActivityInfo$MobileActivity;-><init>(I)V

    .line 642
    invoke-virtual {v1, v13}, Landroid/os/SemModemActivityInfo$MobileActivity;->setTxTimeMillis([I)V

    .line 643
    invoke-virtual {v1, v7}, Landroid/os/SemModemActivityInfo$MobileActivity;->setRxTimeMillis(I)V

    .line 644
    invoke-virtual {v1, v14, v15}, Landroid/os/SemModemActivityInfo$MobileActivity;->setTxBytes(J)V

    .line 645
    invoke-virtual {v1, v2, v3}, Landroid/os/SemModemActivityInfo$MobileActivity;->setRxBytes(J)V

    .line 647
    new-instance v2, Landroid/os/SemModemActivityInfo;

    invoke-direct {v2, v0, v4, v5, v1}, Landroid/os/SemModemActivityInfo;-><init>(IILandroid/os/SemModemActivityInfo$MobileActivity;Landroid/os/SemModemActivityInfo$MobileActivity;)V

    .line 648
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/SemBigDataInfoController;->getBatteryStatsService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v0

    .line 649
    invoke-interface {v0, v2}, Lcom/android/internal/app/IBatteryStats;->updateSemModemActivityInfo(Landroid/os/SemModemActivityInfo;)V
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_2

    return-void

    :catch_2
    move-exception v0

    goto :goto_3

    :catch_3
    move-exception v0

    move-object/from16 v1, v16

    goto :goto_4

    :catch_4
    move-exception v0

    move-object/from16 v16, v1

    goto :goto_4

    .line 653
    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, v16

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 651
    :goto_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Json parsing error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    return-void
.end method

.method private blacklist insertLogToNedi(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 578
    iget-boolean v0, p0, Lcom/android/internal/telephony/SemBigDataInfoController;->bNetworkDiagnosticSupport:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 580
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 581
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/internal/telephony/SemBigDataInfoController;->checkDuplicated(Ljava/lang/String;Ljava/lang/String;J)Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_0
    return-void

    .line 583
    :cond_1
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 584
    const-string v3, "feature"

    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 585
    const-string v3, "ut-mode"

    iget-boolean v4, p0, Lcom/android/internal/telephony/SemBigDataInfoController;->bUtMode:Z

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 586
    const-string v3, "timestamp"

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    if-eqz p2, :cond_2

    .line 588
    const-string v0, "extra"

    invoke-virtual {v2, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 590
    :cond_2
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    .line 591
    const-string v0, "sec.intent.action.networkdiagnostic.USE_APP_FEATURE_SURVEY"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 592
    invoke-virtual {p2, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 593
    const-string v0, "com.samsung.android.networkdiagnostic"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 595
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 596
    const-string v2, "CRSH"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    const-string v2, "SemBigDataInfoController"

    if-eqz p1, :cond_4

    const-wide/32 v3, 0x493e0

    cmp-long p1, v0, v3

    if-gtz p1, :cond_4

    .line 597
    iget-object p1, p0, Lcom/android/internal/telephony/SemBigDataInfoController;->mContext:Landroid/content/Context;

    const-string v5, "alarm"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AlarmManager;

    .line 598
    iget-object p0, p0, Lcom/android/internal/telephony/SemBigDataInfoController;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    const/high16 v6, 0x4000000

    invoke-static {p0, v5, p2, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    sub-long v0, v3, v0

    .line 600
    sget-boolean p2, Lcom/android/internal/telephony/SemBigDataInfoController;->DBG:Z

    if-eqz p2, :cond_3

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "insertLog: send bigdata to NEDI (after "

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " ms)"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const/4 p2, 0x2

    .line 601
    invoke-virtual {p1, p2, v3, v4, p0}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    return-void

    .line 603
    :cond_4
    sget-boolean p1, Lcom/android/internal/telephony/SemBigDataInfoController;->DBG:Z

    if-eqz p1, :cond_5

    const-string p1, "insertLog: send bigdata to NEDI"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    :cond_5
    iget-object p0, p0, Lcom/android/internal/telephony/SemBigDataInfoController;->mContext:Landroid/content/Context;

    sget-object p1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, p2, p1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method private static blacklist isSatisfiedDevice()Z
    .locals 4

    .line 686
    new-instance v0, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {v0}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    .line 687
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    .line 688
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getTotalSizeKb()J

    move-result-wide v0

    const-wide/32 v2, 0x600000

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private blacklist isSemHqmEnable()Z
    .locals 3

    .line 367
    iget-object v0, p0, Lcom/android/internal/telephony/SemBigDataInfoController;->mSemHqmManager:Landroid/os/SemHqmManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 369
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/SemBigDataInfoController;->mContext:Landroid/content/Context;

    const-string v2, "HqmManagerService"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/SemHqmManager;

    iput-object v0, p0, Lcom/android/internal/telephony/SemBigDataInfoController;->mSemHqmManager:Landroid/os/SemHqmManager;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 371
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSemHqmEnable: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SemBigDataInfoController"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 376
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/SemBigDataInfoController;->mSemHqmManager:Landroid/os/SemHqmManager;

    if-eqz v0, :cond_2

    .line 377
    invoke-virtual {v0}, Landroid/os/SemHqmManager;->getCFServerEnable()Z

    move-result v0

    .line 378
    iget-object p0, p0, Lcom/android/internal/telephony/SemBigDataInfoController;->mSemHqmManager:Landroid/os/SemHqmManager;

    invoke-virtual {p0}, Landroid/os/SemHqmManager;->getDVServerEnable()Z

    move-result p0

    if-nez v0, :cond_1

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    return v1
.end method

.method private blacklist preLogCEND(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 476
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",\"CHGT\":\""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/internal/telephony/SemBigDataInfoController;->mBatteryStatus:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/internal/telephony/SemBigDataInfoController;->mBatteryChargeType:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "\"}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private blacklist preLogDROP(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 480
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemBigDataInfoController;->preLogCEND(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 481
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",\"BATL\":\""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/internal/telephony/SemBigDataInfoController;->mBatteryVoltage:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "\"}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private blacklist updateDuplicated()V
    .locals 6

    .line 563
    const-string v0, "SemBigDataInfoController"

    :try_start_0
    const-string v1, "content://com.samsung.android.networkdiagnostic.SurveyProvider/SurveyBasicLocal"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 564
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 565
    const-string v3, "feature"

    iget-object v4, p0, Lcom/android/internal/telephony/SemBigDataInfoController;->mPreviousSurveyFeature:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    const-string v3, "data"

    iget-object v4, p0, Lcom/android/internal/telephony/SemBigDataInfoController;->mScgFailureMsg:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 567
    const-string v3, "start"

    iget-wide v4, p0, Lcom/android/internal/telephony/SemBigDataInfoController;->mScgFailureDupStartTime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 568
    const-string v3, "end"

    iget-wide v4, p0, Lcom/android/internal/telephony/SemBigDataInfoController;->mScgFailureDupEndTime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 569
    const-string v3, "count"

    iget v4, p0, Lcom/android/internal/telephony/SemBigDataInfoController;->mScgFailureCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 570
    iget-object p0, p0, Lcom/android/internal/telephony/SemBigDataInfoController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    .line 571
    sget-boolean v1, Lcom/android/internal/telephony/SemBigDataInfoController;->DBG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "update duplicated information of SCGF ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 573
    sget-boolean v1, Lcom/android/internal/telephony/SemBigDataInfoController;->DBG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "update duplicated information of SCGF failed. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 507
    iget p0, p1, Landroid/os/Message;->what:I

    .line 509
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unhandled message with number: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SemBigDataInfoController"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
