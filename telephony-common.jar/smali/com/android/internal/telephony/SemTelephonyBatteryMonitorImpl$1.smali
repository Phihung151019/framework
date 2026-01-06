.class Lcom/android/internal/telephony/SemTelephonyBatteryMonitorImpl$1;
.super Landroid/content/BroadcastReceiver;
.source "SemTelephonyBatteryMonitorImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SemTelephonyBatteryMonitorImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/SemTelephonyBatteryMonitorImpl;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/SemTelephonyBatteryMonitorImpl;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 53
    iput-object p1, p0, Lcom/android/internal/telephony/SemTelephonyBatteryMonitorImpl$1;->this$0:Lcom/android/internal/telephony/SemTelephonyBatteryMonitorImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    .line 56
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 58
    const-class v0, Lcom/android/internal/telephony/SemDeviceStateMonitor$SarDeviceId;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    .line 61
    iget-object v1, p0, Lcom/android/internal/telephony/SemTelephonyBatteryMonitorImpl$1;->this$0:Lcom/android/internal/telephony/SemTelephonyBatteryMonitorImpl;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/SemTelephonyBatteryMonitorImpl;->-$$Nest$mlog(Lcom/android/internal/telephony/SemTelephonyBatteryMonitorImpl;Ljava/lang/String;)V

    .line 63
    const-string v1, "com.samsung.server.BatteryService.action.SEC_BATTERY_EVENT"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/16 v2, 0x64

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v1, :cond_3

    .line 64
    sget-object p1, Lcom/android/internal/telephony/SemDeviceStateMonitor$SarDeviceId;->TA:Lcom/android/internal/telephony/SemDeviceStateMonitor$SarDeviceId;

    invoke-virtual {v0, p1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 65
    const-string p1, "sec_plug_type"

    invoke-virtual {p2, p1, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    and-int/lit8 p2, p1, 0x1

    if-nez p2, :cond_2

    and-int/2addr p1, v3

    if-eqz p1, :cond_0

    goto :goto_0

    .line 72
    :cond_0
    sget-object p1, Lcom/android/internal/telephony/SemDeviceStateMonitor$SarDeviceId;->USB31:Lcom/android/internal/telephony/SemDeviceStateMonitor$SarDeviceId;

    invoke-virtual {v0, p1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    :cond_1
    move v4, v5

    :cond_2
    :goto_0
    move v5, v4

    goto/16 :goto_7

    .line 75
    :cond_3
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/16 v6, 0x69

    if-eqz v1, :cond_d

    .line 76
    const-string p1, "misc_event"

    invoke-virtual {p2, p1, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 77
    const-string v1, "online"

    invoke-virtual {p2, v1, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    and-int/lit16 p1, p1, 0x4000

    if-eqz p1, :cond_4

    move p1, v4

    goto :goto_1

    :cond_4
    move p1, v5

    :goto_1
    const/16 v7, 0xa

    if-eq v1, v7, :cond_6

    if-ne v1, v2, :cond_5

    goto :goto_2

    :cond_5
    move v1, v5

    goto :goto_3

    :cond_6
    :goto_2
    move v1, v4

    .line 83
    :goto_3
    iget-object v7, p0, Lcom/android/internal/telephony/SemTelephonyBatteryMonitorImpl$1;->this$0:Lcom/android/internal/telephony/SemTelephonyBatteryMonitorImpl;

    invoke-static {v7}, Lcom/android/internal/telephony/SemTelephonyBatteryMonitorImpl;->-$$Nest$fgetmIsWirelessCharge(Lcom/android/internal/telephony/SemTelephonyBatteryMonitorImpl;)Z

    move-result v7

    if-eq v7, v1, :cond_7

    .line 84
    iget-object p1, p0, Lcom/android/internal/telephony/SemTelephonyBatteryMonitorImpl$1;->this$0:Lcom/android/internal/telephony/SemTelephonyBatteryMonitorImpl;

    invoke-static {p1, v1}, Lcom/android/internal/telephony/SemTelephonyBatteryMonitorImpl;->-$$Nest$fputmIsWirelessCharge(Lcom/android/internal/telephony/SemTelephonyBatteryMonitorImpl;Z)V

    .line 85
    sget-object p1, Lcom/android/internal/telephony/SemDeviceStateMonitor$SarDeviceId;->WIRELESS_CHARGE:Lcom/android/internal/telephony/SemDeviceStateMonitor$SarDeviceId;

    invoke-virtual {v0, p1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 86
    iget-object p1, p0, Lcom/android/internal/telephony/SemTelephonyBatteryMonitorImpl$1;->this$0:Lcom/android/internal/telephony/SemTelephonyBatteryMonitorImpl;

    invoke-static {p1}, Lcom/android/internal/telephony/SemTelephonyBatteryMonitorImpl;->-$$Nest$fgetmIsWirelessCharge(Lcom/android/internal/telephony/SemTelephonyBatteryMonitorImpl;)Z

    move-result p1

    goto :goto_5

    .line 87
    :cond_7
    iget-object v1, p0, Lcom/android/internal/telephony/SemTelephonyBatteryMonitorImpl$1;->this$0:Lcom/android/internal/telephony/SemTelephonyBatteryMonitorImpl;

    invoke-static {v1}, Lcom/android/internal/telephony/SemTelephonyBatteryMonitorImpl;->-$$Nest$fgetmIsDirectMode(Lcom/android/internal/telephony/SemTelephonyBatteryMonitorImpl;)Z

    move-result v1

    if-eq v1, p1, :cond_9

    .line 88
    iget-object v1, p0, Lcom/android/internal/telephony/SemTelephonyBatteryMonitorImpl$1;->this$0:Lcom/android/internal/telephony/SemTelephonyBatteryMonitorImpl;

    invoke-static {v1, p1}, Lcom/android/internal/telephony/SemTelephonyBatteryMonitorImpl;->-$$Nest$fputmIsDirectMode(Lcom/android/internal/telephony/SemTelephonyBatteryMonitorImpl;Z)V

    .line 89
    sget-boolean p1, Lcom/android/internal/telephony/TelephonyFeatures;->IS_EXYNOS:Z

    if-eqz p1, :cond_8

    sget-object p1, Lcom/android/internal/telephony/SemDeviceStateMonitor$SarDeviceId;->NBM_LSI:Lcom/android/internal/telephony/SemDeviceStateMonitor$SarDeviceId;

    goto :goto_4

    :cond_8
    sget-object p1, Lcom/android/internal/telephony/SemDeviceStateMonitor$SarDeviceId;->NBM:Lcom/android/internal/telephony/SemDeviceStateMonitor$SarDeviceId;

    :goto_4
    invoke-virtual {v0, p1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 90
    iget-object p1, p0, Lcom/android/internal/telephony/SemTelephonyBatteryMonitorImpl$1;->this$0:Lcom/android/internal/telephony/SemTelephonyBatteryMonitorImpl;

    invoke-static {p1}, Lcom/android/internal/telephony/SemTelephonyBatteryMonitorImpl;->-$$Nest$fgetmIsDirectMode(Lcom/android/internal/telephony/SemTelephonyBatteryMonitorImpl;)Z

    move-result p1

    goto :goto_5

    :cond_9
    move p1, v5

    .line 92
    :goto_5
    invoke-static {}, Lcom/samsung/android/feature/SemCarrierFeature;->getInstance()Lcom/samsung/android/feature/SemCarrierFeature;

    move-result-object v1

    iget-object v7, p0, Lcom/android/internal/telephony/SemTelephonyBatteryMonitorImpl$1;->this$0:Lcom/android/internal/telephony/SemTelephonyBatteryMonitorImpl;

    invoke-static {v7}, Lcom/android/internal/telephony/SemTelephonyBatteryMonitorImpl;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/SemTelephonyBatteryMonitorImpl;)Lcom/android/internal/telephony/Phone;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v7

    const-string v8, "CarrierFeature_RIL_UaiSupported"

    invoke-virtual {v1, v7, v8, v5, v4}, Lcom/samsung/android/feature/SemCarrierFeature;->getBoolean(ILjava/lang/String;ZZ)Z

    move-result v1

    if-eqz v1, :cond_c

    sget-boolean v1, Lcom/android/internal/telephony/TelephonyFeatures;->IS_QCOM:Z

    if-eqz v1, :cond_c

    .line 94
    const-string v1, "level"

    invoke-virtual {p2, v1, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 95
    const-string v7, "status"

    invoke-virtual {p2, v7, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    sput v7, Lcom/android/internal/telephony/SemDeviceStateMonitor;->mBatteryChargeState:I

    .line 97
    const-string v7, "plugged"

    invoke-virtual {p2, v7, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    sput p2, Lcom/android/internal/telephony/SemDeviceStateMonitor;->mBatteryChargingType:I

    .line 100
    iget-object p2, p0, Lcom/android/internal/telephony/SemTelephonyBatteryMonitorImpl$1;->this$0:Lcom/android/internal/telephony/SemTelephonyBatteryMonitorImpl;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "old values: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v7, Lcom/android/internal/telephony/SemDeviceStateMonitor;->mBatteryLevel:I

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p2, v4}, Lcom/android/internal/telephony/SemTelephonyBatteryMonitorImpl;->-$$Nest$mlog(Lcom/android/internal/telephony/SemTelephonyBatteryMonitorImpl;Ljava/lang/String;)V

    .line 101
    iget-object p2, p0, Lcom/android/internal/telephony/SemTelephonyBatteryMonitorImpl$1;->this$0:Lcom/android/internal/telephony/SemTelephonyBatteryMonitorImpl;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "new values: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v7, Lcom/android/internal/telephony/SemDeviceStateMonitor;->mBatteryChargeState:I

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p2, v4}, Lcom/android/internal/telephony/SemTelephonyBatteryMonitorImpl;->-$$Nest$mlog(Lcom/android/internal/telephony/SemTelephonyBatteryMonitorImpl;Ljava/lang/String;)V

    .line 103
    sget p2, Lcom/android/internal/telephony/SemDeviceStateMonitor;->mBatteryLevel:I

    if-eq p2, v1, :cond_c

    .line 104
    sput v1, Lcom/android/internal/telephony/SemDeviceStateMonitor;->mBatteryLevel:I

    const/16 p2, 0xe

    if-ne v1, p2, :cond_a

    .line 105
    sget p2, Lcom/android/internal/telephony/SemDeviceStateMonitor;->mBatteryChargeState:I

    const/4 v1, 0x3

    if-eq p2, v1, :cond_b

    :cond_a
    sget p2, Lcom/android/internal/telephony/SemDeviceStateMonitor;->mBatteryLevel:I

    const/16 v1, 0x10

    if-ne p2, v1, :cond_c

    sget p2, Lcom/android/internal/telephony/SemDeviceStateMonitor;->mBatteryChargeState:I

    if-ne p2, v3, :cond_c

    .line 109
    :cond_b
    iget-object p2, p0, Lcom/android/internal/telephony/SemTelephonyBatteryMonitorImpl$1;->this$0:Lcom/android/internal/telephony/SemTelephonyBatteryMonitorImpl;

    const-string v1, "sending Battery Stats"

    invoke-static {p2, v1}, Lcom/android/internal/telephony/SemTelephonyBatteryMonitorImpl;->-$$Nest$mlog(Lcom/android/internal/telephony/SemTelephonyBatteryMonitorImpl;Ljava/lang/String;)V

    .line 111
    iget-object p2, p0, Lcom/android/internal/telephony/SemTelephonyBatteryMonitorImpl$1;->this$0:Lcom/android/internal/telephony/SemTelephonyBatteryMonitorImpl;

    invoke-static {p2}, Lcom/android/internal/telephony/SemTelephonyBatteryMonitorImpl;->-$$Nest$fgetmHandler(Lcom/android/internal/telephony/SemTelephonyBatteryMonitorImpl;)Landroid/os/Handler;

    move-result-object p2

    iget-object v1, p0, Lcom/android/internal/telephony/SemTelephonyBatteryMonitorImpl$1;->this$0:Lcom/android/internal/telephony/SemTelephonyBatteryMonitorImpl;

    invoke-static {v1}, Lcom/android/internal/telephony/SemTelephonyBatteryMonitorImpl;->-$$Nest$fgetmHandler(Lcom/android/internal/telephony/SemTelephonyBatteryMonitorImpl;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v6, v5, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_c
    move v5, p1

    goto/16 :goto_7

    .line 115
    :cond_d
    const-string v1, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 116
    const-string p1, "configured"

    invoke-virtual {p2, p1, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 118
    iget-object p1, p0, Lcom/android/internal/telephony/SemTelephonyBatteryMonitorImpl$1;->this$0:Lcom/android/internal/telephony/SemTelephonyBatteryMonitorImpl;

    invoke-static {p1}, Lcom/android/internal/telephony/SemTelephonyBatteryMonitorImpl;->-$$Nest$mcheckUsbVersion(Lcom/android/internal/telephony/SemTelephonyBatteryMonitorImpl;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 119
    sget-object p1, Lcom/android/internal/telephony/SemDeviceStateMonitor$SarDeviceId;->USB31:Lcom/android/internal/telephony/SemDeviceStateMonitor$SarDeviceId;

    invoke-virtual {v0, p1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 122
    :cond_e
    const-string v1, "com.sec.android.UAI_INFO"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 124
    const-string p1, "TlistLen"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 125
    new-instance p2, Ljava/util/StringTokenizer;

    const-string v1, ","

    invoke-direct {p2, p1, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    invoke-virtual {p2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    sput p1, Lcom/android/internal/telephony/SemDeviceStateMonitor;->mThresholdLen:I

    .line 127
    invoke-static {}, Lcom/android/internal/telephony/SemTelephonyBatteryMonitorImpl;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "uai ThresholdLen "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/android/internal/telephony/SemDeviceStateMonitor;->mThresholdLen:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move p1, v5

    .line 128
    :goto_6
    sget v1, Lcom/android/internal/telephony/SemDeviceStateMonitor;->mThresholdLen:I

    if-ge p1, v1, :cond_f

    .line 129
    sget-object v1, Lcom/android/internal/telephony/SemDeviceStateMonitor;->mBatteryThresholdList:[I

    invoke-virtual {p2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v1, p1

    .line 130
    invoke-static {}, Lcom/android/internal/telephony/SemTelephonyBatteryMonitorImpl;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "uai Thresholdlist "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Lcom/android/internal/telephony/SemDeviceStateMonitor;->mBatteryThresholdList:[I

    aget v7, v7, p1

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 p1, p1, 0x1

    goto :goto_6

    .line 132
    :cond_f
    iget-object p1, p0, Lcom/android/internal/telephony/SemTelephonyBatteryMonitorImpl$1;->this$0:Lcom/android/internal/telephony/SemTelephonyBatteryMonitorImpl;

    invoke-static {p1}, Lcom/android/internal/telephony/SemTelephonyBatteryMonitorImpl;->-$$Nest$fgetmHandler(Lcom/android/internal/telephony/SemTelephonyBatteryMonitorImpl;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/android/internal/telephony/SemTelephonyBatteryMonitorImpl$1;->this$0:Lcom/android/internal/telephony/SemTelephonyBatteryMonitorImpl;

    invoke-static {p2}, Lcom/android/internal/telephony/SemTelephonyBatteryMonitorImpl;->-$$Nest$fgetmHandler(Lcom/android/internal/telephony/SemTelephonyBatteryMonitorImpl;)Landroid/os/Handler;

    move-result-object p2

    invoke-virtual {p2, v6, v4, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 135
    :cond_10
    :goto_7
    invoke-virtual {v0}, Ljava/util/EnumSet;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_11

    .line 136
    iget-object p1, p0, Lcom/android/internal/telephony/SemTelephonyBatteryMonitorImpl$1;->this$0:Lcom/android/internal/telephony/SemTelephonyBatteryMonitorImpl;

    invoke-static {p1}, Lcom/android/internal/telephony/SemTelephonyBatteryMonitorImpl;->-$$Nest$fgetmHandler(Lcom/android/internal/telephony/SemTelephonyBatteryMonitorImpl;)Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/android/internal/telephony/SemTelephonyBatteryMonitorImpl$1;->this$0:Lcom/android/internal/telephony/SemTelephonyBatteryMonitorImpl;

    invoke-static {p0}, Lcom/android/internal/telephony/SemTelephonyBatteryMonitorImpl;->-$$Nest$fgetmHandler(Lcom/android/internal/telephony/SemTelephonyBatteryMonitorImpl;)Landroid/os/Handler;

    move-result-object p0

    new-instance p2, Landroid/util/Pair;

    .line 137
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p2, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 136
    invoke-virtual {p0, v2, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_11
    return-void
.end method
