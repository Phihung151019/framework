.class public Lcom/samsung/audio/SmpsManager;
.super Ljava/lang/Object;
.source "SmpsManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/audio/SmpsManager$SMPSReceiver;
    }
.end annotation


# static fields
.field private static DEBUG_DEVICE_OPEN_TIME:J = 0x0L

.field private static final DEBUG_DISPLAY_TIMEINFO:Z

.field public static final DEFAULT_PENTYPE_BRUSH:I = 0x3

.field public static final DEFAULT_PENTYPE_ERASER:I = 0x4

.field public static final DEFAULT_PENTYPE_MARKER:I = 0x2

.field public static final DEFAULT_PENTYPE_PENCIL:I = 0x1

.field public static final INVALID_INDEX:I = -0x1

.field private static IS_TABLET:Z = false

.field private static final MOTION_TYPE_ATTACK:I = 0x0

.field private static final MOTION_TYPE_DRAG:I = 0x1

.field private static final MOTION_TYPE_RELEASE:I = 0x2

.field private static final OUT_TYPE_EAR:I = 0x2

.field private static final OUT_TYPE_SPK:I = 0x1

.field private static final PEN_FEEDBACK_SOUND:Ljava/lang/String; = "spen_feedback_sound"

.field private static SMPS_GAIN_EAR:D = 0.0

.field private static SMPS_GAIN_PHONE:D = 0.0

.field private static SMPS_GAIN_SPK:D = 0.0

.field private static SMPS_GAIN_TABLET:D = 0.0

.field private static SMPS_VOL_MAX_EAR:D = 0.0

.field private static SMPS_VOL_MAX_SPK:D = 0.0

.field private static SMPS_VOL_MIN_EAR:D = 0.0

.field private static SMPS_VOL_MIN_SPK:D = 0.0

.field private static final STREAM_TYPE:I = 0x1

.field private static STREAM_TYPE_VOL_MAX:I = 0x0

.field private static final TAG:Ljava/lang/String; = "SmpsManagerV2(FT)"

.field public static final isSupport:Z

.field private static final mDefaultSourcePath:Ljava/lang/String; = "/system/media/audio/pensounds/"


# instance fields
.field private mActivePen:I

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBrushIdx:I

.field private mContext:Landroid/content/Context;

.field private mCurrentVolume:I

.field private mDisplayHeight:I

.field private mDisplayWidth:I

.field private mEnableInSettingMenu:Z

.field private mEraserIdx:I

