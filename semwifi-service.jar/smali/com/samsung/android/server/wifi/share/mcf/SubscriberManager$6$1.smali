.class Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager$6$1;
.super Lcom/samsung/android/mcf/discovery/KeepDeviceCallback;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager$6;->onDeviceDiscovered(Lcom/samsung/android/mcf/McfDevice;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager$6;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager$6;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager$6$1;->this$1:Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager$6;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/samsung/android/mcf/discovery/KeepDeviceCallback;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onKeepDeviceStateCallback(Lcom/samsung/android/mcf/McfDevice;I)V
    .locals 3

    .line 1
    invoke-super {p0, p1, p2}, Lcom/samsung/android/mcf/discovery/KeepDeviceCallback;->onKeepDeviceStateCallback(Lcom/samsung/android/mcf/McfDevice;I)V

    .line 2
    .line 3
    .line 4
    const-string v0, "WifiProfileShare.McfSub"

    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    const-string p0, "-ME--- onKeepDeviceStateCallback, mcf device is null"

    .line 9
    .line 10
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/samsung/android/mcf/McfDevice;->getDeviceID()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v2, " onKeepDeviceStateCallback  status: "

    .line 27
    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    const/4 v0, 0x1

    .line 42
    if-ne p2, v0, :cond_1

    .line 43
    .line 44
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager$6$1;->this$1:Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager$6;

    .line 45
    .line 46
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager$6;->this$0:Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;

    .line 47
    .line 48
    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->-$$Nest$mremoveKeepDevice(Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;Lcom/samsung/android/mcf/McfDevice;)V

    .line 49
    .line 50
    .line 51
    :cond_1
    return-void
.end method
