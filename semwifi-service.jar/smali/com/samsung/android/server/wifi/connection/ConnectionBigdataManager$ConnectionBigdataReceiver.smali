.class Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager$ConnectionBigdataReceiver;
.super Landroid/content/BroadcastReceiver;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ConnectionBigdataReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager;)V
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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager$ConnectionBigdataReceiver;->this$0:Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const-string v0, "com.samsung.android.ConnectionBigdata.CONNECTION_BIGDATA_MONITOR_MINUTES"

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const-string v1, "Conn.BigdataManager"

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    iget-object p1, p0, Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager$ConnectionBigdataReceiver;->this$0:Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager;

    .line 19
    .line 20
    invoke-static {p1}, Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager;->-$$Nest$fgetmBigDataMonitoringTimeMinute(Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager;)J

    .line 21
    .line 22
    .line 23
    move-result-wide v2

    .line 24
    long-to-int v0, v2

    .line 25
    const-string v2, "monitoringMinutes"

    .line 26
    .line 27
    invoke-virtual {p2, v2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 28
    .line 29
    .line 30
    move-result p2

    .line 31
    int-to-long v2, p2

    .line 32
    invoke-static {p1, v2, v3}, Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager;->-$$Nest$fputmBigDataMonitoringTimeMinute(Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager;J)V

    .line 33
    .line 34
    .line 35
    new-instance p1, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    const-string p2, "mBigDataMonitoringTimeMinute="

    .line 38
    .line 39
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    iget-object p0, p0, Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager$ConnectionBigdataReceiver;->this$0:Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager;

    .line 43
    .line 44
    invoke-static {p0}, Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager;->-$$Nest$fgetmBigDataMonitoringTimeMinute(Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager;)J

    .line 45
    .line 46
    .line 47
    move-result-wide v2

    .line 48
    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    invoke-static {v1, p0}, Lcom/samsung/android/server/wifi/connection/Clog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :cond_1
    const-string p0, "ConnectionBigdataReceiver.onReceive: undefined case: action="

    .line 60
    .line 61
    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    invoke-static {v1, p0}, Lcom/samsung/android/server/wifi/connection/Clog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    return-void
.end method
