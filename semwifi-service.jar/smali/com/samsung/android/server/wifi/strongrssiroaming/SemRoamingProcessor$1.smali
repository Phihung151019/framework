.class Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor;-><init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/SemWifiInjector;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor;)V
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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor$1;->this$0:Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor;

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
    .locals 2

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string v0, "android.bluetooth.adapter.extra.CONNECTION_STATE"

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 9
    .line 10
    .line 11
    move-result p2

    .line 12
    iget-object v0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor$1;->this$0:Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor;

    .line 13
    .line 14
    if-eqz p2, :cond_0

    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    :cond_0
    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor;->-$$Nest$fputmIsBluetoothConnected(Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor;Z)V

    .line 18
    .line 19
    .line 20
    invoke-static {}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor;->-$$Nest$sfgetTAG()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    const-string v0, "received "

    .line 25
    .line 26
    const-string v1, " mIsBluetoothConnected: "

    .line 27
    .line 28
    invoke-static {v0, p1, v1}, Lcom/samsung/android/server/wifi/SemClientModeImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    iget-object p0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor$1;->this$0:Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor;

    .line 33
    .line 34
    invoke-static {p0}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor;->-$$Nest$fgetmIsBluetoothConnected(Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor;)Z

    .line 35
    .line 36
    .line 37
    move-result p0

    .line 38
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    invoke-static {p2, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    return-void
.end method
