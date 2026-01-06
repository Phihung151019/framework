.class public final synthetic Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorBaro$StuckListenerBaro$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/IntConsumer;


# instance fields
.field public final synthetic f$0:[I


# direct methods
.method public synthetic constructor <init>([I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorBaro$StuckListenerBaro$$ExternalSyntheticLambda0;->f$0:[I

    return-void
.end method


# virtual methods
.method public final accept(I)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorBaro$StuckListenerBaro$$ExternalSyntheticLambda0;->f$0:[I

    invoke-static {v0, p1}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorStuckAurorBaro$StuckListenerBaro;->lambda$verifyStuckAndStoreResult$1([II)V

    return-void
.end method
