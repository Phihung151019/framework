.class public Lcom/android/commands/monkey/MonkeyGetAppFrameRateEvent;
.super Lcom/android/commands/monkey/MonkeyEvent;
.source "MonkeyGetAppFrameRateEvent.java"


# static fields
.field private static final LOG_FILE:Ljava/lang/String;

.field private static final NO_OF_FRAMES_PATTERN:Ljava/util/regex/Pattern;

.field private static final TAG:Ljava/lang/String; = "MonkeyGetAppFrameRateEvent"

.field private static sActivityName:Ljava/lang/String;

.field private static sDuration:F

.field private static sEndFrameNo:I

.field private static sEndTime:J

.field private static sStartFrameNo:I

.field private static sStartTime:J

.field private static sTestCaseName:Ljava/lang/String;


# instance fields
.field private GET_APP_FRAMERATE_TMPL:Ljava/lang/String;

.field private mStatus:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 45
    const/4 v0, 0x0

    sput-object v0, Lcom/android/commands/monkey/MonkeyGetAppFrameRateEvent;->sActivityName:Ljava/lang/String;

    .line 46
    sput-object v0, Lcom/android/commands/monkey/MonkeyGetAppFrameRateEvent;->sTestCaseName:Ljava/lang/String;

    .line 51
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "avgAppFrameRateOut.txt"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 52
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/commands/monkey/MonkeyGetAppFrameRateEvent;->LOG_FILE:Ljava/lang/String;

    .line 53
    nop

    .line 54
    const-string v0, ".* ([0-9]*) frames rendered"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/commands/monkey/MonkeyGetAppFrameRateEvent;->NO_OF_FRAMES_PATTERN:Ljava/util/regex/Pattern;

    .line 53
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "status"    # Ljava/lang/String;

    .line 70
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/commands/monkey/MonkeyEvent;-><init>(I)V

    .line 40
    const-string v0, "dumpsys gfxinfo %s"

    iput-object v0, p0, Lcom/android/commands/monkey/MonkeyGetAppFrameRateEvent;->GET_APP_FRAMERATE_TMPL:Ljava/lang/String;

    .line 71
    iput-object p1, p0, Lcom/android/commands/monkey/MonkeyGetAppFrameRateEvent;->mStatus:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "status"    # Ljava/lang/String;
    .param p2, "activityName"    # Ljava/lang/String;

    .line 64
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/commands/monkey/MonkeyEvent;-><init>(I)V

    .line 40
    const-string v0, "dumpsys gfxinfo %s"

    iput-object v0, p0, Lcom/android/commands/monkey/MonkeyGetAppFrameRateEvent;->GET_APP_FRAMERATE_TMPL:Ljava/lang/String;

    .line 65
    iput-object p1, p0, Lcom/android/commands/monkey/MonkeyGetAppFrameRateEvent;->mStatus:Ljava/lang/String;

    .line 66
    sput-object p2, Lcom/android/commands/monkey/MonkeyGetAppFrameRateEvent;->sActivityName:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "status"    # Ljava/lang/String;
    .param p2, "activityName"    # Ljava/lang/String;
    .param p3, "testCaseName"    # Ljava/lang/String;

    .line 57
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/commands/monkey/MonkeyEvent;-><init>(I)V

    .line 40
    const-string v0, "dumpsys gfxinfo %s"

    iput-object v0, p0, Lcom/android/commands/monkey/MonkeyGetAppFrameRateEvent;->GET_APP_FRAMERATE_TMPL:Ljava/lang/String;

    .line 58
    iput-object p1, p0, Lcom/android/commands/monkey/MonkeyGetAppFrameRateEvent;->mStatus:Ljava/lang/String;

    .line 59
    sput-object p2, Lcom/android/commands/monkey/MonkeyGetAppFrameRateEvent;->sActivityName:Ljava/lang/String;

    .line 60
    sput-object p3, Lcom/android/commands/monkey/MonkeyGetAppFrameRateEvent;->sTestCaseName:Ljava/lang/String;

    .line 61
    return-void
.end method

.method private getAverageFrameRate(IF)F
    .locals 2
    .param p1, "totalNumberOfFrame"    # I
    .param p2, "duration"    # F

    .line 76
    const/4 v0, 0x0

    .line 77
    .local v0, "avgFrameRate":F
    const/4 v1, 0x0

    cmpl-float v1, p2, v1

    if-lez v1, :cond_0

    .line 78
    int-to-float v1, p1

    div-float v0, v1, p2

    .line 80
    :cond_0
    return v0
.end method

