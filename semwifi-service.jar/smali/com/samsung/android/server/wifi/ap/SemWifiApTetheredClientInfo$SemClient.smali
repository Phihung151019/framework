.class Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$SemClient;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SemClient"
.end annotation


# instance fields
.field public IP:Ljava/lang/String;

.field public MAC:Ljava/lang/String;

.field public connectedTime:J

.field public device:Ljava/lang/String;

.field public isStaticClient:Z


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$SemClient;)V
    .locals 2

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$SemClient;->MAC:Ljava/lang/String;

    .line 11
    sget-object v0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->DEFAULT_CONNECTED_IP:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$SemClient;->IP:Ljava/lang/String;

    .line 12
    const-string v0, "android"

    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$SemClient;->device:Ljava/lang/String;

    .line 13
    iget-object v0, p1, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$SemClient;->MAC:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$SemClient;->MAC:Ljava/lang/String;

    .line 14
    iget-object v0, p1, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$SemClient;->device:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$SemClient;->device:Ljava/lang/String;

    .line 15
    iget-object v0, p1, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$SemClient;->IP:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$SemClient;->IP:Ljava/lang/String;

    .line 16
    iget-wide v0, p1, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$SemClient;->connectedTime:J

    iput-wide v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$SemClient;->connectedTime:J

    .line 17
    iget-boolean p1, p1, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$SemClient;->isStaticClient:Z

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$SemClient;->isStaticClient:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZ)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$SemClient;->MAC:Ljava/lang/String;

    .line 3
    sget-object v0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->DEFAULT_CONNECTED_IP:Ljava/lang/String;

    .line 4
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$SemClient;->MAC:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$SemClient;->device:Ljava/lang/String;

    .line 6
    iput-object p2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$SemClient;->IP:Ljava/lang/String;

    .line 7
    iput-wide p4, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$SemClient;->connectedTime:J

    .line 8
    iput-boolean p6, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$SemClient;->isStaticClient:Z

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "MAC:"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$SemClient;->MAC:Ljava/lang/String;

    .line 9
    .line 10
    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->-$$Nest$smshowMacAddress(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v1, ",IP:"

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$SemClient;->IP:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v1, ",device:"

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$SemClient;->device:Ljava/lang/String;

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v1, ",connectedTime:"

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    iget-wide v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$SemClient;->connectedTime:J

    .line 43
    .line 44
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string v1, ",isStaticClient:"

    .line 48
    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$SemClient;->isStaticClient:Z

    .line 53
    .line 54
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    const/4 v0, 0x0

    .line 62
    new-array v0, v0, [Ljava/lang/Object;

    .line 63
    .line 64
    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    return-object p0
.end method
