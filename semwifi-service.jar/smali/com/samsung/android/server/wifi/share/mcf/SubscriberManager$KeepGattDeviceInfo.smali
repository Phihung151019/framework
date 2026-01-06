.class Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager$KeepGattDeviceInfo;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "KeepGattDeviceInfo"
.end annotation


# instance fields
.field private advertiseStarted:Z

.field private final keepDeviceCallback:Lcom/samsung/android/mcf/discovery/KeepDeviceCallback;

.field private mcfAdvertiseCallback:Lcom/samsung/android/mcf/discovery/McfAdvertiseCallback;

.field private final mcfDevice:Lcom/samsung/android/mcf/McfDevice;


# direct methods
.method static bridge synthetic -$$Nest$fgetmcfDevice(Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager$KeepGattDeviceInfo;)Lcom/samsung/android/mcf/McfDevice;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager$KeepGattDeviceInfo;->mcfDevice:Lcom/samsung/android/mcf/McfDevice;

    .line 2
    .line 3
    return-object p0
.end method

.method constructor <init>(Lcom/samsung/android/mcf/McfDevice;Lcom/samsung/android/mcf/discovery/KeepDeviceCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager$KeepGattDeviceInfo;->mcfDevice:Lcom/samsung/android/mcf/McfDevice;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager$KeepGattDeviceInfo;->keepDeviceCallback:Lcom/samsung/android/mcf/discovery/KeepDeviceCallback;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method getAdvertiseStarted()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager$KeepGattDeviceInfo;->advertiseStarted:Z

    .line 2
    .line 3
    return p0
.end method

.method getKeepDeviceCallback()Lcom/samsung/android/mcf/discovery/KeepDeviceCallback;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager$KeepGattDeviceInfo;->keepDeviceCallback:Lcom/samsung/android/mcf/discovery/KeepDeviceCallback;

    .line 2
    .line 3
    return-object p0
.end method

.method getMcfAdvertiseCallback()Lcom/samsung/android/mcf/discovery/McfAdvertiseCallback;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager$KeepGattDeviceInfo;->mcfAdvertiseCallback:Lcom/samsung/android/mcf/discovery/McfAdvertiseCallback;

    .line 2
    .line 3
    return-object p0
.end method

.method getMcfDevice()Lcom/samsung/android/mcf/McfDevice;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager$KeepGattDeviceInfo;->mcfDevice:Lcom/samsung/android/mcf/McfDevice;

    .line 2
    .line 3
    return-object p0
.end method

.method setAdvertiseCallback(Lcom/samsung/android/mcf/discovery/McfAdvertiseCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager$KeepGattDeviceInfo;->mcfAdvertiseCallback:Lcom/samsung/android/mcf/discovery/McfAdvertiseCallback;

    .line 2
    .line 3
    return-void
.end method

.method setAdvertiseStarted(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager$KeepGattDeviceInfo;->advertiseStarted:Z

    .line 2
    .line 3
    return-void
.end method
