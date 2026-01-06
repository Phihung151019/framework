.class final Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker$PacketListener;
.super Lcom/samsung/android/server/wifi/util/SemPacketReader;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PacketListener"
.end annotation


# instance fields
.field private final mInterface:Lcom/android/net/module/util/InterfaceParams;

.field final synthetic this$0:Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;Landroid/os/Handler;Lcom/android/net/module/util/InterfaceParams;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker$PacketListener;->this$0:Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;

    .line 2
    .line 3
    iget p1, p3, Lcom/android/net/module/util/InterfaceParams;->defaultMtu:I

    .line 4
    .line 5
    invoke-direct {p0, p2, p1}, Lcom/samsung/android/server/wifi/util/SemPacketReader;-><init>(Landroid/os/Handler;I)V

    .line 6
    .line 7
    .line 8
    iput-object p3, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker$PacketListener;->mInterface:Lcom/android/net/module/util/InterfaceParams;

    .line 9
    .line 10
    return-void
.end method

.method private addLogEntry(Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker$PacketListener;->this$0:Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;->-$$Nest$fgetmLog(Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;)Landroid/util/LocalLog;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method protected createFd()Ljava/io/FileDescriptor;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    sget v1, Landroid/system/OsConstants;->AF_PACKET:I

    .line 3
    .line 4
    sget v2, Landroid/system/OsConstants;->SOCK_RAW:I

    .line 5
    .line 6
    const/4 v3, 0x0

    .line 7
    invoke-static {v1, v2, v3}, Landroid/system/Os;->socket(III)Ljava/io/FileDescriptor;

    .line 8
    .line 9
    .line 10
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 11
    :try_start_1
    sget v2, Landroid/system/OsConstants;->ARPHRD_ETHER:I

    .line 12
    .line 13
    invoke-static {v1, v2}, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;->attachWifiControlPacketFilter(Ljava/io/FileDescriptor;I)V

    .line 14
    .line 15
    .line 16
    sget v2, Landroid/system/OsConstants;->ETH_P_ALL:I

    .line 17
    .line 18
    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker$PacketListener;->mInterface:Lcom/android/net/module/util/InterfaceParams;

    .line 19
    .line 20
    iget v3, v3, Lcom/android/net/module/util/InterfaceParams;->index:I

    .line 21
    .line 22
    invoke-static {v2, v3}, Landroid/net/util/SocketUtils;->makePacketSocketAddress(II)Ljava/net/SocketAddress;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-static {v1, v2}, Landroid/system/Os;->bind(Ljava/io/FileDescriptor;Ljava/net/SocketAddress;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 27
    .line 28
    .line 29
    return-object v1

    .line 30
    :catch_0
    move-exception v2

    .line 31
    goto :goto_0

    .line 32
    :catch_1
    move-exception v2

    .line 33
    move-object v1, v0

    .line 34
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker$PacketListener;->this$0:Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;

    .line 35
    .line 36
    invoke-static {v3}, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;->-$$Nest$fgetmLog(Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;)Landroid/util/LocalLog;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    if-eqz v3, :cond_0

    .line 41
    .line 42
    const-string v3, "Failed to create packet tracking socket: "

    .line 43
    .line 44
    invoke-virtual {p0, v3, v2}, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker$PacketListener;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 45
    .line 46
    .line 47
    :cond_0
    invoke-static {v1}, Lcom/samsung/android/server/wifi/util/SemPacketReader;->closeFd(Ljava/io/FileDescriptor;)V

    .line 48
    .line 49
    .line 50
    return-object v0
.end method

.method protected handlePacket([BI)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker$PacketListener;->mInterface:Lcom/android/net/module/util/InterfaceParams;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/net/module/util/InterfaceParams;->macAddr:Landroid/net/MacAddress;

    .line 4
    .line 5
    invoke-static {v0, p1, p2}, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->summarize(Landroid/net/MacAddress;[BI)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_2

    .line 10
    .line 11
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker$PacketListener;->this$0:Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;

    .line 12
    .line 13
    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;->-$$Nest$fgetmLog(Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;)Landroid/util/LocalLog;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;->-$$Nest$sfgetDBG()Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker$PacketListener;->this$0:Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;

    .line 27
    .line 28
    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;->-$$Nest$fgetmTag(Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker$PacketListener;->this$0:Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;

    .line 36
    .line 37
    invoke-static {v1, v0}, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;->-$$Nest$mcountEachDnsPacket(Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker$PacketListener;->this$0:Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;

    .line 41
    .line 42
    invoke-static {v1, v0}, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;->-$$Nest$maddDnsSummaryToList(Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    const-string v1, "\n["

    .line 46
    .line 47
    invoke-static {v0, v1}, Lcom/samsung/android/mcf/continuity/common/DLog$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    const/4 v1, 0x0

    .line 52
    invoke-static {p1, v1, p2}, Lcom/android/internal/util/HexDump;->toHexString([BII)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    const-string p1, "]"

    .line 60
    .line 61
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker$PacketListener;->addLogEntry(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    :cond_2
    :goto_0
    return-void
.end method

.method protected logError(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker$PacketListener;->this$0:Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;->-$$Nest$fgetmTag(Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 8
    .line 9
    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker$PacketListener;->addLogEntry(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method protected onStart()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker$PacketListener;->this$0:Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;->-$$Nest$fgetmDisplayName(Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const-string v0, "--- START ---"

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker$PacketListener;->this$0:Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;

    .line 17
    .line 18
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;->-$$Nest$fgetmDisplayName(Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const-string v1, "--- START ("

    .line 23
    .line 24
    const-string v2, ") ---"

    .line 25
    .line 26
    invoke-static {v1, v0, v2}, Lcom/samsung/android/server/wifi/abtest/AbTestManager$4$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker$PacketListener;->this$0:Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;

    .line 31
    .line 32
    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;->-$$Nest$fgetmLog(Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;)Landroid/util/LocalLog;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    if-eqz v1, :cond_1

    .line 37
    .line 38
    const-string v1, "log check : "

    .line 39
    .line 40
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    const-string v2, "SemConnectivityPacketTracker"

    .line 45
    .line 46
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker$PacketListener;->this$0:Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;

    .line 50
    .line 51
    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;->-$$Nest$fgetmLog(Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;)Landroid/util/LocalLog;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    invoke-virtual {p0, v0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    :cond_1
    return-void
.end method

.method protected onStop()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker$PacketListener;->this$0:Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;->-$$Nest$fgetmDisplayName(Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const-string v0, "--- STOP ---"

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker$PacketListener;->this$0:Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;

    .line 17
    .line 18
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;->-$$Nest$fgetmDisplayName(Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const-string v1, "--- STOP ("

    .line 23
    .line 24
    const-string v2, ") ---"

    .line 25
    .line 26
    invoke-static {v1, v0, v2}, Lcom/samsung/android/server/wifi/abtest/AbTestManager$4$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker$PacketListener;->this$0:Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;

    .line 31
    .line 32
    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;->-$$Nest$fgetmRunning(Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;)Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-nez v1, :cond_1

    .line 37
    .line 38
    const-string v1, " (packet listener stopped unexpectedly)"

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker$PacketListener;->this$0:Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;

    .line 45
    .line 46
    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;->-$$Nest$fgetmLog(Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;)Landroid/util/LocalLog;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    if-eqz v1, :cond_2

    .line 51
    .line 52
    if-eqz v0, :cond_2

    .line 53
    .line 54
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker$PacketListener;->this$0:Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;

    .line 55
    .line 56
    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;->-$$Nest$fgetmLog(Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;)Landroid/util/LocalLog;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    invoke-virtual {p0, v0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    :cond_2
    return-void
.end method
