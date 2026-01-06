.class public final synthetic Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$$ExternalSyntheticLambda2;->f$0:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$$ExternalSyntheticLambda2;->f$0:Ljava/util/concurrent/CountDownLatch;

    check-cast p1, Ljava/lang/Integer;

    check-cast p2, Lcom/samsung/android/gesture/checker/SensorStuckAuror;

    invoke-static {v0, p1, p2}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->lambda$updateSensorStuckStatus$2(Ljava/util/concurrent/CountDownLatch;Ljava/lang/Integer;Lcom/samsung/android/gesture/checker/SensorStuckAuror;)V

    return-void
.end method
