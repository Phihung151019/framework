.class Lcom/samsung/android/server/wifi/SemWifiServiceDetector$5;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider$PrimaryInterfaceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemWifiServiceDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)V
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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$5;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

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
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$5;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->-$$Nest$fgetmConnected(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)Ljava/util/concurrent/atomic/AtomicBoolean;

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
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$5;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    .line 14
    .line 15
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->-$$Nest$fgetmClientIfaceName(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)Ljava/lang/String;

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
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$5;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    .line 26
    .line 27
    invoke-static {v0, p1}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->-$$Nest$fputmClientIfaceName(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$5;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    .line 31
    .line 32
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->-$$Nest$fgetmIsFeatureEnabled(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)Z

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    if-eqz p1, :cond_1

    .line 37
    .line 38
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$5;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    .line 39
    .line 40
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->-$$Nest$fgetmServiceDetectionHandler(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)Lcom/samsung/android/server/wifi/SemWifiServiceDetector$ServiceDetectionHandler;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    const/4 p1, 0x5

    .line 45
    invoke-static {p0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$5;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    .line 54
    .line 55
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->-$$Nest$fgetmConnected(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-nez v0, :cond_1

    .line 64
    .line 65
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$5;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    .line 66
    .line 67
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->-$$Nest$fgetifaces(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)Ljava/util/Set;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    if-eqz v0, :cond_1

    .line 76
    .line 77
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$5;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    .line 78
    .line 79
    invoke-static {v0, p1}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->-$$Nest$fputmClientIfaceName(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$5;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    .line 83
    .line 84
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->-$$Nest$fgetmConnected(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    const/4 v0, 0x1

    .line 89
    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 90
    .line 91
    .line 92
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$5;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    .line 93
    .line 94
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->-$$Nest$fgetmIsFeatureEnabled(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)Z

    .line 95
    .line 96
    .line 97
    move-result p1

    .line 98
    if-eqz p1, :cond_1

    .line 99
    .line 100
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$5;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    .line 101
    .line 102
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->-$$Nest$fgetmServiceDetectionHandler(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)Lcom/samsung/android/server/wifi/SemWifiServiceDetector$ServiceDetectionHandler;

    .line 103
    .line 104
    .line 105
    move-result-object p0

    .line 106
    const/4 p1, 0x3

    .line 107
    invoke-static {p0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    .line 108
    .line 109
    .line 110
    move-result-object p0

    .line 111
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 112
    .line 113
    .line 114
    :cond_1
    return-void
.end method
