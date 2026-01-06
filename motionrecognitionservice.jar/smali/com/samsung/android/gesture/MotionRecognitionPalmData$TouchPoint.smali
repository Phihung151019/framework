.class Lcom/samsung/android/gesture/MotionRecognitionPalmData$TouchPoint;
.super Ljava/lang/Object;
.source "MotionRecognitionPalmData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/gesture/MotionRecognitionPalmData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TouchPoint"
.end annotation


# instance fields
.field major:F

.field minor:F

.field x:F

.field y:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 403
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 404
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData$TouchPoint;->x:F

    .line 405
    iput v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData$TouchPoint;->y:F

    .line 406
    iput v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData$TouchPoint;->major:F

    .line 407
    iput v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData$TouchPoint;->minor:F

    .line 408
    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 0
    .param p1, "inX"    # F
    .param p2, "inY"    # F
    .param p3, "inMajor"    # F
    .param p4, "inMinor"    # F

    .line 396
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 397
    iput p1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData$TouchPoint;->x:F

    .line 398
    iput p2, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData$TouchPoint;->y:F

    .line 399
    iput p3, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData$TouchPoint;->major:F

    .line 400
    iput p4, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData$TouchPoint;->minor:F

    .line 401
    return-void
.end method
