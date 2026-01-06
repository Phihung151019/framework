.class final Lcom/samsung/android/wifi/intelligence/ins/SemInsManager$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/wifi/intelligence/ins/SemInsManager;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/wifi/intelligence/ins/SemInsManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/wifi/intelligence/ins/SemInsManager;)V
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
    iput-object p1, p0, Lcom/samsung/android/wifi/intelligence/ins/SemInsManager$1;->this$0:Lcom/samsung/android/wifi/intelligence/ins/SemInsManager;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 1
    const-string p1, "status"

    .line 2
    .line 3
    const/4 v0, -0x1

    .line 4
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    const/4 v0, 0x2

    .line 9
    const-string v1, "SemInsManager"

    .line 10
    .line 11
    if-eq p1, v0, :cond_2

    .line 12
    .line 13
    const/4 v0, 0x5

    .line 14
    if-ne p1, v0, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    sget v0, Lcom/samsung/android/wifi/intelligence/ins/spec/ConfigSpec$TestMode;->CUSTOM_BATTERY_VALUE_INFER:I

    .line 18
    .line 19
    if-ne p1, v0, :cond_1

    .line 20
    .line 21
    const-string p1, "Custom Infer Call, inferring"

    .line 22
    .line 23
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    iget-object p0, p0, Lcom/samsung/android/wifi/intelligence/ins/SemInsManager$1;->this$0:Lcom/samsung/android/wifi/intelligence/ins/SemInsManager;

    .line 27
    .line 28
    invoke-static {p0}, Lcom/samsung/android/wifi/intelligence/ins/SemInsManager;->-$$Nest$fgetmController(Lcom/samsung/android/wifi/intelligence/ins/SemInsManager;)Lcom/samsung/android/wifi/intelligence/ins/InsController;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    sget-object p1, Lcom/samsung/android/wifi/intelligence/ins/spec/ConfigSpec$TestMode;->CUSTOM_EXTRA_INFER:Ljava/lang/String;

    .line 33
    .line 34
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {p0, p1}, Lcom/samsung/android/wifi/intelligence/ins/InsController;->infer(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :cond_1
    const-string p1, "Disconnected to charger"

    .line 43
    .line 44
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    iget-object p0, p0, Lcom/samsung/android/wifi/intelligence/ins/SemInsManager$1;->this$0:Lcom/samsung/android/wifi/intelligence/ins/SemInsManager;

    .line 48
    .line 49
    invoke-static {p0}, Lcom/samsung/android/wifi/intelligence/ins/SemInsManager;->-$$Nest$fgetmController(Lcom/samsung/android/wifi/intelligence/ins/SemInsManager;)Lcom/samsung/android/wifi/intelligence/ins/InsController;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    iget-object p1, p0, Lcom/samsung/android/wifi/intelligence/ins/InsController;->trServiceConnection:Lcom/samsung/android/wifi/intelligence/ins/InsController$TrServiceConnection;

    .line 54
    .line 55
    if-eqz p1, :cond_5

    .line 56
    .line 57
    invoke-virtual {p1}, Lcom/samsung/android/wifi/intelligence/ins/InsController$TrServiceConnection;->close()V

    .line 58
    .line 59
    .line 60
    const/4 p1, 0x0

    .line 61
    iput-object p1, p0, Lcom/samsung/android/wifi/intelligence/ins/InsController;->trServiceConnection:Lcom/samsung/android/wifi/intelligence/ins/InsController$TrServiceConnection;

    .line 62
    .line 63
    return-void

    .line 64
    :cond_2
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 65
    .line 66
    .line 67
    move-result-wide p1

    .line 68
    iget-object v0, p0, Lcom/samsung/android/wifi/intelligence/ins/SemInsManager$1;->this$0:Lcom/samsung/android/wifi/intelligence/ins/SemInsManager;

    .line 69
    .line 70
    invoke-static {v0}, Lcom/samsung/android/wifi/intelligence/ins/SemInsManager;->-$$Nest$fgetmLastTrainTime(Lcom/samsung/android/wifi/intelligence/ins/SemInsManager;)J

    .line 71
    .line 72
    .line 73
    move-result-wide v2

    .line 74
    sub-long/2addr p1, v2

    .line 75
    const-wide/16 v2, 0x7530

    .line 76
    .line 77
    cmp-long p1, p1, v2

    .line 78
    .line 79
    if-lez p1, :cond_4

    .line 80
    .line 81
    iget-object p1, p0, Lcom/samsung/android/wifi/intelligence/ins/SemInsManager$1;->this$0:Lcom/samsung/android/wifi/intelligence/ins/SemInsManager;

    .line 82
    .line 83
    invoke-static {p1}, Lcom/samsung/android/wifi/intelligence/ins/SemInsManager;->-$$Nest$fgetmController(Lcom/samsung/android/wifi/intelligence/ins/SemInsManager;)Lcom/samsung/android/wifi/intelligence/ins/InsController;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    invoke-virtual {p1}, Lcom/samsung/android/wifi/intelligence/ins/InsController;->getEnableTrain()Z

    .line 88
    .line 89
    .line 90
    move-result p1

    .line 91
    if-eqz p1, :cond_3

    .line 92
    .line 93
    const-string p1, "Trying to train all BSSIDS"

    .line 94
    .line 95
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    .line 97
    .line 98
    iget-object p1, p0, Lcom/samsung/android/wifi/intelligence/ins/SemInsManager$1;->this$0:Lcom/samsung/android/wifi/intelligence/ins/SemInsManager;

    .line 99
    .line 100
    invoke-static {p1}, Lcom/samsung/android/wifi/intelligence/ins/SemInsManager;->-$$Nest$fgetmController(Lcom/samsung/android/wifi/intelligence/ins/SemInsManager;)Lcom/samsung/android/wifi/intelligence/ins/InsController;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    invoke-virtual {p1}, Lcom/samsung/android/wifi/intelligence/ins/InsController;->train()V

    .line 105
    .line 106
    .line 107
    :cond_3
    iget-object p0, p0, Lcom/samsung/android/wifi/intelligence/ins/SemInsManager$1;->this$0:Lcom/samsung/android/wifi/intelligence/ins/SemInsManager;

    .line 108
    .line 109
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 110
    .line 111
    .line 112
    move-result-wide p1

    .line 113
    invoke-static {p0, p1, p2}, Lcom/samsung/android/wifi/intelligence/ins/SemInsManager;->-$$Nest$fputmLastTrainTime(Lcom/samsung/android/wifi/intelligence/ins/SemInsManager;J)V

    .line 114
    .line 115
    .line 116
    return-void

    .line 117
    :cond_4
    iget-object p0, p0, Lcom/samsung/android/wifi/intelligence/ins/SemInsManager$1;->this$0:Lcom/samsung/android/wifi/intelligence/ins/SemInsManager;

    .line 118
    .line 119
    invoke-static {p0}, Lcom/samsung/android/wifi/intelligence/ins/SemInsManager;->-$$Nest$fgetmController(Lcom/samsung/android/wifi/intelligence/ins/SemInsManager;)Lcom/samsung/android/wifi/intelligence/ins/InsController;

    .line 120
    .line 121
    .line 122
    move-result-object p0

    .line 123
    invoke-virtual {p0}, Lcom/samsung/android/wifi/intelligence/ins/InsController;->getEnableTrain()Z

    .line 124
    .line 125
    .line 126
    move-result p0

    .line 127
    if-eqz p0, :cond_5

    .line 128
    .line 129
    const-string p0, "Tried to train all BSSIDS, but debounce time not elapsed yet"

    .line 130
    .line 131
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    .line 133
    .line 134
    :cond_5
    return-void
.end method
