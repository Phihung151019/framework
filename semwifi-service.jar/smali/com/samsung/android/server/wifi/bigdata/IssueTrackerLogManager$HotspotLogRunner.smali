.class Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager$HotspotLogRunner;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HotspotLogRunner"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager;


# direct methods
.method private constructor <init>(Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 2
    iput-object p1, p0, Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager$HotspotLogRunner;->this$0:Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager$HotspotLogRunner;-><init>(Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager;)V

    return-void
.end method

.method private captureNativeCommandResult(Ljava/io/BufferedWriter;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0, p2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {p0}, Ljava/lang/Process;->waitFor()I

    .line 10
    .line 11
    .line 12
    new-instance p2, Ljava/io/BufferedReader;

    .line 13
    .line 14
    new-instance v0, Ljava/io/InputStreamReader;

    .line 15
    .line 16
    invoke-virtual {p0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 21
    .line 22
    invoke-direct {v0, p0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 23
    .line 24
    .line 25
    invoke-direct {p2, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 26
    .line 27
    .line 28
    :goto_0
    :try_start_0
    invoke-virtual {p2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    if-eqz p0, :cond_0

    .line 33
    .line 34
    invoke-virtual {p1, p0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :catchall_0
    move-exception p0

    .line 42
    goto :goto_1

    .line 43
    :cond_0
    invoke-virtual {p2}, Ljava/io/BufferedReader;->close()V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :goto_1
    :try_start_1
    invoke-virtual {p2}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 48
    .line 49
    .line 50
    goto :goto_2

    .line 51
    :catchall_1
    move-exception p1

    .line 52
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 53
    .line 54
    .line 55
    :goto_2
    throw p0
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager$HotspotLogRunner;->this$0:Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager;->-$$Nest$mgetTimeToString(Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "HotspotLogRunner run, currentTime:"

    .line 8
    .line 9
    const-string v2, " isRunning:"

    .line 10
    .line 11
    invoke-static {v1, v0, v2}, Lcom/samsung/android/server/wifi/SemClientModeImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    iget-object v2, p0, Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager$HotspotLogRunner;->this$0:Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager;

    .line 16
    .line 17
    invoke-static {v2}, Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager;->-$$Nest$fgetisHotspotLogRunning(Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager;)Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    const-string v2, "SemWifi.IssueTracker"

    .line 29
    .line 30
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    const-string v1, "/data/log/wifi/net_dev_"

    .line 34
    .line 35
    const-string v3, ".txt"

    .line 36
    .line 37
    invoke-static {v1, v0, v3}, Lcom/samsung/android/server/wifi/abtest/AbTestManager$4$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    :try_start_0
    new-instance v1, Ljava/io/BufferedWriter;

    .line 42
    .line 43
    new-instance v3, Ljava/io/OutputStreamWriter;

    .line 44
    .line 45
    new-instance v4, Ljava/io/FileOutputStream;

    .line 46
    .line 47
    invoke-direct {v4, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 51
    .line 52
    invoke-direct {v3, v4, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    .line 53
    .line 54
    .line 55
    invoke-direct {v1, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    .line 57
    .line 58
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->newLine()V

    .line 59
    .line 60
    .line 61
    :goto_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    if-nez v0, :cond_0

    .line 70
    .line 71
    iget-object v0, p0, Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager$HotspotLogRunner;->this$0:Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager;

    .line 72
    .line 73
    invoke-static {v0}, Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager;->-$$Nest$fgetisHotspotLogRunning(Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager;)Z

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    if-eqz v0, :cond_0

    .line 78
    .line 79
    iget-object v0, p0, Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager$HotspotLogRunner;->this$0:Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager;

    .line 80
    .line 81
    invoke-static {v0}, Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager;->-$$Nest$fgetwifiManagerProxy(Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager;)Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isWifiApEnabled()Z

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    if-eqz v0, :cond_0

    .line 90
    .line 91
    const-string v0, "date"

    .line 92
    .line 93
    invoke-direct {p0, v1, v0}, Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager$HotspotLogRunner;->captureNativeCommandResult(Ljava/io/BufferedWriter;Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    const-string v0, "cat /proc/net/dev"

    .line 97
    .line 98
    invoke-direct {p0, v1, v0}, Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager$HotspotLogRunner;->captureNativeCommandResult(Ljava/io/BufferedWriter;Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    const-wide/16 v3, 0x384

    .line 102
    .line 103
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 104
    .line 105
    .line 106
    goto :goto_0

    .line 107
    :catchall_0
    move-exception v0

    .line 108
    goto :goto_1

    .line 109
    :cond_0
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 110
    .line 111
    .line 112
    goto :goto_5

    .line 113
    :catch_0
    move-exception v0

    .line 114
    goto :goto_3

    .line 115
    :catch_1
    move-exception v0

    .line 116
    goto :goto_4

    .line 117
    :goto_1
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 118
    .line 119
    .line 120
    goto :goto_2

    .line 121
    :catchall_1
    move-exception v1

    .line 122
    :try_start_4
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 123
    .line 124
    .line 125
    :goto_2
    throw v0
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 126
    :goto_3
    const-string v1, "DebugLogLoop Exception:"

    .line 127
    .line 128
    invoke-static {v1, v0, v2}, Lcom/samsung/android/server/wifi/SemFrameworkFacade$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    goto :goto_5

    .line 132
    :goto_4
    new-instance v1, Ljava/lang/StringBuilder;

    .line 133
    .line 134
    const-string v3, "DebugLogLoop InterruptedException:"

    .line 135
    .line 136
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    .line 148
    .line 149
    :goto_5
    iget-object p0, p0, Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager$HotspotLogRunner;->this$0:Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager;

    .line 150
    .line 151
    invoke-static {p0}, Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager;->-$$Nest$fputisHotspotLogRunning(Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager;)V

    .line 152
    .line 153
    .line 154
    const-string p0, "HotspotLogRunner finish"

    .line 155
    .line 156
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    .line 158
    .line 159
    return-void
.end method
