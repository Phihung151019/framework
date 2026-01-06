.class Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl$SoftApCallback;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Landroid/net/wifi/WifiManager$SoftApCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SoftApCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;


# direct methods
.method private constructor <init>(Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 2
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl$SoftApCallback;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl$SoftApCallback;-><init>(Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;)V

    return-void
.end method


# virtual methods
.method public onStateChanged(II)V
    .locals 1

    .line 1
    const-string p2, "onStateChanged:"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lcom/samsung/android/mcf/continuity/common/VersionUtil$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    const-string v0, "SemWifiApTimeOutImpl"

    .line 8
    .line 9
    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl$SoftApCallback;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;

    .line 13
    .line 14
    invoke-static {p2, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;->-$$Nest$fputmWifiApState(Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;I)V

    .line 15
    .line 16
    .line 17
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl$SoftApCallback;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;

    .line 18
    .line 19
    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;->-$$Nest$fgetmWifiApState(Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;)I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    const/16 p2, 0xb

    .line 24
    .line 25
    if-eq p1, p2, :cond_1

    .line 26
    .line 27
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl$SoftApCallback;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;

    .line 28
    .line 29
    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;->-$$Nest$fgetmWifiApState(Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;)I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    const/16 p2, 0xe

    .line 34
    .line 35
    if-ne p1, p2, :cond_0

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl$SoftApCallback;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;

    .line 39
    .line 40
    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;->-$$Nest$fgetsemWifiApIntentHandler(Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;)Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl$SoftApCallback;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;

    .line 45
    .line 46
    invoke-static {p2}, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;->-$$Nest$fgetmStaInfoStateListener(Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;)Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$WifiApStaInfoStateListener;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    invoke-virtual {p1, p2}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->registerListener(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$WifiApStaInfoStateListener;)V

    .line 51
    .line 52
    .line 53
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl$SoftApCallback;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;

    .line 54
    .line 55
    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;->-$$Nest$mscheduleTimeoutMessage(Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;)V

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl$SoftApCallback;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;

    .line 60
    .line 61
    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;->-$$Nest$fgetsemWifiApIntentHandler(Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;)Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl$SoftApCallback;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;

    .line 66
    .line 67
    invoke-static {p2}, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;->-$$Nest$fgetmStaInfoStateListener(Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;)Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$WifiApStaInfoStateListener;

    .line 68
    .line 69
    .line 70
    move-result-object p2

    .line 71
    invoke-virtual {p1, p2}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->unregisterListener(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$WifiApStaInfoStateListener;)V

    .line 72
    .line 73
    .line 74
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl$SoftApCallback;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;

    .line 75
    .line 76
    const/4 p2, 0x0

    .line 77
    invoke-static {p1, p2}, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;->-$$Nest$fputNumOfClientsConnected(Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;I)V

    .line 78
    .line 79
    .line 80
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl$SoftApCallback;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;

    .line 81
    .line 82
    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;->-$$Nest$mcancelTimeoutMessage(Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;)V

    .line 83
    .line 84
    .line 85
    return-void
.end method
