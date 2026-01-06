.class Lcom/samsung/android/server/wifi/SemCellularStateManager$SemCellularStateHandler;
.super Landroid/os/Handler;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemCellularStateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SemCellularStateHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/SemCellularStateManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/SemCellularStateManager;Landroid/os/Looper;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager$SemCellularStateHandler;->this$0:Lcom/samsung/android/server/wifi/SemCellularStateManager;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    const/4 v2, 0x2

    .line 5
    const/4 v3, 0x1

    .line 6
    const-string v4, "SemCellularStateManager"

    .line 7
    .line 8
    if-eq v0, v3, :cond_3

    .line 9
    .line 10
    if-eq v0, v2, :cond_2

    .line 11
    .line 12
    if-eq v0, v1, :cond_0

    .line 13
    .line 14
    new-instance p0, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string v0, "SemCellularStateHandler.handleMessage: undefined case: msg="

    .line 17
    .line 18
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget p1, p1, Landroid/os/Message;->what:I

    .line 22
    .line 23
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager$SemCellularStateHandler;->this$0:Lcom/samsung/android/server/wifi/SemCellularStateManager;

    .line 35
    .line 36
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemCellularStateManager;->-$$Nest$fgetmPrimaryInterfaceName(Lcom/samsung/android/server/wifi/SemCellularStateManager;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager$SemCellularStateHandler;->this$0:Lcom/samsung/android/server/wifi/SemCellularStateManager;

    .line 41
    .line 42
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast p1, Ljava/lang/String;

    .line 45
    .line 46
    invoke-static {v1, p1}, Lcom/samsung/android/server/wifi/SemCellularStateManager;->-$$Nest$fputmPrimaryInterfaceName(Lcom/samsung/android/server/wifi/SemCellularStateManager;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    if-eqz v0, :cond_1

    .line 50
    .line 51
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager$SemCellularStateHandler;->this$0:Lcom/samsung/android/server/wifi/SemCellularStateManager;

    .line 52
    .line 53
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemCellularStateManager;->-$$Nest$mnotifyWifiStateChanged(Lcom/samsung/android/server/wifi/SemCellularStateManager;)V

    .line 54
    .line 55
    .line 56
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    const-string v0, "Primary Wi-Fi changed: "

    .line 59
    .line 60
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager$SemCellularStateHandler;->this$0:Lcom/samsung/android/server/wifi/SemCellularStateManager;

    .line 64
    .line 65
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemCellularStateManager;->-$$Nest$fgetmPrimaryInterfaceName(Lcom/samsung/android/server/wifi/SemCellularStateManager;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    .line 78
    .line 79
    return-void

    .line 80
    :cond_2
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager$SemCellularStateHandler;->this$0:Lcom/samsung/android/server/wifi/SemCellularStateManager;

    .line 81
    .line 82
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemCellularStateManager;->-$$Nest$mnotifyCellularStateChanged(Lcom/samsung/android/server/wifi/SemCellularStateManager;)V

    .line 83
    .line 84
    .line 85
    return-void

    .line 86
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager$SemCellularStateHandler;->this$0:Lcom/samsung/android/server/wifi/SemCellularStateManager;

    .line 87
    .line 88
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 89
    .line 90
    check-cast p1, Ljava/lang/Integer;

    .line 91
    .line 92
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 93
    .line 94
    .line 95
    move-result p1

    .line 96
    invoke-static {v0, p1}, Lcom/samsung/android/server/wifi/SemCellularStateManager;->-$$Nest$fputmWifiState(Lcom/samsung/android/server/wifi/SemCellularStateManager;I)V

    .line 97
    .line 98
    .line 99
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager$SemCellularStateHandler;->this$0:Lcom/samsung/android/server/wifi/SemCellularStateManager;

    .line 100
    .line 101
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemCellularStateManager;->-$$Nest$fgetmWifiState(Lcom/samsung/android/server/wifi/SemCellularStateManager;)I

    .line 102
    .line 103
    .line 104
    move-result p1

    .line 105
    if-eq p1, v3, :cond_5

    .line 106
    .line 107
    if-eq p1, v2, :cond_4

    .line 108
    .line 109
    if-eq p1, v1, :cond_5

    .line 110
    .line 111
    const/4 v0, 0x4

    .line 112
    if-eq p1, v0, :cond_4

    .line 113
    .line 114
    const/4 v0, 0x5

    .line 115
    if-eq p1, v0, :cond_5

    .line 116
    .line 117
    new-instance p1, Ljava/lang/StringBuilder;

    .line 118
    .line 119
    const-string v0, "handleWifiStateChanged - Nothing to do for state = "

    .line 120
    .line 121
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager$SemCellularStateHandler;->this$0:Lcom/samsung/android/server/wifi/SemCellularStateManager;

    .line 125
    .line 126
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemCellularStateManager;->-$$Nest$fgetmWifiState(Lcom/samsung/android/server/wifi/SemCellularStateManager;)I

    .line 127
    .line 128
    .line 129
    move-result p0

    .line 130
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object p0

    .line 137
    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    .line 139
    .line 140
    return-void

    .line 141
    :cond_4
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager$SemCellularStateHandler;->this$0:Lcom/samsung/android/server/wifi/SemCellularStateManager;

    .line 142
    .line 143
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemCellularStateManager;->-$$Nest$fputmEnableExtendedFeature(Lcom/samsung/android/server/wifi/SemCellularStateManager;)V

    .line 144
    .line 145
    .line 146
    return-void

    .line 147
    :cond_5
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemCellularStateManager$SemCellularStateHandler;->this$0:Lcom/samsung/android/server/wifi/SemCellularStateManager;

    .line 148
    .line 149
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemCellularStateManager;->-$$Nest$mnotifyWifiStateChanged(Lcom/samsung/android/server/wifi/SemCellularStateManager;)V

    .line 150
    .line 151
    .line 152
    return-void
.end method
