.class Lcom/android/internal/telephony/SemTelephonyFoldStateMonitorImpl$FlipStateChangedListener;
.super Ljava/lang/Object;
.source "SemTelephonyFoldStateMonitorImpl.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SemTelephonyFoldStateMonitorImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FlipStateChangedListener"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/SemTelephonyFoldStateMonitorImpl;


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/telephony/SemTelephonyFoldStateMonitorImpl;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 68
    iput-object p1, p0, Lcom/android/internal/telephony/SemTelephonyFoldStateMonitorImpl$FlipStateChangedListener;->this$0:Lcom/android/internal/telephony/SemTelephonyFoldStateMonitorImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/telephony/SemTelephonyFoldStateMonitorImpl;Lcom/android/internal/telephony/SemTelephonyFoldStateMonitorImpl-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemTelephonyFoldStateMonitorImpl$FlipStateChangedListener;-><init>(Lcom/android/internal/telephony/SemTelephonyFoldStateMonitorImpl;)V

    return-void
.end method


# virtual methods
.method public whitelist onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    .line 0
    return-void
.end method

.method public whitelist onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 3

    .line 71
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const v1, 0x100af

    if-ne v0, v1, :cond_2

    .line 72
    iget-object v0, p0, Lcom/android/internal/telephony/SemTelephonyFoldStateMonitorImpl$FlipStateChangedListener;->this$0:Lcom/android/internal/telephony/SemTelephonyFoldStateMonitorImpl;

    invoke-static {v0}, Lcom/android/internal/telephony/SemTelephonyFoldStateMonitorImpl;->-$$Nest$fgetmHandler(Lcom/android/internal/telephony/SemTelephonyFoldStateMonitorImpl;)Landroid/os/Handler;

    move-result-object v0

    if-nez v0, :cond_0

    .line 73
    iget-object p0, p0, Lcom/android/internal/telephony/SemTelephonyFoldStateMonitorImpl$FlipStateChangedListener;->this$0:Lcom/android/internal/telephony/SemTelephonyFoldStateMonitorImpl;

    const-string p1, "FlipStateChangedListener mHandler is null"

    invoke-static {p0, p1}, Lcom/android/internal/telephony/SemTelephonyFoldStateMonitorImpl;->-$$Nest$mlog(Lcom/android/internal/telephony/SemTelephonyFoldStateMonitorImpl;Ljava/lang/String;)V

    return-void

    .line 75
    :cond_0
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v0, 0x0

    aget p1, p1, v0

    float-to-int p1, p1

    .line 76
    iget-object v1, p0, Lcom/android/internal/telephony/SemTelephonyFoldStateMonitorImpl$FlipStateChangedListener;->this$0:Lcom/android/internal/telephony/SemTelephonyFoldStateMonitorImpl;

    invoke-static {v1}, Lcom/android/internal/telephony/SemTelephonyFoldStateMonitorImpl;->-$$Nest$fgetmHandler(Lcom/android/internal/telephony/SemTelephonyFoldStateMonitorImpl;)Landroid/os/Handler;

    move-result-object v1

    iget-object p0, p0, Lcom/android/internal/telephony/SemTelephonyFoldStateMonitorImpl$FlipStateChangedListener;->this$0:Lcom/android/internal/telephony/SemTelephonyFoldStateMonitorImpl;

    invoke-static {p0}, Lcom/android/internal/telephony/SemTelephonyFoldStateMonitorImpl;->-$$Nest$fgetmHandler(Lcom/android/internal/telephony/SemTelephonyFoldStateMonitorImpl;)Landroid/os/Handler;

    move-result-object p0

    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    move v2, v0

    :cond_1
    const/16 p1, 0x6b

    invoke-virtual {p0, p1, v2, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_2
    return-void
.end method
