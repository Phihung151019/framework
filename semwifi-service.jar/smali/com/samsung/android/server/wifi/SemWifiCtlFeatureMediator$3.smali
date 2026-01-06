.class Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$3;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider$PrimaryInterfaceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;)V
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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$3;->this$0:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onPrimaryInterfaceChanged(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$3;->this$0:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->-$$Nest$fgetconnected(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x1

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$3;->this$0:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

    .line 15
    .line 16
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->-$$Nest$fgetmClientIfaceName(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_0

    .line 25
    .line 26
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$3;->this$0:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

    .line 27
    .line 28
    invoke-static {v0, p1}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->-$$Nest$fputmClientIfaceName(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$3;->this$0:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

    .line 32
    .line 33
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->-$$Nest$fgetrenewConnection(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 38
    .line 39
    .line 40
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$3;->this$0:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

    .line 41
    .line 42
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->-$$Nest$fgetmCtlFeatureMediatorHandler(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;)Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$CtlFeatureMediatorHandler;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    const/4 p1, 0x3

    .line 47
    invoke-static {p0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$3;->this$0:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

    .line 56
    .line 57
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->-$$Nest$fgetconnected(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    if-nez v0, :cond_2

    .line 66
    .line 67
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$3;->this$0:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

    .line 68
    .line 69
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->-$$Nest$fgetifaces(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;)Ljava/util/Set;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    if-eqz v0, :cond_2

    .line 78
    .line 79
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$3;->this$0:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

    .line 80
    .line 81
    invoke-static {v0, p1}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->-$$Nest$fputmClientIfaceName(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$3;->this$0:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

    .line 85
    .line 86
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->-$$Nest$fgetconnected(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 91
    .line 92
    .line 93
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$3;->this$0:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

    .line 94
    .line 95
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->-$$Nest$fgetmLock(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    monitor-enter p1

    .line 100
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$3;->this$0:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

    .line 101
    .line 102
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->-$$Nest$fgetmCallbackMap(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;)Ljava/util/Map;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    .line 107
    .line 108
    .line 109
    move-result v0

    .line 110
    if-nez v0, :cond_1

    .line 111
    .line 112
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$3;->this$0:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

    .line 113
    .line 114
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->-$$Nest$fgetmCtlFeatureMediatorHandler(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;)Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$CtlFeatureMediatorHandler;

    .line 115
    .line 116
    .line 117
    move-result-object p0

    .line 118
    const/4 v0, 0x2

    .line 119
    invoke-static {p0, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    .line 120
    .line 121
    .line 122
    move-result-object p0

    .line 123
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 124
    .line 125
    .line 126
    goto :goto_0

    .line 127
    :catchall_0
    move-exception p0

    .line 128
    goto :goto_1

    .line 129
    :cond_1
    :goto_0
    monitor-exit p1

    .line 130
    return-void

    .line 131
    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    throw p0

    .line 133
    :cond_2
    return-void
.end method
