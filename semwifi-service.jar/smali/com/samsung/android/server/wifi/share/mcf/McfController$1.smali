.class Lcom/samsung/android/server/wifi/share/mcf/McfController$1;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Lcom/samsung/android/mcf/McfAdapter$McfAdapterListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/share/mcf/McfController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/share/mcf/McfController;


# direct methods
.method public static synthetic $r8$lambda$asxCmVwqVfjkuzJOmQOvbW2riDo(Lcom/samsung/android/server/wifi/share/mcf/McfController$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/share/mcf/McfController$1;->lambda$onServiceDisconnected$1()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$hdHVps6t_ucw989LwUP_CakeiDk(Lcom/samsung/android/server/wifi/share/mcf/McfController$1;Lcom/samsung/android/mcf/McfAdapter;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/share/mcf/McfController$1;->lambda$onServiceConnected$0(Lcom/samsung/android/mcf/McfAdapter;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method constructor <init>(Lcom/samsung/android/server/wifi/share/mcf/McfController;)V
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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/share/mcf/McfController$1;->this$0:Lcom/samsung/android/server/wifi/share/mcf/McfController;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private synthetic lambda$onServiceConnected$0(Lcom/samsung/android/mcf/McfAdapter;)V
    .locals 2

    .line 1
    const-string v0, "WifiProfileShare.MCF"

    .line 2
    .line 3
    const-string v1, "onServiceConnected"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/mcf/McfController$1;->this$0:Lcom/samsung/android/server/wifi/share/mcf/McfController;

    .line 9
    .line 10
    invoke-static {v0}, Lcom/samsung/android/server/wifi/share/mcf/McfController;->-$$Nest$fgetmCasterManager(Lcom/samsung/android/server/wifi/share/mcf/McfController;)Lcom/samsung/android/server/wifi/share/mcf/CasterManager;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget-object v1, p0, Lcom/samsung/android/server/wifi/share/mcf/McfController$1;->this$0:Lcom/samsung/android/server/wifi/share/mcf/McfController;

    .line 15
    .line 16
    invoke-static {v1}, Lcom/samsung/android/server/wifi/share/mcf/McfController;->-$$Nest$fgetmMcfAdapter(Lcom/samsung/android/server/wifi/share/mcf/McfController;)Lcom/samsung/android/mcf/McfAdapter;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->closeCaster(Lcom/samsung/android/mcf/McfAdapter;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/mcf/McfController$1;->this$0:Lcom/samsung/android/server/wifi/share/mcf/McfController;

    .line 24
    .line 25
    invoke-static {v0}, Lcom/samsung/android/server/wifi/share/mcf/McfController;->-$$Nest$fgetmSubscriberManager(Lcom/samsung/android/server/wifi/share/mcf/McfController;)Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iget-object v1, p0, Lcom/samsung/android/server/wifi/share/mcf/McfController$1;->this$0:Lcom/samsung/android/server/wifi/share/mcf/McfController;

    .line 30
    .line 31
    invoke-static {v1}, Lcom/samsung/android/server/wifi/share/mcf/McfController;->-$$Nest$fgetmMcfAdapter(Lcom/samsung/android/server/wifi/share/mcf/McfController;)Lcom/samsung/android/mcf/McfAdapter;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->closeSubscriber(Lcom/samsung/android/mcf/McfAdapter;)V

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/mcf/McfController$1;->this$0:Lcom/samsung/android/server/wifi/share/mcf/McfController;

    .line 39
    .line 40
    invoke-static {v0, p1}, Lcom/samsung/android/server/wifi/share/mcf/McfController;->-$$Nest$fputmMcfAdapter(Lcom/samsung/android/server/wifi/share/mcf/McfController;Lcom/samsung/android/mcf/McfAdapter;)V

    .line 41
    .line 42
    .line 43
    iget-object p1, p0, Lcom/samsung/android/server/wifi/share/mcf/McfController$1;->this$0:Lcom/samsung/android/server/wifi/share/mcf/McfController;

    .line 44
    .line 45
    invoke-static {p1}, Lcom/samsung/android/server/wifi/share/mcf/McfController;->-$$Nest$fgetmCasterManager(Lcom/samsung/android/server/wifi/share/mcf/McfController;)Lcom/samsung/android/server/wifi/share/mcf/CasterManager;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/mcf/McfController$1;->this$0:Lcom/samsung/android/server/wifi/share/mcf/McfController;

    .line 50
    .line 51
    invoke-static {v0}, Lcom/samsung/android/server/wifi/share/mcf/McfController;->-$$Nest$fgetmMcfAdapter(Lcom/samsung/android/server/wifi/share/mcf/McfController;)Lcom/samsung/android/mcf/McfAdapter;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {p1, v0}, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->openCaster(Lcom/samsung/android/mcf/McfAdapter;)V

    .line 56
    .line 57
    .line 58
    iget-object p1, p0, Lcom/samsung/android/server/wifi/share/mcf/McfController$1;->this$0:Lcom/samsung/android/server/wifi/share/mcf/McfController;

    .line 59
    .line 60
    invoke-static {p1}, Lcom/samsung/android/server/wifi/share/mcf/McfController;->-$$Nest$fgetmSubscriberManager(Lcom/samsung/android/server/wifi/share/mcf/McfController;)Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/mcf/McfController$1;->this$0:Lcom/samsung/android/server/wifi/share/mcf/McfController;

    .line 65
    .line 66
    invoke-static {v0}, Lcom/samsung/android/server/wifi/share/mcf/McfController;->-$$Nest$fgetmMcfAdapter(Lcom/samsung/android/server/wifi/share/mcf/McfController;)Lcom/samsung/android/mcf/McfAdapter;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-virtual {p1, v0}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->openSubscriber(Lcom/samsung/android/mcf/McfAdapter;)V

    .line 71
    .line 72
    .line 73
    iget-object p1, p0, Lcom/samsung/android/server/wifi/share/mcf/McfController$1;->this$0:Lcom/samsung/android/server/wifi/share/mcf/McfController;

    .line 74
    .line 75
    invoke-static {p1}, Lcom/samsung/android/server/wifi/share/mcf/McfController;->-$$Nest$fgetmListener(Lcom/samsung/android/server/wifi/share/mcf/McfController;)Lcom/samsung/android/server/wifi/share/mcf/IMcfServiceState;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    if-eqz p1, :cond_0

    .line 80
    .line 81
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/mcf/McfController$1;->this$0:Lcom/samsung/android/server/wifi/share/mcf/McfController;

    .line 82
    .line 83
    invoke-static {p0}, Lcom/samsung/android/server/wifi/share/mcf/McfController;->-$$Nest$fgetmListener(Lcom/samsung/android/server/wifi/share/mcf/McfController;)Lcom/samsung/android/server/wifi/share/mcf/IMcfServiceState;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    invoke-interface {p0}, Lcom/samsung/android/server/wifi/share/mcf/IMcfServiceState;->onServiceConnected()V

    .line 88
    .line 89
    .line 90
    :cond_0
    return-void
.end method

.method private synthetic lambda$onServiceDisconnected$1()V
    .locals 2

    .line 1
    const-string v0, "WifiProfileShare.MCF"

    .line 2
    .line 3
    const-string v1, "onServiceDisconnected"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/mcf/McfController$1;->this$0:Lcom/samsung/android/server/wifi/share/mcf/McfController;

    .line 9
    .line 10
    invoke-static {v0}, Lcom/samsung/android/server/wifi/share/mcf/McfController;->-$$Nest$fgetmCasterManager(Lcom/samsung/android/server/wifi/share/mcf/McfController;)Lcom/samsung/android/server/wifi/share/mcf/CasterManager;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget-object v1, p0, Lcom/samsung/android/server/wifi/share/mcf/McfController$1;->this$0:Lcom/samsung/android/server/wifi/share/mcf/McfController;

    .line 15
    .line 16
    invoke-static {v1}, Lcom/samsung/android/server/wifi/share/mcf/McfController;->-$$Nest$fgetmMcfAdapter(Lcom/samsung/android/server/wifi/share/mcf/McfController;)Lcom/samsung/android/mcf/McfAdapter;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->closeCaster(Lcom/samsung/android/mcf/McfAdapter;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/mcf/McfController$1;->this$0:Lcom/samsung/android/server/wifi/share/mcf/McfController;

    .line 24
    .line 25
    invoke-static {v0}, Lcom/samsung/android/server/wifi/share/mcf/McfController;->-$$Nest$fgetmSubscriberManager(Lcom/samsung/android/server/wifi/share/mcf/McfController;)Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iget-object v1, p0, Lcom/samsung/android/server/wifi/share/mcf/McfController$1;->this$0:Lcom/samsung/android/server/wifi/share/mcf/McfController;

    .line 30
    .line 31
    invoke-static {v1}, Lcom/samsung/android/server/wifi/share/mcf/McfController;->-$$Nest$fgetmMcfAdapter(Lcom/samsung/android/server/wifi/share/mcf/McfController;)Lcom/samsung/android/mcf/McfAdapter;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->closeSubscriber(Lcom/samsung/android/mcf/McfAdapter;)V

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/mcf/McfController$1;->this$0:Lcom/samsung/android/server/wifi/share/mcf/McfController;

    .line 39
    .line 40
    const/4 v1, 0x0

    .line 41
    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/share/mcf/McfController;->-$$Nest$fputmMcfAdapter(Lcom/samsung/android/server/wifi/share/mcf/McfController;Lcom/samsung/android/mcf/McfAdapter;)V

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/mcf/McfController$1;->this$0:Lcom/samsung/android/server/wifi/share/mcf/McfController;

    .line 45
    .line 46
    invoke-static {v0}, Lcom/samsung/android/server/wifi/share/mcf/McfController;->-$$Nest$fgetmListener(Lcom/samsung/android/server/wifi/share/mcf/McfController;)Lcom/samsung/android/server/wifi/share/mcf/IMcfServiceState;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    if-eqz v0, :cond_0

    .line 51
    .line 52
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/mcf/McfController$1;->this$0:Lcom/samsung/android/server/wifi/share/mcf/McfController;

    .line 53
    .line 54
    invoke-static {p0}, Lcom/samsung/android/server/wifi/share/mcf/McfController;->-$$Nest$fgetmListener(Lcom/samsung/android/server/wifi/share/mcf/McfController;)Lcom/samsung/android/server/wifi/share/mcf/IMcfServiceState;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    invoke-interface {p0}, Lcom/samsung/android/server/wifi/share/mcf/IMcfServiceState;->onFailedToBindService()V

    .line 59
    .line 60
    .line 61
    :cond_0
    return-void
.end method


# virtual methods
.method public onServiceConnected(Lcom/samsung/android/mcf/McfAdapter;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/mcf/McfController$1;->this$0:Lcom/samsung/android/server/wifi/share/mcf/McfController;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/samsung/android/server/wifi/share/mcf/McfController;->-$$Nest$fgetmWifiThreadRunner(Lcom/samsung/android/server/wifi/share/mcf/McfController;)Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lcom/samsung/android/server/wifi/share/mcf/McfController$1$$ExternalSyntheticLambda0;

    .line 8
    .line 9
    invoke-direct {v1, p0, p1}, Lcom/samsung/android/server/wifi/share/mcf/McfController$1$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/wifi/share/mcf/McfController$1;Lcom/samsung/android/mcf/McfAdapter;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->post(Ljava/lang/Runnable;)Z

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public onServiceDisconnected()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/mcf/McfController$1;->this$0:Lcom/samsung/android/server/wifi/share/mcf/McfController;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/samsung/android/server/wifi/share/mcf/McfController;->-$$Nest$fgetmWifiThreadRunner(Lcom/samsung/android/server/wifi/share/mcf/McfController;)Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lcom/samsung/android/server/wifi/share/mcf/McfController$1$$ExternalSyntheticLambda1;

    .line 8
    .line 9
    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/share/mcf/McfController$1$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/server/wifi/share/mcf/McfController$1;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->post(Ljava/lang/Runnable;)Z

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public onServiceRemoteException()V
    .locals 1

    .line 1
    const-string p0, "WifiProfileShare.MCF"

    .line 2
    .line 3
    const-string v0, "onServiceRemoteException  mcf server is null"

    .line 4
    .line 5
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    return-void
.end method
