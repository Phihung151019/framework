.class public final synthetic Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 0
    check-cast p1, Ljava/lang/Integer;

    check-cast p2, Lcom/samsung/android/gesture/checker/SensorStuckAuror;

    invoke-static {p1, p2}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->lambda$forceStopSensor$3(Ljava/lang/Integer;Lcom/samsung/android/gesture/checker/SensorStuckAuror;)V

    return-void
.end method
