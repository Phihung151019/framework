.class public Lcom/samsung/android/gesture/MotionRecognitionPalmData;
.super Ljava/lang/Object;
.source "MotionRecognitionPalmData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/gesture/MotionRecognitionPalmData$TouchPoint;
    }
.end annotation


# static fields
.field protected static final PALM_DOWN:I = 0x1

.field protected static final PALM_DOWN_LARGE:I = 0x2

.field protected static final PALM_UP:I = 0x0

.field private static final TAG:Ljava/lang/String; = "PalmMotion"

.field private static final mIsDebug:Z


# instance fields
.field private densityDpi:I

.field private hasPalmFlag:I

.field private isLandscape:Z

.field private isLowDPI:Z

.field private isPalm:Z

.field private isSubDisplayLowDPI:Z

.field private final mContext:Landroid/content/Context;

.field private mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private mFingerPointerCnt:I

.field private final mLastActions:[I

.field private mLastTimeActionUp:J

.field private mMotionEvent:Landroid/view/MotionEvent;

.field private final mTouchPoints:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/gesture/MotionRecognitionPalmData$TouchPoint;",
            ">;"
        }
    .end annotation
.end field

.field private mainDisplay:Landroid/view/Display;

.field private mainDisplayCtx:Landroid/content/Context;

.field private maxWidth:I

.field private meanX:F

.field private meanY:F

.field private minWidth:I

.field private screenHeight:I

.field private screenWidth:I

.field private subDisplay:Landroid/view/Display;

.field private subDisplayCtx:Landroid/content/Context;

.field private subDisplayDensityDpi:I

.field private subScreenHeight:I

.field private subScreenWidth:I

.field private sumEccen:F

.field private sumMajor:F

.field private sumMinor:F

.field private sumX:F

.field private sumY:F

.field private updatedWidth:Z

.field private varianceX:F

.field private varianceY:F

.field private xDpi:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 31
    const-string v0, "ro.debuggable"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->mIsDebug:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->mTouchPoints:Ljava/util/ArrayList;

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->mFingerPointerCnt:I

    .line 42
    iput v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->hasPalmFlag:I

    .line 43
    iput-boolean v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->isPalm:Z

    .line 45
    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->sumX:F

    .line 46
    iput v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->sumY:F

    .line 47
    iput v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->sumEccen:F

    .line 48
    iput v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->sumMajor:F

    .line 49
    iput v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->sumMinor:F

    .line 50
    iput v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->meanX:F

    .line 51
    iput v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->meanY:F

    .line 52
    iput v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->varianceX:F

    .line 53
    iput v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->varianceY:F

    .line 56
    iput v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->screenWidth:I

    .line 57
    const/high16 v2, -0x80000000

    iput v2, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->maxWidth:I

    .line 58
    const v2, 0x7fffffff

    iput v2, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->minWidth:I

    .line 59
    iput v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->xDpi:F

    .line 60
    iput-boolean v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->updatedWidth:Z

    .line 61
    iput v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->screenHeight:I

    .line 62
    iput-boolean v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->isLowDPI:Z

    .line 63
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->isLandscape:Z

    .line 64
    iput v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->densityDpi:I

    .line 67
    iput v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->subScreenWidth:I

    .line 68
    iput v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->subScreenHeight:I

    .line 69
    iput-boolean v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->isSubDisplayLowDPI:Z

    .line 70
    iput v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->subDisplayDensityDpi:I

    .line 72
    const/4 v2, 0x3

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->mLastActions:[I

    .line 73
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->mLastTimeActionUp:J

    .line 81
    iput-object p1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->mContext:Landroid/content/Context;

    .line 82
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->mContext:Landroid/content/Context;

    const-string v3, "display"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/display/DisplayManager;

    iput-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 83
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v2, v0}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->mainDisplay:Landroid/view/Display;

    .line 84
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->mainDisplay:Landroid/view/Display;

    invoke-virtual {v0, v2}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->mainDisplayCtx:Landroid/content/Context;

    .line 85
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->subDisplay:Landroid/view/Display;

    .line 86
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->subDisplay:Landroid/view/Display;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->subDisplay:Landroid/view/Display;

    invoke-virtual {v0, v1}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->subDisplayCtx:Landroid/content/Context;

    .line 89
    :cond_0
    return-void
.end method

