.class Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl$3;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider$PrimaryInterfaceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;)V
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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl$3;->this$0:Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;

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
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl$3;->this$0:Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->-$$Nest$fgetmMloConnected(Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;)Ljava/util/concurrent/atomic/AtomicBoolean;

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
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl$3;->this$0:Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;

    .line 14
    .line 15
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->-$$Nest$fgetmIfaceName(Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_0

    .line 24
    .line 25
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl$3;->this$0:Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;

    .line 26
    .line 27
    invoke-static {v0, p1}, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->-$$Nest$fputmIfaceName(Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl$3;->this$0:Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;

    .line 31
    .line 32
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->-$$Nest$fgetmRenewConnection(Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    const/4 v0, 0x1

    .line 37
    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 38
    .line 39
    .line 40
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl$3;->this$0:Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;

    .line 41
    .line 42
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->-$$Nest$mcheckMloStatus(Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;)V

    .line 43
    .line 44
    .line 45
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl$3;->this$0:Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;

    .line 46
    .line 47
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->-$$Nest$fgetmMloConnected(Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    if-nez p1, :cond_1

    .line 56
    .line 57
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl$3;->this$0:Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;

    .line 58
    .line 59
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->-$$Nest$fgetmMultiLinkControlHandler(Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;)Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl$MultiLinkControlHandler;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    const/4 p1, 0x3

    .line 64
    invoke-static {p0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 69
    .line 70
    .line 71
    return-void

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl$3;->this$0:Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;

    .line 73
    .line 74
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->-$$Nest$fgetmMloConnected(Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    if-nez v0, :cond_1

    .line 83
    .line 84
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl$3;->this$0:Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;

    .line 85
    .line 86
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->-$$Nest$fgetmIfaces(Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;)Ljava/util/HashSet;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    if-eqz v0, :cond_1

    .line 95
    .line 96
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl$3;->this$0:Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;

    .line 97
    .line 98
    invoke-static {v0, p1}, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->-$$Nest$fputmIfaceName(Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl$3;->this$0:Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;

    .line 102
    .line 103
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->-$$Nest$fgetmMultiLinkControlHandler(Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;)Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl$MultiLinkControlHandler;

    .line 104
    .line 105
    .line 106
    move-result-object p0

    .line 107
    const/4 p1, 0x2

    .line 108
    invoke-static {p0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    .line 109
    .line 110
    .line 111
    move-result-object p0

    .line 112
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 113
    .line 114
    .line 115
    :cond_1
    return-void
.end method
