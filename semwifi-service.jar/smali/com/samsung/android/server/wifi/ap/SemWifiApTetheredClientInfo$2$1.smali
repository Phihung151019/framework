.class Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$2$1;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$2;->onClientsChanged(Ljava/util/Collection;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$2;

.field final synthetic val$clients:Ljava/util/Collection;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$2;Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$2$1;->this$1:Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$2;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$2$1;->val$clients:Ljava/util/Collection;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->-$$Nest$sfgetTAG()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v2, "isRegisteredCallback:"

    .line 8
    .line 9
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$2$1;->this$1:Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$2;

    .line 13
    .line 14
    iget-object v2, v2, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;

    .line 15
    .line 16
    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->-$$Nest$fgetisRegisteredCallback(Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;)Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    invoke-static {v1, v2, v0}, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$2$1;->this$1:Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$2;

    .line 24
    .line 25
    iget-object v0, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;

    .line 26
    .line 27
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$2$1;->val$clients:Ljava/util/Collection;

    .line 28
    .line 29
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->-$$Nest$fputnumOfTetheredClients(Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;I)V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$2$1;->this$1:Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$2;

    .line 37
    .line 38
    iget-object v0, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;

    .line 39
    .line 40
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->-$$Nest$fgetisRegisteredCallback(Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;)Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-nez v0, :cond_0

    .line 45
    .line 46
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->-$$Nest$sfgetTAG()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    new-instance v1, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    const-string v2, " isRegisteredCallback is false mhs disabled numOfTetheredClients: "

    .line 53
    .line 54
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$2$1;->this$1:Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$2;

    .line 58
    .line 59
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;

    .line 60
    .line 61
    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->-$$Nest$fgetnumOfTetheredClients(Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;)I

    .line 62
    .line 63
    .line 64
    move-result p0

    .line 65
    invoke-static {v0, p0, v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/StringBuilder;)V

    .line 66
    .line 67
    .line 68
    return-void

    .line 69
    :cond_0
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->-$$Nest$sfgetTAG()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    new-instance v1, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    const-string v2, "onClientsChanged callback:size"

    .line 76
    .line 77
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$2$1;->this$1:Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$2;

    .line 81
    .line 82
    iget-object v2, v2, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;

    .line 83
    .line 84
    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->-$$Nest$fgetnumOfTetheredClients(Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;)I

    .line 85
    .line 86
    .line 87
    move-result v2

    .line 88
    invoke-static {v0, v2, v1}, Lcom/samsung/android/server/wifi/SemWifiCoexManager$SoftApCallback$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/StringBuilder;)V

    .line 89
    .line 90
    .line 91
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$2$1;->this$1:Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$2;

    .line 92
    .line 93
    iget-object v0, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;

    .line 94
    .line 95
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$2$1;->val$clients:Ljava/util/Collection;

    .line 96
    .line 97
    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->-$$Nest$mupdateLastConnectedClientInfo(Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;Ljava/util/Collection;)V

    .line 98
    .line 99
    .line 100
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$2$1;->this$1:Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$2;

    .line 101
    .line 102
    iget-object v0, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;

    .line 103
    .line 104
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$2$1;->val$clients:Ljava/util/Collection;

    .line 105
    .line 106
    invoke-static {v0, p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->-$$Nest$msendDHCPACKBroadcast(Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;Ljava/util/Collection;)V

    .line 107
    .line 108
    .line 109
    return-void
.end method