.method private calculateVariance()V
    .locals 7

    .line 333
    iget v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->sumX:F

    iget v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->mFingerPointerCnt:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->meanX:F

    .line 334
    iget v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->sumY:F

    iget v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->mFingerPointerCnt:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->meanY:F

    .line 337
    iget v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->sumMinor:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 338
    iget v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->sumMajor:F

    iget v2, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->sumMinor:F

    div-float/2addr v0, v2

    iput v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->sumEccen:F

    goto :goto_0

    .line 340
    :cond_0
    iput v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->sumEccen:F

    .line 344
    :goto_0
    iput v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->varianceX:F

    .line 345
    iput v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->varianceY:F

    .line 346
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->mTouchPoints:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/gesture/MotionRecognitionPalmData$TouchPoint;

    .line 347
    .local v1, "t":Lcom/samsung/android/gesture/MotionRecognitionPalmData$TouchPoint;
    iget v2, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->varianceX:F

    float-to-double v2, v2

    iget v4, v1, Lcom/samsung/android/gesture/MotionRecognitionPalmData$TouchPoint;->x:F

    iget v5, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->meanX:F

    sub-float/2addr v4, v5

    iget v5, v1, Lcom/samsung/android/gesture/MotionRecognitionPalmData$TouchPoint;->x:F

    iget v6, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->meanX:F

    sub-float/2addr v5, v6

    mul-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    add-double/2addr v2, v4

    double-to-float v2, v2

    iput v2, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->varianceX:F

    .line 348
    iget v2, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->varianceY:F

    float-to-double v2, v2

    iget v4, v1, Lcom/samsung/android/gesture/MotionRecognitionPalmData$TouchPoint;->y:F

    iget v5, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->meanY:F

    sub-float/2addr v4, v5

    iget v5, v1, Lcom/samsung/android/gesture/MotionRecognitionPalmData$TouchPoint;->y:F

    iget v6, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->meanY:F

    sub-float/2addr v5, v6

    mul-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    add-double/2addr v2, v4

    double-to-float v2, v2

    iput v2, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->varianceY:F

    .line 349
    .end local v1    # "t":Lcom/samsung/android/gesture/MotionRecognitionPalmData$TouchPoint;
    goto :goto_1

    .line 351
    :cond_1
    iget v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->varianceX:F

    iget v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->mFingerPointerCnt:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->varianceX:F

    .line 352
    iget v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->varianceY:F

    iget v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->mFingerPointerCnt:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->varianceY:F

    .line 353
    return-void
.end method

.method private printDebugLog(II)V
    .locals 5
    .param p1, "palmTouchCnt"    # I
    .param p2, "sweepCnt"    # I

    .line 298
    sget-boolean v0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->mIsDebug:Z

    if-eqz v0, :cond_0

    int-to-float v0, p1

    const/high16 v1, 0x42480000    # 50.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    int-to-float v0, p2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 301
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 302
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "idx":I
    :goto_0
    iget v2, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->mFingerPointerCnt:I

    if-ge v1, v2, :cond_0

    .line 304
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 306
    const-string v2, "[PALM] ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->mFingerPointerCnt:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->mMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "%-5s\t"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 308
    .local v2, "tmp":Ljava/lang/String;
    const-string v3, " ACTION: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->mMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {v3, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    float-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "%-7s"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 310
    const-string v3, "X: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->mMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {v3, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    float-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "%-7s\t"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 312
    const-string v3, "Y: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    iget v3, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->sumEccen:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "%-10.5s\t"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 314
    const-string v3, "ECC: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    iget v3, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->sumMajor:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "%-7.5s"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 316
    const-string v3, "MAJOR: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    iget v3, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->sumMinor:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "%-7.5s\t"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 318
    const-string v3, "MINOR: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    iget v3, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->varianceX:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "%-10.6s"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 320
    const-string v3, "VarX: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    iget v3, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->varianceY:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "%-10.6s\t"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 322
    const-string v3, "VarY: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    invoke-virtual {p0, v1}, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->getPalm(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "%s"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 324
    const-string v3, "PALM: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    const-string v3, "PalmMotion"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    .end local v2    # "tmp":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 329
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    .end local v1    # "idx":I
    :cond_0
    return-void
.end method


# virtual methods
.method public getFingerCnt()I
    .locals 1

    .line 356
    iget v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->mFingerPointerCnt:I

    return v0
.end method

.method public getHasPalmFlag()I
    .locals 1

    .line 100
    iget v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->hasPalmFlag:I

    return v0
.end method

