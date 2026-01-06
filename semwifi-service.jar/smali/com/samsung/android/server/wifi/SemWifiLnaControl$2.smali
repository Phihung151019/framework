.class Lcom/samsung/android/server/wifi/SemWifiLnaControl$2;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider$PrimaryInterfaceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemWifiLnaControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/SemWifiLnaControl;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/SemWifiLnaControl;)V
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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl$2;->this$0:Lcom/samsung/android/server/wifi/SemWifiLnaControl;

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
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl$2;->this$0:Lcom/samsung/android/server/wifi/SemWifiLnaControl;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->-$$Nest$fgetconnected(Lcom/samsung/android/server/wifi/SemWifiLnaControl;)Ljava/util/concurrent/atomic/AtomicBoolean;

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
    const/4 v1, 0x3

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl$2;->this$0:Lcom/samsung/android/server/wifi/SemWifiLnaControl;

    .line 15
    .line 16
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->-$$Nest$fgetmIfaceName(Lcom/samsung/android/server/wifi/SemWifiLnaControl;)Ljava/lang/String;

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
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl$2;->this$0:Lcom/samsung/android/server/wifi/SemWifiLnaControl;

    .line 27
    .line 28
    invoke-static {v0, p1}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->-$$Nest$fputmIfaceName(Lcom/samsung/android/server/wifi/SemWifiLnaControl;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl$2;->this$0:Lcom/samsung/android/server/wifi/SemWifiLnaControl;

    .line 32
    .line 33
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->-$$Nest$fgetlnaControlHandler(Lcom/samsung/android/server/wifi/SemWifiLnaControl;)Lcom/samsung/android/server/wifi/SemWifiLnaControl$LnaControlHandler;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    const/4 v0, 0x0

    .line 38
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl$2;->this$0:Lcom/samsung/android/server/wifi/SemWifiLnaControl;

    .line 42
    .line 43
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->-$$Nest$fgetlnaControlHandler(Lcom/samsung/android/server/wifi/SemWifiLnaControl;)Lcom/samsung/android/server/wifi/SemWifiLnaControl$LnaControlHandler;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    invoke-static {p0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

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
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl$2;->this$0:Lcom/samsung/android/server/wifi/SemWifiLnaControl;

    .line 56
    .line 57
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->-$$Nest$fgetconnected(Lcom/samsung/android/server/wifi/SemWifiLnaControl;)Ljava/util/concurrent/atomic/AtomicBoolean;

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
    if-nez v0, :cond_1

    .line 66
    .line 67
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl$2;->this$0:Lcom/samsung/android/server/wifi/SemWifiLnaControl;

    .line 68
    .line 69
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->-$$Nest$fgetifaces(Lcom/samsung/android/server/wifi/SemWifiLnaControl;)Ljava/util/Set;

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
    if-eqz v0, :cond_1

    .line 78
    .line 79
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl$2;->this$0:Lcom/samsung/android/server/wifi/SemWifiLnaControl;

    .line 80
    .line 81
    invoke-static {v0, p1}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->-$$Nest$fputmIfaceName(Lcom/samsung/android/server/wifi/SemWifiLnaControl;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl$2;->this$0:Lcom/samsung/android/server/wifi/SemWifiLnaControl;

    .line 85
    .line 86
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->-$$Nest$fgetconnected(Lcom/samsung/android/server/wifi/SemWifiLnaControl;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    const/4 v0, 0x1

    .line 91
    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 92
    .line 93
    .line 94
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl$2;->this$0:Lcom/samsung/android/server/wifi/SemWifiLnaControl;

    .line 95
    .line 96
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->-$$Nest$fgetlnaControlHandler(Lcom/samsung/android/server/wifi/SemWifiLnaControl;)Lcom/samsung/android/server/wifi/SemWifiLnaControl$LnaControlHandler;

    .line 97
    .line 98
    .line 99
    move-result-object p0

    .line 100
    invoke-static {p0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    .line 101
    .line 102
    .line 103
    move-result-object p0

    .line 104
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 105
    .line 106
    .line 107
    :cond_1
    return-void
.end method
