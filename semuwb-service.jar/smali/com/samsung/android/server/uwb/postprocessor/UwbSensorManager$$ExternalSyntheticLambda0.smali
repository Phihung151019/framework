.class public final synthetic Lcom/samsung/android/server/uwb/postprocessor/UwbSensorManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/hardware/SensorEvent;


# direct methods
.method public synthetic constructor <init>(Landroid/hardware/SensorEvent;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/uwb/postprocessor/UwbSensorManager$$ExternalSyntheticLambda0;->f$0:Landroid/hardware/SensorEvent;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/samsung/android/server/uwb/postprocessor/UwbSensorManager$$ExternalSyntheticLambda0;->f$0:Landroid/hardware/SensorEvent;

    check-cast p1, Lcom/samsung/android/server/uwb/postprocessor/UwbSensorManager$EventListener;

    invoke-static {v0, p1}, Lcom/samsung/android/server/uwb/postprocessor/UwbSensorManager;->lambda$onSensorChanged$0(Landroid/hardware/SensorEvent;Lcom/samsung/android/server/uwb/postprocessor/UwbSensorManager$EventListener;)V

    return-void
.end method
