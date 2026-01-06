.class Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$ConnectedState;
.super Lcom/android/internal/util/State;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ConnectedState"
.end annotation


# instance fields
.field mArpTableCheckCount:I

.field mHI:Ljava/lang/String;

.field mIpInfo:Ljava/lang/String;

.field mNetwork:Landroid/net/Network;

.field mSI:Landroid/os/Bundle;

.field final synthetic this$0:Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;


# direct methods
.method public static synthetic $r8$lambda$67X_bQWSPVOuVU4HUfk3HaabP34(Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$ConnectedState;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$ConnectedState;->lambda$processMessage$0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$IXs7Y-nJiUvkzOBlDrShlcVW8CY(Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$ConnectedState;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$ConnectedState;->lambda$processMessage$1()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method constructor <init>(Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$ConnectedState;->mNetwork:Landroid/net/Network;

    .line 8
    .line 9
    iput-object p1, p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$ConnectedState;->mHI:Ljava/lang/String;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$ConnectedState;->mSI:Landroid/os/Bundle;

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    iput v0, p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$ConnectedState;->mArpTableCheckCount:I

    .line 15
    .line 16
    iput-object p1, p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$ConnectedState;->mIpInfo:Ljava/lang/String;

    .line 17
    .line 18
    return-void
.end method

.method private getIpInfo()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->-$$Nest$fgetmWifiManagerProxy(Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;)Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getDhcpInfo()Landroid/net/DhcpInfo;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    const-string v0, ""

    .line 12
    .line 13
    if-eqz p0, :cond_0

    .line 14
    .line 15
    new-instance v1, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget v0, p0, Landroid/net/DhcpInfo;->ipAddress:I

    .line 21
    .line 22
    invoke-static {v0}, Landroid/text/format/Formatter;->formatIpAddress(I)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-static {v0}, Lcom/google/gson/stream/JsonReader$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    iget v1, p0, Landroid/net/DhcpInfo;->gateway:I

    .line 38
    .line 39
    invoke-static {v1}, Landroid/text/format/Formatter;->formatIpAddress(I)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-static {v0}, Lcom/google/gson/stream/JsonReader$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    iget p0, p0, Landroid/net/DhcpInfo;->netmask:I

    .line 55
    .line 56
    invoke-static {p0}, Landroid/text/format/Formatter;->formatIpAddress(I)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    return-object p0

    .line 68
    :cond_0
    return-object v0
.end method

.method private synthetic lambda$processMessage$0()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$ConnectedState;->mNetwork:Landroid/net/Network;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/net/Network;->getNetId()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    new-instance v1, Ljava/lang/String;

    .line 10
    .line 11
    iget-object v2, p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;

    .line 12
    .line 13
    invoke-static {v2}, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->-$$Nest$mcheckRouterInfoFromHttp(Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget-object p0, p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;

    .line 21
    .line 22
    const/4 v2, 0x5

    .line 23
    const/4 v3, 0x0

    .line 24
    invoke-virtual {p0, v2, v0, v3, v1}, Lcom/android/internal/util/StateMachine;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    const-wide/16 v1, 0x1f4

    .line 29
    .line 30
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/util/StateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    .line 31
    .line 32
    .line 33
    :cond_0
    return-void
.end method

.method private synthetic lambda$processMessage$1()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$ConnectedState;->mNetwork:Landroid/net/Network;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/net/Network;->getNetId()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    new-instance v1, Landroid/os/Bundle;

    .line 10
    .line 11
    iget-object v2, p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;

    .line 12
    .line 13
    invoke-static {v2}, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->-$$Nest$fgetmConfigKey(Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    iget-object v4, p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;

    .line 18
    .line 19
    invoke-static {v4}, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->-$$Nest$fgetmXmlLocation(Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    invoke-static {v2, v3, v4}, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->-$$Nest$mcheckXml(Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 28
    .line 29
    .line 30
    iget-object p0, p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;

    .line 31
    .line 32
    const/4 v2, 0x6

    .line 33
    const/4 v3, 0x0

    .line 34
    invoke-virtual {p0, v2, v0, v3, v1}, Lcom/android/internal/util/StateMachine;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    const-wide/16 v1, 0x1f4

    .line 39
    .line 40
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/util/StateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    .line 41
    .line 42
    .line 43
    :cond_0
    return-void
.end method


# virtual methods
.method public enter()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->-$$Nest$fgetmWifiManagerProxy(Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;)Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->-$$Nest$fputmWifiInfo(Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;Landroid/net/wifi/WifiInfo;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;

    .line 15
    .line 16
    invoke-static {v0}, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->-$$Nest$fgetmWifiManagerProxy(Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;)Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getCurrentNetwork()Landroid/net/Network;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iput-object v0, p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$ConnectedState;->mNetwork:Landroid/net/Network;

    .line 25
    .line 26
    const/4 v0, 0x0

    .line 27
    iput v0, p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$ConnectedState;->mArpTableCheckCount:I

    .line 28
    .line 29
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$ConnectedState;->getIpInfo()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    iget-object v2, p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$ConnectedState;->mIpInfo:Ljava/lang/String;

    .line 34
    .line 35
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-nez v2, :cond_1

    .line 40
    .line 41
    iget-object v2, p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$ConnectedState;->mIpInfo:Ljava/lang/String;

    .line 42
    .line 43
    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-nez v2, :cond_0

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    return-void

    .line 51
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;

    .line 52
    .line 53
    const/4 v3, 0x1

    .line 54
    const/4 v4, 0x0

    .line 55
    const/4 v5, 0x4

    .line 56
    invoke-virtual {v2, v5, v3, v0, v4}, Lcom/android/internal/util/StateMachine;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    const-wide/16 v3, 0x3e8

    .line 61
    .line 62
    invoke-virtual {v2, v0, v3, v4}, Lcom/android/internal/util/StateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    .line 63
    .line 64
    .line 65
    iput-object v1, p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$ConnectedState;->mIpInfo:Ljava/lang/String;

    .line 66
    .line 67
    return-void
.end method

.method public exit()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$ConnectedState;->mNetwork:Landroid/net/Network;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;

    .line 5
    .line 6
    invoke-static {v1, v0}, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->-$$Nest$fputmWifiInfo(Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;Landroid/net/wifi/WifiInfo;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$ConnectedState;->mHI:Ljava/lang/String;

    .line 10
    .line 11
    iput-object v0, p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$ConnectedState;->mSI:Landroid/os/Bundle;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;

    .line 14
    .line 15
    invoke-static {v1, v0}, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->-$$Nest$fputmConfigKey(Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;

    .line 19
    .line 20
    invoke-static {v1}, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->-$$Nest$fputmSsdpId(Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$ConnectedState;->mIpInfo:Ljava/lang/String;

    .line 24
    .line 25
    iget-object v0, p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;

    .line 26
    .line 27
    const/4 v1, 0x4

    .line 28
    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->access$100(Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;I)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;

    .line 32
    .line 33
    const/4 v1, 0x5

    .line 34
    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->access$200(Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;I)V

    .line 35
    .line 36
    .line 37
    iget-object p0, p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;

    .line 38
    .line 39
    const/4 v0, 0x6

    .line 40
    invoke-static {p0, v0}, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->access$300(Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;I)V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 18

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    iget v0, v2, Landroid/os/Message;->what:I

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    const/4 v4, 0x3

    .line 9
    const/4 v5, 0x4

    .line 10
    const/4 v6, 0x0

    .line 11
    const/4 v7, 0x0

    .line 12
    if-eq v0, v4, :cond_1f

    .line 13
    .line 14
    if-eq v0, v5, :cond_15

    .line 15
    .line 16
    const/4 v4, 0x7

    .line 17
    const/4 v5, 0x6

    .line 18
    const/4 v8, 0x5

    .line 19
    if-eq v0, v8, :cond_5

    .line 20
    .line 21
    if-eq v0, v5, :cond_5

    .line 22
    .line 23
    if-eq v0, v4, :cond_5

    .line 24
    .line 25
    const/16 v4, 0x1000

    .line 26
    .line 27
    if-eq v0, v4, :cond_0

    .line 28
    .line 29
    return v6

    .line 30
    :cond_0
    iget-object v0, v1, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;

    .line 31
    .line 32
    invoke-static {v0}, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->-$$Nest$fgetmSsdpId(Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;)I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    iget v4, v2, Landroid/os/Message;->arg1:I

    .line 37
    .line 38
    if-eq v0, v4, :cond_1

    .line 39
    .line 40
    const-string v0, "WifiRouterInfoCollector"

    .line 41
    .line 42
    const-string v1, "SSDP_M_SEARCH_RESULT - mSsdpId MISMATCH."

    .line 43
    .line 44
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    return v3

    .line 48
    :cond_1
    invoke-static {}, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->-$$Nest$sfgetDBG()Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-eqz v0, :cond_2

    .line 53
    .line 54
    const-string v0, "WifiRouterInfoCollector"

    .line 55
    .line 56
    new-instance v4, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    const-string v8, "SSDP_M_SEARCH_RESULT - "

    .line 59
    .line 60
    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    iget-object v8, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 64
    .line 65
    check-cast v8, Ljava/lang/String;

    .line 66
    .line 67
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v4

    .line 74
    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    .line 76
    .line 77
    :cond_2
    iget-object v0, v1, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;

    .line 78
    .line 79
    iget-object v2, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 80
    .line 81
    check-cast v2, Ljava/lang/String;

    .line 82
    .line 83
    invoke-static {v0, v2}, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->-$$Nest$fputmXmlLocation(Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    iget-object v0, v1, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;

    .line 87
    .line 88
    invoke-static {v0}, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->-$$Nest$fgetmXmlLocation(Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    if-eqz v0, :cond_3

    .line 97
    .line 98
    new-instance v0, Landroid/os/Bundle;

    .line 99
    .line 100
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 101
    .line 102
    .line 103
    const-string v2, "failReason"

    .line 104
    .line 105
    const-string v4, "Failed to get SSDP response"

    .line 106
    .line 107
    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    iget-object v2, v1, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$ConnectedState;->mNetwork:Landroid/net/Network;

    .line 111
    .line 112
    if-eqz v2, :cond_1e

    .line 113
    .line 114
    iget-object v1, v1, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;

    .line 115
    .line 116
    invoke-virtual {v2}, Landroid/net/Network;->getNetId()I

    .line 117
    .line 118
    .line 119
    move-result v2

    .line 120
    invoke-virtual {v1, v5, v2, v6, v0}, Lcom/android/internal/util/StateMachine;->sendMessage(IIILjava/lang/Object;)V

    .line 121
    .line 122
    .line 123
    return v3

    .line 124
    :cond_3
    iget-object v0, v1, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;

    .line 125
    .line 126
    invoke-static {v0}, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->-$$Nest$fgetmXmlThread(Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;)Ljava/lang/Thread;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    if-eqz v0, :cond_4

    .line 131
    .line 132
    iget-object v0, v1, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;

    .line 133
    .line 134
    invoke-static {v0}, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->-$$Nest$fgetmXmlThread(Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;)Ljava/lang/Thread;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    .line 139
    .line 140
    .line 141
    move-result v0

    .line 142
    if-eqz v0, :cond_4

    .line 143
    .line 144
    iget-object v0, v1, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;

    .line 145
    .line 146
    invoke-static {v0}, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->-$$Nest$fgetmXmlThread(Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;)Ljava/lang/Thread;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 151
    .line 152
    .line 153
    :cond_4
    iget-object v0, v1, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;

    .line 154
    .line 155
    invoke-static {v0, v7}, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->-$$Nest$fputmXmlThread(Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;Ljava/lang/Thread;)V

    .line 156
    .line 157
    .line 158
    iget-object v0, v1, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;

    .line 159
    .line 160
    new-instance v2, Ljava/lang/Thread;

    .line 161
    .line 162
    new-instance v4, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$ConnectedState$$ExternalSyntheticLambda0;

    .line 163
    .line 164
    const/4 v5, 0x1

    .line 165
    invoke-direct {v4, v1, v5}, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$ConnectedState$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$ConnectedState;I)V

    .line 166
    .line 167
    .line 168
    invoke-direct {v2, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 169
    .line 170
    .line 171
    invoke-static {v0, v2}, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->-$$Nest$fputmXmlThread(Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;Ljava/lang/Thread;)V

    .line 172
    .line 173
    .line 174
    iget-object v0, v1, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;

    .line 175
    .line 176
    invoke-static {v0}, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->-$$Nest$fgetmXmlThread(Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;)Ljava/lang/Thread;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 181
    .line 182
    .line 183
    return v3

    .line 184
    :cond_5
    iget-object v0, v1, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$ConnectedState;->mNetwork:Landroid/net/Network;

    .line 185
    .line 186
    if-nez v0, :cond_6

    .line 187
    .line 188
    const-string v0, "WifiRouterInfoCollector"

    .line 189
    .line 190
    new-instance v4, Ljava/lang/StringBuilder;

    .line 191
    .line 192
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 193
    .line 194
    .line 195
    iget-object v1, v1, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;

    .line 196
    .line 197
    invoke-virtual {v1, v2}, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->getLogRecString(Landroid/os/Message;)Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v1

    .line 201
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    const-string v1, " - mNetwork id null"

    .line 205
    .line 206
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v1

    .line 213
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    .line 215
    .line 216
    return v3

    .line 217
    :cond_6
    invoke-virtual {v0}, Landroid/net/Network;->getNetId()I

    .line 218
    .line 219
    .line 220
    move-result v0

    .line 221
    iget v9, v2, Landroid/os/Message;->arg1:I

    .line 222
    .line 223
    if-eq v0, v9, :cond_7

    .line 224
    .line 225
    const-string v0, "WifiRouterInfoCollector"

    .line 226
    .line 227
    new-instance v4, Ljava/lang/StringBuilder;

    .line 228
    .line 229
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 230
    .line 231
    .line 232
    iget-object v1, v1, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;

    .line 233
    .line 234
    invoke-virtual {v1, v2}, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->getLogRecString(Landroid/os/Message;)Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object v1

    .line 238
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    .line 240
    .line 241
    const-string v1, " - Result id mismatch. Discard the result."

    .line 242
    .line 243
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    .line 245
    .line 246
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object v1

    .line 250
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    .line 252
    .line 253
    return v3

    .line 254
    :cond_7
    iget-object v0, v1, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;

    .line 255
    .line 256
    invoke-static {v0}, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->-$$Nest$fgetmWifiInfo(Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;)Landroid/net/wifi/WifiInfo;

    .line 257
    .line 258
    .line 259
    move-result-object v0

    .line 260
    if-nez v0, :cond_8

    .line 261
    .line 262
    const-string v0, "WifiRouterInfoCollector"

    .line 263
    .line 264
    new-instance v4, Ljava/lang/StringBuilder;

    .line 265
    .line 266
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 267
    .line 268
    .line 269
    iget-object v1, v1, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;

    .line 270
    .line 271
    invoke-virtual {v1, v2}, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->getLogRecString(Landroid/os/Message;)Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object v1

    .line 275
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    .line 277
    .line 278
    const-string v1, " - mWifiInfo is null"

    .line 279
    .line 280
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    .line 282
    .line 283
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object v1

    .line 287
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    .line 289
    .line 290
    return v3

    .line 291
    :cond_8
    iget v9, v2, Landroid/os/Message;->what:I

    .line 292
    .line 293
    if-ne v9, v8, :cond_9

    .line 294
    .line 295
    iget-object v5, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 296
    .line 297
    check-cast v5, Ljava/lang/String;

    .line 298
    .line 299
    iput-object v5, v1, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$ConnectedState;->mHI:Ljava/lang/String;

    .line 300
    .line 301
    goto :goto_0

    .line 302
    :cond_9
    if-ne v9, v5, :cond_a

    .line 303
    .line 304
    iget-object v5, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 305
    .line 306
    check-cast v5, Landroid/os/Bundle;

    .line 307
    .line 308
    iput-object v5, v1, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$ConnectedState;->mSI:Landroid/os/Bundle;

    .line 309
    .line 310
    :cond_a
    :goto_0
    iget-object v5, v1, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$ConnectedState;->mHI:Ljava/lang/String;

    .line 311
    .line 312
    if-eqz v5, :cond_1e

    .line 313
    .line 314
    iget-object v5, v1, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$ConnectedState;->mSI:Landroid/os/Bundle;

    .line 315
    .line 316
    if-nez v5, :cond_b

    .line 317
    .line 318
    goto/16 :goto_b

    .line 319
    .line 320
    :cond_b
    iget-object v5, v1, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;

    .line 321
    .line 322
    invoke-static {v5}, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->-$$Nest$fgetmWifiManagerProxy(Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;)Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 323
    .line 324
    .line 325
    move-result-object v5

    .line 326
    invoke-virtual {v5}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getDhcpInfo()Landroid/net/DhcpInfo;

    .line 327
    .line 328
    .line 329
    move-result-object v5

    .line 330
    if-eqz v5, :cond_c

    .line 331
    .line 332
    iget v5, v5, Landroid/net/DhcpInfo;->gateway:I

    .line 333
    .line 334
    if-eqz v5, :cond_c

    .line 335
    .line 336
    invoke-static {v5}, Landroid/text/format/Formatter;->formatIpAddress(I)Ljava/lang/String;

    .line 337
    .line 338
    .line 339
    move-result-object v5

    .line 340
    iget-object v9, v1, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;

    .line 341
    .line 342
    invoke-static {v9, v5}, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->-$$Nest$mmacAddressFromRoute(Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;Ljava/lang/String;)Ljava/lang/String;

    .line 343
    .line 344
    .line 345
    move-result-object v9

    .line 346
    move-object v13, v5

    .line 347
    move-object v14, v9

    .line 348
    goto :goto_1

    .line 349
    :cond_c
    move-object v13, v7

    .line 350
    move-object v14, v13

    .line 351
    :goto_1
    if-eqz v14, :cond_d

    .line 352
    .line 353
    const-string v5, "00:00:00:00:00:00"

    .line 354
    .line 355
    invoke-static {v14, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 356
    .line 357
    .line 358
    move-result v5

    .line 359
    if-eqz v5, :cond_f

    .line 360
    .line 361
    :cond_d
    iget v5, v1, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$ConnectedState;->mArpTableCheckCount:I

    .line 362
    .line 363
    add-int/lit8 v9, v5, 0x1

    .line 364
    .line 365
    iput v9, v1, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$ConnectedState;->mArpTableCheckCount:I

    .line 366
    .line 367
    if-ge v5, v8, :cond_f

    .line 368
    .line 369
    :try_start_0
    invoke-static {v13}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    .line 370
    .line 371
    .line 372
    move-result-object v0

    .line 373
    if-eqz v0, :cond_e

    .line 374
    .line 375
    const/16 v5, 0xa

    .line 376
    .line 377
    invoke-virtual {v0, v5}, Ljava/net/InetAddress;->isReachable(I)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 378
    .line 379
    .line 380
    goto :goto_2

    .line 381
    :catch_0
    move-exception v0

    .line 382
    const-string v5, "WifiRouterInfoCollector"

    .line 383
    .line 384
    new-instance v8, Ljava/lang/StringBuilder;

    .line 385
    .line 386
    const-string v9, "IOException occurred. "

    .line 387
    .line 388
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 389
    .line 390
    .line 391
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 392
    .line 393
    .line 394
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 395
    .line 396
    .line 397
    move-result-object v0

    .line 398
    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    .line 400
    .line 401
    :cond_e
    :goto_2
    iget-object v0, v1, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;

    .line 402
    .line 403
    iget v1, v2, Landroid/os/Message;->arg1:I

    .line 404
    .line 405
    invoke-virtual {v0, v4, v1, v6, v7}, Lcom/android/internal/util/StateMachine;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 406
    .line 407
    .line 408
    move-result-object v1

    .line 409
    const-wide/16 v4, 0x3e8

    .line 410
    .line 411
    invoke-virtual {v0, v1, v4, v5}, Lcom/android/internal/util/StateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    .line 412
    .line 413
    .line 414
    goto/16 :goto_b

    .line 415
    .line 416
    :cond_f
    invoke-static {}, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->-$$Nest$sfgetmMapLock()Ljava/lang/Object;

    .line 417
    .line 418
    .line 419
    move-result-object v2

    .line 420
    monitor-enter v2

    .line 421
    :try_start_1
    iget-object v4, v1, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;

    .line 422
    .line 423
    invoke-static {v4}, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->-$$Nest$fgetmConfigKey(Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;)Ljava/lang/String;

    .line 424
    .line 425
    .line 426
    move-result-object v4

    .line 427
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 428
    .line 429
    .line 430
    move-result v4

    .line 431
    if-nez v4, :cond_12

    .line 432
    .line 433
    iget-object v4, v1, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;

    .line 434
    .line 435
    invoke-static {v4}, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->-$$Nest$fgetmWifiRouterInfoMap(Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;)Ljava/util/Map;

    .line 436
    .line 437
    .line 438
    move-result-object v4

    .line 439
    iget-object v5, v1, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;

    .line 440
    .line 441
    invoke-static {v5}, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->-$$Nest$fgetmConfigKey(Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;)Ljava/lang/String;

    .line 442
    .line 443
    .line 444
    move-result-object v5

    .line 445
    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 446
    .line 447
    .line 448
    move-result v4

    .line 449
    if-eqz v4, :cond_11

    .line 450
    .line 451
    iget-object v4, v1, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;

    .line 452
    .line 453
    invoke-static {v4}, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->-$$Nest$fgetmWifiRouterInfoMap(Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;)Ljava/util/Map;

    .line 454
    .line 455
    .line 456
    move-result-object v4

    .line 457
    iget-object v5, v1, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;

    .line 458
    .line 459
    invoke-static {v5}, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->-$$Nest$fgetmConfigKey(Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;)Ljava/lang/String;

    .line 460
    .line 461
    .line 462
    move-result-object v5

    .line 463
    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 464
    .line 465
    .line 466
    move-result-object v4

    .line 467
    check-cast v4, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$WifiRouterInfo;

    .line 468
    .line 469
    iget-object v4, v4, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$WifiRouterInfo;->mGatewayMac:Ljava/lang/String;

    .line 470
    .line 471
    invoke-static {v14, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 472
    .line 473
    .line 474
    move-result v4

    .line 475
    if-eqz v4, :cond_10

    .line 476
    .line 477
    iget-object v4, v1, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$ConnectedState;->mSI:Landroid/os/Bundle;

    .line 478
    .line 479
    const-string v5, "failReason"

    .line 480
    .line 481
    invoke-virtual {v4, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    .line 482
    .line 483
    .line 484
    move-result v4

    .line 485
    if-eqz v4, :cond_10

    .line 486
    .line 487
    new-instance v4, Landroid/os/Bundle;

    .line 488
    .line 489
    iget-object v5, v1, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;

    .line 490
    .line 491
    invoke-static {v5}, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->-$$Nest$fgetmWifiRouterInfoMap(Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;)Ljava/util/Map;

    .line 492
    .line 493
    .line 494
    move-result-object v5

    .line 495
    iget-object v6, v1, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;

    .line 496
    .line 497
    invoke-static {v6}, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->-$$Nest$fgetmConfigKey(Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;)Ljava/lang/String;

    .line 498
    .line 499
    .line 500
    move-result-object v6

    .line 501
    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 502
    .line 503
    .line 504
    move-result-object v5

    .line 505
    check-cast v5, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$WifiRouterInfo;

    .line 506
    .line 507
    iget-object v5, v5, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$WifiRouterInfo;->mSsdpInfo:Landroid/os/Bundle;

    .line 508
    .line 509
    invoke-direct {v4, v5}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 510
    .line 511
    .line 512
    iput-object v4, v1, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$ConnectedState;->mSI:Landroid/os/Bundle;

    .line 513
    .line 514
    goto :goto_3

    .line 515
    :catchall_0
    move-exception v0

    .line 516
    goto/16 :goto_6

    .line 517
    .line 518
    :cond_10
    :goto_3
    iget-object v4, v1, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;

    .line 519
    .line 520
    invoke-static {v4}, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->-$$Nest$fgetmWifiRouterInfoMap(Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;)Ljava/util/Map;

    .line 521
    .line 522
    .line 523
    move-result-object v4

    .line 524
    iget-object v5, v1, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;

    .line 525
    .line 526
    invoke-static {v5}, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->-$$Nest$fgetmConfigKey(Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;)Ljava/lang/String;

    .line 527
    .line 528
    .line 529
    move-result-object v5

    .line 530
    new-instance v10, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$WifiRouterInfo;

    .line 531
    .line 532
    iget-object v11, v1, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;

    .line 533
    .line 534
    invoke-static {v11}, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->-$$Nest$fgetmConfigKey(Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;)Ljava/lang/String;

    .line 535
    .line 536
    .line 537
    move-result-object v12

    .line 538
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    .line 539
    .line 540
    .line 541
    move-result-object v15

    .line 542
    iget-object v6, v1, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$ConnectedState;->mHI:Ljava/lang/String;

    .line 543
    .line 544
    iget-object v7, v1, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$ConnectedState;->mSI:Landroid/os/Bundle;

    .line 545
    .line 546
    move-object/from16 v16, v6

    .line 547
    .line 548
    move-object/from16 v17, v7

    .line 549
    .line 550
    invoke-direct/range {v10 .. v17}, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$WifiRouterInfo;-><init>(Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 551
    .line 552
    .line 553
    invoke-interface {v4, v5, v10}, Ljava/util/Map;->replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 554
    .line 555
    .line 556
    goto :goto_4

    .line 557
    :cond_11
    iget-object v4, v1, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;

    .line 558
    .line 559
    invoke-static {v4}, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->-$$Nest$fgetmWifiRouterInfoMap(Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;)Ljava/util/Map;

    .line 560
    .line 561
    .line 562
    move-result-object v4

    .line 563
    iget-object v5, v1, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;

    .line 564
    .line 565
    invoke-static {v5}, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->-$$Nest$fgetmConfigKey(Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;)Ljava/lang/String;

    .line 566
    .line 567
    .line 568
    move-result-object v5

    .line 569
    new-instance v10, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$WifiRouterInfo;

    .line 570
    .line 571
    iget-object v11, v1, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;

    .line 572
    .line 573
    invoke-static {v11}, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->-$$Nest$fgetmConfigKey(Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;)Ljava/lang/String;

    .line 574
    .line 575
    .line 576
    move-result-object v12

    .line 577
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    .line 578
    .line 579
    .line 580
    move-result-object v15

    .line 581
    iget-object v6, v1, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$ConnectedState;->mHI:Ljava/lang/String;

    .line 582
    .line 583
    iget-object v7, v1, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$ConnectedState;->mSI:Landroid/os/Bundle;

    .line 584
    .line 585
    move-object/from16 v16, v6

    .line 586
    .line 587
    move-object/from16 v17, v7

    .line 588
    .line 589
    invoke-direct/range {v10 .. v17}, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$WifiRouterInfo;-><init>(Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 590
    .line 591
    .line 592
    invoke-interface {v4, v5, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 593
    .line 594
    .line 595
    :cond_12
    :goto_4
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    .line 596
    .line 597
    .line 598
    move-result-object v4

    .line 599
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 600
    .line 601
    .line 602
    move-result v4

    .line 603
    if-nez v4, :cond_14

    .line 604
    .line 605
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    .line 606
    .line 607
    .line 608
    move-result-object v0

    .line 609
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 610
    .line 611
    .line 612
    move-result-object v15

    .line 613
    iget-object v0, v1, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;

    .line 614
    .line 615
    invoke-static {v0}, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->-$$Nest$fgetmWifiRouterInfoMapByBssid(Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;)Ljava/util/Map;

    .line 616
    .line 617
    .line 618
    move-result-object v0

    .line 619
    invoke-interface {v0, v15}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 620
    .line 621
    .line 622
    move-result v0

    .line 623
    if-eqz v0, :cond_13

    .line 624
    .line 625
    iget-object v0, v1, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;

    .line 626
    .line 627
    invoke-static {v0}, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->-$$Nest$fgetmWifiRouterInfoMapByBssid(Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;)Ljava/util/Map;

    .line 628
    .line 629
    .line 630
    move-result-object v0

    .line 631
    new-instance v10, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$WifiRouterInfo;

    .line 632
    .line 633
    iget-object v11, v1, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;

    .line 634
    .line 635
    invoke-static {v11}, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->-$$Nest$fgetmConfigKey(Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;)Ljava/lang/String;

    .line 636
    .line 637
    .line 638
    move-result-object v12

    .line 639
    iget-object v4, v1, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$ConnectedState;->mHI:Ljava/lang/String;

    .line 640
    .line 641
    iget-object v5, v1, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$ConnectedState;->mSI:Landroid/os/Bundle;

    .line 642
    .line 643
    move-object/from16 v16, v4

    .line 644
    .line 645
    move-object/from16 v17, v5

    .line 646
    .line 647
    invoke-direct/range {v10 .. v17}, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$WifiRouterInfo;-><init>(Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 648
    .line 649
    .line 650
    invoke-interface {v0, v15, v10}, Ljava/util/Map;->replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 651
    .line 652
    .line 653
    goto :goto_5

    .line 654
    :cond_13
    iget-object v0, v1, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;

    .line 655
    .line 656
    invoke-static {v0}, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->-$$Nest$fgetmWifiRouterInfoMapByBssid(Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;)Ljava/util/Map;

    .line 657
    .line 658
    .line 659
    move-result-object v0

    .line 660
    new-instance v10, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$WifiRouterInfo;

    .line 661
    .line 662
    iget-object v11, v1, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;

    .line 663
    .line 664
    invoke-static {v11}, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->-$$Nest$fgetmConfigKey(Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;)Ljava/lang/String;

    .line 665
    .line 666
    .line 667
    move-result-object v12

    .line 668
    iget-object v4, v1, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$ConnectedState;->mHI:Ljava/lang/String;

    .line 669
    .line 670
    iget-object v5, v1, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$ConnectedState;->mSI:Landroid/os/Bundle;

    .line 671
    .line 672
    move-object/from16 v16, v4

    .line 673
    .line 674
    move-object/from16 v17, v5

    .line 675
    .line 676
    invoke-direct/range {v10 .. v17}, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$WifiRouterInfo;-><init>(Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 677
    .line 678
    .line 679
    invoke-interface {v0, v15, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 680
    .line 681
    .line 682
    :cond_14
    :goto_5
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 683
    iget-object v0, v1, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;

    .line 684
    .line 685
    invoke-static {v0}, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->-$$Nest$mremoveOldestEntry(Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;)V

    .line 686
    .line 687
    .line 688
    iget-object v0, v1, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;

    .line 689
    .line 690
    invoke-static {v0}, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->-$$Nest$fgetmConfigKey(Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;)Ljava/lang/String;

    .line 691
    .line 692
    .line 693
    move-result-object v1

    .line 694
    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->-$$Nest$mreportIssue(Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;Ljava/lang/String;)V

    .line 695
    .line 696
    .line 697
    return v3

    .line 698
    :goto_6
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 699
    throw v0

    .line 700
    :cond_15
    iget-object v0, v1, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;

    .line 701
    .line 702
    invoke-static {v0}, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->-$$Nest$fgetmWifiManagerProxy(Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;)Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 703
    .line 704
    .line 705
    move-result-object v4

    .line 706
    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    .line 707
    .line 708
    .line 709
    move-result-object v4

    .line 710
    invoke-static {v0, v4}, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->-$$Nest$fputmWifiInfo(Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;Landroid/net/wifi/WifiInfo;)V

    .line 711
    .line 712
    .line 713
    iget-object v0, v1, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;

    .line 714
    .line 715
    invoke-static {v0}, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->-$$Nest$fgetmWifiInfo(Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;)Landroid/net/wifi/WifiInfo;

    .line 716
    .line 717
    .line 718
    move-result-object v0

    .line 719
    iget-object v4, v1, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;

    .line 720
    .line 721
    invoke-static {v4}, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->-$$Nest$fgetmWifiManagerProxy(Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;)Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 722
    .line 723
    .line 724
    move-result-object v4

    .line 725
    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getCurrentNetwork()Landroid/net/Network;

    .line 726
    .line 727
    .line 728
    move-result-object v4

    .line 729
    iput-object v4, v1, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$ConnectedState;->mNetwork:Landroid/net/Network;

    .line 730
    .line 731
    if-eqz v0, :cond_1e

    .line 732
    .line 733
    if-nez v4, :cond_16

    .line 734
    .line 735
    goto/16 :goto_b

    .line 736
    .line 737
    :cond_16
    iget-object v4, v1, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;

    .line 738
    .line 739
    invoke-static {v4}, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->-$$Nest$fgetmWifiConfigManager(Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;)Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    .line 740
    .line 741
    .line 742
    move-result-object v4

    .line 743
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    .line 744
    .line 745
    .line 746
    move-result v5

    .line 747
    invoke-virtual {v4, v5}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->getSavedNetwork(I)Landroid/net/wifi/WifiConfiguration;

    .line 748
    .line 749
    .line 750
    move-result-object v4

    .line 751
    if-eqz v4, :cond_17

    .line 752
    .line 753
    iget-object v5, v1, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;

    .line 754
    .line 755
    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    .line 756
    .line 757
    .line 758
    move-result-object v4

    .line 759
    invoke-static {v5, v4}, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->-$$Nest$fputmConfigKey(Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;Ljava/lang/String;)V

    .line 760
    .line 761
    .line 762
    :cond_17
    iget-object v4, v1, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;

    .line 763
    .line 764
    invoke-static {v4}, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->-$$Nest$fgetmConfigKey(Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;)Ljava/lang/String;

    .line 765
    .line 766
    .line 767
    move-result-object v4

    .line 768
    if-eqz v4, :cond_1e

    .line 769
    .line 770
    iget-object v4, v1, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;

    .line 771
    .line 772
    invoke-static {v4}, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->-$$Nest$fgetmConfigKey(Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;)Ljava/lang/String;

    .line 773
    .line 774
    .line 775
    move-result-object v4

    .line 776
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 777
    .line 778
    .line 779
    move-result v4

    .line 780
    if-eqz v4, :cond_18

    .line 781
    .line 782
    goto/16 :goto_b

    .line 783
    .line 784
    :cond_18
    iget v2, v2, Landroid/os/Message;->arg1:I

    .line 785
    .line 786
    if-ne v2, v3, :cond_19

    .line 787
    .line 788
    goto/16 :goto_9

    .line 789
    .line 790
    :cond_19
    iget-object v2, v1, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;

    .line 791
    .line 792
    invoke-static {v2}, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->-$$Nest$fgetmWifiManagerProxy(Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;)Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 793
    .line 794
    .line 795
    move-result-object v2

    .line 796
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getDhcpInfo()Landroid/net/DhcpInfo;

    .line 797
    .line 798
    .line 799
    move-result-object v2

    .line 800
    if-eqz v2, :cond_1a

    .line 801
    .line 802
    iget v2, v2, Landroid/net/DhcpInfo;->gateway:I

    .line 803
    .line 804
    if-eqz v2, :cond_1a

    .line 805
    .line 806
    invoke-static {v2}, Landroid/text/format/Formatter;->formatIpAddress(I)Ljava/lang/String;

    .line 807
    .line 808
    .line 809
    move-result-object v2

    .line 810
    iget-object v4, v1, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;

    .line 811
    .line 812
    invoke-static {v4, v2}, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->-$$Nest$mmacAddressFromRoute(Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;Ljava/lang/String;)Ljava/lang/String;

    .line 813
    .line 814
    .line 815
    move-result-object v2

    .line 816
    goto :goto_7

    .line 817
    :cond_1a
    move-object v2, v7

    .line 818
    :goto_7
    invoke-static {}, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->-$$Nest$sfgetmMapLock()Ljava/lang/Object;

    .line 819
    .line 820
    .line 821
    move-result-object v4

    .line 822
    monitor-enter v4

    .line 823
    :try_start_3
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 824
    .line 825
    .line 826
    move-result v5

    .line 827
    if-nez v5, :cond_1c

    .line 828
    .line 829
    iget-object v5, v1, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;

    .line 830
    .line 831
    invoke-static {v5}, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->-$$Nest$fgetmWifiRouterInfoMap(Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;)Ljava/util/Map;

    .line 832
    .line 833
    .line 834
    move-result-object v5

    .line 835
    iget-object v6, v1, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;

    .line 836
    .line 837
    invoke-static {v6}, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->-$$Nest$fgetmConfigKey(Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;)Ljava/lang/String;

    .line 838
    .line 839
    .line 840
    move-result-object v6

    .line 841
    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 842
    .line 843
    .line 844
    move-result v5

    .line 845
    if-eqz v5, :cond_1c

    .line 846
    .line 847
    iget-object v5, v1, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;

    .line 848
    .line 849
    invoke-static {v5}, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->-$$Nest$fgetmWifiRouterInfoMap(Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;)Ljava/util/Map;

    .line 850
    .line 851
    .line 852
    move-result-object v5

    .line 853
    iget-object v6, v1, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;

    .line 854
    .line 855
    invoke-static {v6}, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->-$$Nest$fgetmConfigKey(Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;)Ljava/lang/String;

    .line 856
    .line 857
    .line 858
    move-result-object v6

    .line 859
    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 860
    .line 861
    .line 862
    move-result-object v5

    .line 863
    check-cast v5, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$WifiRouterInfo;

    .line 864
    .line 865
    iget-object v5, v5, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$WifiRouterInfo;->mGatewayMac:Ljava/lang/String;

    .line 866
    .line 867
    invoke-static {v2, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 868
    .line 869
    .line 870
    move-result v2

    .line 871
    if-eqz v2, :cond_1c

    .line 872
    .line 873
    const-string v2, "WifiRouterInfoCollector"

    .line 874
    .line 875
    const-string v5, "Gateway MAC remains the same value. Do not check RouterInfo."

    .line 876
    .line 877
    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 878
    .line 879
    .line 880
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    .line 881
    .line 882
    .line 883
    move-result-object v2

    .line 884
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 885
    .line 886
    .line 887
    move-result v2

    .line 888
    if-nez v2, :cond_1b

    .line 889
    .line 890
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    .line 891
    .line 892
    .line 893
    move-result-object v0

    .line 894
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 895
    .line 896
    .line 897
    move-result-object v10

    .line 898
    iget-object v0, v1, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;

    .line 899
    .line 900
    invoke-static {v0}, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->-$$Nest$fgetmWifiRouterInfoMapByBssid(Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;)Ljava/util/Map;

    .line 901
    .line 902
    .line 903
    move-result-object v0

    .line 904
    invoke-interface {v0, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 905
    .line 906
    .line 907
    move-result v0

    .line 908
    if-nez v0, :cond_1b

    .line 909
    .line 910
    iget-object v0, v1, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;

    .line 911
    .line 912
    invoke-static {v0}, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->-$$Nest$fgetmWifiRouterInfoMap(Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;)Ljava/util/Map;

    .line 913
    .line 914
    .line 915
    move-result-object v0

    .line 916
    iget-object v2, v1, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;

    .line 917
    .line 918
    invoke-static {v2}, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->-$$Nest$fgetmConfigKey(Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;)Ljava/lang/String;

    .line 919
    .line 920
    .line 921
    move-result-object v2

    .line 922
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 923
    .line 924
    .line 925
    move-result-object v0

    .line 926
    check-cast v0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$WifiRouterInfo;

    .line 927
    .line 928
    iget-object v2, v1, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;

    .line 929
    .line 930
    invoke-static {v2}, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->-$$Nest$fgetmWifiRouterInfoMapByBssid(Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;)Ljava/util/Map;

    .line 931
    .line 932
    .line 933
    move-result-object v2

    .line 934
    new-instance v5, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$WifiRouterInfo;

    .line 935
    .line 936
    iget-object v6, v1, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;

    .line 937
    .line 938
    invoke-static {v6}, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->-$$Nest$fgetmConfigKey(Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;)Ljava/lang/String;

    .line 939
    .line 940
    .line 941
    move-result-object v7

    .line 942
    iget-object v8, v0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$WifiRouterInfo;->mGatewayIp:Ljava/lang/String;

    .line 943
    .line 944
    iget-object v9, v0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$WifiRouterInfo;->mGatewayMac:Ljava/lang/String;

    .line 945
    .line 946
    iget-object v11, v0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$WifiRouterInfo;->mHttpInfo:Ljava/lang/String;

    .line 947
    .line 948
    iget-object v12, v0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$WifiRouterInfo;->mSsdpInfo:Landroid/os/Bundle;

    .line 949
    .line 950
    invoke-direct/range {v5 .. v12}, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$WifiRouterInfo;-><init>(Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 951
    .line 952
    .line 953
    invoke-interface {v2, v10, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 954
    .line 955
    .line 956
    iget-object v0, v1, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;

    .line 957
    .line 958
    invoke-static {v0}, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->-$$Nest$mremoveOldestEntry(Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;)V

    .line 959
    .line 960
    .line 961
    goto :goto_8

    .line 962
    :catchall_1
    move-exception v0

    .line 963
    goto :goto_a

    .line 964
    :cond_1b
    :goto_8
    monitor-exit v4

    .line 965
    return v3

    .line 966
    :cond_1c
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 967
    :goto_9
    iput-object v7, v1, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$ConnectedState;->mHI:Ljava/lang/String;

    .line 968
    .line 969
    iput-object v7, v1, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$ConnectedState;->mSI:Landroid/os/Bundle;

    .line 970
    .line 971
    iget-object v0, v1, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;

    .line 972
    .line 973
    invoke-static {v0}, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->-$$Nest$fgetmUrlThread(Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;)Ljava/lang/Thread;

    .line 974
    .line 975
    .line 976
    move-result-object v0

    .line 977
    if-eqz v0, :cond_1d

    .line 978
    .line 979
    iget-object v0, v1, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;

    .line 980
    .line 981
    invoke-static {v0}, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->-$$Nest$fgetmUrlThread(Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;)Ljava/lang/Thread;

    .line 982
    .line 983
    .line 984
    move-result-object v0

    .line 985
    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    .line 986
    .line 987
    .line 988
    move-result v0

    .line 989
    if-eqz v0, :cond_1d

    .line 990
    .line 991
    iget-object v0, v1, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;

    .line 992
    .line 993
    invoke-static {v0}, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->-$$Nest$fgetmUrlThread(Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;)Ljava/lang/Thread;

    .line 994
    .line 995
    .line 996
    move-result-object v0

    .line 997
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 998
    .line 999
    .line 1000
    :cond_1d
    iget-object v0, v1, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;

    .line 1001
    .line 1002
    invoke-static {v0, v7}, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->-$$Nest$fputmUrlThread(Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;Ljava/lang/Thread;)V

    .line 1003
    .line 1004
    .line 1005
    iget-object v0, v1, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;

    .line 1006
    .line 1007
    new-instance v2, Ljava/lang/Thread;

    .line 1008
    .line 1009
    new-instance v4, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$ConnectedState$$ExternalSyntheticLambda0;

    .line 1010
    .line 1011
    const/4 v5, 0x0

    .line 1012
    invoke-direct {v4, v1, v5}, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$ConnectedState$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$ConnectedState;I)V

    .line 1013
    .line 1014
    .line 1015
    invoke-direct {v2, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1016
    .line 1017
    .line 1018
    invoke-static {v0, v2}, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->-$$Nest$fputmUrlThread(Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;Ljava/lang/Thread;)V

    .line 1019
    .line 1020
    .line 1021
    iget-object v0, v1, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;

    .line 1022
    .line 1023
    invoke-static {v0}, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->-$$Nest$fgetmUrlThread(Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;)Ljava/lang/Thread;

    .line 1024
    .line 1025
    .line 1026
    move-result-object v0

    .line 1027
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1028
    .line 1029
    .line 1030
    iget-object v0, v1, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;

    .line 1031
    .line 1032
    iget-object v1, v1, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$ConnectedState;->mNetwork:Landroid/net/Network;

    .line 1033
    .line 1034
    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->-$$Nest$msendSsdpMSearch(Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;Landroid/net/Network;)V

    .line 1035
    .line 1036
    .line 1037
    return v3

    .line 1038
    :goto_a
    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1039
    throw v0

    .line 1040
    :cond_1e
    :goto_b
    return v3

    .line 1041
    :cond_1f
    iget-object v0, v1, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;

    .line 1042
    .line 1043
    invoke-static {v0, v5}, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->access$400(Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;I)V

    .line 1044
    .line 1045
    .line 1046
    iget-object v0, v1, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;

    .line 1047
    .line 1048
    invoke-virtual {v0, v5, v6, v6, v7}, Lcom/android/internal/util/StateMachine;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 1049
    .line 1050
    .line 1051
    move-result-object v1

    .line 1052
    const-wide/16 v4, 0x2710

    .line 1053
    .line 1054
    invoke-virtual {v0, v1, v4, v5}, Lcom/android/internal/util/StateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    .line 1055
    .line 1056
    .line 1057
    return v3
.end method
