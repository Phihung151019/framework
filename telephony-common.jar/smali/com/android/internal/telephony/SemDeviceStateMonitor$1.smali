.class Lcom/android/internal/telephony/SemDeviceStateMonitor$1;
.super Landroid/content/BroadcastReceiver;
.source "SemDeviceStateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SemDeviceStateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/SemDeviceStateMonitor;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/SemDeviceStateMonitor;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 171
    iput-object p1, p0, Lcom/android/internal/telephony/SemDeviceStateMonitor$1;->this$0:Lcom/android/internal/telephony/SemDeviceStateMonitor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .line 174
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 175
    const-class v0, Lcom/android/internal/telephony/SemDeviceStateMonitor$SarDeviceId;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    .line 178
    iget-object v1, p0, Lcom/android/internal/telephony/SemDeviceStateMonitor$1;->this$0:Lcom/android/internal/telephony/SemDeviceStateMonitor;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/SemDeviceStateMonitor;->-$$Nest$mlog(Lcom/android/internal/telephony/SemDeviceStateMonitor;Ljava/lang/String;)V

    .line 180
    const-string v1, "com.sec.android.contextaware.HEADSET_PLUG"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "state"

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_0

    .line 181
    sget-object p1, Lcom/android/internal/telephony/SemDeviceStateMonitor$SarDeviceId;->HEADSET:Lcom/android/internal/telephony/SemDeviceStateMonitor$SarDeviceId;

    invoke-virtual {v0, p1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 182
    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v3, :cond_7

    goto/16 :goto_1

    .line 183
    :cond_0
    const-string v1, "android.samsung.media.action.receiver_sar"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 184
    sget-object p1, Lcom/android/internal/telephony/SemDeviceStateMonitor$SarDeviceId;->RCV:Lcom/android/internal/telephony/SemDeviceStateMonitor$SarDeviceId;

    invoke-virtual {v0, p1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 185
    const-string v1, "android.samsung.media.extra.receiver"

    invoke-virtual {p2, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 186
    iget-object p2, p0, Lcom/android/internal/telephony/SemDeviceStateMonitor$1;->this$0:Lcom/android/internal/telephony/SemDeviceStateMonitor;

    new-instance v1, Landroid/util/Pair;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 p1, 0x6a

    invoke-virtual {p2, p1, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1

    .line 187
    :cond_1
    const-string v1, "com.samsung.UsbOtgCableConnection"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 188
    sget-object p1, Lcom/android/internal/telephony/SemDeviceStateMonitor$SarDeviceId;->OTG:Lcom/android/internal/telephony/SemDeviceStateMonitor$SarDeviceId;

    invoke-virtual {v0, p1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 189
    const-string p1, "Connect"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "On"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 192
    sget-object p1, Lcom/android/internal/telephony/SemDeviceStateMonitor$SarDeviceId;->OTG30:Lcom/android/internal/telephony/SemDeviceStateMonitor$SarDeviceId;

    invoke-virtual {v0, p1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 194
    :cond_2
    const-string v1, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "android.hardware.usb.action.USB_DEVICE_DETACHED"

    .line 195
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    .line 198
    :cond_3
    const-string v1, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 199
    sget-object p1, Lcom/android/internal/telephony/SemDeviceStateMonitor$SarDeviceId;->DEX_PAD:Lcom/android/internal/telephony/SemDeviceStateMonitor$SarDeviceId;

    invoke-virtual {v0, p1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 200
    iget-object p1, p0, Lcom/android/internal/telephony/SemDeviceStateMonitor$1;->this$0:Lcom/android/internal/telephony/SemDeviceStateMonitor;

    invoke-static {p1}, Lcom/android/internal/telephony/SemDeviceStateMonitor;->-$$Nest$fgetmDexHelper(Lcom/android/internal/telephony/SemDeviceStateMonitor;)Lcom/android/internal/telephony/SemTelephonyDexHelper;

    move-result-object p1

    const-string v1, "android.intent.extra.DOCK_STATE"

    invoke-virtual {p2, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    invoke-interface {p1, p2}, Lcom/android/internal/telephony/SemTelephonyDexHelper;->isDexEnabled(I)Z

    move-result v3

    goto :goto_1

    .line 201
    :cond_4
    const-string v1, "android.intent.action.HDMI_PLUGGED"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 202
    sget-object p1, Lcom/android/internal/telephony/SemDeviceStateMonitor$SarDeviceId;->LOWSPEED_HDMI:Lcom/android/internal/telephony/SemDeviceStateMonitor$SarDeviceId;

    invoke-virtual {v0, p1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 203
    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 204
    iget-object p1, p0, Lcom/android/internal/telephony/SemDeviceStateMonitor$1;->this$0:Lcom/android/internal/telephony/SemDeviceStateMonitor;

    invoke-static {p1}, Lcom/android/internal/telephony/SemDeviceStateMonitor;->-$$Nest$mcheckHdmiDpRate(Lcom/android/internal/telephony/SemDeviceStateMonitor;)Z

    move-result v3

    goto :goto_1

    .line 206
    :cond_5
    const-string p2, "com.sec.android.app.camera.ACTION_CAMERA_START"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 207
    sget-object p1, Lcom/android/internal/telephony/SemDeviceStateMonitor$SarDeviceId;->CAMERA:Lcom/android/internal/telephony/SemDeviceStateMonitor$SarDeviceId;

    invoke-virtual {v0, p1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 209
    :cond_6
    const-string p2, "com.sec.android.app.camera.ACTION_CAMERA_STOP"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 210
    sget-object p1, Lcom/android/internal/telephony/SemDeviceStateMonitor$SarDeviceId;->CAMERA:Lcom/android/internal/telephony/SemDeviceStateMonitor$SarDeviceId;

    invoke-virtual {v0, p1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    :cond_7
    move v3, v4

    goto :goto_1

    .line 196
    :cond_8
    :goto_0
    sget-object p1, Lcom/android/internal/telephony/SemDeviceStateMonitor$SarDeviceId;->OTG30:Lcom/android/internal/telephony/SemDeviceStateMonitor$SarDeviceId;

    invoke-virtual {v0, p1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 197
    iget-object p1, p0, Lcom/android/internal/telephony/SemDeviceStateMonitor$1;->this$0:Lcom/android/internal/telephony/SemDeviceStateMonitor;

    invoke-static {p1}, Lcom/android/internal/telephony/SemDeviceStateMonitor;->-$$Nest$mcheckOtgVersion(Lcom/android/internal/telephony/SemDeviceStateMonitor;)Z

    move-result v3

    .line 214
    :cond_9
    :goto_1
    invoke-virtual {v0}, Ljava/util/EnumSet;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_a

    .line 215
    iget-object p0, p0, Lcom/android/internal/telephony/SemDeviceStateMonitor$1;->this$0:Lcom/android/internal/telephony/SemDeviceStateMonitor;

    new-instance p1, Landroid/util/Pair;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-direct {p1, v0, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 p2, 0x64

    invoke-virtual {p0, p2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_a
    return-void
.end method