.method public getLastAction(I)I
    .locals 1
    .param p1, "idx"    # I

    .line 371
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->mLastActions:[I

    aget v0, v0, p1

    return v0
.end method

.method public getLastTimeActionUp()J
    .locals 2

    .line 175
    iget-wide v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->mLastTimeActionUp:J

    return-wide v0
.end method

.method public getMaxWidth()I
    .locals 1

    .line 136
    iget v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->maxWidth:I

    return v0
.end method

.method public getMeanX()F
    .locals 1

    .line 116
    iget v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->meanX:F

    return v0
.end method

.method public getMeanY()F
    .locals 1

    .line 120
    iget v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->meanY:F

    return v0
.end method

.method public getMinWidth()I
    .locals 1

    .line 140
    iget v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->minWidth:I

    return v0
.end method

.method public getMotionEvent()Landroid/view/MotionEvent;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->mMotionEvent:Landroid/view/MotionEvent;

    return-object v0
.end method

.method public getPalm(I)I
    .locals 1
    .param p1, "index"    # I

    .line 184
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->mMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0, p1}, Landroid/view/MotionEvent;->getPalm(I)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public getScreenHeight()I
    .locals 1

    .line 156
    iget v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->screenHeight:I

    return v0
.end method

.method public getScreenWidth()I
    .locals 1

    .line 132
    iget v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->screenWidth:I

    return v0
.end method

.method public getSubDisplayDensityDpi()I
    .locals 2

    .line 266
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->subDisplayCtx:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 267
    const-string v0, "PalmMotion"

    const-string v1, "subDisplayCtx is null "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    const/4 v0, 0x0

    return v0

    .line 270
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->subDisplayCtx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 271
    .local v0, "subDisplayMetrics":Landroid/util/DisplayMetrics;
    iget v1, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->subDisplayDensityDpi:I

    .line 272
    iget v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->subDisplayDensityDpi:I

    return v1
.end method

.method public getSubScreenHeight()I
    .locals 1

    .line 163
    iget v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->subScreenHeight:I

    return v0
.end method

.method public getSubScreenWidth()I
    .locals 1

    .line 160
    iget v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->subScreenWidth:I

    return v0
.end method

.method public getSumEccen()F
    .locals 1

    .line 108
    iget v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->sumEccen:F

    return v0
.end method

.method public getSumMajor()F
    .locals 1

    .line 112
    iget v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->sumMajor:F

    return v0
.end method

.method public getVarianceX()F
    .locals 1

    .line 124
    iget v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->varianceX:F

    return v0
.end method

.method public getVarianceY()F
    .locals 1

    .line 128
    iget v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->varianceY:F

    return v0
.end method

.method public getxDpi()F
    .locals 1

    .line 144
    iget v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->xDpi:F

    return v0
.end method

.method public isLandscape()Z
    .locals 1

    .line 171
    iget-boolean v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->isLandscape:Z

    return v0
.end method

.method public isLowDPI()Z
    .locals 1

    .line 167
    iget-boolean v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->isLowDPI:Z

    return v0
.end method

.method public isPalm()Z
    .locals 1

    .line 104
    iget-boolean v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->isPalm:Z

    return v0
.end method

.method public isUpdatedWidth()Z
    .locals 1

    .line 148
    iget-boolean v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->updatedWidth:Z

    return v0
.end method

