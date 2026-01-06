.class public abstract Lcom/samsung/android/wfd/ConnectionMode;
.super Ljava/lang/Object;
.source "ConnectionMode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/wfd/ConnectionMode$ModeType;
    }
.end annotation


# static fields
.field static DEBUG:Z = false

.field protected static final DEFAULT_DEVICE_ID:I = 0x0

.field private static final FLAG_EXTERNAL_DESKTOP_WINDOWING:I = 0x20000

.field protected static final HIDDEN_DISPLAY_UPDATE:Ljava/lang/String; = "com.samsung.intent.action.UPDATE_HIDDEN_DISPLAY"

.field protected static final INPUT_GENERIC_SCROLL_HORIZONTAL:I = 0x7

.field protected static final INPUT_GENERIC_SCROLL_VERTICAL:I = 0x6

.field private static final KEY_MAX_EVENTS:I = 0xf

.field private static final PRESENTATION_START_ACTION:Ljava/lang/String; = "com.samsung.intent.action.SEC_PRESENTATION_START"

.field private static final PRESENTATION_STOP_ACTION:Ljava/lang/String; = "com.samsung.intent.action.SEC_PRESENTATION_STOP"

.field private static final TAG:Ljava/lang/String; = "ConnectionMode"

.field private static final UIBC_META_SHIFT_ON:I = 0x800

.field protected static mContext:Landroid/content/Context;

.field protected static mIsPortraitMode:Z


# instance fields
.field protected mAction:I

.field protected mActionIndex:I

.field private mCapsLock:Z

.field private mCurrentTime:J

.field protected mDefaultDisplayID:I

.field private mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field protected mEventFlag:I

.field protected mExternalDisplayHeight:F

.field protected mExternalDisplayID:I

.field protected mExternalDisplayRatio:F

.field protected mExternalDisplayWidth:F

.field private mFoldStateListener:Lcom/samsung/android/view/SemWindowManager$FoldStateListener;

.field protected mHiddenDisplayID:I

.field protected mIsFolded:Z

.field protected mIsSamsungMobile:Z

.field protected mKeyDownTime:J

.field private mKeyInfoTable:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/android/wfd/WFDUibcManager$KeyInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected mKeyInput:Lcom/samsung/android/wfd/WFDUibcManager$KeyInput;

.field private mMetaFlag:I

.field protected mMetaKey:I

.field protected mModeType:Lcom/samsung/android/wfd/ConnectionMode$ModeType;

.field private mNumLock:Z

.field protected mPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

