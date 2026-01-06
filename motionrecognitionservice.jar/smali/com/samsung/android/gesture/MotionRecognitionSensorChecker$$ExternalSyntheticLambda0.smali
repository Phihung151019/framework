.class public final synthetic Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Lorg/json/JSONObject;


# direct methods
.method public synthetic constructor <init>(Lorg/json/JSONObject;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$$ExternalSyntheticLambda0;->f$0:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$$ExternalSyntheticLambda0;->f$0:Lorg/json/JSONObject;

    check-cast p1, Ljava/lang/Integer;

    check-cast p2, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorProbeAuror;

    invoke-static {v0, p1, p2}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->lambda$reportProbeStuckStatus$5(Lorg/json/JSONObject;Ljava/lang/Integer;Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$SensorProbeAuror;)V

    return-void
.end method
