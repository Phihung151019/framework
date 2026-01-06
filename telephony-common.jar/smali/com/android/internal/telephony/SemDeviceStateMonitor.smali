.class public Lcom/android/internal/telephony/SemDeviceStateMonitor;
.super Lcom/android/internal/telephony/DeviceStateMonitor;
.source "SemDeviceStateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/SemDeviceStateMonitor$SarDeviceId;,
        Lcom/android/internal/telephony/SemDeviceStateMonitor$WifiFrequencyListener;
    }
.end annotation


# static fields
.field protected static final blacklist EVENT_ANGLE_STATE_CHECKED:I = 0x6c

.field protected static final blacklist EVENT_BATTERY_STATE_BROADCASTED:I = 0x69

.field protected static final blacklist EVENT_DEVICE_STATE_BROADCASTED:I = 0x64

.field protected static final blacklist EVENT_FLIP_STATE_CHANGED:I = 0x6b

.field protected static final blacklist EVENT_FOLD_STATE_CHANGED:I = 0x66

.field protected static final blacklist EVENT_SATELLITE_DEVICE_STATE_BROADCASTED:I = 0x6a

.field protected static final blacklist TAG:Ljava/lang/String; = "SemDeviceStateMonitor"

.field protected static blacklist mBatteryCapacity:I = 0x0

.field protected static blacklist mBatteryChargeState:I = 0x0

.field protected static blacklist mBatteryChargingType:I = 0x0

.field protected static blacklist mBatteryIndex:I = 0x1

.field protected static blacklist mBatteryLevel:I

