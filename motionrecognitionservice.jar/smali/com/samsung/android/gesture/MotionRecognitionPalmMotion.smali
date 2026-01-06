.class public Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;
.super Ljava/lang/Object;
.source "MotionRecognitionPalmMotion.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/gesture/MotionRecognitionPalmMotion$PalmInputEventReceiver;,
        Lcom/samsung/android/gesture/MotionRecognitionPalmMotion$PalmInputEventSubDisplayReceiver;,
        Lcom/samsung/android/gesture/MotionRecognitionPalmMotion$DebugCircularArray;,
        Lcom/samsung/android/gesture/MotionRecognitionPalmMotion$DebugInfo;
    }
.end annotation


# static fields
.field private static CONFIG_TARGET_NAME:Ljava/lang/String; = null

.field private static final DEBUG_HISTORY_SIZE:I = 0x32

.field public static final EXTRA_BUILT_IN_DISPLAY:I = 0x1

.field private static final GESTURE_LOGGING_APP_ID:Ljava/lang/String; = "com.android.server.palmMotion"

.field private static final GESTURE_LOGGING_FEATURE:Ljava/lang/String; = "PALM"

.field private static final INTENT_RESPONSE_AXT9INFO:Ljava/lang/String; = "ResponseAxT9Info"

.field private static final PALM_CONFIG_FILE:Ljava/lang/String; = "etc/palm_config.xml"

.field private static final TAG:Ljava/lang/String; = "PalmMotion"

.field private static final VIEW_COVER_CLOSED:I = -0x2


# instance fields
.field private handlerThread:Landroid/os/HandlerThread;

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private final mDebugInfoHistory:Lcom/samsung/android/gesture/MotionRecognitionPalmMotion$DebugCircularArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/gesture/MotionRecognitionPalmMotion$DebugCircularArray<",
            "Lcom/samsung/android/gesture/MotionRecognitionPalmMotion$DebugInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mDisplayId:I

.field public mEventCnt:J

.field private mInputManager:Landroid/hardware/input/InputManager;

.field private mInputMonitor:Landroid/view/InputMonitor;

.field private mInputSubMonitor:Landroid/view/InputMonitor;

.field private mIsShowingSIP:Z

.field private mPalmData:Lcom/samsung/android/gesture/MotionRecognitionPalmData;

.field private mPalmInputEventReceiver:Lcom/samsung/android/gesture/MotionRecognitionPalmMotion$PalmInputEventReceiver;

.field private mPalmInputEventSubReceiver:Lcom/samsung/android/gesture/MotionRecognitionPalmMotion$PalmInputEventSubDisplayReceiver;

.field private mPalmSweep:Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;

.field private mPalmTouch:Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;

.field private mPocketModeEvent:Lcom/samsung/android/gesture/PocketModeEvent;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private final mSettingsObserver:Landroid/database/ContentObserver;

.field private mSubDisplayPalmTouch:Lcom/samsung/android/gesture/MotionRecognitionSubDisplayPalmTouch;

.field private mSupportTFLitePalmTouch:Z

.field private mainPalmList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/gesture/MotionRecognitionPalmFunction;",
            ">;"
        }
    .end annotation
.end field

.field private subDisplayUsable:Z

