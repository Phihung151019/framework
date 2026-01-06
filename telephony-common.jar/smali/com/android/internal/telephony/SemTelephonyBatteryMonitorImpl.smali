.class public Lcom/android/internal/telephony/SemTelephonyBatteryMonitorImpl;
.super Ljava/lang/Object;
.source "SemTelephonyBatteryMonitorImpl.java"

# interfaces
.implements Lcom/android/internal/telephony/SemTelephonyBatteryMonitor;


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "SemTelephonyBatteryMonitorImpl"


# instance fields
.field private blacklist mHandler:Landroid/os/Handler;

.field private blacklist mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private blacklist mIsDirectMode:Z

.field private blacklist mIsWirelessCharge:Z

.field private blacklist mPhone:Lcom/android/internal/telephony/Phone;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmHandler(Lcom/android/internal/telephony/SemTelephonyBatteryMonitorImpl;)Landroid/os/Handler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/SemTelephonyBatteryMonitorImpl;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsDirectMode(Lcom/android/internal/telephony/SemTelephonyBatteryMonitorImpl;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/internal/telephony/SemTelephonyBatteryMonitorImpl;->mIsDirectMode:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsWirelessCharge(Lcom/android/internal/telephony/SemTelephonyBatteryMonitorImpl;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/internal/telephony/SemTelephonyBatteryMonitorImpl;->mIsWirelessCharge:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPhone(Lcom/android/internal/telephony/SemTelephonyBatteryMonitorImpl;)Lcom/android/internal/telephony/Phone;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/SemTelephonyBatteryMonitorImpl;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIsDirectMode(Lcom/android/internal/telephony/SemTelephonyBatteryMonitorImpl;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/internal/telephony/SemTelephonyBatteryMonitorImpl;->mIsDirectMode:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIsWirelessCharge(Lcom/android/internal/telephony/SemTelephonyBatteryMonitorImpl;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/internal/telephony/SemTelephonyBatteryMonitorImpl;->mIsWirelessCharge:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mcheckUsbVersion(Lcom/android/internal/telephony/SemTelephonyBatteryMonitorImpl;)Z
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/SemTelephonyBatteryMonitorImpl;->checkUsbVersion()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mlog(Lcom/android/internal/telephony/SemTelephonyBatteryMonitorImpl;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemTelephonyBatteryMonitorImpl;->log(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/internal/telephony/SemTelephonyBatteryMonitorImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 33
    iput-boolean v0, p0, Lcom/android/internal/telephony/SemTelephonyBatteryMonitorImpl;->mIsDirectMode:Z

    .line 34
    iput-boolean v0, p0, Lcom/android/internal/telephony/SemTelephonyBatteryMonitorImpl;->mIsWirelessCharge:Z

    .line 53
    new-instance v0, Lcom/android/internal/telephony/SemTelephonyBatteryMonitorImpl$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/SemTelephonyBatteryMonitorImpl$1;-><init>(Lcom/android/internal/telephony/SemTelephonyBatteryMonitorImpl;)V

    iput-object v0, p0, Lcom/android/internal/telephony/SemTelephonyBatteryMonitorImpl;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private blacklist checkUsbVersion()Z
    .locals 4

    .line 143
    new-instance v0, Ljava/io/File;

    const-string v1, "/config/usb_gadget/g1/bcdUSB"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 145
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 146
    const-string v0, "checkUsbVersion - UsbPath not exist"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemTelephonyBatteryMonitorImpl;->log(Ljava/lang/String;)V

    return v2

    :cond_0
    const/4 v1, 0x0

    .line 154
    :try_start_0
    invoke-static {v0, v2, v1}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 155
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkUsbVersion - string from node: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/SemTelephonyBatteryMonitorImpl;->log(Ljava/lang/String;)V

    .line 157
    const-string p0, "x"

    invoke-virtual {v0, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 158
    invoke-static {v0}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/16 v0, 0x310

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    .line 160
    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v0, 0x136

    :goto_0
    if-lt p0, v0, :cond_2

    const/4 p0, 0x1

    return p0

    .line 167
    :goto_1
    sget-object v0, Lcom/android/internal/telephony/SemTelephonyBatteryMonitorImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkUsbVersion is fail. "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v2
.end method

.method private blacklist log(Ljava/lang/String;)V
    .locals 0

    .line 177
    sget-object p0, Lcom/android/internal/telephony/SemTelephonyBatteryMonitorImpl;->TAG:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public blacklist init(Lcom/android/internal/telephony/Phone;Landroid/os/Handler;)V
    .locals 1

    .line 41
    const-string v0, "SemTelephonyBatteryMonitor init"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemTelephonyBatteryMonitorImpl;->log(Ljava/lang/String;)V

    .line 43
    iput-object p2, p0, Lcom/android/internal/telephony/SemTelephonyBatteryMonitorImpl;->mHandler:Landroid/os/Handler;

    .line 44
    iput-object p1, p0, Lcom/android/internal/telephony/SemTelephonyBatteryMonitorImpl;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 45
    new-instance p2, Landroid/content/IntentFilter;

    invoke-direct {p2}, Landroid/content/IntentFilter;-><init>()V

    .line 46
    const-string v0, "com.samsung.server.BatteryService.action.SEC_BATTERY_EVENT"

    invoke-virtual {p2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 47
    const-string v0, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {p2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 48
    const-string v0, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {p2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 49
    const-string v0, "com.sec.android.UAI_INFO"

    invoke-virtual {p2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p0, p0, Lcom/android/internal/telephony/SemTelephonyBatteryMonitorImpl;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    const/4 v0, 0x2

    invoke-virtual {p1, p0, p2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    return-void
.end method