.field protected mPointerProp:[Landroid/view/MotionEvent$PointerProperties;

.field protected mPresentDisplayID:I

.field protected mPresentationObjectCnt:I

.field protected mPrimaryDisplayHeight:F

.field protected mPrimaryDisplayRatio:F

.field protected mPrimaryDisplayWidth:F

.field protected final mReceiver:Landroid/content/BroadcastReceiver;

.field protected mRepeatCount:I

.field protected mRotationInput:Ljava/lang/Integer;

.field protected mRotationStatus:I

.field protected mScrollInput:Lcom/samsung/android/wfd/WFDUibcManager$ScrollInput;

.field protected mScrollTime:J

.field protected mScrollValue:I

.field protected mToolType:I

.field protected mTouchDownTime:J

.field protected mTouchInput:Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;

.field protected mTouchPointerForScroll:Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;

.field protected mTouchPointerTable:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 26
    const-string v0, "user"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/samsung/android/wfd/ConnectionMode;->DEBUG:Z

    .line 65
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/wfd/ConnectionMode;->mIsPortraitMode:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/wfd/ConnectionMode;->mPrimaryDisplayWidth:F

    .line 50
    iput v0, p0, Lcom/samsung/android/wfd/ConnectionMode;->mPrimaryDisplayHeight:F

    .line 51
    iput v0, p0, Lcom/samsung/android/wfd/ConnectionMode;->mPrimaryDisplayRatio:F

    .line 52
    iput v0, p0, Lcom/samsung/android/wfd/ConnectionMode;->mExternalDisplayWidth:F

    .line 53
    iput v0, p0, Lcom/samsung/android/wfd/ConnectionMode;->mExternalDisplayHeight:F

    .line 54
    iput v0, p0, Lcom/samsung/android/wfd/ConnectionMode;->mExternalDisplayRatio:F

    .line 56
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/wfd/ConnectionMode;->mExternalDisplayID:I

    .line 57
    iput v0, p0, Lcom/samsung/android/wfd/ConnectionMode;->mPresentDisplayID:I

    .line 58
    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/wfd/ConnectionMode;->mPresentationObjectCnt:I

    .line 59
    iput v0, p0, Lcom/samsung/android/wfd/ConnectionMode;->mHiddenDisplayID:I

    .line 60
    iput v1, p0, Lcom/samsung/android/wfd/ConnectionMode;->mDefaultDisplayID:I

    .line 61
    iput v1, p0, Lcom/samsung/android/wfd/ConnectionMode;->mRotationStatus:I

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/wfd/ConnectionMode;->mTouchInput:Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;

    .line 64
    iput-boolean v1, p0, Lcom/samsung/android/wfd/ConnectionMode;->mIsSamsungMobile:Z

    .line 67
    iput-object v0, p0, Lcom/samsung/android/wfd/ConnectionMode;->mKeyInput:Lcom/samsung/android/wfd/WFDUibcManager$KeyInput;

    .line 68
    iput v1, p0, Lcom/samsung/android/wfd/ConnectionMode;->mMetaKey:I

    .line 70
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/samsung/android/wfd/ConnectionMode;->mKeyDownTime:J

    .line 71
    iput v1, p0, Lcom/samsung/android/wfd/ConnectionMode;->mRepeatCount:I

    .line 72
    const/high16 v4, 0x8000000

    iput v4, p0, Lcom/samsung/android/wfd/ConnectionMode;->mEventFlag:I

    .line 74
    new-instance v4, Ljava/util/TreeMap;

    invoke-direct {v4}, Ljava/util/TreeMap;-><init>()V

    iput-object v4, p0, Lcom/samsung/android/wfd/ConnectionMode;->mTouchPointerTable:Ljava/util/TreeMap;

    .line 76
    iput-object v0, p0, Lcom/samsung/android/wfd/ConnectionMode;->mPointerProp:[Landroid/view/MotionEvent$PointerProperties;

    .line 77
    iput-object v0, p0, Lcom/samsung/android/wfd/ConnectionMode;->mPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    .line 78
    iput v1, p0, Lcom/samsung/android/wfd/ConnectionMode;->mAction:I

    .line 79
    iput v1, p0, Lcom/samsung/android/wfd/ConnectionMode;->mActionIndex:I

    .line 81
    iput-object v0, p0, Lcom/samsung/android/wfd/ConnectionMode;->mScrollInput:Lcom/samsung/android/wfd/WFDUibcManager$ScrollInput;

    .line 82
    iput-wide v2, p0, Lcom/samsung/android/wfd/ConnectionMode;->mScrollTime:J

    .line 83
    iput v1, p0, Lcom/samsung/android/wfd/ConnectionMode;->mScrollValue:I

    .line 85
    iput-object v0, p0, Lcom/samsung/android/wfd/ConnectionMode;->mRotationInput:Ljava/lang/Integer;

    .line 94
    iput-boolean v1, p0, Lcom/samsung/android/wfd/ConnectionMode;->mIsFolded:Z

    .line 96
    new-instance v0, Ljava/util/HashMap;

    const/16 v4, 0xf

    invoke-direct {v0, v4}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/wfd/ConnectionMode;->mKeyInfoTable:Ljava/util/HashMap;

    .line 98
    iput-boolean v1, p0, Lcom/samsung/android/wfd/ConnectionMode;->mCapsLock:Z

    .line 99
    iput-boolean v1, p0, Lcom/samsung/android/wfd/ConnectionMode;->mNumLock:Z

    .line 101
    iput v1, p0, Lcom/samsung/android/wfd/ConnectionMode;->mMetaFlag:I

    .line 102
    iput-wide v2, p0, Lcom/samsung/android/wfd/ConnectionMode;->mCurrentTime:J

    .line 199
    new-instance v0, Lcom/samsung/android/wfd/ConnectionMode$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/wfd/ConnectionMode$3;-><init>(Lcom/samsung/android/wfd/ConnectionMode;)V

    iput-object v0, p0, Lcom/samsung/android/wfd/ConnectionMode;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 105
    return-void
.end method

.method private convertShiftKey()V
    .locals 2

    .line 426
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/wfd/ConnectionMode;->mMetaKey:I

    .line 427
    iget-object v0, p0, Lcom/samsung/android/wfd/ConnectionMode;->mKeyInput:Lcom/samsung/android/wfd/WFDUibcManager$KeyInput;

    iget v0, v0, Lcom/samsung/android/wfd/WFDUibcManager$KeyInput;->keyCode:I

    and-int/lit16 v0, v0, 0x800

    if-lez v0, :cond_0

    .line 428
    iget v0, p0, Lcom/samsung/android/wfd/ConnectionMode;->mMetaKey:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/samsung/android/wfd/ConnectionMode;->mMetaKey:I

    .line 429
    iget v0, p0, Lcom/samsung/android/wfd/ConnectionMode;->mMetaKey:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/wfd/ConnectionMode;->mMetaKey:I

    .line 430
    iget-object v0, p0, Lcom/samsung/android/wfd/ConnectionMode;->mKeyInput:Lcom/samsung/android/wfd/WFDUibcManager$KeyInput;

    iget v1, v0, Lcom/samsung/android/wfd/WFDUibcManager$KeyInput;->keyCode:I

    and-int/lit16 v1, v1, -0x801

    iput v1, v0, Lcom/samsung/android/wfd/WFDUibcManager$KeyInput;->keyCode:I

    .line 432
    :cond_0
    return-void
.end method

.method private getMetaFlag(IZ)V
    .locals 9
    .param p1, "keyCode"    # I
    .param p2, "isDown"    # Z

    .line 498
    const/16 v0, 0x77

    const/4 v1, 0x1

    const/16 v2, 0x72

    const/16 v3, 0x71

    const/16 v4, 0x3a

    const/16 v5, 0x39

    const/16 v6, 0x3c

    const/16 v7, 0x3b

    if-eqz p2, :cond_9

    .line 499
    if-eq p1, v7, :cond_0

    if-ne p1, v6, :cond_2

    .line 500
    :cond_0
    iget v8, p0, Lcom/samsung/android/wfd/ConnectionMode;->mMetaFlag:I

    or-int/2addr v1, v8

    iput v1, p0, Lcom/samsung/android/wfd/ConnectionMode;->mMetaFlag:I

    .line 501
    if-ne p1, v7, :cond_1

    .line 502
    iget v1, p0, Lcom/samsung/android/wfd/ConnectionMode;->mMetaFlag:I

    or-int/lit8 v1, v1, 0x40

    iput v1, p0, Lcom/samsung/android/wfd/ConnectionMode;->mMetaFlag:I

    .line 504
    :cond_1
    if-ne p1, v6, :cond_2

    .line 505
    iget v1, p0, Lcom/samsung/android/wfd/ConnectionMode;->mMetaFlag:I

    or-int/lit16 v1, v1, 0x80

    iput v1, p0, Lcom/samsung/android/wfd/ConnectionMode;->mMetaFlag:I

    .line 508
    :cond_2
    if-eq p1, v5, :cond_3

    if-ne p1, v4, :cond_5

    .line 509
    :cond_3
    iget v1, p0, Lcom/samsung/android/wfd/ConnectionMode;->mMetaFlag:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/samsung/android/wfd/ConnectionMode;->mMetaFlag:I

    .line 510
    if-ne p1, v5, :cond_4

    .line 511
    iget v1, p0, Lcom/samsung/android/wfd/ConnectionMode;->mMetaFlag:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/samsung/android/wfd/ConnectionMode;->mMetaFlag:I

    .line 513
    :cond_4
    if-ne p1, v4, :cond_5

    .line 514
    iget v1, p0, Lcom/samsung/android/wfd/ConnectionMode;->mMetaFlag:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p0, Lcom/samsung/android/wfd/ConnectionMode;->mMetaFlag:I

    .line 517
    :cond_5
    if-eq p1, v3, :cond_6

    if-ne p1, v2, :cond_8

    .line 518
    :cond_6
    iget v1, p0, Lcom/samsung/android/wfd/ConnectionMode;->mMetaFlag:I

    or-int/lit16 v1, v1, 0x1000

    iput v1, p0, Lcom/samsung/android/wfd/ConnectionMode;->mMetaFlag:I

    .line 519
    if-ne p1, v3, :cond_7

    .line 520
    iget v1, p0, Lcom/samsung/android/wfd/ConnectionMode;->mMetaFlag:I

    or-int/lit16 v1, v1, 0x2000

    iput v1, p0, Lcom/samsung/android/wfd/ConnectionMode;->mMetaFlag:I

    .line 522
    :cond_7
    if-ne p1, v2, :cond_8

    .line 523
    iget v1, p0, Lcom/samsung/android/wfd/ConnectionMode;->mMetaFlag:I

    or-int/lit16 v1, v1, 0x4000

    iput v1, p0, Lcom/samsung/android/wfd/ConnectionMode;->mMetaFlag:I

    .line 526
    :cond_8
    if-ne p1, v0, :cond_17

    .line 527
    iget v0, p0, Lcom/samsung/android/wfd/ConnectionMode;->mMetaFlag:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/samsung/android/wfd/ConnectionMode;->mMetaFlag:I

    goto/16 :goto_1

    .line 530
    :cond_9
    if-eq p1, v7, :cond_a

    if-ne p1, v6, :cond_c

    .line 531
    :cond_a
    iget v8, p0, Lcom/samsung/android/wfd/ConnectionMode;->mMetaFlag:I

    and-int/lit8 v8, v8, -0x2

    iput v8, p0, Lcom/samsung/android/wfd/ConnectionMode;->mMetaFlag:I

    .line 532
    if-ne p1, v7, :cond_b

    .line 533
    iget v7, p0, Lcom/samsung/android/wfd/ConnectionMode;->mMetaFlag:I

    and-int/lit8 v7, v7, -0x41

    iput v7, p0, Lcom/samsung/android/wfd/ConnectionMode;->mMetaFlag:I

    .line 535
    :cond_b
    if-ne p1, v6, :cond_c

    .line 536
    iget v6, p0, Lcom/samsung/android/wfd/ConnectionMode;->mMetaFlag:I

    and-int/lit16 v6, v6, -0x81

    iput v6, p0, Lcom/samsung/android/wfd/ConnectionMode;->mMetaFlag:I

    .line 539
    :cond_c
    if-eq p1, v5, :cond_d

    if-ne p1, v4, :cond_f

    .line 540
    :cond_d
    iget v6, p0, Lcom/samsung/android/wfd/ConnectionMode;->mMetaFlag:I

    and-int/lit8 v6, v6, -0x3

    iput v6, p0, Lcom/samsung/android/wfd/ConnectionMode;->mMetaFlag:I

    .line 541
    if-ne p1, v5, :cond_e

    .line 542
    iget v5, p0, Lcom/samsung/android/wfd/ConnectionMode;->mMetaFlag:I

    and-int/lit8 v5, v5, -0x11

    iput v5, p0, Lcom/samsung/android/wfd/ConnectionMode;->mMetaFlag:I

    .line 544
    :cond_e
    if-ne p1, v4, :cond_f

    .line 545
    iget v4, p0, Lcom/samsung/android/wfd/ConnectionMode;->mMetaFlag:I

    and-int/lit8 v4, v4, -0x21

    iput v4, p0, Lcom/samsung/android/wfd/ConnectionMode;->mMetaFlag:I

    .line 548
    :cond_f
    if-eq p1, v3, :cond_10

    if-ne p1, v2, :cond_12

    .line 549
    :cond_10
    iget v4, p0, Lcom/samsung/android/wfd/ConnectionMode;->mMetaFlag:I

    and-int/lit16 v4, v4, -0x1001

    iput v4, p0, Lcom/samsung/android/wfd/ConnectionMode;->mMetaFlag:I

    .line 550
    if-ne p1, v3, :cond_11

    .line 551
    iget v3, p0, Lcom/samsung/android/wfd/ConnectionMode;->mMetaFlag:I

    and-int/lit16 v3, v3, -0x2001

    iput v3, p0, Lcom/samsung/android/wfd/ConnectionMode;->mMetaFlag:I

    .line 553
    :cond_11
    if-ne p1, v2, :cond_12

    .line 554
    iget v2, p0, Lcom/samsung/android/wfd/ConnectionMode;->mMetaFlag:I

    and-int/lit16 v2, v2, -0x4001

    iput v2, p0, Lcom/samsung/android/wfd/ConnectionMode;->mMetaFlag:I

    .line 557
    :cond_12
    if-ne p1, v0, :cond_13

    .line 558
    iget v0, p0, Lcom/samsung/android/wfd/ConnectionMode;->mMetaFlag:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/samsung/android/wfd/ConnectionMode;->mMetaFlag:I

    .line 560
    :cond_13
    const/16 v0, 0x73

    const/4 v2, 0x0

    if-ne p1, v0, :cond_15

    .line 561
    iget-boolean v0, p0, Lcom/samsung/android/wfd/ConnectionMode;->mCapsLock:Z

    if-nez v0, :cond_14

    .line 562
    iget v0, p0, Lcom/samsung/android/wfd/ConnectionMode;->mMetaFlag:I

    const/high16 v3, 0x100000

    or-int/2addr v0, v3

    iput v0, p0, Lcom/samsung/android/wfd/ConnectionMode;->mMetaFlag:I

    .line 563
    iput-boolean v1, p0, Lcom/samsung/android/wfd/ConnectionMode;->mCapsLock:Z

    goto :goto_0

    .line 565
    :cond_14
    iget v0, p0, Lcom/samsung/android/wfd/ConnectionMode;->mMetaFlag:I

    const v3, -0x100001

    and-int/2addr v0, v3

    iput v0, p0, Lcom/samsung/android/wfd/ConnectionMode;->mMetaFlag:I

    .line 566
    iput-boolean v2, p0, Lcom/samsung/android/wfd/ConnectionMode;->mCapsLock:Z

    .line 569
    :cond_15
    :goto_0
    const/16 v0, 0x8f

    if-ne p1, v0, :cond_17

    .line 570
    iget-boolean v0, p0, Lcom/samsung/android/wfd/ConnectionMode;->mNumLock:Z

    if-nez v0, :cond_16

    .line 571
    iget v0, p0, Lcom/samsung/android/wfd/ConnectionMode;->mMetaFlag:I

    const/high16 v2, 0x200000

    or-int/2addr v0, v2

    iput v0, p0, Lcom/samsung/android/wfd/ConnectionMode;->mMetaFlag:I

    .line 572
    iput-boolean v1, p0, Lcom/samsung/android/wfd/ConnectionMode;->mNumLock:Z

    goto :goto_1

    .line 574
    :cond_16
    iget v0, p0, Lcom/samsung/android/wfd/ConnectionMode;->mMetaFlag:I

    const v1, -0x200001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/wfd/ConnectionMode;->mMetaFlag:I

    .line 575
    iput-boolean v2, p0, Lcom/samsung/android/wfd/ConnectionMode;->mNumLock:Z

    .line 579
    :cond_17
    :goto_1
    return-void
.end method

.method private isDisplayUpdateRequired()Z
    .locals 4

    .line 338
    iget v0, p0, Lcom/samsung/android/wfd/ConnectionMode;->mExternalDisplayID:I

    const/4 v1, 0x1

    if-gez v0, :cond_0

    .line 339
    return v1

    .line 342
    :cond_0
    iget v0, p0, Lcom/samsung/android/wfd/ConnectionMode;->mPresentationObjectCnt:I

    if-lez v0, :cond_3

    .line 343
    sget-object v0, Lcom/samsung/android/wfd/ConnectionMode;->mContext:Landroid/content/Context;

    const-string v2, "display"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 344
    .local v0, "displayManager":Landroid/hardware/display/DisplayManager;
    sget-boolean v2, Lcom/samsung/android/wfd/ConnectionMode;->DEBUG:Z

    if-eqz v2, :cond_1

    .line 345
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PresentDisplayID : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/wfd/ConnectionMode;->mPresentDisplayID:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", WFDMode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/wfd/ConnectionMode;->mModeType:Lcom/samsung/android/wfd/ConnectionMode$ModeType;

    invoke-interface {v3}, Lcom/samsung/android/wfd/ConnectionMode$ModeType;->getTAG()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", PresentationOwner : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/wfd/ConnectionMode;->mExternalDisplayID:I

    .line 346
    invoke-virtual {v0, v3}, Landroid/hardware/display/DisplayManager;->semGetPresentationOwner(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 345
    const-string v3, "ConnectionMode"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/wfd/ConnectionMode;->mModeType:Lcom/samsung/android/wfd/ConnectionMode$ModeType;

    instance-of v2, v2, Lcom/samsung/android/wfd/WFDMode$WFDPresentation;

    const-string v3, ""

    if-nez v2, :cond_2

    iget v2, p0, Lcom/samsung/android/wfd/ConnectionMode;->mExternalDisplayID:I

    .line 349
    invoke-virtual {v0, v2}, Landroid/hardware/display/DisplayManager;->semGetPresentationOwner(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 350
    return v1

    .line 351
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/wfd/ConnectionMode;->mModeType:Lcom/samsung/android/wfd/ConnectionMode$ModeType;

    instance-of v2, v2, Lcom/samsung/android/wfd/WFDMode$WFDPresentation;

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/samsung/android/wfd/ConnectionMode;->mExternalDisplayID:I

    .line 352
    invoke-virtual {v0, v2}, Landroid/hardware/display/DisplayManager;->semGetPresentationOwner(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 353
    return v1

    .line 356
    .end local v0    # "displayManager":Landroid/hardware/display/DisplayManager;
    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method private isValidScrollAction()Z
    .locals 2

    .line 599
    iget-object v0, p0, Lcom/samsung/android/wfd/ConnectionMode;->mScrollInput:Lcom/samsung/android/wfd/WFDUibcManager$ScrollInput;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/wfd/ConnectionMode;->mScrollInput:Lcom/samsung/android/wfd/WFDUibcManager$ScrollInput;

    iget v0, v0, Lcom/samsung/android/wfd/WFDUibcManager$ScrollInput;->action:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/wfd/ConnectionMode;->mScrollInput:Lcom/samsung/android/wfd/WFDUibcManager$ScrollInput;

    iget v0, v0, Lcom/samsung/android/wfd/WFDUibcManager$ScrollInput;->action:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private removeTouchPointerInActionUp()V
    .locals 3

    .line 397
    iget v0, p0, Lcom/samsung/android/wfd/ConnectionMode;->mAction:I

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/samsung/android/wfd/ConnectionMode;->mAction:I

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x6

    if-ne v0, v1, :cond_2

    .line 399
    :cond_0
    sget-boolean v0, Lcom/samsung/android/wfd/ConnectionMode;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 400
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Remove Pointer, Action : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/wfd/ConnectionMode;->mAction:I

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Index : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/wfd/ConnectionMode;->mPointerProp:[Landroid/view/MotionEvent$PointerProperties;

    iget v2, p0, Lcom/samsung/android/wfd/ConnectionMode;->mActionIndex:I

    aget-object v1, v1, v2

    iget v1, v1, Landroid/view/MotionEvent$PointerProperties;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ConnectionMode"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/wfd/ConnectionMode;->mTouchPointerTable:Ljava/util/TreeMap;

    iget-object v1, p0, Lcom/samsung/android/wfd/ConnectionMode;->mPointerProp:[Landroid/view/MotionEvent$PointerProperties;

    iget v2, p0, Lcom/samsung/android/wfd/ConnectionMode;->mActionIndex:I

    aget-object v1, v1, v2

    iget v1, v1, Landroid/view/MotionEvent$PointerProperties;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    :cond_2
    return-void
.end method

.method static setPortraitMode(Z)V
    .locals 2
    .param p0, "isPortraitMode"    # Z

    .line 253
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setPortraitMode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ConnectionMode"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    sput-boolean p0, Lcom/samsung/android/wfd/ConnectionMode;->mIsPortraitMode:Z

    .line 255
    return-void
.end method

.method private setScrollPointerProp()V
    .locals 3

    .line 604
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/wfd/ConnectionMode;->mScrollTime:J

    .line 605
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/view/MotionEvent$PointerProperties;

    iput-object v0, p0, Lcom/samsung/android/wfd/ConnectionMode;->mPointerProp:[Landroid/view/MotionEvent$PointerProperties;

    .line 606
    iget-object v0, p0, Lcom/samsung/android/wfd/ConnectionMode;->mPointerProp:[Landroid/view/MotionEvent$PointerProperties;

    new-instance v1, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct {v1}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 607
    iget-object v0, p0, Lcom/samsung/android/wfd/ConnectionMode;->mPointerProp:[Landroid/view/MotionEvent$PointerProperties;

    aget-object v0, v0, v2

    iput v2, v0, Landroid/view/MotionEvent$PointerProperties;->id:I

    .line 608
    iget-object v0, p0, Lcom/samsung/android/wfd/ConnectionMode;->mPointerProp:[Landroid/view/MotionEvent$PointerProperties;

    aget-object v0, v0, v2

    const/4 v1, 0x3

    iput v1, v0, Landroid/view/MotionEvent$PointerProperties;->toolType:I

    .line 609
    return-void
.end method

.method private setTouchPointerPropAndCoords()V
    .locals 6

    .line 360
    iget-object v0, p0, Lcom/samsung/android/wfd/ConnectionMode;->mTouchPointerTable:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v0

    new-array v0, v0, [Landroid/view/MotionEvent$PointerProperties;

    iput-object v0, p0, Lcom/samsung/android/wfd/ConnectionMode;->mPointerProp:[Landroid/view/MotionEvent$PointerProperties;

    .line 361
    iget-object v0, p0, Lcom/samsung/android/wfd/ConnectionMode;->mTouchPointerTable:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v0

    new-array v0, v0, [Landroid/view/MotionEvent$PointerCoords;

    iput-object v0, p0, Lcom/samsung/android/wfd/ConnectionMode;->mPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    .line 363
    iget-object v0, p0, Lcom/samsung/android/wfd/ConnectionMode;->mTouchPointerTable:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 364
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 365
    iget-object v2, p0, Lcom/samsung/android/wfd/ConnectionMode;->mPointerProp:[Landroid/view/MotionEvent$PointerProperties;

    new-instance v3, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct {v3}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    aput-object v3, v2, v1

    .line 366
    iget-object v2, p0, Lcom/samsung/android/wfd/ConnectionMode;->mPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    new-instance v3, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v3}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    aput-object v3, v2, v1

    .line 368
    iget-object v2, p0, Lcom/samsung/android/wfd/ConnectionMode;->mPointerProp:[Landroid/view/MotionEvent$PointerProperties;

    aget-object v2, v2, v1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v2, Landroid/view/MotionEvent$PointerProperties;->id:I

    .line 369
    iget-object v2, p0, Lcom/samsung/android/wfd/ConnectionMode;->mPointerProp:[Landroid/view/MotionEvent$PointerProperties;

    aget-object v2, v2, v1

    iget v2, v2, Landroid/view/MotionEvent$PointerProperties;->id:I

    iget v3, p0, Lcom/samsung/android/wfd/ConnectionMode;->mActionIndex:I

    if-ne v2, v3, :cond_0

    .line 370
    iput v1, p0, Lcom/samsung/android/wfd/ConnectionMode;->mActionIndex:I

    .line 373
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/wfd/ConnectionMode;->mPointerProp:[Landroid/view/MotionEvent$PointerProperties;

    aget-object v2, v2, v1

    iget v3, p0, Lcom/samsung/android/wfd/ConnectionMode;->mToolType:I

    iput v3, v2, Landroid/view/MotionEvent$PointerProperties;->toolType:I

    .line 375
    iget-object v2, p0, Lcom/samsung/android/wfd/ConnectionMode;->mTouchPointerTable:Ljava/util/TreeMap;

    iget-object v3, p0, Lcom/samsung/android/wfd/ConnectionMode;->mPointerProp:[Landroid/view/MotionEvent$PointerProperties;

    aget-object v3, v3, v1

    iget v3, v3, Landroid/view/MotionEvent$PointerProperties;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;

    .line 377
    .local v2, "pointer":Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;
    iget-object v3, p0, Lcom/samsung/android/wfd/ConnectionMode;->mPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v3, v3, v1

    const/4 v4, 0x0

    iget v5, v2, Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;->x:F

    invoke-virtual {v3, v4, v5}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    .line 378
    iget-object v3, p0, Lcom/samsung/android/wfd/ConnectionMode;->mPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v3, v3, v1

    iget v4, v2, Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;->y:F

    const/4 v5, 0x1

    invoke-virtual {v3, v5, v4}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    .line 379
    iget-object v3, p0, Lcom/samsung/android/wfd/ConnectionMode;->mPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v3, v3, v1

    const/16 v4, 0x8

    const/high16 v5, 0x3fc00000    # 1.5f

    invoke-virtual {v3, v4, v5}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    .line 380
    iget-object v3, p0, Lcom/samsung/android/wfd/ConnectionMode;->mPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v3, v3, v1

    const/4 v4, 0x2

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v3, v4, v5}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    .line 381
    iget-object v3, p0, Lcom/samsung/android/wfd/ConnectionMode;->mPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v3, v3, v1

    const/4 v4, 0x3

    const v5, 0x3d23d70a    # 0.04f

    invoke-virtual {v3, v4, v5}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    .line 382
    iget-object v3, p0, Lcom/samsung/android/wfd/ConnectionMode;->mPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v3, v3, v1

    const/4 v4, 0x4

    const/high16 v5, 0x41700000    # 15.0f

    invoke-virtual {v3, v4, v5}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    .line 383
    iget-object v3, p0, Lcom/samsung/android/wfd/ConnectionMode;->mPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v3, v3, v1

    const/4 v4, 0x5

    const/high16 v5, 0x41000000    # 8.0f

    invoke-virtual {v3, v4, v5}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    .line 384
    iget-object v3, p0, Lcom/samsung/android/wfd/ConnectionMode;->mPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v3, v3, v1

    const/4 v4, 0x6

    const/high16 v5, 0x41300000    # 11.0f

    invoke-virtual {v3, v4, v5}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    .line 385
    iget-object v3, p0, Lcom/samsung/android/wfd/ConnectionMode;->mPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v3, v3, v1

    const/4 v4, 0x7

    invoke-virtual {v3, v4, v5}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    .line 364
    .end local v2    # "pointer":Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 388
    .end local v1    # "j":I
    :cond_1
    sget-boolean v1, Lcom/samsung/android/wfd/ConnectionMode;->DEBUG:Z

    if-eqz v1, :cond_2

    .line 389
    const/4 v1, 0x0

    .restart local v1    # "j":I
    :goto_1
    iget-object v2, p0, Lcom/samsung/android/wfd/ConnectionMode;->mTouchPointerTable:Ljava/util/TreeMap;

    invoke-virtual {v2}, Ljava/util/TreeMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 390
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ID : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/wfd/ConnectionMode;->mPointerProp:[Landroid/view/MotionEvent$PointerProperties;

    aget-object v3, v3, v1

    iget v3, v3, Landroid/view/MotionEvent$PointerProperties;->id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", X : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/wfd/ConnectionMode;->mPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v3, v3, v1

    iget v3, v3, Landroid/view/MotionEvent$PointerCoords;->x:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Y : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/wfd/ConnectionMode;->mPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v3, v3, v1

    iget v3, v3, Landroid/view/MotionEvent$PointerCoords;->y:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ConnectionMode"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 394
    .end local v1    # "j":I
    :cond_2
    return-void
.end method

.method private updateKeyEventValue()V
    .locals 6

    .line 435
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/wfd/ConnectionMode;->mKeyDownTime:J

    .line 436
    iput-wide v0, p0, Lcom/samsung/android/wfd/ConnectionMode;->mCurrentTime:J

    .line 437
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/wfd/ConnectionMode;->mRepeatCount:I

    .line 438
    const/high16 v1, 0x8000000

    iput v1, p0, Lcom/samsung/android/wfd/ConnectionMode;->mEventFlag:I

    .line 440
    iget-object v1, p0, Lcom/samsung/android/wfd/ConnectionMode;->mKeyInput:Lcom/samsung/android/wfd/WFDUibcManager$KeyInput;

    iget v1, v1, Lcom/samsung/android/wfd/WFDUibcManager$KeyInput;->action:I

    const-string v2, "ConnectionMode"

    const/4 v3, 0x1

    if-nez v1, :cond_5

    .line 441
    sget-boolean v1, Lcom/samsung/android/wfd/ConnectionMode;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 442
    const-string v1, "KeyEvent.ACTION_DOWN"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/samsung/android/wfd/ConnectionMode;->mCurrentTime:J

    .line 445
    iget-object v1, p0, Lcom/samsung/android/wfd/ConnectionMode;->mKeyInfoTable:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/samsung/android/wfd/ConnectionMode;->mKeyInput:Lcom/samsung/android/wfd/WFDUibcManager$KeyInput;

    iget v4, v4, Lcom/samsung/android/wfd/WFDUibcManager$KeyInput;->keyCode:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 446
    iget-object v1, p0, Lcom/samsung/android/wfd/ConnectionMode;->mKeyInfoTable:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    const/16 v4, 0xf

    if-ge v1, v4, :cond_1

    .line 447
    new-instance v1, Lcom/samsung/android/wfd/WFDUibcManager$KeyInfo;

    invoke-direct {v1}, Lcom/samsung/android/wfd/WFDUibcManager$KeyInfo;-><init>()V

    .line 448
    .local v1, "keyInfo":Lcom/samsung/android/wfd/WFDUibcManager$KeyInfo;
    iget-wide v4, p0, Lcom/samsung/android/wfd/ConnectionMode;->mCurrentTime:J

    iput-wide v4, v1, Lcom/samsung/android/wfd/WFDUibcManager$KeyInfo;->keyTime:J

    .line 449
    iget v4, p0, Lcom/samsung/android/wfd/ConnectionMode;->mEventFlag:I

    iput v4, v1, Lcom/samsung/android/wfd/WFDUibcManager$KeyInfo;->keyFlag:I

    .line 450
    iput v0, v1, Lcom/samsung/android/wfd/WFDUibcManager$KeyInfo;->keyRepeatCount:I

    .line 451
    iget-object v4, p0, Lcom/samsung/android/wfd/ConnectionMode;->mKeyInfoTable:Ljava/util/HashMap;

    iget-object v5, p0, Lcom/samsung/android/wfd/ConnectionMode;->mKeyInput:Lcom/samsung/android/wfd/WFDUibcManager$KeyInput;

    iget v5, v5, Lcom/samsung/android/wfd/WFDUibcManager$KeyInput;->keyCode:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 453
    .end local v1    # "keyInfo":Lcom/samsung/android/wfd/WFDUibcManager$KeyInfo;
    :cond_1
    iget-wide v4, p0, Lcom/samsung/android/wfd/ConnectionMode;->mCurrentTime:J

    iput-wide v4, p0, Lcom/samsung/android/wfd/ConnectionMode;->mKeyDownTime:J

    .line 454
    iput v0, p0, Lcom/samsung/android/wfd/ConnectionMode;->mRepeatCount:I

    goto :goto_0

    .line 456
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/wfd/ConnectionMode;->mKeyInfoTable:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/samsung/android/wfd/ConnectionMode;->mKeyInput:Lcom/samsung/android/wfd/WFDUibcManager$KeyInput;

    iget v1, v1, Lcom/samsung/android/wfd/WFDUibcManager$KeyInput;->keyCode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/wfd/WFDUibcManager$KeyInfo;

    .line 457
    .local v0, "keyInfo":Lcom/samsung/android/wfd/WFDUibcManager$KeyInfo;
    iget v1, v0, Lcom/samsung/android/wfd/WFDUibcManager$KeyInfo;->keyFlag:I

    iget v4, p0, Lcom/samsung/android/wfd/ConnectionMode;->mEventFlag:I

    or-int/2addr v1, v4

    iput v1, v0, Lcom/samsung/android/wfd/WFDUibcManager$KeyInfo;->keyFlag:I

    .line 458
    iget v1, v0, Lcom/samsung/android/wfd/WFDUibcManager$KeyInfo;->keyRepeatCount:I

    add-int/2addr v1, v3

    iput v1, v0, Lcom/samsung/android/wfd/WFDUibcManager$KeyInfo;->keyRepeatCount:I

    .line 459
    iget v1, v0, Lcom/samsung/android/wfd/WFDUibcManager$KeyInfo;->keyRepeatCount:I

    if-lt v1, v3, :cond_3

    .line 460
    iget v1, v0, Lcom/samsung/android/wfd/WFDUibcManager$KeyInfo;->keyFlag:I

    or-int/lit16 v1, v1, 0x80

    iput v1, v0, Lcom/samsung/android/wfd/WFDUibcManager$KeyInfo;->keyFlag:I

    .line 462
    :cond_3
    iget-wide v4, v0, Lcom/samsung/android/wfd/WFDUibcManager$KeyInfo;->keyTime:J

    iput-wide v4, p0, Lcom/samsung/android/wfd/ConnectionMode;->mKeyDownTime:J

    .line 463
    iget v1, p0, Lcom/samsung/android/wfd/ConnectionMode;->mEventFlag:I

    iget v4, v0, Lcom/samsung/android/wfd/WFDUibcManager$KeyInfo;->keyFlag:I

    or-int/2addr v1, v4

    iput v1, p0, Lcom/samsung/android/wfd/ConnectionMode;->mEventFlag:I

    .line 464
    iget v1, v0, Lcom/samsung/android/wfd/WFDUibcManager$KeyInfo;->keyRepeatCount:I

    iput v1, p0, Lcom/samsung/android/wfd/ConnectionMode;->mRepeatCount:I

    .line 465
    sget-boolean v1, Lcom/samsung/android/wfd/ConnectionMode;->DEBUG:Z

    if-eqz v1, :cond_4

    .line 466
    const-string v1, "Long press detected"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    .end local v0    # "keyInfo":Lcom/samsung/android/wfd/WFDUibcManager$KeyInfo;
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/wfd/ConnectionMode;->mKeyInput:Lcom/samsung/android/wfd/WFDUibcManager$KeyInput;

    iget v0, v0, Lcom/samsung/android/wfd/WFDUibcManager$KeyInput;->keyCode:I

    invoke-direct {p0, v0, v3}, Lcom/samsung/android/wfd/ConnectionMode;->getMetaFlag(IZ)V

    goto :goto_2

    .line 470
    :cond_5
    iget-object v1, p0, Lcom/samsung/android/wfd/ConnectionMode;->mKeyInput:Lcom/samsung/android/wfd/WFDUibcManager$KeyInput;

    iget v1, v1, Lcom/samsung/android/wfd/WFDUibcManager$KeyInput;->action:I

    if-ne v1, v3, :cond_8

    .line 471
    sget-boolean v1, Lcom/samsung/android/wfd/ConnectionMode;->DEBUG:Z

    if-eqz v1, :cond_6

    .line 472
    const-string v1, "KeyEvent.ACTION_UP"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    :cond_6
    iget-object v1, p0, Lcom/samsung/android/wfd/ConnectionMode;->mKeyInfoTable:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/samsung/android/wfd/ConnectionMode;->mKeyInput:Lcom/samsung/android/wfd/WFDUibcManager$KeyInput;

    iget v3, v3, Lcom/samsung/android/wfd/WFDUibcManager$KeyInput;->keyCode:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 475
    iget-object v1, p0, Lcom/samsung/android/wfd/ConnectionMode;->mKeyInfoTable:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/samsung/android/wfd/ConnectionMode;->mKeyInput:Lcom/samsung/android/wfd/WFDUibcManager$KeyInput;

    iget v3, v3, Lcom/samsung/android/wfd/WFDUibcManager$KeyInput;->keyCode:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/wfd/WFDUibcManager$KeyInfo;

    .line 476
    .restart local v1    # "keyInfo":Lcom/samsung/android/wfd/WFDUibcManager$KeyInfo;
    iget-wide v3, v1, Lcom/samsung/android/wfd/WFDUibcManager$KeyInfo;->keyTime:J

    iput-wide v3, p0, Lcom/samsung/android/wfd/ConnectionMode;->mKeyDownTime:J

    .line 477
    iget v3, p0, Lcom/samsung/android/wfd/ConnectionMode;->mEventFlag:I

    iget v4, v1, Lcom/samsung/android/wfd/WFDUibcManager$KeyInfo;->keyFlag:I

    or-int/2addr v3, v4

    iput v3, p0, Lcom/samsung/android/wfd/ConnectionMode;->mEventFlag:I

    .line 478
    iput v0, p0, Lcom/samsung/android/wfd/ConnectionMode;->mRepeatCount:I

    .line 479
    iget-object v3, p0, Lcom/samsung/android/wfd/ConnectionMode;->mKeyInfoTable:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/samsung/android/wfd/ConnectionMode;->mKeyInput:Lcom/samsung/android/wfd/WFDUibcManager$KeyInput;

    iget v4, v4, Lcom/samsung/android/wfd/WFDUibcManager$KeyInput;->keyCode:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 480
    .end local v1    # "keyInfo":Lcom/samsung/android/wfd/WFDUibcManager$KeyInfo;
    goto :goto_1

    .line 481
    :cond_7
    iget-wide v3, p0, Lcom/samsung/android/wfd/ConnectionMode;->mCurrentTime:J

    iput-wide v3, p0, Lcom/samsung/android/wfd/ConnectionMode;->mKeyDownTime:J

    .line 482
    iput v0, p0, Lcom/samsung/android/wfd/ConnectionMode;->mRepeatCount:I

    .line 484
    :goto_1
    iget-object v1, p0, Lcom/samsung/android/wfd/ConnectionMode;->mKeyInput:Lcom/samsung/android/wfd/WFDUibcManager$KeyInput;

    iget v1, v1, Lcom/samsung/android/wfd/WFDUibcManager$KeyInput;->keyCode:I

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/wfd/ConnectionMode;->getMetaFlag(IZ)V

    .line 487
    :cond_8
    :goto_2
    sget-boolean v0, Lcom/samsung/android/wfd/ConnectionMode;->DEBUG:Z

    if-eqz v0, :cond_9

    .line 488
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "KeyCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/wfd/ConnectionMode;->mKeyInput:Lcom/samsung/android/wfd/WFDUibcManager$KeyInput;

    iget v1, v1, Lcom/samsung/android/wfd/WFDUibcManager$KeyInput;->keyCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " DownTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v3, p0, Lcom/samsung/android/wfd/ConnectionMode;->mKeyDownTime:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Flag: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/wfd/ConnectionMode;->mEventFlag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " RepeatCnt: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/wfd/ConnectionMode;->mRepeatCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mMetaFlag: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/wfd/ConnectionMode;->mMetaFlag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    :cond_9
    iget v0, p0, Lcom/samsung/android/wfd/ConnectionMode;->mMetaKey:I

    if-nez v0, :cond_a

    .line 493
    iget v0, p0, Lcom/samsung/android/wfd/ConnectionMode;->mMetaFlag:I

    iput v0, p0, Lcom/samsung/android/wfd/ConnectionMode;->mMetaKey:I

    .line 495
    :cond_a
    return-void
.end method


# virtual methods
.method closeConnection()V
    .locals 3

    .line 263
    const-string v0, "unregisterReceiver"

    const-string v1, "ConnectionMode"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    :try_start_0
    sget-object v0, Lcom/samsung/android/wfd/ConnectionMode;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/wfd/ConnectionMode;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 268
    goto :goto_0

    .line 266
    :catch_0
    move-exception v0

    .line 267
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v2, "unregisterReceiver::mReceiver not registered"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :goto_0
    return-void
.end method

.method abstract convertActionByMotionEvent()Z
.end method

.method abstract getDisplayMetrics()Landroid/util/DisplayMetrics;
.end method

.method handleKeyEvent(Lcom/samsung/android/wfd/WFDUibcManager$KeyInput;)V
    .locals 3
    .param p1, "keyInput"    # Lcom/samsung/android/wfd/WFDUibcManager$KeyInput;

    .line 408
    iput-object p1, p0, Lcom/samsung/android/wfd/ConnectionMode;->mKeyInput:Lcom/samsung/android/wfd/WFDUibcManager$KeyInput;

    .line 409
    sget-boolean v0, Lcom/samsung/android/wfd/ConnectionMode;->DEBUG:Z

    const-string v1, "ConnectionMode"

    if-eqz v0, :cond_0

    .line 410
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received KeyEvent"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/wfd/ConnectionMode;->mKeyInput:Lcom/samsung/android/wfd/WFDUibcManager$KeyInput;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    :cond_0
    iget v0, p0, Lcom/samsung/android/wfd/ConnectionMode;->mExternalDisplayID:I

    if-gez v0, :cond_1

    .line 414
    invoke-virtual {p0}, Lcom/samsung/android/wfd/ConnectionMode;->updateDisplayInformation()V

    .line 417
    :cond_1
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/wfd/ConnectionMode;->convertShiftKey()V

    .line 418
    invoke-direct {p0}, Lcom/samsung/android/wfd/ConnectionMode;->updateKeyEventValue()V

    .line 419
    invoke-virtual {p0}, Lcom/samsung/android/wfd/ConnectionMode;->injectInputKeyEvent()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 422
    goto :goto_0

    .line 420
    :catch_0
    move-exception v0

    .line 421
    .local v0, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :goto_0
    return-void
.end method

.method handleRotationEvent(Ljava/lang/Integer;)V
    .locals 9
    .param p1, "rotationInput"    # Ljava/lang/Integer;

    .line 612
    iput-object p1, p0, Lcom/samsung/android/wfd/ConnectionMode;->mRotationInput:Ljava/lang/Integer;

    .line 613
    sget-boolean v0, Lcom/samsung/android/wfd/ConnectionMode;->DEBUG:Z

    const-string v1, "ConnectionMode"

    if-eqz v0, :cond_0

    .line 614
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received Rotation Event"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/wfd/ConnectionMode;->mRotationInput:Ljava/lang/Integer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    :cond_0
    sget-object v0, Lcom/samsung/android/wfd/ConnectionMode;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "accelerometer_rotation"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 618
    .local v0, "accel":I
    sget-object v4, Lcom/samsung/android/wfd/ConnectionMode;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 619
    sget-object v4, Lcom/samsung/android/wfd/ConnectionMode;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "user_rotation"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 620
    .local v3, "rotation":I
    sget-boolean v4, Lcom/samsung/android/wfd/ConnectionMode;->DEBUG:Z

    if-eqz v4, :cond_1

    .line 621
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Current rotation "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    :cond_1
    mul-int/lit8 v4, v3, 0x5a

    iget-object v6, p0, Lcom/samsung/android/wfd/ConnectionMode;->mRotationInput:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/2addr v4, v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/wfd/ConnectionMode;->mRotationInput:Ljava/lang/Integer;

    .line 625
    iget-object v4, p0, Lcom/samsung/android/wfd/ConnectionMode;->mRotationInput:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v6, 0x168

    rem-int/2addr v4, v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/wfd/ConnectionMode;->mRotationInput:Ljava/lang/Integer;

    .line 626
    iget-object v4, p0, Lcom/samsung/android/wfd/ConnectionMode;->mRotationInput:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-gez v4, :cond_2

    .line 627
    iget-object v4, p0, Lcom/samsung/android/wfd/ConnectionMode;->mRotationInput:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/2addr v4, v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/wfd/ConnectionMode;->mRotationInput:Ljava/lang/Integer;

    .line 630
    :cond_2
    iget-object v4, p0, Lcom/samsung/android/wfd/ConnectionMode;->mRotationInput:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v7, 0x2d

    const/16 v8, 0x13b

    if-le v4, v8, :cond_3

    iget-object v4, p0, Lcom/samsung/android/wfd/ConnectionMode;->mRotationInput:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-le v4, v6, :cond_4

    :cond_3
    iget-object v4, p0, Lcom/samsung/android/wfd/ConnectionMode;->mRotationInput:Ljava/lang/Integer;

    .line 631
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ltz v4, :cond_5

    iget-object v4, p0, Lcom/samsung/android/wfd/ConnectionMode;->mRotationInput:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-gt v4, v7, :cond_5

    .line 632
    :cond_4
    const/4 v3, 0x0

    .line 634
    :cond_5
    iget-object v4, p0, Lcom/samsung/android/wfd/ConnectionMode;->mRotationInput:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v6, 0x87

    if-le v4, v7, :cond_6

    iget-object v4, p0, Lcom/samsung/android/wfd/ConnectionMode;->mRotationInput:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-gt v4, v6, :cond_6

    .line 635
    const/4 v3, 0x1

    .line 637
    :cond_6
    iget-object v4, p0, Lcom/samsung/android/wfd/ConnectionMode;->mRotationInput:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v7, 0xe1

    if-le v4, v6, :cond_7

    iget-object v4, p0, Lcom/samsung/android/wfd/ConnectionMode;->mRotationInput:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-gt v4, v7, :cond_7

    .line 638
    const/4 v3, 0x2

    .line 640
    :cond_7
    iget-object v4, p0, Lcom/samsung/android/wfd/ConnectionMode;->mRotationInput:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-le v4, v7, :cond_8

    iget-object v4, p0, Lcom/samsung/android/wfd/ConnectionMode;->mRotationInput:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-gt v4, v8, :cond_8

    .line 641
    const/4 v3, 0x3

    .line 643
    :cond_8
    sget-boolean v4, Lcom/samsung/android/wfd/ConnectionMode;->DEBUG:Z

    if-eqz v4, :cond_9

    .line 644
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Rotation set to "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    :cond_9
    sget-object v1, Lcom/samsung/android/wfd/ConnectionMode;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v5, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 647
    sget-object v1, Lcom/samsung/android/wfd/ConnectionMode;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 648
    return-void
.end method

.method handleScrollEvent(Lcom/samsung/android/wfd/WFDUibcManager$ScrollInput;)V
    .locals 2
    .param p1, "scrollInput"    # Lcom/samsung/android/wfd/WFDUibcManager$ScrollInput;

    .line 582
    iput-object p1, p0, Lcom/samsung/android/wfd/ConnectionMode;->mScrollInput:Lcom/samsung/android/wfd/WFDUibcManager$ScrollInput;

    .line 583
    sget-boolean v0, Lcom/samsung/android/wfd/ConnectionMode;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 584
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Received Scroll Event"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/wfd/ConnectionMode;->mScrollInput:Lcom/samsung/android/wfd/WFDUibcManager$ScrollInput;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ConnectionMode"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    :cond_0
    iget v0, p0, Lcom/samsung/android/wfd/ConnectionMode;->mExternalDisplayID:I

    if-gez v0, :cond_1

    .line 588
    invoke-virtual {p0}, Lcom/samsung/android/wfd/ConnectionMode;->updateDisplayInformation()V

    .line 591
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/wfd/ConnectionMode;->isValidScrollAction()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 592
    invoke-direct {p0}, Lcom/samsung/android/wfd/ConnectionMode;->setScrollPointerProp()V

    .line 593
    invoke-virtual {p0}, Lcom/samsung/android/wfd/ConnectionMode;->setScrollPointerCoords()V

    .line 594
    invoke-virtual {p0}, Lcom/samsung/android/wfd/ConnectionMode;->injectInputScrollEvent()V

    .line 596
    :cond_2
    return-void
.end method

.method handleTouchEvent(Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;)V
    .locals 3
    .param p1, "touchInput"    # Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;

    .line 308
    iput-object p1, p0, Lcom/samsung/android/wfd/ConnectionMode;->mTouchInput:Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;

    .line 309
    sget-boolean v0, Lcom/samsung/android/wfd/ConnectionMode;->DEBUG:Z

    const-string v1, "ConnectionMode"

    if-eqz v0, :cond_0

    .line 310
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received TouchEvent : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/wfd/ConnectionMode;->mTouchInput:Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/wfd/ConnectionMode;->isDisplayUpdateRequired()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 314
    invoke-virtual {p0}, Lcom/samsung/android/wfd/ConnectionMode;->updateDisplayInformation()V

    .line 318
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/wfd/ConnectionMode;->updateTouchPointerTable()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_2

    .line 319
    return-void

    .line 324
    :cond_2
    nop

    .line 326
    invoke-direct {p0}, Lcom/samsung/android/wfd/ConnectionMode;->setTouchPointerPropAndCoords()V

    .line 328
    invoke-virtual {p0}, Lcom/samsung/android/wfd/ConnectionMode;->convertActionByMotionEvent()Z

    move-result v0

    if-nez v0, :cond_3

    .line 329
    return-void

    .line 332
    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/wfd/ConnectionMode;->injectInputTouchEvent()V

    .line 334
    invoke-direct {p0}, Lcom/samsung/android/wfd/ConnectionMode;->removeTouchPointerInActionUp()V

    .line 335
    return-void

    .line 321
    :catch_0
    move-exception v0

    .line 322
    .local v0, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    return-void
.end method

.method abstract injectInputKeyEvent()V
.end method

.method abstract injectInputScrollEvent()V
.end method

.method abstract injectInputTouchEvent()V
.end method

.method isDexMode()Z
    .locals 5

    .line 230
    iget v0, p0, Lcom/samsung/android/wfd/ConnectionMode;->mExternalDisplayID:I

    const/4 v1, 0x0

    if-gez v0, :cond_0

    .line 231
    return v1

    .line 234
    :cond_0
    sget-object v0, Lcom/samsung/android/wfd/ConnectionMode;->mContext:Landroid/content/Context;

    const-string v2, "display"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 235
    .local v0, "displayManager":Landroid/hardware/display/DisplayManager;
    iget v2, p0, Lcom/samsung/android/wfd/ConnectionMode;->mExternalDisplayID:I

    invoke-virtual {v0, v2}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v2

    .line 237
    .local v2, "display":Landroid/view/Display;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/view/Display;->getFlags()I

    move-result v3

    const/high16 v4, 0x20000

    and-int/2addr v3, v4

    if-eqz v3, :cond_1

    .line 238
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isDexMode true, mExternalDisplayID : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/samsung/android/wfd/ConnectionMode;->mExternalDisplayID:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "ConnectionMode"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    const/4 v1, 0x1

    return v1

    .line 241
    :cond_1
    return v1
.end method

.method registerDisplayChangedListener()V
    .locals 3

    .line 108
    const-string v0, "ConnectionMode"

    const-string v1, "registerDisplayChangedListener"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    new-instance v0, Lcom/samsung/android/wfd/ConnectionMode$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/wfd/ConnectionMode$1;-><init>(Lcom/samsung/android/wfd/ConnectionMode;)V

    iput-object v0, p0, Lcom/samsung/android/wfd/ConnectionMode;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    .line 129
    sget-object v0, Lcom/samsung/android/wfd/ConnectionMode;->mContext:Landroid/content/Context;

    const-string v1, "display"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 130
    .local v0, "displayManager":Landroid/hardware/display/DisplayManager;
    if-eqz v0, :cond_0

    .line 131
    iget-object v1, p0, Lcom/samsung/android/wfd/ConnectionMode;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 133
    :cond_0
    return-void
.end method

.method registerFoldStateListener()V
    .locals 3

    .line 145
    const-string v0, "ConnectionMode"

    const-string v1, "registerFoldStateListener"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    new-instance v0, Lcom/samsung/android/wfd/ConnectionMode$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/wfd/ConnectionMode$2;-><init>(Lcom/samsung/android/wfd/ConnectionMode;)V

    iput-object v0, p0, Lcom/samsung/android/wfd/ConnectionMode;->mFoldStateListener:Lcom/samsung/android/view/SemWindowManager$FoldStateListener;

    .line 161
    invoke-static {}, Lcom/samsung/android/view/SemWindowManager;->getInstance()Lcom/samsung/android/view/SemWindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/wfd/ConnectionMode;->mFoldStateListener:Lcom/samsung/android/view/SemWindowManager$FoldStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/view/SemWindowManager;->registerFoldStateListener(Lcom/samsung/android/view/SemWindowManager$FoldStateListener;Landroid/os/Handler;)V

    .line 162
    return-void
.end method

.method registerIntentFilter()V
    .locals 4

    .line 189
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 190
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "com.samsung.intent.action.SEC_PRESENTATION_START"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 191
    const-string v1, "com.samsung.intent.action.SEC_PRESENTATION_STOP"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 192
    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 193
    const-string v1, "com.samsung.intent.action.ROTATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 194
    const-string v1, "com.samsung.intent.action.UPDATE_HIDDEN_DISPLAY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 196
    sget-object v1, Lcom/samsung/android/wfd/ConnectionMode;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/wfd/ConnectionMode;->mReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 197
    return-void
.end method

.method protected sendHiddenDisplayIntent(Z)V
    .locals 5
    .param p1, "isStart"    # Z

    .line 173
    const-string v0, "ConnectionMode"

    const-string v1, "android.permission.CONFIGURE_WIFI_DISPLAY"

    const-string v2, "update"

    const-string v3, "com.samsung.intent.action.UPDATE_HIDDEN_DISPLAY"

    if-eqz p1, :cond_0

    .line 174
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 175
    .local v4, "intent":Landroid/content/Intent;
    const/4 v3, 0x1

    invoke-virtual {v4, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 176
    const-string v2, "displayID"

    iget v3, p0, Lcom/samsung/android/wfd/ConnectionMode;->mHiddenDisplayID:I

    invoke-virtual {v4, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 177
    sget-object v2, Lcom/samsung/android/wfd/ConnectionMode;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v4, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 178
    const-string v1, "update hidden display msg send"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    .end local v4    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 180
    :cond_0
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 181
    .restart local v4    # "intent":Landroid/content/Intent;
    const/4 v3, 0x0

    invoke-virtual {v4, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 182
    sget-object v2, Lcom/samsung/android/wfd/ConnectionMode;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v4, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 183
    const-string v1, "destroy hidden display msg send"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/wfd/ConnectionMode;->mHiddenDisplayID:I

    .line 186
    .end local v4    # "intent":Landroid/content/Intent;
    :goto_0
    return-void
.end method

.method setExternalDisplay(FF)V
    .locals 2
    .param p1, "externalDisplayWidth"    # F
    .param p2, "externalDisplayHeight"    # F

    .line 245
    iput p1, p0, Lcom/samsung/android/wfd/ConnectionMode;->mExternalDisplayWidth:F

    .line 246
    iput p2, p0, Lcom/samsung/android/wfd/ConnectionMode;->mExternalDisplayHeight:F

    .line 247
    iget v0, p0, Lcom/samsung/android/wfd/ConnectionMode;->mExternalDisplayWidth:F

    iget v1, p0, Lcom/samsung/android/wfd/ConnectionMode;->mExternalDisplayHeight:F

    div-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/wfd/ConnectionMode;->mExternalDisplayRatio:F

    .line 249
    invoke-virtual {p0}, Lcom/samsung/android/wfd/ConnectionMode;->updateDisplayInformation()V

    .line 250
    return-void
.end method

.method abstract setScrollPointerCoords()V
.end method

.method setSinkDevice(Z)V
    .locals 2
    .param p1, "isSamsungMobile"    # Z

    .line 258
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSinkDevice : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ConnectionMode"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    iput-boolean p1, p0, Lcom/samsung/android/wfd/ConnectionMode;->mIsSamsungMobile:Z

    .line 260
    return-void
.end method

.method unregisterDisplayChangedListener()V
    .locals 2

    .line 136
    const-string v0, "ConnectionMode"

    const-string v1, "unregisterDisplayChangedListener"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    sget-object v0, Lcom/samsung/android/wfd/ConnectionMode;->mContext:Landroid/content/Context;

    const-string v1, "display"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 138
    .local v0, "displayManager":Landroid/hardware/display/DisplayManager;
    if-eqz v0, :cond_0

    .line 139
    iget-object v1, p0, Lcom/samsung/android/wfd/ConnectionMode;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    .line 140
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/wfd/ConnectionMode;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    .line 142
    :cond_0
    return-void
.end method

.method unregisterFoldStateListener()V
    .locals 2

    .line 165
    const-string v0, "ConnectionMode"

    const-string v1, "unregisterFoldStateListener"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    iget-object v0, p0, Lcom/samsung/android/wfd/ConnectionMode;->mFoldStateListener:Lcom/samsung/android/view/SemWindowManager$FoldStateListener;

    if-eqz v0, :cond_0

    .line 167
    invoke-static {}, Lcom/samsung/android/view/SemWindowManager;->getInstance()Lcom/samsung/android/view/SemWindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/wfd/ConnectionMode;->mFoldStateListener:Lcom/samsung/android/view/SemWindowManager$FoldStateListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/view/SemWindowManager;->unregisterFoldStateListener(Lcom/samsung/android/view/SemWindowManager$FoldStateListener;)V

    .line 168
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/wfd/ConnectionMode;->mFoldStateListener:Lcom/samsung/android/view/SemWindowManager$FoldStateListener;

    .line 170
    :cond_0
    return-void
.end method

.method abstract updateDisplayInformation()V
.end method

.method protected updateDisplayValue()V
    .locals 6

    .line 272
    invoke-virtual {p0}, Lcom/samsung/android/wfd/ConnectionMode;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 274
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/samsung/android/wfd/ConnectionMode;->mPrimaryDisplayWidth:F

    .line 275
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v1, v1

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/samsung/android/wfd/ConnectionMode;->mPrimaryDisplayHeight:F

    .line 276
    iget v1, p0, Lcom/samsung/android/wfd/ConnectionMode;->mPrimaryDisplayWidth:F

    iget v2, p0, Lcom/samsung/android/wfd/ConnectionMode;->mPrimaryDisplayHeight:F

    div-float/2addr v1, v2

    iput v1, p0, Lcom/samsung/android/wfd/ConnectionMode;->mPrimaryDisplayRatio:F

    .line 278
    iget-object v1, p0, Lcom/samsung/android/wfd/ConnectionMode;->mModeType:Lcom/samsung/android/wfd/ConnectionMode$ModeType;

    instance-of v1, v1, Lcom/samsung/android/wfd/WFDMode$WFDPortrait;

    if-eqz v1, :cond_0

    .line 279
    iget v1, p0, Lcom/samsung/android/wfd/ConnectionMode;->mExternalDisplayHeight:F

    iget v2, p0, Lcom/samsung/android/wfd/ConnectionMode;->mExternalDisplayWidth:F

    div-float/2addr v1, v2

    iput v1, p0, Lcom/samsung/android/wfd/ConnectionMode;->mExternalDisplayRatio:F

    goto :goto_0

    .line 281
    :cond_0
    iget v1, p0, Lcom/samsung/android/wfd/ConnectionMode;->mExternalDisplayWidth:F

    iget v2, p0, Lcom/samsung/android/wfd/ConnectionMode;->mExternalDisplayHeight:F

    div-float/2addr v1, v2

    iput v1, p0, Lcom/samsung/android/wfd/ConnectionMode;->mExternalDisplayRatio:F

    .line 284
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/wfd/ConnectionMode;->mModeType:Lcom/samsung/android/wfd/ConnectionMode$ModeType;

    instance-of v1, v1, Lcom/samsung/android/wfd/WFDMode$WFDAppCast;

    if-eqz v1, :cond_1

    .line 285
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/samsung/android/wfd/ConnectionMode;->sendHiddenDisplayIntent(Z)V

    .line 288
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/wfd/ConnectionMode;->mModeType:Lcom/samsung/android/wfd/ConnectionMode$ModeType;

    instance-of v1, v1, Lcom/samsung/android/wfd/DeXMode$WirelessDeX;

    const-string v2, "ConnectionMode"

    if-eqz v1, :cond_3

    .line 289
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v1

    .line 290
    .local v1, "displayManagerGlobal":Landroid/hardware/display/DisplayManagerGlobal;
    if-nez v1, :cond_2

    .line 291
    const-string v3, "displayManagerGlobal is not found"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 293
    :cond_2
    iget v3, p0, Lcom/samsung/android/wfd/ConnectionMode;->mExternalDisplayID:I

    invoke-virtual {v1, v3}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 294
    iget v3, p0, Lcom/samsung/android/wfd/ConnectionMode;->mExternalDisplayID:I

    invoke-virtual {v1, v3}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v3

    iget v3, v3, Landroid/view/DisplayInfo;->rotation:I

    iput v3, p0, Lcom/samsung/android/wfd/ConnectionMode;->mRotationStatus:I

    .line 299
    .end local v1    # "displayManagerGlobal":Landroid/hardware/display/DisplayManagerGlobal;
    :cond_3
    :goto_1
    sget-boolean v1, Lcom/samsung/android/wfd/ConnectionMode;->DEBUG:Z

    if-eqz v1, :cond_4

    .line 300
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PrimaryDisplay Width : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/samsung/android/wfd/ConnectionMode;->mPrimaryDisplayWidth:F

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", Height : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Lcom/samsung/android/wfd/ConnectionMode;->mPrimaryDisplayHeight:F

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", Ratio : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v5, p0, Lcom/samsung/android/wfd/ConnectionMode;->mPrimaryDisplayRatio:F

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ExternalDisplay Width : "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v5, p0, Lcom/samsung/android/wfd/ConnectionMode;->mExternalDisplayWidth:F

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/samsung/android/wfd/ConnectionMode;->mExternalDisplayHeight:F

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/samsung/android/wfd/ConnectionMode;->mExternalDisplayRatio:F

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    :cond_4
    return-void
.end method

.method abstract updateTouchPointerTable()Z
.end method