.field private mFastTrackVolTableEAR:[D

.field private mFastTrackVolTableSPK:[D

.field private mIsMuted:Z

.field private mIsRunning:Z

.field private mMarkerIdx:I

.field private mOutType:I

.field private mPencilIdx:I

.field private mReceiver:Lcom/samsung/audio/SmpsManager$SMPSReceiver;

.field private mSmpsFT:Lcom/samsung/audio/Smps;


# direct methods
.method static bridge synthetic -$$Nest$fgetmEnableInSettingMenu(Lcom/samsung/audio/SmpsManager;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/audio/SmpsManager;->mEnableInSettingMenu:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSmpsFT(Lcom/samsung/audio/SmpsManager;)Lcom/samsung/audio/Smps;
    .locals 0

    iget-object p0, p0, Lcom/samsung/audio/SmpsManager;->mSmpsFT:Lcom/samsung/audio/Smps;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$misSmpsAvailable(Lcom/samsung/audio/SmpsManager;)Z
    .locals 0

    invoke-direct {p0}, Lcom/samsung/audio/SmpsManager;->isSmpsAvailable()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$msetOutType(Lcom/samsung/audio/SmpsManager;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/audio/SmpsManager;->setOutType(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 79
    sget-boolean v0, Lcom/samsung/audio/Smps;->SMPS_LOADLIBRARY:Z

    sput-boolean v0, Lcom/samsung/audio/SmpsManager;->isSupport:Z

    .line 83
    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/audio/SmpsManager;->DEBUG_DISPLAY_TIMEINFO:Z

    .line 84
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/samsung/audio/SmpsManager;->DEBUG_DEVICE_OPEN_TIME:J

    .line 94
    const-wide v0, 0x3fa999999999999aL    # 0.05

    sput-wide v0, Lcom/samsung/audio/SmpsManager;->SMPS_VOL_MIN_EAR:D

    .line 95
    const-wide v0, 0x3fc999999999999aL    # 0.2

    sput-wide v0, Lcom/samsung/audio/SmpsManager;->SMPS_VOL_MAX_EAR:D

    .line 96
    const-wide v0, 0x3fb999999999999aL    # 0.1

    sput-wide v0, Lcom/samsung/audio/SmpsManager;->SMPS_VOL_MIN_SPK:D

    .line 97
    const-wide v0, 0x3fee666666666666L    # 0.95

    sput-wide v0, Lcom/samsung/audio/SmpsManager;->SMPS_VOL_MAX_SPK:D

    .line 98
    const-string v0, "ro.smps.gain.phone"

    const-string v1, "1.0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    sput-wide v2, Lcom/samsung/audio/SmpsManager;->SMPS_GAIN_PHONE:D

    .line 99
    const-string v0, "ro.smps.gain.tablet"

    const-string v2, "1.3"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    sput-wide v2, Lcom/samsung/audio/SmpsManager;->SMPS_GAIN_TABLET:D

    .line 100
    const-string v0, "ro.smps.gain.spk"

    const-string v2, "0.3"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    sput-wide v2, Lcom/samsung/audio/SmpsManager;->SMPS_GAIN_SPK:D

    .line 101
    const-string v0, "ro.smps.gain.ear"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    sput-wide v0, Lcom/samsung/audio/SmpsManager;->SMPS_GAIN_EAR:D

    .line 102
    const-string v0, "ro.build.characteristics"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "tablet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/audio/SmpsManager;->IS_TABLET:Z

    .line 111
    const/16 v0, 0xf

    sput v0, Lcom/samsung/audio/SmpsManager;->STREAM_TYPE_VOL_MAX:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    const/16 v0, 0x14

    new-array v1, v0, [D

    iput-object v1, p0, Lcom/samsung/audio/SmpsManager;->mFastTrackVolTableSPK:[D

    .line 106
    new-array v0, v0, [D

    iput-object v0, p0, Lcom/samsung/audio/SmpsManager;->mFastTrackVolTableEAR:[D

    .line 109
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/audio/SmpsManager;->mAudioManager:Landroid/media/AudioManager;

    .line 114
    iput-object v0, p0, Lcom/samsung/audio/SmpsManager;->mContext:Landroid/content/Context;

    .line 115
    iput-object v0, p0, Lcom/samsung/audio/SmpsManager;->mReceiver:Lcom/samsung/audio/SmpsManager$SMPSReceiver;

    .line 116
    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/audio/SmpsManager;->mDisplayWidth:I

    .line 117
    iput v1, p0, Lcom/samsung/audio/SmpsManager;->mDisplayHeight:I

    .line 118
    const/4 v2, 0x1

    iput v2, p0, Lcom/samsung/audio/SmpsManager;->mOutType:I

    .line 121
    iput-object v0, p0, Lcom/samsung/audio/SmpsManager;->mSmpsFT:Lcom/samsung/audio/Smps;

    .line 122
    iput-boolean v1, p0, Lcom/samsung/audio/SmpsManager;->mIsRunning:Z

    .line 123
    iput-boolean v1, p0, Lcom/samsung/audio/SmpsManager;->mIsMuted:Z

    .line 124
    iput v2, p0, Lcom/samsung/audio/SmpsManager;->mPencilIdx:I

    .line 125
    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/audio/SmpsManager;->mMarkerIdx:I

    .line 126
    const/4 v2, 0x3

    iput v2, p0, Lcom/samsung/audio/SmpsManager;->mBrushIdx:I

    .line 127
    const/4 v2, 0x4

    iput v2, p0, Lcom/samsung/audio/SmpsManager;->mEraserIdx:I

    .line 128
    iget v2, p0, Lcom/samsung/audio/SmpsManager;->mPencilIdx:I

    iput v2, p0, Lcom/samsung/audio/SmpsManager;->mActivePen:I

    .line 132
    iput-boolean v1, p0, Lcom/samsung/audio/SmpsManager;->mEnableInSettingMenu:Z

    .line 134
    iput v1, p0, Lcom/samsung/audio/SmpsManager;->mCurrentVolume:I

    .line 144
    sget-boolean v1, Lcom/samsung/audio/SmpsManager;->isSupport:Z

    if-nez v1, :cond_0

    .line 145
    return-void

    .line 147
    :cond_0
    sget-boolean v1, Lcom/samsung/audio/SmpsManager;->DEBUG_DISPLAY_TIMEINFO:Z

    if-eqz v1, :cond_1

    .line 148
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sput-wide v1, Lcom/samsung/audio/SmpsManager;->DEBUG_DEVICE_OPEN_TIME:J

    .line 151
    :cond_1
    if-nez p1, :cond_2

    .line 152
    return-void

    .line 154
    :cond_2
    invoke-direct {p0, p1}, Lcom/samsung/audio/SmpsManager;->initParameter(Landroid/content/Context;)V

    .line 155
    const v1, 0xbb80

    invoke-direct {p0, v1, v0}, Lcom/samsung/audio/SmpsManager;->openSmps(II)Z

    move-result v0

    const-string v1, "SmpsManagerV2(FT)"

    if-eqz v0, :cond_3

    .line 156
    invoke-direct {p0, p1}, Lcom/samsung/audio/SmpsManager;->registerReceiver(Landroid/content/Context;)V

    .line 157
    invoke-direct {p0}, Lcom/samsung/audio/SmpsManager;->registerDefaultPensounds()V

    .line 158
    invoke-direct {p0, p1}, Lcom/samsung/audio/SmpsManager;->checkSettingSPen(Landroid/content/Context;)V

    .line 159
    const-string v0, "SmpsManager openSmps is finished."

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    :cond_3
    const-string v0, "SmpsManager is created"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    return-void
.end method

.method private checkSettingSPen(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 214
    invoke-direct {p0, p1}, Lcom/samsung/audio/SmpsManager;->isEnableSettingMenu(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/audio/SmpsManager;->mEnableInSettingMenu:Z

    .line 215
    invoke-direct {p0}, Lcom/samsung/audio/SmpsManager;->isSmpsAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/audio/SmpsManager;->mIsRunning:Z

    if-eqz v0, :cond_1

    .line 216
    iget-boolean v0, p0, Lcom/samsung/audio/SmpsManager;->mEnableInSettingMenu:Z

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/samsung/audio/SmpsManager;->mSmpsFT:Lcom/samsung/audio/Smps;

    invoke-virtual {v0}, Lcom/samsung/audio/Smps;->start_fasttrack()V

    goto :goto_0

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/samsung/audio/SmpsManager;->mSmpsFT:Lcom/samsung/audio/Smps;

    invoke-virtual {v0}, Lcom/samsung/audio/Smps;->stop_fasttrack()V

    .line 222
    :cond_1
    :goto_0
    return-void
.end method

.method private closeSmps()V
    .locals 2

    .line 517
    iget-boolean v0, p0, Lcom/samsung/audio/SmpsManager;->mIsRunning:Z

    if-eqz v0, :cond_1

    .line 518
    iget-object v0, p0, Lcom/samsung/audio/SmpsManager;->mSmpsFT:Lcom/samsung/audio/Smps;

    if-eqz v0, :cond_1

    .line 519
    iget-object v0, p0, Lcom/samsung/audio/SmpsManager;->mSmpsFT:Lcom/samsung/audio/Smps;

    invoke-virtual {v0}, Lcom/samsung/audio/Smps;->deinit()I

    move-result v0

    const-string v1, "SmpsManagerV2(FT)"

    if-eqz v0, :cond_0

    .line 520
    const-string v0, "Smps.deinit() is failed!!"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 523
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/audio/SmpsManager;->mSmpsFT:Lcom/samsung/audio/Smps;

    .line 524
    const-string v0, "Smps is deinitialized()!!"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    :cond_1
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/audio/SmpsManager;->mIsRunning:Z

    .line 529
    return-void
.end method

.method private createAudioOut(IIZ)Z
    .locals 5
    .param p1, "Hz"    # I
    .param p2, "Ch"    # I
    .param p3, "panningEnable"    # Z

    .line 483
    iget-object v0, p0, Lcom/samsung/audio/SmpsManager;->mSmpsFT:Lcom/samsung/audio/Smps;

    const/4 v1, 0x0

    const-string v2, "SmpsManagerV2(FT)"

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/samsung/audio/SmpsManager;->isSupport:Z

    if-eqz v0, :cond_1

    .line 484
    new-instance v0, Lcom/samsung/audio/Smps;

    invoke-direct {v0}, Lcom/samsung/audio/Smps;-><init>()V

    iput-object v0, p0, Lcom/samsung/audio/SmpsManager;->mSmpsFT:Lcom/samsung/audio/Smps;

    .line 485
    invoke-direct {p0}, Lcom/samsung/audio/SmpsManager;->isSmpsAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 486
    iget-object v0, p0, Lcom/samsung/audio/SmpsManager;->mSmpsFT:Lcom/samsung/audio/Smps;

    iget v3, p0, Lcom/samsung/audio/SmpsManager;->mDisplayWidth:I

    iget v4, p0, Lcom/samsung/audio/SmpsManager;->mDisplayHeight:I

    invoke-virtual {v0, p1, p2, v3, v4}, Lcom/samsung/audio/Smps;->init(IIII)I

    move-result v0

    if-nez v0, :cond_1

    .line 487
    iget-object v0, p0, Lcom/samsung/audio/SmpsManager;->mSmpsFT:Lcom/samsung/audio/Smps;

    iget-object v1, p0, Lcom/samsung/audio/SmpsManager;->mFastTrackVolTableSPK:[D

    iget-object v2, p0, Lcom/samsung/audio/SmpsManager;->mFastTrackVolTableEAR:[D

    invoke-virtual {v0, v1, v2}, Lcom/samsung/audio/Smps;->get_VolTable([D[D)V

    .line 488
    invoke-direct {p0}, Lcom/samsung/audio/SmpsManager;->updateVolume()V

    .line 489
    const/4 v0, 0x1

    return v0

    .line 492
    :cond_0
    const-string v0, "SmpsManager createAudioOut : isSmpsAvailable is failed"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    return v1

    .line 496
    :cond_1
    const-string v0, "SmpsManager createAudioOut() is failed"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    return v1
.end method

.method private cvrtPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    .line 469
    const-string v0, "/storage/"

    const-string v1, "/mnt/shell/"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private generatePenSound(DDJFI)V
    .locals 8
    .param p1, "x"    # D
    .param p3, "y"    # D
    .param p5, "time"    # J
    .param p7, "pressure"    # F
    .param p8, "SMPS_MOTION_TYPE"    # I

    .line 562
    invoke-direct {p0}, Lcom/samsung/audio/SmpsManager;->updateAudioDevice()V

    .line 563
    invoke-direct {p0}, Lcom/samsung/audio/SmpsManager;->isSmpsAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/audio/SmpsManager;->mIsMuted:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/audio/SmpsManager;->mIsRunning:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/audio/SmpsManager;->mEnableInSettingMenu:Z

    if-eqz v0, :cond_0

    .line 564
    iget-object v1, p0, Lcom/samsung/audio/SmpsManager;->mSmpsFT:Lcom/samsung/audio/Smps;

    double-to-float v2, p1

    double-to-float v3, p3

    move-wide v4, p5

    move v6, p7

    move/from16 v7, p8

    invoke-virtual/range {v1 .. v7}, Lcom/samsung/audio/Smps;->gen_tofasttrack(FFJFI)I

    .line 566
    :cond_0
    return-void
.end method

.method private initParameter(Landroid/content/Context;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .line 412
    sget-boolean v0, Lcom/samsung/audio/SmpsManager;->isSupport:Z

    if-nez v0, :cond_0

    .line 413
    return-void

    .line 416
    :cond_0
    const/4 v0, 0x0

    const-string v1, "SmpsManagerV2(FT)"

    if-eqz p1, :cond_4

    .line 417
    iput-object p1, p0, Lcom/samsung/audio/SmpsManager;->mContext:Landroid/content/Context;

    .line 418
    iget-object v2, p0, Lcom/samsung/audio/SmpsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 419
    .local v2, "resources":Landroid/content/res/Resources;
    const/4 v3, 0x0

    if-eqz v2, :cond_3

    .line 420
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v4, p0, Lcom/samsung/audio/SmpsManager;->mDisplayWidth:I

    .line 421
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v4, p0, Lcom/samsung/audio/SmpsManager;->mDisplayHeight:I

    .line 429
    .end local v2    # "resources":Landroid/content/res/Resources;
    nop

    .line 435
    const-string v2, "audio"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    iput-object v2, p0, Lcom/samsung/audio/SmpsManager;->mAudioManager:Landroid/media/AudioManager;

    .line 436
    iget-object v2, p0, Lcom/samsung/audio/SmpsManager;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v2, :cond_2

    .line 437
    iget-object v0, p0, Lcom/samsung/audio/SmpsManager;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    sput v0, Lcom/samsung/audio/SmpsManager;->STREAM_TYPE_VOL_MAX:I

    .line 447
    sget-boolean v0, Lcom/samsung/audio/SmpsManager;->IS_TABLET:Z

    const-string v2, ")"

    const-wide v3, 0x3fc999999999999aL    # 0.2

    if-eqz v0, :cond_1

    .line 448
    const-wide v5, 0x3fc428f5c28f5c29L    # 0.1575

    sget-wide v7, Lcom/samsung/audio/SmpsManager;->SMPS_GAIN_TABLET:D

    mul-double/2addr v7, v5

    sget-wide v5, Lcom/samsung/audio/SmpsManager;->SMPS_GAIN_SPK:D

    mul-double/2addr v7, v5

    sput-wide v7, Lcom/samsung/audio/SmpsManager;->SMPS_VOL_MAX_SPK:D

    .line 449
    const-wide v5, 0x3fa1eb851eb851ecL    # 0.035

    sget-wide v7, Lcom/samsung/audio/SmpsManager;->SMPS_GAIN_TABLET:D

    mul-double/2addr v7, v5

    sget-wide v5, Lcom/samsung/audio/SmpsManager;->SMPS_GAIN_SPK:D

    mul-double/2addr v7, v5

    sput-wide v7, Lcom/samsung/audio/SmpsManager;->SMPS_VOL_MIN_SPK:D

    .line 450
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SmpsAudioManager SMPS_VOL_MAX_SPK(Tablet : "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-wide v5, Lcom/samsung/audio/SmpsManager;->SMPS_VOL_MAX_SPK:D

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 452
    :cond_1
    sget-wide v5, Lcom/samsung/audio/SmpsManager;->SMPS_GAIN_PHONE:D

    mul-double/2addr v5, v3

    sget-wide v7, Lcom/samsung/audio/SmpsManager;->SMPS_GAIN_SPK:D

    mul-double/2addr v5, v7

    sput-wide v5, Lcom/samsung/audio/SmpsManager;->SMPS_VOL_MAX_SPK:D

    .line 453
    const-wide v5, 0x3fa47ae147ae147bL    # 0.04

    sget-wide v7, Lcom/samsung/audio/SmpsManager;->SMPS_GAIN_PHONE:D

    mul-double/2addr v7, v5

    sget-wide v5, Lcom/samsung/audio/SmpsManager;->SMPS_GAIN_SPK:D

    mul-double/2addr v7, v5

    sput-wide v7, Lcom/samsung/audio/SmpsManager;->SMPS_VOL_MIN_SPK:D

    .line 454
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SmpsAudioManager SMPS_VOL_MAX_SPK(Phone : "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-wide v5, Lcom/samsung/audio/SmpsManager;->SMPS_VOL_MAX_SPK:D

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    :goto_0
    sget-wide v0, Lcom/samsung/audio/SmpsManager;->SMPS_GAIN_EAR:D

    mul-double/2addr v0, v3

    sput-wide v0, Lcom/samsung/audio/SmpsManager;->SMPS_VOL_MAX_EAR:D

    .line 457
    const-wide v0, 0x3fa999999999999aL    # 0.05

    sget-wide v2, Lcom/samsung/audio/SmpsManager;->SMPS_GAIN_EAR:D

    mul-double/2addr v2, v0

    sput-wide v2, Lcom/samsung/audio/SmpsManager;->SMPS_VOL_MIN_EAR:D

    .line 458
    return-void

    .line 439
    :cond_2
    iput-object v0, p0, Lcom/samsung/audio/SmpsManager;->mContext:Landroid/content/Context;

    .line 440
    iput v3, p0, Lcom/samsung/audio/SmpsManager;->mDisplayWidth:I

    .line 441
    iput v3, p0, Lcom/samsung/audio/SmpsManager;->mDisplayHeight:I

    .line 442
    iput-object v0, p0, Lcom/samsung/audio/SmpsManager;->mAudioManager:Landroid/media/AudioManager;

    .line 443
    const-string v0, "initParameter : mAudioManager is null"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    return-void

    .line 423
    .restart local v2    # "resources":Landroid/content/res/Resources;
    :cond_3
    iput-object v0, p0, Lcom/samsung/audio/SmpsManager;->mContext:Landroid/content/Context;

    .line 424
    iput v3, p0, Lcom/samsung/audio/SmpsManager;->mDisplayWidth:I

    .line 425
    iput v3, p0, Lcom/samsung/audio/SmpsManager;->mDisplayHeight:I

    .line 426
    const-string v0, "initParameter : resources is null"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    return-void

    .line 430
    .end local v2    # "resources":Landroid/content/res/Resources;
    :cond_4
    iput-object v0, p0, Lcom/samsung/audio/SmpsManager;->mContext:Landroid/content/Context;

    .line 431
    const-string v0, "initParameter : context is null"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    return-void
.end method

.method private isEnableSettingMenu(Landroid/content/Context;)Z
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 665
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 666
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "spen_feedback_sound"

    invoke-static {v1, v2, v0, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    const-string v2, "SmpsManagerV2(FT)"

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    .line 667
    const-string v0, "SPen Menu(writing sound:ON)"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    return v3

    .line 670
    :cond_0
    const-string v1, "SPen Menu(writing sound:OFF)"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    :cond_1
    return v0
.end method

.method private isExist(Ljava/lang/String;)Z
    .locals 4
    .param p1, "path"    # Ljava/lang/String;

    .line 473
    const/4 v0, 0x0

    .line 474
    .local v0, "ret":Z
    new-instance v1, Ljava/io/File;

    const-string v2, "/mnt/shell/"

    const-string v3, "/storage/"

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 475
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 476
    const/4 v0, 0x1

    .line 478
    :cond_0
    const/4 v1, 0x0

    .line 479
    return v0
.end method

.method private isSmpsAvailable()Z
    .locals 2

    .line 461
    iget-object v0, p0, Lcom/samsung/audio/SmpsManager;->mSmpsFT:Lcom/samsung/audio/Smps;

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/samsung/audio/SmpsManager;->isSupport:Z

    if-eqz v0, :cond_0

    .line 462
    const/4 v0, 0x1

    return v0

    .line 464
    :cond_0
    const-string v0, "SmpsManagerV2(FT)"

    const-string v1, "isSmpsAvailable is failed."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    const/4 v0, 0x0

    return v0
.end method

.method private openSmps(II)Z
    .locals 4
    .param p1, "Hz"    # I
    .param p2, "Ch"    # I

    .line 501
    iget-boolean v0, p0, Lcom/samsung/audio/SmpsManager;->mIsRunning:Z

    const/4 v1, 0x1

    const-string v2, "SmpsManagerV2(FT)"

    if-eqz v0, :cond_0

    .line 502
    const-string v0, "openSmps: Already opened.."

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    return v1

    .line 506
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/audio/SmpsManager;->createAudioOut(IIZ)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 507
    iput-boolean v1, p0, Lcom/samsung/audio/SmpsManager;->mIsRunning:Z

    goto :goto_0

    .line 509
    :cond_1
    const-string v1, "openSmps: createAudioOut is failed."

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    iput-boolean v0, p0, Lcom/samsung/audio/SmpsManager;->mIsRunning:Z

    .line 513
    :goto_0
    iget-boolean v0, p0, Lcom/samsung/audio/SmpsManager;->mIsRunning:Z

    return v0
.end method

.method private registerDefaultPensounds()V
    .locals 12

    .line 196
    invoke-direct {p0}, Lcom/samsung/audio/SmpsManager;->isSmpsAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/samsung/audio/SmpsManager;->mIsRunning:Z

    if-eqz v1, :cond_0

    .line 197
    const-string v1, "/system/media/audio/pensounds/smpsdata1.dat"

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1, v2}, Lcom/samsung/audio/SmpsManager;->addSoundSource(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/audio/SmpsManager;->mPencilIdx:I

    .line 198
    const-string v1, "/system/media/audio/pensounds/smpsdata3.dat"

    invoke-virtual {p0, v2, v1, v2}, Lcom/samsung/audio/SmpsManager;->addSoundSource(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/audio/SmpsManager;->mMarkerIdx:I

    .line 199
    const-string v1, "/system/media/audio/pensounds/smpsdata2.dat"

    invoke-virtual {p0, v2, v1, v2}, Lcom/samsung/audio/SmpsManager;->addSoundSource(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/audio/SmpsManager;->mBrushIdx:I

    .line 200
    const-string v1, "/system/media/audio/pensounds/smpsdatae1.dat"

    invoke-virtual {p0, v1, v1, v2}, Lcom/samsung/audio/SmpsManager;->addSoundSource(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/audio/SmpsManager;->mEraserIdx:I

    .line 201
    iget v1, p0, Lcom/samsung/audio/SmpsManager;->mPencilIdx:I

    const-wide v8, 0x3fe999999999999aL    # 0.8

    const-wide/high16 v10, -0x4010000000000000L    # -1.0

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    const-wide v4, 0x3fe3333333333333L    # 0.6

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    move-object v0, p0

    invoke-direct/range {v0 .. v11}, Lcom/samsung/audio/SmpsManager;->setTuneset(IDDDDD)Z

    .line 202
    iget v1, p0, Lcom/samsung/audio/SmpsManager;->mMarkerIdx:I

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    invoke-direct/range {v0 .. v11}, Lcom/samsung/audio/SmpsManager;->setTuneset(IDDDDD)Z

    .line 203
    iget v1, p0, Lcom/samsung/audio/SmpsManager;->mBrushIdx:I

    const-wide v8, 0x3fd999999999999aL    # 0.4

    const-wide v4, 0x3fd999999999999aL    # 0.4

    invoke-direct/range {v0 .. v11}, Lcom/samsung/audio/SmpsManager;->setTuneset(IDDDDD)Z

    .line 204
    iget v1, p0, Lcom/samsung/audio/SmpsManager;->mEraserIdx:I

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide v4, 0x3fe999999999999aL    # 0.8

    const-wide v6, 0x3fd999999999999aL    # 0.4

    invoke-direct/range {v0 .. v11}, Lcom/samsung/audio/SmpsManager;->setTuneset(IDDDDD)Z

    .line 205
    iget v1, p0, Lcom/samsung/audio/SmpsManager;->mPencilIdx:I

    invoke-virtual {p0, v1}, Lcom/samsung/audio/SmpsManager;->setActivePen(I)Z

    .line 206
    invoke-direct {p0}, Lcom/samsung/audio/SmpsManager;->updateVolume()V

    .line 207
    sget-boolean v1, Lcom/samsung/audio/SmpsManager;->DEBUG_DISPLAY_TIMEINFO:Z

    if-eqz v1, :cond_0

    .line 208
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SmpsFT initialization takes "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, Lcom/samsung/audio/SmpsManager;->DEBUG_DEVICE_OPEN_TIME:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SmpsManagerV2(FT)"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    :cond_0
    return-void
.end method

.method private registerReceiver(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 611
    iget-object v0, p0, Lcom/samsung/audio/SmpsManager;->mReceiver:Lcom/samsung/audio/SmpsManager$SMPSReceiver;

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 612
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 613
    .local v0, "filter":Landroid/content/IntentFilter;
    nop

    .line 614
    const-string v1, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 615
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 616
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 618
    new-instance v1, Lcom/samsung/audio/SmpsManager$SMPSReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/samsung/audio/SmpsManager$SMPSReceiver;-><init>(Lcom/samsung/audio/SmpsManager;Lcom/samsung/audio/SmpsManager-IA;)V

    iput-object v1, p0, Lcom/samsung/audio/SmpsManager;->mReceiver:Lcom/samsung/audio/SmpsManager$SMPSReceiver;

    .line 619
    iget-object v1, p0, Lcom/samsung/audio/SmpsManager;->mReceiver:Lcom/samsung/audio/SmpsManager$SMPSReceiver;

    if-eqz v1, :cond_0

    .line 620
    iget-object v1, p0, Lcom/samsung/audio/SmpsManager;->mReceiver:Lcom/samsung/audio/SmpsManager$SMPSReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 623
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method private setMute(Z)V
    .locals 2
    .param p1, "bMute"    # Z

    .line 604
    iget-boolean v0, p0, Lcom/samsung/audio/SmpsManager;->mIsMuted:Z

    if-eq v0, p1, :cond_0

    .line 605
    iput-boolean p1, p0, Lcom/samsung/audio/SmpsManager;->mIsMuted:Z

    .line 606
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setMute("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SmpsManagerV2(FT)"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    :cond_0
    return-void
.end method

.method private setOutType(I)V
    .locals 2
    .param p1, "SMPS_OUT_TYPE"    # I

    .line 532
    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    goto :goto_0

    .line 536
    :cond_0
    iput v0, p0, Lcom/samsung/audio/SmpsManager;->mOutType:I

    goto :goto_1

    .line 533
    :cond_1
    :goto_0
    iput p1, p0, Lcom/samsung/audio/SmpsManager;->mOutType:I

    .line 534
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/audio/SmpsManager;->setMute(Z)V

    .line 538
    :goto_1
    invoke-direct {p0}, Lcom/samsung/audio/SmpsManager;->updateVolume()V

    .line 539
    return-void
.end method

.method private setTuneset(IDDDDD)Z
    .locals 24
    .param p1, "index"    # I
    .param p2, "wgain"    # D
    .param p4, "pgain"    # D
    .param p6, "avol"    # D
    .param p8, "dvol"    # D
    .param p10, "rvol"    # D

    .line 225
    invoke-direct/range {p0 .. p0}, Lcom/samsung/audio/SmpsManager;->isSmpsAvailable()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 226
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/audio/SmpsManager;->mSmpsFT:Lcom/samsung/audio/Smps;

    const/4 v11, 0x0

    const-wide/high16 v12, -0x4010000000000000L    # -1.0

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    const/4 v8, 0x0

    const-wide/high16 v9, -0x4010000000000000L    # -1.0

    move/from16 v3, p1

    move-wide/from16 v14, p2

    move-wide/from16 v16, p4

    move-wide/from16 v18, p6

    move-wide/from16 v20, p8

    move-wide/from16 v22, p10

    invoke-virtual/range {v2 .. v23}, Lcom/samsung/audio/Smps;->set_tuneset(IDDIDIDDDDDD)I

    move-result v2

    if-eqz v2, :cond_0

    .line 227
    return v1

    .line 232
    :cond_0
    const/4 v1, 0x1

    return v1

    .line 230
    :cond_1
    move-object/from16 v0, p0

    return v1
.end method

.method private unregisterReceiver(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 626
    iget-object v0, p0, Lcom/samsung/audio/SmpsManager;->mReceiver:Lcom/samsung/audio/SmpsManager$SMPSReceiver;

    if-eqz v0, :cond_0

    .line 628
    :try_start_0
    iget-object v0, p0, Lcom/samsung/audio/SmpsManager;->mReceiver:Lcom/samsung/audio/SmpsManager$SMPSReceiver;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 631
    goto :goto_0

    .line 629
    :catch_0
    move-exception v0

    .line 630
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Receiver not registered : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SmpsManagerV2(FT)"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/audio/SmpsManager;->mReceiver:Lcom/samsung/audio/SmpsManager$SMPSReceiver;

    .line 634
    :cond_0
    return-void
.end method

.method private updateAudioDevice()V
    .locals 4

    .line 542
    iget-object v0, p0, Lcom/samsung/audio/SmpsManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getCommunicationDevice()Landroid/media/AudioDeviceInfo;

    move-result-object v0

    .line 543
    .local v0, "currentAudioDevice":Landroid/media/AudioDeviceInfo;
    if-eqz v0, :cond_3

    .line 544
    invoke-virtual {v0}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v1

    .line 545
    .local v1, "deviceType":I
    const/16 v2, 0x8

    const/4 v3, 0x1

    if-eq v1, v2, :cond_2

    .line 546
    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    const/16 v2, 0x16

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 552
    :cond_0
    invoke-direct {p0, v3}, Lcom/samsung/audio/SmpsManager;->setOutType(I)V

    goto :goto_1

    .line 549
    :cond_1
    :goto_0
    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lcom/samsung/audio/SmpsManager;->setOutType(I)V

    goto :goto_1

    .line 556
    :cond_2
    invoke-direct {p0, v3}, Lcom/samsung/audio/SmpsManager;->setMute(Z)V

    .line 559
    .end local v1    # "deviceType":I
    :cond_3
    :goto_1
    return-void
.end method

.method private updateVolume()V
    .locals 14

    .line 569
    const-wide/16 v0, 0x0

    .local v0, "vol":D
    const-wide/16 v2, 0x0

    .local v2, "vol_min":D
    const-wide/16 v4, 0x0

    .line 570
    .local v4, "vol_max":D
    const/4 v6, 0x0

    .line 571
    .local v6, "isupdate":I
    iget v7, p0, Lcom/samsung/audio/SmpsManager;->mOutType:I

    const/4 v8, 0x2

    const/4 v9, 0x1

    if-ne v7, v9, :cond_0

    .line 572
    sget-wide v2, Lcom/samsung/audio/SmpsManager;->SMPS_VOL_MIN_SPK:D

    .line 573
    sget-wide v4, Lcom/samsung/audio/SmpsManager;->SMPS_VOL_MAX_SPK:D

    goto :goto_0

    .line 574
    :cond_0
    iget v7, p0, Lcom/samsung/audio/SmpsManager;->mOutType:I

    if-ne v7, v8, :cond_1

    .line 575
    sget-wide v2, Lcom/samsung/audio/SmpsManager;->SMPS_VOL_MIN_EAR:D

    .line 576
    sget-wide v4, Lcom/samsung/audio/SmpsManager;->SMPS_VOL_MAX_EAR:D

    .line 579
    :cond_1
    :goto_0
    iget-object v7, p0, Lcom/samsung/audio/SmpsManager;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v7, :cond_4

    .line 580
    iget-object v7, p0, Lcom/samsung/audio/SmpsManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v7, v9}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v7

    .line 581
    .local v7, "currentVolume":I
    iget v10, p0, Lcom/samsung/audio/SmpsManager;->mCurrentVolume:I

    if-eq v10, v7, :cond_4

    .line 583
    const/4 v6, 0x1

    .line 584
    iput v7, p0, Lcom/samsung/audio/SmpsManager;->mCurrentVolume:I

    .line 585
    if-nez v7, :cond_2

    .line 586
    const-wide/16 v0, 0x0

    goto :goto_1

    .line 588
    :cond_2
    sub-double v10, v4, v2

    int-to-double v12, v7

    mul-double/2addr v10, v12

    sget v12, Lcom/samsung/audio/SmpsManager;->STREAM_TYPE_VOL_MAX:I

    int-to-double v12, v12

    div-double/2addr v10, v12

    add-double v0, v2, v10

    .line 589
    iget v10, p0, Lcom/samsung/audio/SmpsManager;->mOutType:I

    if-ne v10, v9, :cond_3

    iget-object v10, p0, Lcom/samsung/audio/SmpsManager;->mFastTrackVolTableSPK:[D

    if-eqz v10, :cond_3

    .line 590
    iget-object v8, p0, Lcom/samsung/audio/SmpsManager;->mFastTrackVolTableSPK:[D

    aget-wide v10, v8, v7

    mul-double/2addr v0, v10

    goto :goto_1

    .line 591
    :cond_3
    iget v10, p0, Lcom/samsung/audio/SmpsManager;->mOutType:I

    if-ne v10, v8, :cond_4

    iget-object v8, p0, Lcom/samsung/audio/SmpsManager;->mFastTrackVolTableEAR:[D

    if-eqz v8, :cond_4

    .line 592
    iget-object v8, p0, Lcom/samsung/audio/SmpsManager;->mFastTrackVolTableEAR:[D

    aget-wide v10, v8, v7

    mul-double/2addr v0, v10

    .line 598
    .end local v7    # "currentVolume":I
    :cond_4
    :goto_1
    invoke-direct {p0}, Lcom/samsung/audio/SmpsManager;->isSmpsAvailable()Z

    move-result v7

    if-eqz v7, :cond_5

    if-ne v6, v9, :cond_5

    .line 599
    iget-object v7, p0, Lcom/samsung/audio/SmpsManager;->mSmpsFT:Lcom/samsung/audio/Smps;

    invoke-virtual {v7, v0, v1}, Lcom/samsung/audio/Smps;->set_volume(D)I

    .line 601
    :cond_5
    return-void
.end method


# virtual methods
.method public declared-synchronized addSoundSource(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 6
    .param p1, "attackfilepath"    # Ljava/lang/String;
    .param p2, "dragfilepath"    # Ljava/lang/String;
    .param p3, "releasefilepath"    # Ljava/lang/String;

    monitor-enter p0

    .line 317
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/audio/SmpsManager;->isSmpsAvailable()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/samsung/audio/SmpsManager;->mIsRunning:Z

    if-eqz v0, :cond_4

    .line 318
    const-string v0, "NONE"

    .local v0, "stra":Ljava/lang/String;
    const-string v2, "NONE"

    .local v2, "strd":Ljava/lang/String;
    const-string v3, "NONE"

    .line 319
    .local v3, "strr":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 320
    invoke-direct {p0, p1}, Lcom/samsung/audio/SmpsManager;->cvrtPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    .line 323
    .end local p0    # "this":Lcom/samsung/audio/SmpsManager;
    :cond_0
    if-eqz p2, :cond_1

    invoke-direct {p0, p2}, Lcom/samsung/audio/SmpsManager;->isExist(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 324
    invoke-direct {p0, p2}, Lcom/samsung/audio/SmpsManager;->cvrtPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    .line 327
    :cond_1
    if-eqz p3, :cond_2

    .line 328
    invoke-direct {p0, p3}, Lcom/samsung/audio/SmpsManager;->cvrtPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 331
    :cond_2
    iget-object v4, p0, Lcom/samsung/audio/SmpsManager;->mSmpsFT:Lcom/samsung/audio/Smps;

    invoke-virtual {v4, v0, v2, v3}, Lcom/samsung/audio/Smps;->reg_src_byfiles(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 332
    .local v4, "ret":I
    const/4 v5, -0x3

    if-eq v4, v5, :cond_3

    .line 333
    monitor-exit p0

    return v4

    .line 335
    .end local v0    # "stra":Ljava/lang/String;
    .end local v2    # "strd":Ljava/lang/String;
    .end local v3    # "strr":Ljava/lang/String;
    .end local v4    # "ret":I
    .restart local p0    # "this":Lcom/samsung/audio/SmpsManager;
    :cond_3
    nop

    .line 338
    monitor-exit p0

    return v1

    .line 336
    .end local p0    # "this":Lcom/samsung/audio/SmpsManager;
    :cond_4
    monitor-exit p0

    return v1

    .line 316
    .end local p1    # "attackfilepath":Ljava/lang/String;
    .end local p2    # "dragfilepath":Ljava/lang/String;
    .end local p3    # "releasefilepath":Ljava/lang/String;
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized generateSound(Landroid/view/MotionEvent;)V
    .locals 14
    .param p1, "event"    # Landroid/view/MotionEvent;

    monitor-enter p0

    .line 371
    if-nez p1, :cond_0

    .line 372
    monitor-exit p0

    return-void

    .line 375
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/audio/SmpsManager;->isSmpsAvailable()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_1

    .line 376
    monitor-exit p0

    return-void

    .line 379
    :cond_1
    const/4 v0, -0x1

    .line 380
    .local v0, "SMPS_MOTION_TYPE":I
    :try_start_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    .line 381
    .local v1, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const v3, 0xff00

    and-int/2addr v2, v3

    shr-int/lit8 v2, v2, 0x8

    .line 382
    .local v2, "pointerIndex":I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    .line 383
    .local v3, "x":F
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    .line 384
    .local v4, "y":F
    const/high16 v12, 0x3f800000    # 1.0f

    .line 385
    .local v12, "p":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 387
    .local v10, "t":J
    packed-switch v1, :pswitch_data_0

    .end local p0    # "this":Lcom/samsung/audio/SmpsManager;
    :pswitch_0
    move-object v5, p0

    goto :goto_0

    .line 389
    .restart local p0    # "this":Lcom/samsung/audio/SmpsManager;
    :pswitch_1
    const/4 v13, 0x1

    .line 390
    .end local v0    # "SMPS_MOTION_TYPE":I
    .local v13, "SMPS_MOTION_TYPE":I
    float-to-double v6, v3

    float-to-double v8, v4

    move-object v5, p0

    :try_start_2
    invoke-direct/range {v5 .. v13}, Lcom/samsung/audio/SmpsManager;->generatePenSound(DDJFI)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 391
    move-object v5, p0

    move v0, v13

    goto :goto_0

    .line 370
    .end local v1    # "action":I
    .end local v2    # "pointerIndex":I
    .end local v3    # "x":F
    .end local v4    # "y":F
    .end local v10    # "t":J
    .end local v12    # "p":F
    .end local v13    # "SMPS_MOTION_TYPE":I
    .end local p0    # "this":Lcom/samsung/audio/SmpsManager;
    .end local p1    # "event":Landroid/view/MotionEvent;
    :catchall_0
    move-exception v0

    move-object p1, v0

    move-object v5, p0

    goto :goto_2

    .line 403
    .restart local v0    # "SMPS_MOTION_TYPE":I
    .restart local v1    # "action":I
    .restart local v2    # "pointerIndex":I
    .restart local v3    # "x":F
    .restart local v4    # "y":F
    .restart local v10    # "t":J
    .restart local v12    # "p":F
    .restart local p1    # "event":Landroid/view/MotionEvent;
    :pswitch_2
    const/4 v13, 0x2

    .line 404
    .end local v0    # "SMPS_MOTION_TYPE":I
    .restart local v13    # "SMPS_MOTION_TYPE":I
    float-to-double v6, v3

    float-to-double v8, v4

    move-object v5, p0

    .restart local p0    # "this":Lcom/samsung/audio/SmpsManager;
    :try_start_3
    invoke-direct/range {v5 .. v13}, Lcom/samsung/audio/SmpsManager;->generatePenSound(DDJFI)V

    .line 405
    move v0, v13

    goto :goto_0

    .line 394
    .end local v13    # "SMPS_MOTION_TYPE":I
    .end local p0    # "this":Lcom/samsung/audio/SmpsManager;
    .restart local v0    # "SMPS_MOTION_TYPE":I
    :pswitch_3
    move-object v5, p0

    invoke-virtual {p0}, Lcom/samsung/audio/SmpsManager;->getActivePen()I

    move-result v6

    iget v7, v5, Lcom/samsung/audio/SmpsManager;->mEraserIdx:I

    if-ne v6, v7, :cond_2

    .line 395
    iget-object v6, v5, Lcom/samsung/audio/SmpsManager;->mSmpsFT:Lcom/samsung/audio/Smps;

    invoke-virtual {v6}, Lcom/samsung/audio/Smps;->stop_fasttrack()V

    .line 396
    iget-object v6, v5, Lcom/samsung/audio/SmpsManager;->mSmpsFT:Lcom/samsung/audio/Smps;

    invoke-virtual {v6}, Lcom/samsung/audio/Smps;->start_fasttrack()V

    .line 398
    :cond_2
    const/4 v13, 0x0

    .line 399
    .end local v0    # "SMPS_MOTION_TYPE":I
    .restart local v13    # "SMPS_MOTION_TYPE":I
    float-to-double v6, v3

    float-to-double v8, v4

    .restart local p0    # "this":Lcom/samsung/audio/SmpsManager;
    invoke-direct/range {v5 .. v13}, Lcom/samsung/audio/SmpsManager;->generatePenSound(DDJFI)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 400
    move v0, v13

    .line 409
    .end local v13    # "SMPS_MOTION_TYPE":I
    .end local p0    # "this":Lcom/samsung/audio/SmpsManager;
    .restart local v0    # "SMPS_MOTION_TYPE":I
    :goto_0
    monitor-exit p0

    return-void

    .line 370
    .end local v0    # "SMPS_MOTION_TYPE":I
    .end local v1    # "action":I
    .end local v2    # "pointerIndex":I
    .end local v3    # "x":F
    .end local v4    # "y":F
    .end local v10    # "t":J
    .end local v12    # "p":F
    .end local p1    # "event":Landroid/view/MotionEvent;
    :catchall_1
    move-exception v0

    move-object v5, p0

    :goto_1
    move-object p1, v0

    :goto_2
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p1

    :catchall_2
    move-exception v0

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public declared-synchronized getActivePen()I
    .locals 1

    monitor-enter p0

    .line 261
    :try_start_0
    iget v0, p0, Lcom/samsung/audio/SmpsManager;->mActivePen:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 261
    .end local p0    # "this":Lcom/samsung/audio/SmpsManager;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getLibraryVersion()Ljava/lang/String;
    .locals 1

    .line 34
    const-string v0, "1.0"

    .line 35
    .local v0, "version":Ljava/lang/String;
    return-object v0
.end method

.method public declared-synchronized getPenIndex(I)I
    .locals 2
    .param p1, "DEFAULT_PEN_TYPE"    # I

    monitor-enter p0

    .line 277
    :try_start_0
    sget-boolean v0, Lcom/samsung/audio/SmpsManager;->isSupport:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 278
    monitor-exit p0

    return v1

    .line 281
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 282
    :try_start_1
    iget v0, p0, Lcom/samsung/audio/SmpsManager;->mPencilIdx:I

    if-eq v0, v1, :cond_4

    .line 283
    iget v0, p0, Lcom/samsung/audio/SmpsManager;->mPencilIdx:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0

    .line 285
    .end local p0    # "this":Lcom/samsung/audio/SmpsManager;
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 286
    :try_start_2
    iget v0, p0, Lcom/samsung/audio/SmpsManager;->mMarkerIdx:I

    if-eq v0, v1, :cond_4

    .line 287
    iget v0, p0, Lcom/samsung/audio/SmpsManager;->mMarkerIdx:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return v0

    .line 289
    :cond_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    .line 290
    :try_start_3
    iget v0, p0, Lcom/samsung/audio/SmpsManager;->mBrushIdx:I

    if-eq v0, v1, :cond_4

    .line 291
    iget v0, p0, Lcom/samsung/audio/SmpsManager;->mBrushIdx:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return v0

    .line 293
    :cond_3
    const/4 v0, 0x4

    if-ne p1, v0, :cond_4

    .line 294
    :try_start_4
    iget v0, p0, Lcom/samsung/audio/SmpsManager;->mEraserIdx:I

    if-eq v0, v1, :cond_4

    .line 295
    iget v0, p0, Lcom/samsung/audio/SmpsManager;->mEraserIdx:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return v0

    .line 298
    :cond_4
    monitor-exit p0

    return v1

    .line 276
    .end local p1    # "DEFAULT_PEN_TYPE":I
    :catchall_0
    move-exception p1

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p1
.end method

.method public declared-synchronized onDestroy()V
    .locals 3

    monitor-enter p0

    .line 171
    :try_start_0
    iget-object v0, p0, Lcom/samsung/audio/SmpsManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/samsung/audio/SmpsManager;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/samsung/audio/SmpsManager;->unregisterReceiver(Landroid/content/Context;)V

    .line 175
    .end local p0    # "this":Lcom/samsung/audio/SmpsManager;
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/audio/SmpsManager;->mIsRunning:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 176
    invoke-direct {p0}, Lcom/samsung/audio/SmpsManager;->closeSmps()V

    .line 177
    iput-boolean v1, p0, Lcom/samsung/audio/SmpsManager;->mIsRunning:Z

    .line 180
    :cond_1
    iget-object v0, p0, Lcom/samsung/audio/SmpsManager;->mSmpsFT:Lcom/samsung/audio/Smps;

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 181
    iput-object v2, p0, Lcom/samsung/audio/SmpsManager;->mSmpsFT:Lcom/samsung/audio/Smps;

    .line 184
    :cond_2
    iput-object v2, p0, Lcom/samsung/audio/SmpsManager;->mAudioManager:Landroid/media/AudioManager;

    .line 185
    iput-boolean v1, p0, Lcom/samsung/audio/SmpsManager;->mIsMuted:Z

    .line 186
    iput-object v2, p0, Lcom/samsung/audio/SmpsManager;->mContext:Landroid/content/Context;

    .line 187
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/audio/SmpsManager;->mActivePen:I

    .line 188
    iput-boolean v1, p0, Lcom/samsung/audio/SmpsManager;->mEnableInSettingMenu:Z

    .line 189
    iput-object v2, p0, Lcom/samsung/audio/SmpsManager;->mReceiver:Lcom/samsung/audio/SmpsManager$SMPSReceiver;

    .line 190
    iput-object v2, p0, Lcom/samsung/audio/SmpsManager;->mFastTrackVolTableSPK:[D

    .line 191
    iput-object v2, p0, Lcom/samsung/audio/SmpsManager;->mFastTrackVolTableEAR:[D

    .line 192
    const-string v0, "SmpsManagerV2(FT)"

    const-string v1, "SmpsManager onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 193
    monitor-exit p0

    return-void

    .line 170
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized setActivePen(I)Z
    .locals 3
    .param p1, "index"    # I

    monitor-enter p0

    .line 350
    :try_start_0
    iput p1, p0, Lcom/samsung/audio/SmpsManager;->mActivePen:I

    .line 351
    invoke-direct {p0}, Lcom/samsung/audio/SmpsManager;->isSmpsAvailable()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-lez p1, :cond_1

    .line 352
    iget-object v0, p0, Lcom/samsung/audio/SmpsManager;->mSmpsFT:Lcom/samsung/audio/Smps;

    invoke-virtual {v0, p1}, Lcom/samsung/audio/Smps;->set_src(I)I

    move-result v0

    const/4 v2, -0x3

    if-eq v0, v2, :cond_0

    .line 353
    invoke-direct {p0}, Lcom/samsung/audio/SmpsManager;->updateVolume()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 354
    monitor-exit p0

    const/4 v0, 0x1

    return v0

    .line 359
    .end local p0    # "this":Lcom/samsung/audio/SmpsManager;
    :cond_0
    monitor-exit p0

    return v1

    .line 357
    :cond_1
    monitor-exit p0

    return v1

    .line 349
    .end local p1    # "index":I
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized setThickness(D)Z
    .locals 2
    .param p1, "value"    # D

    monitor-enter p0

    .line 244
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/audio/SmpsManager;->isSmpsAvailable()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 245
    iget-object v0, p0, Lcom/samsung/audio/SmpsManager;->mSmpsFT:Lcom/samsung/audio/Smps;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/audio/Smps;->set_thickness(D)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 246
    monitor-exit p0

    return v1

    .line 251
    :cond_0
    monitor-exit p0

    const/4 v0, 0x1

    return v0

    .line 249
    .end local p0    # "this":Lcom/samsung/audio/SmpsManager;
    :cond_1
    monitor-exit p0

    return v1

    .line 243
    .end local p1    # "value":D
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