.field protected static blacklist mBatteryThresholdList:[I

.field protected static blacklist mThresholdLen:I


# instance fields
.field private blacklist mBatteryMonitor:Lcom/android/internal/telephony/SemTelephonyBatteryMonitor;

.field private blacklist mDexHelper:Lcom/android/internal/telephony/SemTelephonyDexHelper;

.field private blacklist mElevatorMonitor:Lcom/android/internal/telephony/SemElevatorMonitor;

.field private blacklist mEnabledIdSet:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lcom/android/internal/telephony/SemDeviceStateMonitor$SarDeviceId;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mFoldStateMonitor:Lcom/android/internal/telephony/SemTelephonyFoldStateMonitor;

.field private blacklist mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private blacklist mIsMmwAlloc:Z

.field private blacklist mIsScreenOn:Z

.field private blacklist mLocalLog:Lcom/android/internal/telephony/LocalLog;

.field private final blacklist mPhone:Lcom/android/internal/telephony/Phone;

.field private blacklist mSettingsObserver:Lcom/android/internal/telephony/SettingsObserver;

.field private blacklist mWifiFrequencyListener:Lcom/android/internal/telephony/SemDeviceStateMonitor$WifiFrequencyListener;

.field private blacklist mWifiSarPower:Lcom/android/internal/telephony/SemDeviceStateMonitor$SarDeviceId;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmDexHelper(Lcom/android/internal/telephony/SemDeviceStateMonitor;)Lcom/android/internal/telephony/SemTelephonyDexHelper;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/SemDeviceStateMonitor;->mDexHelper:Lcom/android/internal/telephony/SemTelephonyDexHelper;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPhone(Lcom/android/internal/telephony/SemDeviceStateMonitor;)Lcom/android/internal/telephony/Phone;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/SemDeviceStateMonitor;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmWifiFrequencyListener(Lcom/android/internal/telephony/SemDeviceStateMonitor;)Lcom/android/internal/telephony/SemDeviceStateMonitor$WifiFrequencyListener;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/SemDeviceStateMonitor;->mWifiFrequencyListener:Lcom/android/internal/telephony/SemDeviceStateMonitor$WifiFrequencyListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmWifiSarPower(Lcom/android/internal/telephony/SemDeviceStateMonitor;)Lcom/android/internal/telephony/SemDeviceStateMonitor$SarDeviceId;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/SemDeviceStateMonitor;->mWifiSarPower:Lcom/android/internal/telephony/SemDeviceStateMonitor$SarDeviceId;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmWifiSarPower(Lcom/android/internal/telephony/SemDeviceStateMonitor;Lcom/android/internal/telephony/SemDeviceStateMonitor$SarDeviceId;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/internal/telephony/SemDeviceStateMonitor;->mWifiSarPower:Lcom/android/internal/telephony/SemDeviceStateMonitor$SarDeviceId;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mcheckHdmiDpRate(Lcom/android/internal/telephony/SemDeviceStateMonitor;)Z
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/SemDeviceStateMonitor;->checkHdmiDpRate()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mcheckOtgVersion(Lcom/android/internal/telephony/SemDeviceStateMonitor;)Z
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/SemDeviceStateMonitor;->checkOtgVersion()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mlog(Lcom/android/internal/telephony/SemDeviceStateMonitor;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemDeviceStateMonitor;->log(Ljava/lang/String;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    const/16 v0, 0x33

    .line 120
    new-array v0, v0, [I

    sput-object v0, Lcom/android/internal/telephony/SemDeviceStateMonitor;->mBatteryThresholdList:[I

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V
    .locals 2

    .line 134
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/DeviceStateMonitor;-><init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V

    .line 109
    new-instance p2, Lcom/android/internal/telephony/LocalLog;

    const/16 v0, 0x8

    invoke-direct {p2, v0}, Lcom/android/internal/telephony/LocalLog;-><init>(I)V

    iput-object p2, p0, Lcom/android/internal/telephony/SemDeviceStateMonitor;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    .line 111
    const-class p2, Lcom/android/internal/telephony/SemDeviceStateMonitor$SarDeviceId;

    invoke-static {p2}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object p2

    iput-object p2, p0, Lcom/android/internal/telephony/SemDeviceStateMonitor;->mEnabledIdSet:Ljava/util/EnumSet;

    const/4 p2, 0x0

    .line 112
    iput-boolean p2, p0, Lcom/android/internal/telephony/SemDeviceStateMonitor;->mIsMmwAlloc:Z

    .line 113
    sget-object p2, Lcom/android/internal/telephony/SemDeviceStateMonitor$SarDeviceId;->DEFAULT:Lcom/android/internal/telephony/SemDeviceStateMonitor$SarDeviceId;

    iput-object p2, p0, Lcom/android/internal/telephony/SemDeviceStateMonitor;->mWifiSarPower:Lcom/android/internal/telephony/SemDeviceStateMonitor$SarDeviceId;

    .line 171
    new-instance p2, Lcom/android/internal/telephony/SemDeviceStateMonitor$1;

    invoke-direct {p2, p0}, Lcom/android/internal/telephony/SemDeviceStateMonitor$1;-><init>(Lcom/android/internal/telephony/SemDeviceStateMonitor;)V

    iput-object p2, p0, Lcom/android/internal/telephony/SemDeviceStateMonitor;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 135
    iput-object p1, p0, Lcom/android/internal/telephony/SemDeviceStateMonitor;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 136
    new-instance p2, Lcom/android/internal/telephony/SemElevatorMonitorImpl;

    invoke-direct {p2, p1}, Lcom/android/internal/telephony/SemElevatorMonitorImpl;-><init>(Lcom/android/internal/telephony/Phone;)V

    iput-object p2, p0, Lcom/android/internal/telephony/SemDeviceStateMonitor;->mElevatorMonitor:Lcom/android/internal/telephony/SemElevatorMonitor;

    .line 137
    new-instance p2, Lcom/android/internal/telephony/SemTelephonyBatteryMonitorImpl;

    invoke-direct {p2}, Lcom/android/internal/telephony/SemTelephonyBatteryMonitorImpl;-><init>()V

    iput-object p2, p0, Lcom/android/internal/telephony/SemDeviceStateMonitor;->mBatteryMonitor:Lcom/android/internal/telephony/SemTelephonyBatteryMonitor;

    .line 138
    invoke-interface {p2, p1, p0}, Lcom/android/internal/telephony/SemTelephonyBatteryMonitor;->init(Lcom/android/internal/telephony/Phone;Landroid/os/Handler;)V

    .line 139
    new-instance p2, Lcom/android/internal/telephony/SemTelephonyDexHelperImpl;

    invoke-direct {p2}, Lcom/android/internal/telephony/SemTelephonyDexHelperImpl;-><init>()V

    iput-object p2, p0, Lcom/android/internal/telephony/SemDeviceStateMonitor;->mDexHelper:Lcom/android/internal/telephony/SemTelephonyDexHelper;

    .line 140
    invoke-direct {p0}, Lcom/android/internal/telephony/SemDeviceStateMonitor;->isScreenOn()Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/internal/telephony/SemDeviceStateMonitor;->mIsScreenOn:Z

    .line 141
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p2

    const-class v0, Landroid/os/BatteryManager;

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/BatteryManager;

    const/4 v0, 0x4

    .line 142
    invoke-virtual {p2, v0}, Landroid/os/BatteryManager;->getIntProperty(I)I

    move-result p2

    sput p2, Lcom/android/internal/telephony/SemDeviceStateMonitor;->mBatteryCapacity:I

    .line 145
    sget-boolean p2, Lcom/android/internal/telephony/TelephonyFeatures;->IS_WIFI_ONLY:Z

    if-nez p2, :cond_0

    .line 146
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object p2

    const/16 v0, 0x65

    const/4 v1, 0x0

    invoke-virtual {p2, p0, v0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForNrFrequencyChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 147
    new-instance p2, Lcom/android/internal/telephony/SemTelephonyFoldStateMonitorImpl;

    invoke-direct {p2}, Lcom/android/internal/telephony/SemTelephonyFoldStateMonitorImpl;-><init>()V

    iput-object p2, p0, Lcom/android/internal/telephony/SemDeviceStateMonitor;->mFoldStateMonitor:Lcom/android/internal/telephony/SemTelephonyFoldStateMonitor;

    .line 148
    invoke-interface {p2, p1, p0}, Lcom/android/internal/telephony/SemTelephonyFoldStateMonitor;->init(Lcom/android/internal/telephony/Phone;Landroid/os/Handler;)V

    .line 149
    new-instance p2, Lcom/android/internal/telephony/SemDeviceStateMonitor$WifiFrequencyListener;

    invoke-direct {p2, p0, v1}, Lcom/android/internal/telephony/SemDeviceStateMonitor$WifiFrequencyListener;-><init>(Lcom/android/internal/telephony/SemDeviceStateMonitor;Lcom/android/internal/telephony/SemDeviceStateMonitor-IA;)V

    iput-object p2, p0, Lcom/android/internal/telephony/SemDeviceStateMonitor;->mWifiFrequencyListener:Lcom/android/internal/telephony/SemDeviceStateMonitor$WifiFrequencyListener;

    .line 150
    invoke-static {p2}, Lcom/android/internal/telephony/SemDeviceStateMonitor$WifiFrequencyListener;->-$$Nest$minit(Lcom/android/internal/telephony/SemDeviceStateMonitor$WifiFrequencyListener;)V

    .line 152
    new-instance p2, Lcom/android/internal/telephony/SettingsObserver;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0, p0}, Lcom/android/internal/telephony/SettingsObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/android/internal/telephony/SemDeviceStateMonitor;->mSettingsObserver:Lcom/android/internal/telephony/SettingsObserver;

    .line 153
    const-string v0, "hearing_aid"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/16 v1, 0x68

    invoke-virtual {p2, v0, v1}, Lcom/android/internal/telephony/SettingsObserver;->observe(Landroid/net/Uri;I)V

    .line 154
    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 157
    new-instance p2, Landroid/content/IntentFilter;

    invoke-direct {p2}, Landroid/content/IntentFilter;-><init>()V

    .line 158
    const-string v0, "com.sec.android.contextaware.HEADSET_PLUG"

    invoke-virtual {p2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 159
    const-string v0, "com.samsung.UsbOtgCableConnection"

    invoke-virtual {p2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 160
    const-string v0, "android.samsung.media.action.receiver_sar"

    invoke-virtual {p2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 161
    const-string v0, "android.intent.action.DOCK_EVENT"

    invoke-virtual {p2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 162
    const-string v0, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    invoke-virtual {p2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 163
    const-string v0, "android.hardware.usb.action.USB_DEVICE_DETACHED"

    invoke-virtual {p2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 164
    const-string v0, "com.sec.android.app.camera.ACTION_CAMERA_START"

    invoke-virtual {p2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 165
    const-string v0, "com.sec.android.app.camera.ACTION_CAMERA_STOP"

    invoke-virtual {p2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 166
    const-string v0, "android.intent.action.HDMI_PLUGGED"

    invoke-virtual {p2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 167
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p0, p0, Lcom/android/internal/telephony/SemDeviceStateMonitor;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    const/4 v0, 0x2

    invoke-virtual {p1, p0, p2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method private blacklist checkHdmiDpRate()Z
    .locals 4

    .line 270
    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/class/dp_sec/bw_code"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 272
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 273
    const-string v0, "checkHdmiDpRate - DP rate path not exist"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemDeviceStateMonitor;->log(Ljava/lang/String;)V

    return v2

    :cond_0
    const/4 v1, 0x0

    .line 278
    :try_start_0
    invoke-static {v0, v2, v1}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 279
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkHdmiDpRate - DP Link rate is: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/SemDeviceStateMonitor;->log(Ljava/lang/String;)V

    .line 280
    const-string p0, "1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "2"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_2

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0

    .line 284
    :goto_1
    sget-object v0, Lcom/android/internal/telephony/SemDeviceStateMonitor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkHdmiDpRate is failed. "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v2
.end method

.method private blacklist checkOtgVersion()Z
    .locals 4

    .line 249
    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/class/usb_notify/usb_control/otg_speed"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 251
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 252
    const-string v0, "checkOtgVersion - OtgPath not exist"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemDeviceStateMonitor;->log(Ljava/lang/String;)V

    return v2

    :cond_0
    const/4 v1, 0x0

    .line 257
    :try_start_0
    invoke-static {v0, v2, v1}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 258
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkOtgVersion - OTG Speed is: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/SemDeviceStateMonitor;->log(Ljava/lang/String;)V

    .line 259
    const-string p0, "SUPER"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 263
    sget-object v0, Lcom/android/internal/telephony/SemDeviceStateMonitor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkOtgVersion is fail. "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v2
.end method

.method private blacklist isScreenOn()Z
    .locals 6

    .line 299
    iget-object v0, p0, Lcom/android/internal/telephony/SemDeviceStateMonitor;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "display"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 302
    sget-boolean v1, Lcom/android/internal/telephony/TelephonyFeatures;->IS_WATCH:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    move-result-object v0

    goto :goto_0

    .line 303
    :cond_0
    const-string v1, "com.samsung.android.hardware.display.category.BUILTIN"

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->getDisplays(Ljava/lang/String;)[Landroid/view/Display;

    move-result-object v0

    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 306
    array-length v2, v0

    move v3, v1

    :goto_1
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    .line 309
    invoke-virtual {v4}, Landroid/view/Display;->getState()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 310
    const-string v0, "Screen on for display"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemDeviceStateMonitor;->log(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 314
    :cond_2
    const-string v0, "Screens all off"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemDeviceStateMonitor;->log(Ljava/lang/String;)V

    return v1

    .line 318
    :cond_3
    const-string v0, "No displays found"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemDeviceStateMonitor;->log(Ljava/lang/String;)V

    return v1
.end method

.method private blacklist log(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 454
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/SemDeviceStateMonitor;->log(Ljava/lang/String;Z)V

    return-void
.end method

.method private blacklist log(Ljava/lang/String;Z)V
    .locals 1

    .line 462
    sget-object v0, Lcom/android/internal/telephony/SemDeviceStateMonitor;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_0

    .line 464
    iget-object p0, p0, Lcom/android/internal/telephony/SemDeviceStateMonitor;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private blacklist onReset()V
    .locals 2

    .line 330
    const-string v0, "onReset"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemDeviceStateMonitor;->log(Ljava/lang/String;)V

    .line 331
    sget-object v0, Lcom/android/internal/telephony/SemDeviceStateMonitor$SarDeviceId;->SCREEN:Lcom/android/internal/telephony/SemDeviceStateMonitor$SarDeviceId;

    iget-boolean v1, p0, Lcom/android/internal/telephony/SemDeviceStateMonitor;->mIsScreenOn:Z

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/SemDeviceStateMonitor;->sendBackoffRequest(Lcom/android/internal/telephony/SemDeviceStateMonitor$SarDeviceId;Z)V

    .line 332
    iget-object v0, p0, Lcom/android/internal/telephony/SemDeviceStateMonitor;->mEnabledIdSet:Ljava/util/EnumSet;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/SemDeviceStateMonitor;->sendBackoffRequest(Ljava/util/EnumSet;Z)V

    return-void
.end method

.method private blacklist sendBackoffRequestInternal(JZ)V
    .locals 4

    .line 387
    const-string v0, "sendBackoffRequestInternal close is fail. "

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 388
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/16 v3, 0x11

    .line 391
    :try_start_0
    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/16 v3, 0x82

    .line 392
    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/16 v3, 0xd

    .line 393
    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 394
    invoke-virtual {v2, p3}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 395
    invoke-virtual {v2, p1, p2}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 397
    iget-object p0, p0, Lcom/android/internal/telephony/SemDeviceStateMonitor;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object p0, p0, Lcom/android/internal/telephony/SemPhoneInternal;->mSemCi:Lcom/android/internal/telephony/SemCommandsInterface;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {p0, p1, p2}, Lcom/android/internal/telephony/SemCommandsInterface;->invokeOemRilRequestRaw([BLandroid/os/Message;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 402
    :try_start_1
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    .line 403
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 405
    sget-object p1, Lcom/android/internal/telephony/SemDeviceStateMonitor;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_1
    move-exception p0

    .line 399
    :try_start_2
    sget-object p1, Lcom/android/internal/telephony/SemDeviceStateMonitor;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "sendBackoffRequestInternal is fail. "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 402
    :try_start_3
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    .line 403
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    :catch_2
    move-exception p0

    .line 405
    sget-object p1, Lcom/android/internal/telephony/SemDeviceStateMonitor;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_0

    :goto_1
    return-void

    .line 402
    :goto_2
    :try_start_4
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    .line 403
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_3

    :catch_3
    move-exception p1

    .line 405
    sget-object p2, Lcom/android/internal/telephony/SemDeviceStateMonitor;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    :goto_3
    throw p0
.end method

.method private blacklist sendBatteryStats(I)V
    .locals 7

    .line 411
    const-string v0, "sendBatteryStats close is fail. "

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 412
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 414
    sget v3, Lcom/android/internal/telephony/SemDeviceStateMonitor;->mBatteryCapacity:I

    if-lez v3, :cond_0

    .line 415
    div-int/lit16 v3, v3, 0x3e8

    sput v3, Lcom/android/internal/telephony/SemDeviceStateMonitor;->mBatteryCapacity:I

    .line 418
    :cond_0
    sget v3, Lcom/android/internal/telephony/SemDeviceStateMonitor;->mThresholdLen:I

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    .line 419
    :goto_0
    sget v4, Lcom/android/internal/telephony/SemDeviceStateMonitor;->mThresholdLen:I

    if-ge v3, v4, :cond_2

    .line 420
    sget-object v4, Lcom/android/internal/telephony/SemDeviceStateMonitor;->mBatteryThresholdList:[I

    aget v5, v4, v3

    sget v6, Lcom/android/internal/telephony/SemDeviceStateMonitor;->mBatteryLevel:I

    if-lt v5, v6, :cond_1

    add-int/lit8 v5, v3, -0x1

    aget v4, v4, v5

    if-ge v4, v6, :cond_1

    .line 421
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "uai mBatteryThresholdList values: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lcom/android/internal/telephony/SemDeviceStateMonitor;->mBatteryThresholdList:[I

    aget v6, v6, v3

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lcom/android/internal/telephony/SemDeviceStateMonitor;->mBatteryThresholdList:[I

    aget v5, v6, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/SemDeviceStateMonitor;->log(Ljava/lang/String;)V

    .line 422
    sput v3, Lcom/android/internal/telephony/SemDeviceStateMonitor;->mBatteryIndex:I

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    const/16 v3, 0x11

    .line 429
    :try_start_0
    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/16 v3, 0xac

    .line 430
    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/16 v3, 0x9

    .line 431
    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 432
    sget v3, Lcom/android/internal/telephony/SemDeviceStateMonitor;->mBatteryLevel:I

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 433
    sget v3, Lcom/android/internal/telephony/SemDeviceStateMonitor;->mBatteryChargeState:I

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 434
    invoke-virtual {v2, p1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 435
    sget p1, Lcom/android/internal/telephony/SemDeviceStateMonitor;->mBatteryCapacity:I

    invoke-virtual {v2, p1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 436
    sget p1, Lcom/android/internal/telephony/SemDeviceStateMonitor;->mBatteryIndex:I

    invoke-virtual {v2, p1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 437
    iget-object p0, p0, Lcom/android/internal/telephony/SemDeviceStateMonitor;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object p0, p0, Lcom/android/internal/telephony/SemPhoneInternal;->mSemCi:Lcom/android/internal/telephony/SemCommandsInterface;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    const/4 v3, 0x0

    invoke-interface {p0, p1, v3}, Lcom/android/internal/telephony/SemCommandsInterface;->invokeOemRilRequestRaw([BLandroid/os/Message;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 442
    :try_start_1
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    .line 443
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 445
    sget-object p1, Lcom/android/internal/telephony/SemDeviceStateMonitor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :catchall_0
    move-exception p0

    goto :goto_4

    :catch_1
    move-exception p0

    .line 439
    :try_start_2
    sget-object p1, Lcom/android/internal/telephony/SemDeviceStateMonitor;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendBatteryStats is fail. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 442
    :try_start_3
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    .line 443
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3

    :catch_2
    move-exception p0

    .line 445
    sget-object p1, Lcom/android/internal/telephony/SemDeviceStateMonitor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_2

    :goto_3
    return-void

    .line 442
    :goto_4
    :try_start_4
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    .line 443
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_5

    :catch_3
    move-exception p1

    .line 445
    sget-object v1, Lcom/android/internal/telephony/SemDeviceStateMonitor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    :goto_5
    throw p0
.end method


# virtual methods
.method public blacklist dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    .line 579
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/DeviceStateMonitor;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 581
    new-instance v0, Lcom/android/internal/telephony/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p2, v1}, Lcom/android/internal/telephony/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 582
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 583
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/internal/telephony/SemDeviceStateMonitor;->TAG:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Local logs:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 584
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 585
    iget-object p2, p0, Lcom/android/internal/telephony/SemDeviceStateMonitor;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {p2, p1, v0, p3}, Lcom/android/internal/telephony/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 586
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 587
    iget-object p0, p0, Lcom/android/internal/telephony/SemDeviceStateMonitor;->mElevatorMonitor:Lcom/android/internal/telephony/SemElevatorMonitor;

    invoke-interface {p0, p1, v0, p3}, Lcom/android/internal/telephony/SemElevatorMonitor;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 588
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 589
    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    return-void
.end method

.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 488
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_c

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_9

    const/4 v1, 0x6

    if-eq v0, v1, :cond_c

    const/4 v1, 0x7

    if-eq v0, v1, :cond_7

    packed-switch v0, :pswitch_data_0

    .line 572
    invoke-super {p0, p1}, Lcom/android/internal/telephony/DeviceStateMonitor;->handleMessage(Landroid/os/Message;)V

    return-void

    .line 568
    :pswitch_0
    iget-object p0, p0, Lcom/android/internal/telephony/SemDeviceStateMonitor;->mFoldStateMonitor:Lcom/android/internal/telephony/SemTelephonyFoldStateMonitor;

    invoke-interface {p0}, Lcom/android/internal/telephony/SemTelephonyFoldStateMonitor;->unregisterCheckAngleSensorStateListener()V

    return-void

    .line 559
    :pswitch_1
    sget-object v0, Lcom/android/internal/telephony/SemDeviceStateMonitor$SarDeviceId;->FLIP:Lcom/android/internal/telephony/SemDeviceStateMonitor$SarDeviceId;

    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v3, :cond_0

    move v2, v3

    :cond_0
    invoke-virtual {p0, v0, v2}, Lcom/android/internal/telephony/SemDeviceStateMonitor;->sendBackoffRequest(Lcom/android/internal/telephony/SemDeviceStateMonitor$SarDeviceId;Z)V

    return-void

    .line 526
    :pswitch_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/util/Pair;

    .line 527
    iget-object p0, p0, Lcom/android/internal/telephony/SemDeviceStateMonitor;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/SemDeviceStateMonitor$SarDeviceId;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/SemPhoneInternal;->sendSatelliteBackoffRequest(Lcom/android/internal/telephony/SemDeviceStateMonitor$SarDeviceId;Z)V

    return-void

    .line 532
    :pswitch_3
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemDeviceStateMonitor;->sendBatteryStats(I)V

    return-void

    .line 563
    :pswitch_4
    iget-object p1, p0, Lcom/android/internal/telephony/SemDeviceStateMonitor;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "hearing_aid"

    invoke-static {p1, v0, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    .line 564
    sget-object v0, Lcom/android/internal/telephony/SemDeviceStateMonitor$SarDeviceId;->HAC_MODE:Lcom/android/internal/telephony/SemDeviceStateMonitor$SarDeviceId;

    if-eqz p1, :cond_1

    move v2, v3

    :cond_1
    invoke-virtual {p0, v0, v2}, Lcom/android/internal/telephony/SemDeviceStateMonitor;->sendBackoffRequest(Lcom/android/internal/telephony/SemDeviceStateMonitor$SarDeviceId;Z)V

    return-void

    .line 512
    :pswitch_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/util/Pair;

    .line 513
    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    sget-object v1, Lcom/android/internal/telephony/SemDeviceStateMonitor$SarDeviceId;->DEFAULT:Lcom/android/internal/telephony/SemDeviceStateMonitor$SarDeviceId;

    if-eq v0, v1, :cond_2

    .line 514
    check-cast v0, Lcom/android/internal/telephony/SemDeviceStateMonitor$SarDeviceId;

    invoke-virtual {p0, v0, v2}, Lcom/android/internal/telephony/SemDeviceStateMonitor;->sendBackoffRequest(Lcom/android/internal/telephony/SemDeviceStateMonitor$SarDeviceId;Z)V

    .line 516
    :cond_2
    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/SemDeviceStateMonitor$SarDeviceId;

    invoke-virtual {p0, p1, v3}, Lcom/android/internal/telephony/SemDeviceStateMonitor;->sendBackoffRequest(Lcom/android/internal/telephony/SemDeviceStateMonitor$SarDeviceId;Z)V

    return-void

    .line 546
    :pswitch_6
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v3, :cond_3

    move v2, v3

    .line 547
    :cond_3
    sget-object p1, Lcom/android/internal/telephony/SemDeviceStateMonitor$SarDeviceId;->FOLD:Lcom/android/internal/telephony/SemDeviceStateMonitor$SarDeviceId;

    invoke-virtual {p0, p1, v2}, Lcom/android/internal/telephony/SemDeviceStateMonitor;->sendBackoffRequest(Lcom/android/internal/telephony/SemDeviceStateMonitor$SarDeviceId;Z)V

    .line 548
    iget-object p1, p0, Lcom/android/internal/telephony/SemDeviceStateMonitor;->mFoldStateMonitor:Lcom/android/internal/telephony/SemTelephonyFoldStateMonitor;

    invoke-interface {p1}, Lcom/android/internal/telephony/SemTelephonyFoldStateMonitor;->isFoldableTypeFlip()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p0, p0, Lcom/android/internal/telephony/SemDeviceStateMonitor;->mFoldStateMonitor:Lcom/android/internal/telephony/SemTelephonyFoldStateMonitor;

    if-eqz p0, :cond_6

    if-eqz v2, :cond_4

    .line 550
    invoke-interface {p0}, Lcom/android/internal/telephony/SemTelephonyFoldStateMonitor;->unregisterFlipForSarStateListener()V

    return-void

    .line 553
    :cond_4
    invoke-interface {p0}, Lcom/android/internal/telephony/SemTelephonyFoldStateMonitor;->registerCheckAngleSensorStateListener()V

    return-void

    .line 536
    :pswitch_7
    iget-object p1, p0, Lcom/android/internal/telephony/SemDeviceStateMonitor;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/ServiceStateTracker;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object p1

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getNrFrequencyRange()I

    move-result p1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_5

    move v2, v3

    .line 538
    :cond_5
    iget-boolean p1, p0, Lcom/android/internal/telephony/SemDeviceStateMonitor;->mIsMmwAlloc:Z

    if-eq p1, v2, :cond_6

    .line 539
    iput-boolean v2, p0, Lcom/android/internal/telephony/SemDeviceStateMonitor;->mIsMmwAlloc:Z

    .line 540
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mmW Allocation State changed: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/internal/telephony/SemDeviceStateMonitor;->mIsMmwAlloc:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemDeviceStateMonitor;->log(Ljava/lang/String;)V

    .line 541
    sget-object p1, Lcom/android/internal/telephony/SemDeviceStateMonitor$SarDeviceId;->MMW:Lcom/android/internal/telephony/SemDeviceStateMonitor$SarDeviceId;

    iget-boolean v0, p0, Lcom/android/internal/telephony/SemDeviceStateMonitor;->mIsMmwAlloc:Z

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/SemDeviceStateMonitor;->sendBackoffRequest(Lcom/android/internal/telephony/SemDeviceStateMonitor$SarDeviceId;Z)V

    :cond_6
    return-void

    .line 520
    :pswitch_8
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/util/Pair;

    .line 521
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/util/EnumSet;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/SemDeviceStateMonitor;->sendBackoffRequest(Ljava/util/EnumSet;Z)V

    return-void

    .line 504
    :cond_7
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-nez v0, :cond_8

    .line 505
    sget-object v0, Lcom/android/internal/telephony/SemDeviceStateMonitor$SarDeviceId;->DEFAULT:Lcom/android/internal/telephony/SemDeviceStateMonitor$SarDeviceId;

    iput-object v0, p0, Lcom/android/internal/telephony/SemDeviceStateMonitor;->mWifiSarPower:Lcom/android/internal/telephony/SemDeviceStateMonitor$SarDeviceId;

    .line 506
    sget-object v0, Lcom/android/internal/telephony/SemDeviceStateMonitor$SarDeviceId;->WIFI_24:Lcom/android/internal/telephony/SemDeviceStateMonitor$SarDeviceId;

    sget-object v1, Lcom/android/internal/telephony/SemDeviceStateMonitor$SarDeviceId;->WIFI_HIGH:Lcom/android/internal/telephony/SemDeviceStateMonitor$SarDeviceId;

    invoke-static {v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lcom/android/internal/telephony/SemDeviceStateMonitor;->sendBackoffRequest(Ljava/util/EnumSet;Z)V

    .line 508
    :cond_8
    invoke-super {p0, p1}, Lcom/android/internal/telephony/DeviceStateMonitor;->handleMessage(Landroid/os/Message;)V

    return-void

    .line 495
    :cond_9
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v3, :cond_a

    move v2, v3

    .line 496
    :cond_a
    iget-boolean v0, p0, Lcom/android/internal/telephony/SemDeviceStateMonitor;->mIsScreenOn:Z

    if-eq v0, v2, :cond_b

    .line 497
    iput-boolean v2, p0, Lcom/android/internal/telephony/SemDeviceStateMonitor;->mIsScreenOn:Z

    .line 498
    sget-object v0, Lcom/android/internal/telephony/SemDeviceStateMonitor$SarDeviceId;->SCREEN:Lcom/android/internal/telephony/SemDeviceStateMonitor$SarDeviceId;

    invoke-virtual {p0, v0, v2}, Lcom/android/internal/telephony/SemDeviceStateMonitor;->sendBackoffRequest(Lcom/android/internal/telephony/SemDeviceStateMonitor$SarDeviceId;Z)V

    .line 500
    :cond_b
    invoke-super {p0, p1}, Lcom/android/internal/telephony/DeviceStateMonitor;->handleMessage(Landroid/os/Message;)V

    return-void

    .line 491
    :cond_c
    invoke-direct {p0}, Lcom/android/internal/telephony/SemDeviceStateMonitor;->onReset()V

    .line 492
    invoke-super {p0, p1}, Lcom/android/internal/telephony/DeviceStateMonitor;->handleMessage(Landroid/os/Message;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public blacklist sendBackoffRequest(Lcom/android/internal/telephony/SemDeviceStateMonitor$SarDeviceId;Z)V
    .locals 3

    if-eqz p2, :cond_0

    .line 343
    iget-object v0, p0, Lcom/android/internal/telephony/SemDeviceStateMonitor;->mEnabledIdSet:Ljava/util/EnumSet;

    invoke-virtual {v0, p1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 345
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/SemDeviceStateMonitor;->mEnabledIdSet:Ljava/util/EnumSet;

    invoke-virtual {v0, p1}, Ljava/util/EnumSet;->remove(Ljava/lang/Object;)Z

    .line 348
    :goto_0
    sget-boolean v0, Lcom/android/internal/telephony/TelephonyFeatures;->SHIP_BUILD:Z

    if-nez v0, :cond_1

    .line 349
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendBackoffRequest["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/SemDeviceStateMonitor;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " (0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/internal/telephony/SemDeviceStateMonitor$SarDeviceId;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemDeviceStateMonitor;->log(Ljava/lang/String;)V

    .line 351
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/SemDeviceStateMonitor$SarDeviceId;->getId()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p2}, Lcom/android/internal/telephony/SemDeviceStateMonitor;->sendBackoffRequestInternal(JZ)V

    return-void
.end method

.method public blacklist sendBackoffRequest(Ljava/util/EnumSet;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet<",
            "Lcom/android/internal/telephony/SemDeviceStateMonitor$SarDeviceId;",
            ">;Z)V"
        }
    .end annotation

    const-wide/16 v0, 0x0

    .line 361
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 362
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 364
    invoke-virtual {p1}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/SemDeviceStateMonitor$SarDeviceId;

    if-eqz p2, :cond_0

    .line 366
    iget-object v3, p0, Lcom/android/internal/telephony/SemDeviceStateMonitor;->mEnabledIdSet:Ljava/util/EnumSet;

    invoke-virtual {v3, v2}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 368
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/SemDeviceStateMonitor;->mEnabledIdSet:Ljava/util/EnumSet;

    invoke-virtual {v3, v2}, Ljava/util/EnumSet;->remove(Ljava/lang/Object;)Z

    .line 370
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2}, Lcom/android/internal/telephony/SemDeviceStateMonitor$SarDeviceId;->getId()J

    move-result-wide v5

    or-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 371
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 374
    :cond_1
    sget-boolean p1, Lcom/android/internal/telephony/TelephonyFeatures;->SHIP_BUILD:Z

    if-nez p1, :cond_2

    .line 375
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendBackoffRequest["

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/SemDeviceStateMonitor;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] - "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "(0x"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemDeviceStateMonitor;->log(Ljava/lang/String;)V

    .line 377
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p2}, Lcom/android/internal/telephony/SemDeviceStateMonitor;->sendBackoffRequestInternal(JZ)V

    return-void
.end method

.method public blacklist setAlwaysReportSignalStrength(Z)V
    .locals 0

    .line 483
    const-string p1, "ignore setAlwaysReportSignalStrength"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemDeviceStateMonitor;->log(Ljava/lang/String;)V

    return-void
.end method
