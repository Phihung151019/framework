.class public final synthetic Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAccSub2$StuckListenerAcc$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/IntPredicate;


# instance fields
.field public final synthetic f$0:[F


# direct methods
.method public synthetic constructor <init>([F)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAccSub2$StuckListenerAcc$$ExternalSyntheticLambda2;->f$0:[F

    return-void
.end method


# virtual methods
.method public final test(I)Z
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAccSub2$StuckListenerAcc$$ExternalSyntheticLambda2;->f$0:[F

    invoke-static {v0, p1}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorAccSub2$StuckListenerAcc;->lambda$checkMoving$1([FI)Z

    move-result p1

    return p1
.end method
