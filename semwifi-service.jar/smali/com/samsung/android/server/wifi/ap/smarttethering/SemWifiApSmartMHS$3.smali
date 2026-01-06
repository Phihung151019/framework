.class Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$3;
.super Landroid/bluetooth/le/AdvertiseCallback;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;)V
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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$3;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/bluetooth/le/AdvertiseCallback;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onStartFailure(I)V
    .locals 3

    .line 1
    const/4 v0, 0x3

    .line 2
    const-string v1, "SemWifiApSmartMHS"

    .line 3
    .line 4
    if-eq p1, v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$3;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-static {v0, v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->-$$Nest$fputisAdveretising(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;Z)V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$3;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-static {v0, v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->-$$Nest$fputisAdveretising(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;Z)V

    .line 17
    .line 18
    .line 19
    const-string v0, "MHS Advertise already Started."

    .line 20
    .line 21
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    :goto_0
    const-string v0, "MHS Advertise Failed: "

    .line 25
    .line 26
    invoke-static {v0, p1, v1}, Lcom/samsung/android/server/wifi/SemClientModeManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$3;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;

    .line 30
    .line 31
    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->-$$Nest$fgetmLocalLog(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;)Landroid/util/LocalLog;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    const-string v1, "SemWifiApSmartMHS:\tMHS Advertise Failed: "

    .line 38
    .line 39
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-virtual {p0, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    return-void
.end method

.method public onStartSuccess(Landroid/bluetooth/le/AdvertiseSettings;)V
    .locals 1

    .line 1
    const-string p1, "SemWifiApSmartMHS"

    .line 2
    .line 3
    const-string v0, "MHS Advertise Started."

    .line 4
    .line 5
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$3;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;

    .line 9
    .line 10
    const/4 p1, 0x1

    .line 11
    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->-$$Nest$fputisAdveretising(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;Z)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
