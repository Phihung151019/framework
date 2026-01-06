.class Lcom/android/internal/telephony/SemTelephonyFoldStateMonitorImpl$AngleCheckStateChangedListener;
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
    name = "AngleCheckStateChangedListener"
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

    .line 86
    iput-object p1, p0, Lcom/android/internal/telephony/SemTelephonyFoldStateMonitorImpl$AngleCheckStateChangedListener;->this$0:Lcom/android/internal/telephony/SemTelephonyFoldStateMonitorImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/telephony/SemTelephonyFoldStateMonitorImpl;Lcom/android/internal/telephony/SemTelephonyFoldStateMonitorImpl-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemTelephonyFoldStateMonitorImpl$AngleCheckStateChangedListener;-><init>(Lcom/android/internal/telephony/SemTelephonyFoldStateMonitorImpl;)V

    return-void
.end method


# virtual methods
.method public whitelist onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    .line 0
    return-void
.end method

.method public whitelist onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 2

    .line 89
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const v1, 0x100a4

    if-ne v0, v1, :cond_2

    .line 90
    iget-object v0, p0, Lcom/android/internal/telephony/SemTelephonyFoldStateMonitorImpl$AngleCheckStateChangedListener;->this$0:Lcom/android/internal/telephony/SemTelephonyFoldStateMonitorImpl;

    invoke-static {v0}, Lcom/android/internal/telephony/SemTelephonyFoldStateMonitorImpl;->-$$Nest$fgetmHandler(Lcom/android/internal/telephony/SemTelephonyFoldStateMonitorImpl;)Landroid/os/Handler;

    move-result-object v0

    if-nez v0, :cond_0

    .line 91
    iget-object p0, p0, Lcom/android/internal/telephony/SemTelephonyFoldStateMonitorImpl$AngleCheckStateChangedListener;->this$0:Lcom/android/internal/telephony/SemTelephonyFoldStateMonitorImpl;

    const-string p1, "AngleCheckStateChangedListener mHandler is null"

    invoke-static {p0, p1}, Lcom/android/internal/telephony/SemTelephonyFoldStateMonitorImpl;->-$$Nest$mlog(Lcom/android/internal/telephony/SemTelephonyFoldStateMonitorImpl;Ljava/lang/String;)V

    return-void

    .line 93
    :cond_0
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v0, 0x0

    aget p1, p1, v0

    float-to-int p1, p1

    if-lez p1, :cond_1

    .line 95
    iget-object p1, p0, Lcom/android/internal/telephony/SemTelephonyFoldStateMonitorImpl$AngleCheckStateChangedListener;->this$0:Lcom/android/internal/telephony/SemTelephonyFoldStateMonitorImpl;

    const-string v0, "Start to check Flip state"

    invoke-static {p1, v0}, Lcom/android/internal/telephony/SemTelephonyFoldStateMonitorImpl;->-$$Nest$mlog(Lcom/android/internal/telephony/SemTelephonyFoldStateMonitorImpl;Ljava/lang/String;)V

    .line 96
    iget-object p1, p0, Lcom/android/internal/telephony/SemTelephonyFoldStateMonitorImpl$AngleCheckStateChangedListener;->this$0:Lcom/android/internal/telephony/SemTelephonyFoldStateMonitorImpl;

    invoke-virtual {p1}, Lcom/android/internal/telephony/SemTelephonyFoldStateMonitorImpl;->registerFlipForSarStateListener()V

    goto :goto_0

    .line 98
    :cond_1
    iget-object p1, p0, Lcom/android/internal/telephony/SemTelephonyFoldStateMonitorImpl$AngleCheckStateChangedListener;->this$0:Lcom/android/internal/telephony/SemTelephonyFoldStateMonitorImpl;

    const-string v0, "Angle state is not valid"

    invoke-static {p1, v0}, Lcom/android/internal/telephony/SemTelephonyFoldStateMonitorImpl;->-$$Nest$mlog(Lcom/android/internal/telephony/SemTelephonyFoldStateMonitorImpl;Ljava/lang/String;)V

    .line 101
    :goto_0
    iget-object p1, p0, Lcom/android/internal/telephony/SemTelephonyFoldStateMonitorImpl$AngleCheckStateChangedListener;->this$0:Lcom/android/internal/telephony/SemTelephonyFoldStateMonitorImpl;

    invoke-static {p1}, Lcom/android/internal/telephony/SemTelephonyFoldStateMonitorImpl;->-$$Nest$fgetmHandler(Lcom/android/internal/telephony/SemTelephonyFoldStateMonitorImpl;)Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/android/internal/telephony/SemTelephonyFoldStateMonitorImpl$AngleCheckStateChangedListener;->this$0:Lcom/android/internal/telephony/SemTelephonyFoldStateMonitorImpl;

    invoke-static {p0}, Lcom/android/internal/telephony/SemTelephonyFoldStateMonitorImpl;->-$$Nest$fgetmHandler(Lcom/android/internal/telephony/SemTelephonyFoldStateMonitorImpl;)Landroid/os/Handler;

    move-result-object p0

    const/16 v0, 0x6c

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_2
    return-void
.end method