.method public setActionMoveEvent()V
    .locals 3

    .line 366
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->mLastActions:[I

    const/4 v1, 0x0

    const/4 v2, 0x2

    aput v2, v0, v1

    .line 367
    return-void
.end method

.method public setLastTimeActionUp(J)V
    .locals 0
    .param p1, "currentTime"    # J

    .line 179
    iput-wide p1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->mLastTimeActionUp:J

    .line 180
    return-void
.end method

.method public setMotionEvent(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;

    .line 96
    iput-object p1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->mMotionEvent:Landroid/view/MotionEvent;

    .line 97
    return-void
.end method

.method public setUpdatedWidth(Z)Z
    .locals 0
    .param p1, "updated"    # Z

    .line 152
    iput-boolean p1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->updatedWidth:Z

    return p1
.end method

.method public update(II)V
    .locals 6
    .param p1, "palmTouchCnt"    # I
    .param p2, "sweepCnt"    # I

    .line 277
    invoke-virtual {p0}, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->variableInitialize()V

    .line 278
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->mMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->mFingerPointerCnt:I

    .line 280
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->mFingerPointerCnt:I

    if-ge v0, v1, :cond_0

    .line 281
    new-instance v1, Lcom/samsung/android/gesture/MotionRecognitionPalmData$TouchPoint;

    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->mMotionEvent:Landroid/view/MotionEvent;

    .line 282
    invoke-virtual {v2, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->mMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {v3, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->mMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {v4, v0}, Landroid/view/MotionEvent;->getTouchMajor(I)F

    move-result v4

    iget-object v5, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->mMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {v5, v0}, Landroid/view/MotionEvent;->getTouchMinor(I)F

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/samsung/android/gesture/MotionRecognitionPalmData$TouchPoint;-><init>(FFFF)V

    .line 283
    .local v1, "p":Lcom/samsung/android/gesture/MotionRecognitionPalmData$TouchPoint;
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->mTouchPoints:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 285
    iget v2, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->sumX:F

    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->mMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {v3, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    add-float/2addr v2, v3

    iput v2, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->sumX:F

    .line 286
    iget v2, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->sumY:F

    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->mMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {v3, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    add-float/2addr v2, v3

    iput v2, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->sumY:F

    .line 287
    iget v2, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->sumMajor:F

    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->mMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {v3, v0}, Landroid/view/MotionEvent;->getTouchMajor(I)F

    move-result v3

    add-float/2addr v2, v3

    iput v2, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->sumMajor:F

    .line 288
    iget v2, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->sumMinor:F

    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->mMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {v3, v0}, Landroid/view/MotionEvent;->getTouchMinor(I)F

    move-result v3

    add-float/2addr v2, v3

    iput v2, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->sumMinor:F

    .line 289
    iget v2, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->hasPalmFlag:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->getPalm(I)I

    move-result v3

    or-int/2addr v2, v3

    iput v2, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->hasPalmFlag:I

    .line 280
    .end local v1    # "p":Lcom/samsung/android/gesture/MotionRecognitionPalmData$TouchPoint;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 292
    .end local v0    # "i":I
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->calculateVariance()V

    .line 293
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->printDebugLog(II)V

    .line 294
    return-void
.end method

.method public updateAction(I)V
    .locals 4
    .param p1, "action"    # I

    .line 360
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->mLastActions:[I

    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->mLastActions:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    const/4 v3, 0x2

    aput v1, v0, v3

    .line 361
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->mLastActions:[I

    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->mLastActions:[I

    const/4 v3, 0x0

    aget v1, v1, v3

    aput v1, v0, v2

    .line 362
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->mLastActions:[I

    aput p1, v0, v3

    .line 363
    return-void
.end method

.method public updateScreenInfo()V
    .locals 8

    .line 203
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->mainDisplayCtx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 204
    .local v0, "mainDisplayMetrics":Landroid/util/DisplayMetrics;
    iget v1, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->densityDpi:I

    .line 205
    iget v1, v0, Landroid/util/DisplayMetrics;->xdpi:F

    iput v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->xDpi:F

    .line 207
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->mainDisplayCtx:Landroid/content/Context;

    const-class v2, Landroid/view/WindowManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 208
    .local v1, "mainWindowManager":Landroid/view/WindowManager;
    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 209
    invoke-interface {v1}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object v3

    .line 210
    .local v3, "mainWindowMetrics":Landroid/view/WindowMetrics;
    if-eqz v3, :cond_1

    .line 211
    invoke-virtual {v3}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    iput v4, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->screenWidth:I

    .line 212
    invoke-virtual {v3}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    iput v4, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->screenHeight:I

    .line 214
    iget v4, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->screenWidth:I

    iget v5, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->screenHeight:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 215
    .local v4, "tempMaxWidth":I
    iget v5, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->screenWidth:I

    iget v6, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->screenHeight:I

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 217
    .local v5, "tempMinWidth":I
    iget v6, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->maxWidth:I

    if-le v4, v6, :cond_0

    .line 218
    iput v4, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->maxWidth:I

    .line 219
    iput-boolean v2, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->updatedWidth:Z

    .line 221
    :cond_0
    iget v6, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->minWidth:I

    if-ge v5, v6, :cond_1

    .line 222
    iput v5, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->minWidth:I

    .line 223
    iput-boolean v2, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->updatedWidth:Z

    .line 228
    .end local v3    # "mainWindowMetrics":Landroid/view/WindowMetrics;
    .end local v4    # "tempMaxWidth":I
    .end local v5    # "tempMinWidth":I
    :cond_1
    iget v3, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->densityDpi:I

    const/4 v4, 0x0

    if-eqz v3, :cond_4

    .line 229
    iget v3, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->screenWidth:I

    iget v5, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->densityDpi:I

    div-int/2addr v3, v5

    .line 230
    .local v3, "widthInch":I
    iget v5, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->screenHeight:I

    iget v6, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->densityDpi:I

    div-int/2addr v5, v6

    .line 231
    .local v5, "heightInch":I
    iget v6, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->densityDpi:I

    const/16 v7, 0xc8

    if-gt v6, v7, :cond_3

    const/4 v6, 0x4

    if-le v3, v6, :cond_2

    if-gt v5, v6, :cond_3

    :cond_2
    move v6, v2

    goto :goto_0

    :cond_3
    move v6, v4

    :goto_0
    iput-boolean v6, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->isLowDPI:Z

    .line 234
    .end local v3    # "widthInch":I
    .end local v5    # "heightInch":I
    :cond_4
    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->mainDisplay:Landroid/view/Display;

    invoke-virtual {v3}, Landroid/view/Display;->getRotation()I

    move-result v3

    rem-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_5

    goto :goto_1

    :cond_5
    move v2, v4

    :goto_1
    iput-boolean v2, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->isLandscape:Z

    .line 236
    return-void
.end method

.method public updateSimpleReadyPalmInfo()V
    .locals 5

    .line 376
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->mMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    .line 377
    .local v0, "fingerPointCnt":I
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->isPalm:Z

    .line 378
    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->sumMajor:F

    .line 381
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 382
    invoke-virtual {p0, v1}, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->getPalm(I)I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    invoke-virtual {p0, v1}, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->getPalm(I)I

    move-result v2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_0

    goto :goto_1

    .line 386
    :cond_0
    iget v2, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->sumMajor:F

    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->mMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {v3, v1}, Landroid/view/MotionEvent;->getTouchMajor(I)F

    move-result v3

    add-float/2addr v2, v3

    iput v2, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->sumMajor:F

    .line 381
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 383
    :cond_1
    :goto_1
    iput-boolean v3, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->isPalm:Z

    .line 384
    nop

    .line 388
    .end local v1    # "i":I
    :cond_2
    return-void
.end method

.method public updateSubDisplayInfo()V
    .locals 6

    .line 240
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->subDisplay:Landroid/view/Display;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 241
    iput v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->subDisplayDensityDpi:I

    .line 243
    return-void

    .line 246
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->getSubDisplayDensityDpi()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->subDisplayDensityDpi:I

    .line 247
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->subDisplayCtx:Landroid/content/Context;

    const-class v2, Landroid/view/WindowManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 248
    .local v0, "subWindowManager":Landroid/view/WindowManager;
    if-eqz v0, :cond_1

    .line 249
    invoke-interface {v0}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object v2

    .line 250
    .local v2, "subWindowMetrics":Landroid/view/WindowMetrics;
    if-eqz v2, :cond_1

    .line 251
    invoke-virtual {v2}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    iput v3, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->subScreenWidth:I

    .line 252
    invoke-virtual {v2}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    iput v3, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->subScreenHeight:I

    .line 257
    .end local v2    # "subWindowMetrics":Landroid/view/WindowMetrics;
    :cond_1
    iget v2, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->subDisplayDensityDpi:I

    if-eqz v2, :cond_4

    .line 258
    iget v2, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->subScreenWidth:I

    iget v3, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->subDisplayDensityDpi:I

    div-int/2addr v2, v3

    .line 259
    .local v2, "widthInch":I
    iget v3, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->subScreenHeight:I

    iget v4, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->subDisplayDensityDpi:I

    div-int/2addr v3, v4

    .line 260
    .local v3, "heightInch":I
    iget v4, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->subDisplayDensityDpi:I

    const/16 v5, 0xc8

    if-gt v4, v5, :cond_3

    const/4 v4, 0x4

    if-le v2, v4, :cond_2

    if-gt v3, v4, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    iput-boolean v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->isSubDisplayLowDPI:Z

    .line 263
    .end local v2    # "widthInch":I
    .end local v3    # "heightInch":I
    :cond_4
    return-void
.end method

.method public variableInitialize()V
    .locals 2

    .line 188
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->mTouchPoints:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 189
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->mFingerPointerCnt:I

    .line 190
    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->sumX:F

    .line 191
    iput v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->sumY:F

    .line 192
    iput v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->sumEccen:F

    .line 193
    iput v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->meanX:F

    .line 194
    iput v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->meanY:F

    .line 195
    iput v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->sumMajor:F

    .line 196
    iput v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->sumMinor:F

    .line 197
    iput v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->hasPalmFlag:I

    .line 198
    return-void
.end method