.method private getNumberOfFrames(Ljava/io/BufferedReader;)Ljava/lang/String;
    .locals 4
    .param p1, "reader"    # Ljava/io/BufferedReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 110
    const/4 v0, 0x0

    .line 111
    .local v0, "noOfFrames":Ljava/lang/String;
    const/4 v1, 0x0

    .line 112
    .local v1, "line":Ljava/lang/String;
    :goto_0
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    if-eqz v2, :cond_1

    .line 113
    sget-object v2, Lcom/android/commands/monkey/MonkeyGetAppFrameRateEvent;->NO_OF_FRAMES_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 114
    .local v2, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 115
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 116
    goto :goto_1

    .line 118
    .end local v2    # "m":Ljava/util/regex/Matcher;
    :cond_0
    goto :goto_0

    .line 119
    :cond_1
    :goto_1
    return-object v0
.end method

.method private writeAverageFrameRate()V
    .locals 8

    .line 87
    const-string v0, "IOException "

    const-string v1, "MonkeyGetAppFrameRateEvent"

    const/4 v2, 0x0

    .line 89
    .local v2, "writer":Ljava/io/FileWriter;
    const/4 v3, 0x0

    .line 91
    .local v3, "totalNumberOfFrame":I
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "file: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/android/commands/monkey/MonkeyGetAppFrameRateEvent;->LOG_FILE:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    new-instance v4, Ljava/io/FileWriter;

    sget-object v5, Lcom/android/commands/monkey/MonkeyGetAppFrameRateEvent;->LOG_FILE:Ljava/lang/String;

    const/4 v6, 0x1

    invoke-direct {v4, v5, v6}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V

    move-object v2, v4

    .line 93
    sget v4, Lcom/android/commands/monkey/MonkeyGetAppFrameRateEvent;->sEndFrameNo:I

    sget v5, Lcom/android/commands/monkey/MonkeyGetAppFrameRateEvent;->sStartFrameNo:I

    sub-int v3, v4, v5

    .line 94
    sget v4, Lcom/android/commands/monkey/MonkeyGetAppFrameRateEvent;->sDuration:F

    invoke-direct {p0, v3, v4}, Lcom/android/commands/monkey/MonkeyGetAppFrameRateEvent;->getAverageFrameRate(IF)F

    move-result v4

    .line 95
    .local v4, "avgFrameRate":F
    const-string v5, "%s:%.2f\n"

    sget-object v6, Lcom/android/commands/monkey/MonkeyGetAppFrameRateEvent;->sTestCaseName:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    filled-new-array {v6, v7}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    nop

    .line 101
    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 104
    goto :goto_1

    .line 102
    :catch_0
    move-exception v5

    .line 103
    .local v5, "e":Ljava/io/IOException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v5}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    .end local v5    # "e":Ljava/io/IOException;
    goto :goto_1

    .line 99
    .end local v4    # "avgFrameRate":F
    :catchall_0
    move-exception v4

    goto :goto_2

    .line 96
    :catch_1
    move-exception v4

    .line 97
    .local v4, "e":Ljava/io/IOException;
    :try_start_2
    const-string v5, "Can\'t write sdcard log file"

    invoke-static {v1, v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 100
    .end local v4    # "e":Ljava/io/IOException;
    if-eqz v2, :cond_0

    .line 101
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 102
    :catch_2
    move-exception v4

    .line 103
    .restart local v4    # "e":Ljava/io/IOException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v4}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    .end local v4    # "e":Ljava/io/IOException;
    goto :goto_1

    .line 104
    :cond_0
    :goto_0
    nop

    .line 106
    :goto_1
    return-void

    .line 100
    :goto_2
    if-eqz v2, :cond_1

    .line 101
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_3

    .line 102
    :catch_3
    move-exception v5

    .line 103
    .restart local v5    # "e":Ljava/io/IOException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v5}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 104
    .end local v5    # "e":Ljava/io/IOException;
    :cond_1
    :goto_3
    nop

    .line 105
    :goto_4
    throw v4
.end method


# virtual methods
.method public injectEvent(Landroid/view/IWindowManager;Landroid/app/IActivityManager;I)I
    .locals 11
    .param p1, "iwm"    # Landroid/view/IWindowManager;
    .param p2, "iam"    # Landroid/app/IActivityManager;
    .param p3, "verbose"    # I

    .line 124
    const/4 v0, 0x0

    .line 125
    .local v0, "p":Ljava/lang/Process;
    const/4 v1, 0x0

    .line 126
    .local v1, "result":Ljava/io/BufferedReader;
    iget-object v2, p0, Lcom/android/commands/monkey/MonkeyGetAppFrameRateEvent;->GET_APP_FRAMERATE_TMPL:Ljava/lang/String;

    sget-object v3, Lcom/android/commands/monkey/MonkeyGetAppFrameRateEvent;->sActivityName:Ljava/lang/String;

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 128
    .local v2, "cmd":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v3

    move-object v0, v3

    .line 129
    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I

    move-result v3

    .line 130
    .local v3, "status":I
    if-eqz v3, :cond_0

    .line 131
    sget-object v4, Lcom/android/commands/monkey/Logger;->err:Lcom/android/commands/monkey/Logger;

    const-string v5, "// Shell command %s status was %s"

    .line 132
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v2, v6}, [Ljava/lang/Object;

    move-result-object v6

    .line 131
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/commands/monkey/Logger;->println(Ljava/lang/String;)V

    .line 134
    :cond_0
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v1, v4

    .line 136
    invoke-direct {p0, v1}, Lcom/android/commands/monkey/MonkeyGetAppFrameRateEvent;->getNumberOfFrames(Ljava/io/BufferedReader;)Ljava/lang/String;

    move-result-object v4

    .line 138
    .local v4, "output":Ljava/lang/String;
    if-eqz v4, :cond_2

    .line 139
    const-string v5, "start"

    iget-object v6, p0, Lcom/android/commands/monkey/MonkeyGetAppFrameRateEvent;->mStatus:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 140
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    sput v5, Lcom/android/commands/monkey/MonkeyGetAppFrameRateEvent;->sStartFrameNo:I

    .line 141
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sput-wide v5, Lcom/android/commands/monkey/MonkeyGetAppFrameRateEvent;->sStartTime:J

    goto :goto_0

    .line 142
    :cond_1
    const-string v5, "end"

    iget-object v6, p0, Lcom/android/commands/monkey/MonkeyGetAppFrameRateEvent;->mStatus:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 143
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    sput v5, Lcom/android/commands/monkey/MonkeyGetAppFrameRateEvent;->sEndFrameNo:I

    .line 144
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sput-wide v5, Lcom/android/commands/monkey/MonkeyGetAppFrameRateEvent;->sEndTime:J

    .line 145
    sget-wide v5, Lcom/android/commands/monkey/MonkeyGetAppFrameRateEvent;->sEndTime:J

    sget-wide v7, Lcom/android/commands/monkey/MonkeyGetAppFrameRateEvent;->sStartTime:J

    sub-long/2addr v5, v7

    .line 146
    .local v5, "diff":J
    long-to-double v7, v5

    const-wide v9, 0x408f400000000000L    # 1000.0

    div-double/2addr v7, v9

    double-to-float v7, v7

    sput v7, Lcom/android/commands/monkey/MonkeyGetAppFrameRateEvent;->sDuration:F

    .line 147
    invoke-direct {p0}, Lcom/android/commands/monkey/MonkeyGetAppFrameRateEvent;->writeAverageFrameRate()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    .end local v3    # "status":I
    .end local v4    # "output":Ljava/lang/String;
    .end local v5    # "diff":J
    :cond_2
    :goto_0
    nop

    .line 156
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 158
    if-eqz v0, :cond_3

    .line 159
    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 163
    :cond_3
    :goto_1
    goto :goto_2

    .line 161
    :catch_0
    move-exception v3

    .line 162
    .local v3, "e":Ljava/io/IOException;
    sget-object v4, Lcom/android/commands/monkey/Logger;->err:Lcom/android/commands/monkey/Logger;

    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/commands/monkey/Logger;->println(Ljava/lang/String;)V

    .line 164
    .end local v3    # "e":Ljava/io/IOException;
    goto :goto_2

    .line 154
    :catchall_0
    move-exception v3

    goto :goto_3

    .line 150
    :catch_1
    move-exception v3

    .line 151
    .local v3, "e":Ljava/lang/Exception;
    :try_start_2
    sget-object v4, Lcom/android/commands/monkey/Logger;->err:Lcom/android/commands/monkey/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "// Exception from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/commands/monkey/Logger;->println(Ljava/lang/String;)V

    .line 152
    sget-object v4, Lcom/android/commands/monkey/Logger;->err:Lcom/android/commands/monkey/Logger;

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/commands/monkey/Logger;->println(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 155
    .end local v3    # "e":Ljava/lang/Exception;
    if-eqz v1, :cond_4

    .line 156
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 158
    :cond_4
    if-eqz v0, :cond_3

    .line 159
    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 165
    :goto_2
    const/4 v3, 0x1

    return v3

    .line 155
    :goto_3
    if-eqz v1, :cond_5

    .line 156
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    goto :goto_4

    .line 161
    :catch_2
    move-exception v4

    goto :goto_5

    .line 158
    :cond_5
    :goto_4
    if-eqz v0, :cond_6

    .line 159
    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_6

    .line 162
    .local v4, "e":Ljava/io/IOException;
    :goto_5
    sget-object v5, Lcom/android/commands/monkey/Logger;->err:Lcom/android/commands/monkey/Logger;

    invoke-virtual {v4}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/commands/monkey/Logger;->println(Ljava/lang/String;)V

    goto :goto_7

    .line 163
    .end local v4    # "e":Ljava/io/IOException;
    :cond_6
    :goto_6
    nop

    .line 164
    :goto_7
    throw v3
.end method