.field private subPalmList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/gesture/MotionRecognitionPalmFunction;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetmIsShowingSIP(Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mIsShowingSIP:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmPocketModeEvent(Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;)Lcom/samsung/android/gesture/PocketModeEvent;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mPocketModeEvent:Lcom/samsung/android/gesture/PocketModeEvent;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSettingsObserver(Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;)Landroid/database/ContentObserver;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mSettingsObserver:Landroid/database/ContentObserver;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmIsShowingSIP(Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mIsShowingSIP:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mCheckPalmForDebugInfo(Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;Landroid/view/MotionEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->CheckPalmForDebugInfo(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mconvertTimeToStr(Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;J)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->convertTimeToStr(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$monRecognition(Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;Landroid/view/MotionEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->onRecognition(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monRecognitionForSubDisplay(Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;Landroid/view/MotionEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->onRecognitionForSubDisplay(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 88
    const-string v0, "default"

    sput-object v0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->CONFIG_TARGET_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mPalmInputEventReceiver:Lcom/samsung/android/gesture/MotionRecognitionPalmMotion$PalmInputEventReceiver;

    .line 74
    iput-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mInputManager:Landroid/hardware/input/InputManager;

    .line 75
    iput-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mInputMonitor:Landroid/view/InputMonitor;

    .line 77
    iput-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mInputSubMonitor:Landroid/view/InputMonitor;

    .line 78
    iput-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mPalmInputEventSubReceiver:Lcom/samsung/android/gesture/MotionRecognitionPalmMotion$PalmInputEventSubDisplayReceiver;

    .line 91
    iput-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mPalmData:Lcom/samsung/android/gesture/MotionRecognitionPalmData;

    .line 92
    iput-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mPalmSweep:Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;

    .line 93
    iput-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mPalmTouch:Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;

    .line 94
    iput-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mSubDisplayPalmTouch:Lcom/samsung/android/gesture/MotionRecognitionSubDisplayPalmTouch;

    .line 96
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mIsShowingSIP:Z

    .line 98
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mEventCnt:J

    .line 101
    new-instance v2, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion$DebugCircularArray;

    const/16 v3, 0x32

    invoke-direct {v2, v3}, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion$DebugCircularArray;-><init>(I)V

    iput-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mDebugInfoHistory:Lcom/samsung/android/gesture/MotionRecognitionPalmMotion$DebugCircularArray;

    .line 105
    iput-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mPocketModeEvent:Lcom/samsung/android/gesture/PocketModeEvent;

    .line 107
    iput-boolean v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->subDisplayUsable:Z

    .line 108
    iput-boolean v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mSupportTFLitePalmTouch:Z

    .line 110
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mainPalmList:Ljava/util/ArrayList;

    .line 111
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->subPalmList:Ljava/util/ArrayList;

    .line 113
    iput-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->handlerThread:Landroid/os/HandlerThread;

    .line 364
    new-instance v0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion$1;-><init>(Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;)V

    iput-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 394
    new-instance v0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion$2;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v2}, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion$2;-><init>(Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mSettingsObserver:Landroid/database/ContentObserver;

    .line 121
    iput-object p1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mContext:Landroid/content/Context;

    .line 122
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mContentResolver:Landroid/content/ContentResolver;

    .line 124
    iput-boolean v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->subDisplayUsable:Z

    .line 125
    iput v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mDisplayId:I

    .line 126
    const-string v0, "PalmMotion"

    invoke-static {v0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    return-void
.end method

.method private CheckPalmForDebugInfo(Landroid/view/MotionEvent;)V
    .locals 10
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 640
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mPalmSweep:Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;

    if-nez v0, :cond_0

    .line 641
    return-void

    .line 646
    :cond_0
    const/4 v0, 0x0

    .line 647
    .local v0, "sumMajor":F
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v3

    .line 648
    .local v3, "toolType":I
    const/4 v2, 0x0

    .line 651
    .local v2, "palmFlag":Z
    const/4 v4, 0x0

    move v9, v4

    move v4, v0

    move v0, v9

    .local v0, "i":I
    .local v4, "sumMajor":F
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v5

    if-ge v0, v5, :cond_2

    .line 652
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPalm(I)F

    move-result v5

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v5, v5, v6

    if-nez v5, :cond_1

    .line 653
    const/4 v2, 0x1

    .line 654
    move v5, v2

    goto :goto_1

    .line 656
    :cond_1
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getTouchMajor(I)F

    move-result v5

    add-float/2addr v4, v5

    .line 651
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v5, v2

    .line 658
    .end local v0    # "i":I
    .end local v2    # "palmFlag":Z
    .local v5, "palmFlag":Z
    :goto_1
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    .line 659
    .local v6, "startX":F
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    .line 660
    .local v7, "startY":F
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mPalmSweep:Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->getThresholdMajorSweep()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    cmpl-float v0, v4, v0

    if-gez v0, :cond_3

    if-eqz v5, :cond_4

    .line 661
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[PALM] SIP mode is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mIsShowingSIP:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", toolType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sumMajor:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Palmflag:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sX:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sY:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Action:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 663
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 661
    const-string v1, "PalmMotion"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_4

    .line 667
    new-instance v2, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion$DebugInfo;

    const/4 v0, 0x0

    invoke-direct {v2, p0, v0}, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion$DebugInfo;-><init>(Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;Lcom/samsung/android/gesture/MotionRecognitionPalmMotion-IA;)V

    .line 668
    .local v2, "info":Lcom/samsung/android/gesture/MotionRecognitionPalmMotion$DebugInfo;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion$DebugInfo;->setTime(J)V

    .line 669
    iget-boolean v8, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mIsShowingSIP:Z

    invoke-virtual/range {v2 .. v8}, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion$DebugInfo;->setDebugInfo(IFZFFZ)V

    .line 670
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mDebugInfoHistory:Lcom/samsung/android/gesture/MotionRecognitionPalmMotion$DebugCircularArray;

    invoke-virtual {v0, v2}, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion$DebugCircularArray;->addLast(Ljava/lang/Object;)V

    .line 673
    .end local v2    # "info":Lcom/samsung/android/gesture/MotionRecognitionPalmMotion$DebugInfo;
    :cond_4
    return-void
.end method

.method private convertTimeToStr(J)Ljava/lang/String;
    .locals 5
    .param p1, "time"    # J

    .line 679
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 680
    const-string v0, ""

    return-object v0

    .line 682
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 683
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 685
    .local v1, "today":Ljava/util/Calendar;
    if-eqz v1, :cond_1

    .line 686
    invoke-virtual {v1, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 687
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 688
    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/2addr v3, v2

    .line 689
    .local v3, "month":I
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 690
    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 691
    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ":"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 692
    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 693
    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 694
    const/16 v2, 0xe

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 696
    .end local v3    # "month":I
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static insertLog(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "extra"    # Ljava/lang/String;

    .line 540
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TRUE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 541
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 542
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v1, "app_id"

    const-string v2, "com.android.server.palmMotion"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    const-string v1, "feature"

    const-string v2, "PALM"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    if-eqz p1, :cond_0

    .line 545
    const-string v1, "extra"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 548
    .local v1, "broadcastIntent":Landroid/content/Intent;
    const-string v2, "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 549
    const-string v2, "data"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 550
    const-string v2, "com.samsung.android.providers.context"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 551
    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 553
    .end local v0    # "cv":Landroid/content/ContentValues;
    .end local v1    # "broadcastIntent":Landroid/content/Intent;
    :cond_1
    return-void
.end method

.method private onRecognition(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 248
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPalm()F

    move-result v0

    const/high16 v1, -0x40000000    # -2.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    return-void

    .line 250
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mPalmData:Lcom/samsung/android/gesture/MotionRecognitionPalmData;

    if-nez v0, :cond_1

    .line 251
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[PALM] Warning! palmData is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mPalmData:Lcom/samsung/android/gesture/MotionRecognitionPalmData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PalmMotion"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    return-void

    .line 255
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mPalmData:Lcom/samsung/android/gesture/MotionRecognitionPalmData;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->updateAction(I)V

    .line 256
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mPalmData:Lcom/samsung/android/gesture/MotionRecognitionPalmData;

    invoke-virtual {v0, p1}, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->setMotionEvent(Landroid/view/MotionEvent;)V

    .line 258
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mainPalmList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/gesture/MotionRecognitionPalmFunction;

    .line 259
    .local v1, "palm":Lcom/samsung/android/gesture/MotionRecognitionPalmFunction;
    invoke-virtual {v1}, Lcom/samsung/android/gesture/MotionRecognitionPalmFunction;->startPalm()V

    .line 260
    .end local v1    # "palm":Lcom/samsung/android/gesture/MotionRecognitionPalmFunction;
    goto :goto_0

    .line 261
    :cond_2
    return-void
.end method

.method private onRecognitionForSubDisplay(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 265
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPalm()F

    move-result v0

    const/high16 v1, -0x40000000    # -2.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    return-void

    .line 267
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mPalmData:Lcom/samsung/android/gesture/MotionRecognitionPalmData;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mSubDisplayPalmTouch:Lcom/samsung/android/gesture/MotionRecognitionSubDisplayPalmTouch;

    if-nez v0, :cond_1

    goto :goto_1

    .line 273
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mPalmData:Lcom/samsung/android/gesture/MotionRecognitionPalmData;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->updateAction(I)V

    .line 274
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mPalmData:Lcom/samsung/android/gesture/MotionRecognitionPalmData;

    invoke-virtual {v0, p1}, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->setMotionEvent(Landroid/view/MotionEvent;)V

    .line 276
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->subPalmList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/gesture/MotionRecognitionPalmFunction;

    .line 277
    .local v1, "subPalm":Lcom/samsung/android/gesture/MotionRecognitionPalmFunction;
    invoke-virtual {v1}, Lcom/samsung/android/gesture/MotionRecognitionPalmFunction;->startPalm()V

    .line 278
    .end local v1    # "subPalm":Lcom/samsung/android/gesture/MotionRecognitionPalmFunction;
    goto :goto_0

    .line 279
    :cond_2
    return-void

    .line 268
    :cond_3
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[PALM] Warning! palmData is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mPalmData:Lcom/samsung/android/gesture/MotionRecognitionPalmData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", subPalmTouch is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mSubDisplayPalmTouch:Lcom/samsung/android/gesture/MotionRecognitionSubDisplayPalmTouch;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PalmMotion"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    return-void
.end method

.method private readPalmConfig()V
    .locals 10

    .line 422
    const-string v0, "Exception while close configuration file."

    const-string v1, "PalmMotion"

    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mPalmTouch:Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mPalmSweep:Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;

    if-nez v2, :cond_0

    goto/16 :goto_8

    .line 427
    :cond_0
    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v3

    const-string v4, "etc/palm_config.xml"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 428
    .local v2, "configFile":Ljava/io/File;
    const/4 v3, 0x0

    .line 431
    .local v3, "configReader":Ljava/io/FileReader;
    :try_start_0
    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v4

    .line 434
    goto :goto_0

    .line 432
    :catch_0
    move-exception v4

    .line 433
    .local v4, "fnfe":Ljava/io/FileNotFoundException;
    const-string v5, "[PALM] USE DEFAULT CONFIGURATION."

    invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    .end local v4    # "fnfe":Ljava/io/FileNotFoundException;
    :goto_0
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    .line 438
    .local v4, "configParser":Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v4, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 439
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v5

    .line 441
    .local v5, "type":I
    :goto_1
    const/4 v6, 0x1

    if-eq v5, v6, :cond_9

    .line 442
    const/4 v6, 0x2

    if-ne v5, v6, :cond_8

    .line 443
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "palmconfigs"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 447
    const-string v6, "deviceName"

    const/4 v7, 0x0

    invoke-interface {v4, v7, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 448
    .local v6, "tmpStr":Ljava/lang/String;
    if-eqz v6, :cond_1

    sput-object v6, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->CONFIG_TARGET_NAME:Ljava/lang/String;

    .line 450
    :cond_1
    const-string v8, "thresholdPalmCount"

    invoke-interface {v4, v7, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 451
    .end local v6    # "tmpStr":Ljava/lang/String;
    .local v8, "tmpStr":Ljava/lang/String;
    if-eqz v8, :cond_2

    iget-object v6, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mPalmTouch:Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v6, v9}, Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;->setThresholdPalmCount(I)V

    .line 453
    :cond_2
    const-string v6, "thresholdMajorTouch"

    invoke-interface {v4, v7, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 454
    .end local v8    # "tmpStr":Ljava/lang/String;
    .restart local v6    # "tmpStr":Ljava/lang/String;
    if-eqz v6, :cond_3

    iget-object v8, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mPalmTouch:Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v9

    invoke-virtual {v8, v9}, Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;->setThresholdMajorTouch(F)V

    .line 456
    :cond_3
    const-string v8, "thresholdMajorSweepPortrait"

    invoke-interface {v4, v7, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 457
    .end local v6    # "tmpStr":Ljava/lang/String;
    .restart local v8    # "tmpStr":Ljava/lang/String;
    if-eqz v8, :cond_4

    .line 458
    iget-object v6, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mPalmSweep:Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;

    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v9

    invoke-virtual {v6, v9}, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->setThresholdMajorSweepPortrait(F)V

    .line 460
    :cond_4
    const-string v6, "thresholdMajorSweepLandscape"

    invoke-interface {v4, v7, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 461
    .end local v8    # "tmpStr":Ljava/lang/String;
    .restart local v6    # "tmpStr":Ljava/lang/String;
    if-eqz v6, :cond_5

    .line 462
    iget-object v8, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mPalmSweep:Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v9

    invoke-virtual {v8, v9}, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->setThresholdMajorSweepLandscape(F)V

    .line 464
    :cond_5
    const-string v8, "thresholdEccenSweepPortrait"

    invoke-interface {v4, v7, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 465
    .end local v6    # "tmpStr":Ljava/lang/String;
    .restart local v8    # "tmpStr":Ljava/lang/String;
    if-eqz v8, :cond_6

    .line 466
    iget-object v6, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mPalmSweep:Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;

    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v9

    invoke-virtual {v6, v9}, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->setThresholdEccenSweepPortrait(F)V

    .line 468
    :cond_6
    const-string v6, "thresholdEccenSweepLandscape"

    invoke-interface {v4, v7, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 469
    .end local v8    # "tmpStr":Ljava/lang/String;
    .restart local v6    # "tmpStr":Ljava/lang/String;
    if-eqz v6, :cond_7

    .line 470
    iget-object v8, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mPalmSweep:Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v9

    invoke-virtual {v8, v9}, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->setThresholdEccenSweepLandscape(F)V

    .line 472
    :cond_7
    const-string v8, "ignoreCheckMajorSweepEntry"

    invoke-interface {v4, v7, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 473
    .end local v6    # "tmpStr":Ljava/lang/String;
    .local v7, "tmpStr":Ljava/lang/String;
    if-eqz v7, :cond_8

    .line 474
    iget-object v6, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mPalmSweep:Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;

    invoke-static {v7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v8

    invoke-virtual {v6, v8}, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->setIgnoreCheckMajorSweepEntry(Z)V

    .line 476
    .end local v7    # "tmpStr":Ljava/lang/String;
    :cond_8
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v5, v6

    goto/16 :goto_1

    .line 484
    .end local v5    # "type":I
    :cond_9
    if-eqz v3, :cond_a

    .line 485
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 487
    :catch_1
    move-exception v5

    .line 488
    .local v5, "ioe":Ljava/io/IOException;
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    .end local v5    # "ioe":Ljava/io/IOException;
    goto :goto_4

    .line 489
    :cond_a
    :goto_2
    goto :goto_4

    .line 483
    .end local v4    # "configParser":Lorg/xmlpull/v1/XmlPullParser;
    :catchall_0
    move-exception v4

    goto/16 :goto_5

    .line 480
    :catch_2
    move-exception v4

    .line 481
    .local v4, "ioe":Ljava/io/IOException;
    :try_start_3
    const-string v5, "[PALM] IOException on readingConfig."

    invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 484
    .end local v4    # "ioe":Ljava/io/IOException;
    if-eqz v3, :cond_b

    .line 485
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_3

    .line 478
    :catch_3
    move-exception v4

    .line 479
    .local v4, "xppe":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_5
    const-string v5, "[PALM] XmlPullParserException on readingConfig."

    invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 484
    .end local v4    # "xppe":Lorg/xmlpull/v1/XmlPullParserException;
    if-eqz v3, :cond_b

    .line 485
    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_3

    .line 487
    :catch_4
    move-exception v4

    .line 488
    .local v4, "ioe":Ljava/io/IOException;
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    .end local v4    # "ioe":Ljava/io/IOException;
    goto :goto_4

    .line 489
    :cond_b
    :goto_3
    nop

    .line 492
    :goto_4
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mPalmSweep:Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;

    iget-object v4, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mPalmSweep:Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;

    invoke-virtual {v4}, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->getThresholdMajorSweepPortrait()F

    move-result v4

    invoke-virtual {v0, v4}, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->setThresholdMajorSweep(F)V

    .line 493
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mPalmSweep:Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;

    iget-object v4, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mPalmSweep:Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;

    invoke-virtual {v4}, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->getThresholdEccenSweepPortrait()F

    move-result v4

    invoke-virtual {v0, v4}, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->setThresholdEccenSweep(F)V

    .line 495
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[PALM] CONFIG DEVICE_NAME_IN_FILE             : "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v4, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->CONFIG_TARGET_NAME:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[PALM] CONFIG THRESHOLD_PALM_COUNT            : "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mPalmTouch:Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;

    invoke-virtual {v4}, Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;->getThresholdPalmCount()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[PALM] CONFIG THRESHOLD_MAJOR_TOUCH           : "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mPalmTouch:Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;

    invoke-virtual {v4}, Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;->getThresholdMajorTouch()F

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[PALM] CONFIG THRESHOLD_MAJOR_SWEEP           : "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mPalmSweep:Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;

    invoke-virtual {v4}, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->getThresholdMajorSweep()F

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[PALM] CONFIG THRESHOLD_ECCEN_SWEEP           : "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mPalmSweep:Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;

    invoke-virtual {v4}, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->getThresholdEccenSweep()F

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[PALM] CONFIG THRESHOLD_MAJOR_SWEEP_PORTRAIT  : "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mPalmSweep:Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;

    invoke-virtual {v4}, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->getThresholdMajorSweepPortrait()F

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[PALM] CONFIG THRESHOLD_MAJOR_SWEEP_LANDSCAPE : "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mPalmSweep:Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;

    invoke-virtual {v4}, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->getThresholdMajorSweepLandscape()F

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[PALM] CONFIG THRESHOLD_ECCEN_SWEEP_PORTRAIT  : "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mPalmSweep:Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;

    invoke-virtual {v4}, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->getThresholdEccenSweepPortrait()F

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[PALM] CONFIG THRESHOLD_ECCEN_SWEEP_LANDSCAPE : "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mPalmSweep:Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;

    invoke-virtual {v4}, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->getThresholdEccenSweepLandscape()F

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[PALM] CONFIG IGNORE_CHECK_MAJOR_SWEEP_ENTRY  : "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mPalmSweep:Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;

    invoke-virtual {v4}, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->isIgnoreCheckMajorSweepEntry()Z

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    return-void

    .line 484
    :goto_5
    if-eqz v3, :cond_c

    .line 485
    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_6

    .line 487
    :catch_5
    move-exception v5

    .line 488
    .restart local v5    # "ioe":Ljava/io/IOException;
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 489
    .end local v5    # "ioe":Ljava/io/IOException;
    :cond_c
    :goto_6
    nop

    .line 490
    :goto_7
    throw v4

    .line 423
    .end local v2    # "configFile":Ljava/io/File;
    .end local v3    # "configReader":Ljava/io/FileReader;
    :cond_d
    :goto_8
    return-void
.end method

.method private setContentObserver()V
    .locals 5

    .line 378
    const-string v0, "PalmMotion"

    const-string v1, "[PALM] setContentObserver"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "motion_engine"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mSettingsObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 382
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "surface_palm_touch"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 384
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "palm_touch_to_sleep"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 387
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "surface_palm_swipe"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 390
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "mobile_keyboard"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 392
    return-void
.end method

.method private setSubDisplayUsable(Landroid/os/Looper;)V
    .locals 0
    .param p1, "looper"    # Landroid/os/Looper;

    .line 227
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 561
    const-string v0, " ---------------------------------------------- "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 562
    const-string v0, " : PalmMotion Config"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 565
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "     CONFIG_TARGET_NAME              = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->CONFIG_TARGET_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 566
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mainPalmList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/gesture/MotionRecognitionPalmFunction;

    .line 567
    .local v1, "mainPalm":Lcom/samsung/android/gesture/MotionRecognitionPalmFunction;
    invoke-virtual {v1, p2}, Lcom/samsung/android/gesture/MotionRecognitionPalmFunction;->palmDump(Ljava/io/PrintWriter;)V

    .line 568
    .end local v1    # "mainPalm":Lcom/samsung/android/gesture/MotionRecognitionPalmFunction;
    goto :goto_0

    .line 569
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "     MAIN_PALM_LIST SIZE             = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mainPalmList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 570
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "     SUB_PALM_LIST SIZE              = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->subPalmList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 571
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "     SUB_DISPLAY_USABLE              = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->subDisplayUsable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 572
    const-string v0, "     SUPPORT_FOLDABLE_TYPE_FLIP      = false"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 573
    const-string v0, "     SUPPORT_PALM_SCREEN_OFF         = false"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 574
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "     SUPPORT_TFLITE_PALM_TOUCH       = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mSupportTFLitePalmTouch:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 575
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "     THREAD_NAME_ID                  = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getThreadId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 577
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mDebugInfoHistory:Lcom/samsung/android/gesture/MotionRecognitionPalmMotion$DebugCircularArray;

    invoke-virtual {v1}, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion$DebugCircularArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 578
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mDebugInfoHistory:Lcom/samsung/android/gesture/MotionRecognitionPalmMotion$DebugCircularArray;

    invoke-virtual {v1, v0}, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion$DebugCircularArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion$DebugInfo;

    .line 579
    .local v1, "tmp":Lcom/samsung/android/gesture/MotionRecognitionPalmMotion$DebugInfo;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "     Time: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion$DebugInfo;->mTimeStr:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", ToolType:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion$DebugInfo;->mToolType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", SIP mode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, v1, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion$DebugInfo;->mSipMode:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", sumMajor:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion$DebugInfo;->mSumMajor:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Palmflag:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, v1, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion$DebugInfo;->mPalmFlag:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", X:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion$DebugInfo;->mX:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Y:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion$DebugInfo;->mY:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 577
    .end local v1    # "tmp":Lcom/samsung/android/gesture/MotionRecognitionPalmMotion$DebugInfo;
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 586
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public enablePalmLogging()V
    .locals 3

    .line 515
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mPalmSweep:Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;

    if-nez v0, :cond_0

    .line 516
    return-void

    .line 519
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PALM_PASS:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mPalmSweep:Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;

    invoke-virtual {v1}, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->getPassCnt()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " PALM_AREA:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mPalmSweep:Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;

    invoke-virtual {v1}, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->getFailCntArea()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " PALM_DIST:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mPalmSweep:Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;

    invoke-virtual {v1}, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->getFailCntDist()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " PALM_ECC:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mPalmSweep:Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;

    .line 520
    invoke-virtual {v1}, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->getFailCntEccen()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " PALM_REVERSE:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mPalmSweep:Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;

    invoke-virtual {v1}, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->getFailCntReverse()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " PALM_TIME:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mPalmSweep:Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;

    .line 521
    invoke-virtual {v1}, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->getFailCntTime()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " PALM_VAR:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mPalmSweep:Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;

    invoke-virtual {v1}, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->getFailCntVar()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 523
    .local v0, "result":Ljava/lang/String;
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->insertLog(Landroid/content/Context;Ljava/lang/String;)V

    .line 525
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mPalmSweep:Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->setPassCnt(I)V

    .line 526
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mPalmSweep:Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;

    invoke-virtual {v1, v2}, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->setFailCntArea(I)V

    .line 527
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mPalmSweep:Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;

    invoke-virtual {v1, v2}, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->setFailCntDist(I)V

    .line 528
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mPalmSweep:Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;

    invoke-virtual {v1, v2}, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->setFailCntEccen(I)V

    .line 529
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mPalmSweep:Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;

    invoke-virtual {v1, v2}, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->setFailCntReverse(I)V

    .line 530
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mPalmSweep:Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;

    invoke-virtual {v1, v2}, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->setFailCntTime(I)V

    .line 531
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mPalmSweep:Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;

    invoke-virtual {v1, v2}, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->setFailCntVar(I)V

    .line 532
    return-void
.end method

.method public enablePalmMotion()V
    .locals 9

    .line 159
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "PalmMotionHandlerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->handlerThread:Landroid/os/HandlerThread;

    .line 160
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 163
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 166
    .local v0, "looper":Landroid/os/Looper;
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mContext:Landroid/content/Context;

    const-string v2, "input"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/input/InputManager;

    iput-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mInputManager:Landroid/hardware/input/InputManager;

    .line 167
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mInputManager:Landroid/hardware/input/InputManager;

    iget v2, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mDisplayId:I

    const-string v3, "PalmMotion"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v2, v4}, Landroid/hardware/input/InputManager;->monitorGestureInput(Ljava/lang/String;II)Landroid/view/InputMonitor;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mInputMonitor:Landroid/view/InputMonitor;

    .line 168
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mInputMonitor:Landroid/view/InputMonitor;

    if-nez v1, :cond_0

    .line 169
    const-string v1, "[PALM] mInputMonitor is null"

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    return-void

    .line 173
    :cond_0
    new-instance v1, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion$PalmInputEventReceiver;

    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mInputMonitor:Landroid/view/InputMonitor;

    invoke-virtual {v2}, Landroid/view/InputMonitor;->getInputChannel()Landroid/view/InputChannel;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0}, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion$PalmInputEventReceiver;-><init>(Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;Landroid/view/InputChannel;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mPalmInputEventReceiver:Lcom/samsung/android/gesture/MotionRecognitionPalmMotion$PalmInputEventReceiver;

    .line 174
    const-string v1, "default"

    const-string v2, "palmMute"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mSupportTFLitePalmTouch:Z

    .line 179
    new-instance v1, Lcom/samsung/android/gesture/MotionRecognitionPalmData;

    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/samsung/android/gesture/MotionRecognitionPalmData;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mPalmData:Lcom/samsung/android/gesture/MotionRecognitionPalmData;

    .line 180
    iget-boolean v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mSupportTFLitePalmTouch:Z

    if-nez v1, :cond_1

    .line 181
    new-instance v1, Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;

    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mPalmData:Lcom/samsung/android/gesture/MotionRecognitionPalmData;

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;-><init>(Landroid/content/Context;Lcom/samsung/android/gesture/MotionRecognitionPalmData;)V

    iput-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mPalmTouch:Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;

    .line 182
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mainPalmList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mPalmTouch:Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 184
    :cond_1
    new-instance v1, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;

    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mPalmData:Lcom/samsung/android/gesture/MotionRecognitionPalmData;

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;-><init>(Landroid/content/Context;Lcom/samsung/android/gesture/MotionRecognitionPalmData;)V

    iput-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mPalmSweep:Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;

    .line 185
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mPalmSweep:Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;

    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mInputManager:Landroid/hardware/input/InputManager;

    invoke-virtual {v1, v2}, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->setInputManager(Landroid/hardware/input/InputManager;)V

    .line 186
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mainPalmList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mPalmSweep:Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 189
    invoke-direct {p0, v0}, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->setSubDisplayUsable(Landroid/os/Looper;)V

    .line 192
    invoke-direct {p0}, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->setContentObserver()V

    .line 193
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v4}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 196
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    move-object v5, v1

    .line 197
    .local v5, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v5, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 198
    const-string v1, "ResponseAxT9Info"

    invoke-virtual {v5, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 199
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mReceiver:Landroid/content/BroadcastReceiver;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v7, 0x0

    const/4 v8, 0x2

    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v8}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 201
    invoke-direct {p0}, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->readPalmConfig()V

    .line 203
    .end local v5    # "filter":Landroid/content/IntentFilter;
    return-void
.end method

.method public setPocketModeEvent(Lcom/samsung/android/gesture/PocketModeEvent;)V
    .locals 2
    .param p1, "pocketModeEvent"    # Lcom/samsung/android/gesture/PocketModeEvent;

    .line 282
    iput-object p1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mPocketModeEvent:Lcom/samsung/android/gesture/PocketModeEvent;

    .line 283
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mPalmSweep:Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mPalmSweep:Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;

    iput-object p1, v0, Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;->mPocketModeEvent:Lcom/samsung/android/gesture/PocketModeEvent;

    .line 286
    :cond_0
    const-string v0, "PalmMotion"

    const-string v1, "setPocketModeEvent"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    return-void
.end method

.method public declared-synchronized settingOnChanged(Z)V
    .locals 3
    .param p1, "selfChange"    # Z

    monitor-enter p0

    .line 403
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mPalmTouch:Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mPalmSweep:Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mSubDisplayPalmTouch:Lcom/samsung/android/gesture/MotionRecognitionSubDisplayPalmTouch;

    if-nez v0, :cond_0

    .line 404
    const-string v0, "PalmMotion"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[PALM] PalmMotion can not be supported (PalmTouch: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mPalmTouch:Lcom/samsung/android/gesture/MotionRecognitionPalmTouch;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", PalmSweep: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mPalmSweep:Lcom/samsung/android/gesture/MotionRecognitionPalmSweep;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", SubPalmTouch: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mSubDisplayPalmTouch:Lcom/samsung/android/gesture/MotionRecognitionSubDisplayPalmTouch;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 406
    monitor-exit p0

    return-void

    .line 409
    .end local p0    # "this":Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;
    :cond_0
    :try_start_1
    const-string v0, "PalmMotion"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[PALM] MAIN_PALM_LIST SIZE = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mainPalmList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", SUB_PALM_LIST SIZE = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->subPalmList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->mainPalmList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/gesture/MotionRecognitionPalmFunction;

    .line 412
    .local v1, "mainPalm":Lcom/samsung/android/gesture/MotionRecognitionPalmFunction;
    invoke-virtual {v1}, Lcom/samsung/android/gesture/MotionRecognitionPalmFunction;->settingOnChanged()V

    .line 413
    .end local v1    # "mainPalm":Lcom/samsung/android/gesture/MotionRecognitionPalmFunction;
    goto :goto_0

    .line 415
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->subPalmList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/gesture/MotionRecognitionPalmFunction;

    .line 416
    .local v1, "subPalm":Lcom/samsung/android/gesture/MotionRecognitionPalmFunction;
    invoke-virtual {v1}, Lcom/samsung/android/gesture/MotionRecognitionPalmFunction;->settingOnChanged()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 417
    .end local v1    # "subPalm":Lcom/samsung/android/gesture/MotionRecognitionPalmFunction;
    goto :goto_1

    .line 418
    :cond_2
    monitor-exit p0

    return-void

    .line 402
    .end local p1    # "selfChange":Z
    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method
