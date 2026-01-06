.class Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$SemAbTestObserver;
.super Lcom/samsung/android/wifi/SemWifiManager$AbTestConfigUpdateObserver;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SemAbTestObserver"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "wcm.AB"


# instance fields
.field public mCallingThreadId:J

.field final synthetic this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;


# direct methods
.method private constructor <init>(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 2
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$SemAbTestObserver;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-direct {p0}, Lcom/samsung/android/wifi/SemWifiManager$AbTestConfigUpdateObserver;-><init>()V

    const-wide/16 v0, -0x1

    .line 3
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$SemAbTestObserver;->mCallingThreadId:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$SemAbTestObserver;-><init>(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)V

    return-void
.end method

.method private checkAbTestConfigAndUpdateAbTestParams()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$SemAbTestObserver;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmSemAbTestConfig(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/wifi/SemAbTestConfiguration;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "wcm.AB"

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$SemAbTestObserver;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 12
    .line 13
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmSemAbTestConfig(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/wifi/SemAbTestConfiguration;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {v2}, Lcom/samsung/android/wifi/SemAbTestConfiguration;->getMyTestParamsMap()Ljava/util/Map;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-static {v0, v2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fputmAbTestParams(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;Ljava/util/Map;)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$SemAbTestObserver;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 25
    .line 26
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmSemAbTestConfig(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/wifi/SemAbTestConfiguration;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-virtual {v2}, Lcom/samsung/android/wifi/SemAbTestConfiguration;->getMyOutputList()Ljava/util/List;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-static {v0, v2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fputmAbTestOutputList(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;Ljava/util/List;)V

    .line 35
    .line 36
    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    const-string v2, "checkAbTestConfigAndUpdateAbTestParams - mAbTestParams: "

    .line 40
    .line 41
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$SemAbTestObserver;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 45
    .line 46
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmAbTestParams(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Ljava/util/Map;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v2, ", mAbTestOutputList: "

    .line 54
    .line 55
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$SemAbTestObserver;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 59
    .line 60
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmAbTestOutputList(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Ljava/util/List;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$SemAbTestObserver;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 76
    .line 77
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmAbTestParams(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Ljava/util/Map;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 82
    .line 83
    .line 84
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$SemAbTestObserver;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 85
    .line 86
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmAbTestOutputList(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Ljava/util/List;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 91
    .line 92
    .line 93
    const-string v0, "checkAbTestConfigAndUpdateAbTestParams: mSemAbTestconfig is null. Update all params back to default."

    .line 94
    .line 95
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    .line 97
    .line 98
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$SemAbTestObserver;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 99
    .line 100
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmAbTestValue(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)I

    .line 101
    .line 102
    .line 103
    move-result v0

    .line 104
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$SemAbTestObserver;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 105
    .line 106
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmAbTestParams(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Ljava/util/Map;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    const-string v3, "Activate"

    .line 111
    .line 112
    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    move-result v2

    .line 116
    const/4 v4, -0x1

    .line 117
    if-eqz v2, :cond_1

    .line 118
    .line 119
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$SemAbTestObserver;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 120
    .line 121
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmAbTestParams(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Ljava/util/Map;

    .line 122
    .line 123
    .line 124
    move-result-object v2

    .line 125
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object v2

    .line 129
    check-cast v2, Ljava/lang/String;

    .line 130
    .line 131
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$SemAbTestObserver;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 132
    .line 133
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 134
    .line 135
    .line 136
    move-result v2

    .line 137
    invoke-static {v3, v2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fputmAbTestValue(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    .line 139
    .line 140
    goto :goto_1

    .line 141
    :catch_0
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$SemAbTestObserver;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 142
    .line 143
    invoke-static {v2, v4}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fputmAbTestValue(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;I)V

    .line 144
    .line 145
    .line 146
    goto :goto_1

    .line 147
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$SemAbTestObserver;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 148
    .line 149
    invoke-static {v2, v4}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fputmAbTestValue(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;I)V

    .line 150
    .line 151
    .line 152
    :goto_1
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$SemAbTestObserver;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 153
    .line 154
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmAbTestValue(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)I

    .line 155
    .line 156
    .line 157
    move-result v2

    .line 158
    if-eq v0, v2, :cond_2

    .line 159
    .line 160
    const-string v2, "A/B Test Parameter prevParam: updated from "

    .line 161
    .line 162
    const-string v3, " to "

    .line 163
    .line 164
    invoke-static {v2, v0, v3}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$SemAbTestObserver;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 169
    .line 170
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmAbTestValue(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)I

    .line 171
    .line 172
    .line 173
    move-result v2

    .line 174
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v0

    .line 181
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    .line 183
    .line 184
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$SemAbTestObserver;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 185
    .line 186
    const v0, 0x2114f

    .line 187
    .line 188
    .line 189
    invoke-virtual {p0, v0}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    .line 190
    .line 191
    .line 192
    :cond_2
    return-void
.end method


# virtual methods
.method public onRegistered(Lcom/samsung/android/wifi/SemWifiManager$AbTestConfigSubscription;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$SemAbTestObserver;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fputmAbTestConfigSub(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;Lcom/samsung/android/wifi/SemWifiManager$AbTestConfigSubscription;)V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p1}, Ljava/lang/Thread;->getId()J

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$SemAbTestObserver;->mCallingThreadId:J

    .line 15
    .line 16
    new-instance p1, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    const-string v0, "abtest: onRegistered - mCallingThreadId "

    .line 19
    .line 20
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$SemAbTestObserver;->mCallingThreadId:J

    .line 24
    .line 25
    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v0, ", mAbTestConfigSub = "

    .line 29
    .line 30
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$SemAbTestObserver;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 34
    .line 35
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmAbTestConfigSub(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/wifi/SemWifiManager$AbTestConfigSubscription;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    const-string v0, "wcm.AB"

    .line 47
    .line 48
    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$SemAbTestObserver;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 52
    .line 53
    const/4 v1, 0x0

    .line 54
    invoke-static {p1, v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fputmSemAbTestConfig(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;Lcom/samsung/android/wifi/SemAbTestConfiguration;)V

    .line 55
    .line 56
    .line 57
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$SemAbTestObserver;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 58
    .line 59
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmSemWifiManager(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/wifi/SemWifiManager;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    if-eqz p1, :cond_1

    .line 64
    .line 65
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$SemAbTestObserver;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 66
    .line 67
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmSemWifiManager(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/wifi/SemWifiManager;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    const-string v1, "EntryRssiControl"

    .line 72
    .line 73
    invoke-virtual {p1, v1}, Lcom/samsung/android/wifi/SemWifiManager;->getAbTestConfiguredModule(Ljava/lang/String;)Lcom/samsung/android/wifi/SemAbTestConfiguration;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    if-eqz p1, :cond_0

    .line 78
    .line 79
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$SemAbTestObserver;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 80
    .line 81
    new-instance v2, Lcom/samsung/android/wifi/SemAbTestConfiguration;

    .line 82
    .line 83
    invoke-direct {v2, p1}, Lcom/samsung/android/wifi/SemAbTestConfiguration;-><init>(Lcom/samsung/android/wifi/SemAbTestConfiguration;)V

    .line 84
    .line 85
    .line 86
    invoke-static {v1, v2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fputmSemAbTestConfig(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;Lcom/samsung/android/wifi/SemAbTestConfiguration;)V

    .line 87
    .line 88
    .line 89
    new-instance p1, Ljava/lang/StringBuilder;

    .line 90
    .line 91
    const-string v1, "abtest: onRegistered - config : [ "

    .line 92
    .line 93
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$SemAbTestObserver;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 97
    .line 98
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmSemAbTestConfig(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/wifi/SemAbTestConfiguration;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    const-string v1, " ] "

    .line 106
    .line 107
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    .line 116
    .line 117
    goto :goto_0

    .line 118
    :cond_0
    const-string p1, "abtest: onRegistered - config is null. "

    .line 119
    .line 120
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    .line 122
    .line 123
    goto :goto_0

    .line 124
    :cond_1
    const-string p1, "abtest: onRegistered - mSemWifiManager is null. "

    .line 125
    .line 126
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    .line 128
    .line 129
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$SemAbTestObserver;->checkAbTestConfigAndUpdateAbTestParams()V

    .line 130
    .line 131
    .line 132
    return-void
.end method

.method public onUpdated(Lcom/samsung/android/wifi/SemAbTestConfiguration;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$SemAbTestObserver;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fputmSemAbTestConfig(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;Lcom/samsung/android/wifi/SemAbTestConfiguration;)V

    .line 5
    .line 6
    .line 7
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$SemAbTestObserver;->mCallingThreadId:J

    .line 16
    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    const-string v1, "abtest: onUpdated - mCallingThreadId "

    .line 20
    .line 21
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget-wide v1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$SemAbTestObserver;->mCallingThreadId:J

    .line 25
    .line 26
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    const-string v1, "wcm.AB"

    .line 34
    .line 35
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    if-eqz p1, :cond_0

    .line 39
    .line 40
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$SemAbTestObserver;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 41
    .line 42
    new-instance v2, Lcom/samsung/android/wifi/SemAbTestConfiguration;

    .line 43
    .line 44
    invoke-direct {v2, p1}, Lcom/samsung/android/wifi/SemAbTestConfiguration;-><init>(Lcom/samsung/android/wifi/SemAbTestConfiguration;)V

    .line 45
    .line 46
    .line 47
    invoke-static {v0, v2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fputmSemAbTestConfig(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;Lcom/samsung/android/wifi/SemAbTestConfiguration;)V

    .line 48
    .line 49
    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    const-string v2, "abtest: onUpdated - config : [ "

    .line 53
    .line 54
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string p1, " ] "

    .line 61
    .line 62
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_0
    const-string p1, "abtest: onUpdated - config is null. "

    .line 74
    .line 75
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    .line 77
    .line 78
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$SemAbTestObserver;->checkAbTestConfigAndUpdateAbTestParams()V

    .line 79
    .line 80
    .line 81
    return-void
.end method
