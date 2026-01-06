.class public Lcom/android/commands/monkey/MonkeyGetFrameRateEvent;
.super Lcom/android/commands/monkey/MonkeyEvent;
.source "MonkeyGetFrameRateEvent.java"


# static fields
.field private static final LOG_FILE:Ljava/lang/String; = "/sdcard/avgFrameRateOut.txt"

.field private static final NO_OF_FRAMES_PATTERN:Ljava/util/regex/Pattern;

.field private static final TAG:Ljava/lang/String; = "MonkeyGetFrameRateEvent"

.field private static mDuration:F

.field private static mEndFrameNo:I

.field private static mEndTime:J

.field private static mStartFrameNo:I

.field private static mStartTime:J

.field private static mTestCaseName:Ljava/lang/String;


# instance fields
.field private GET_FRAMERATE_CMD:Ljava/lang/String;

.field private mStatus:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    const/4 v0, 0x0

    sput-object v0, Lcom/android/commands/monkey/MonkeyGetFrameRateEvent;->mTestCaseName:Ljava/lang/String;

    .line 52
    nop

    .line 53
    const-string v0, ".*\\(([a-f[A-F][0-9]].*?)\\s.*\\)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/commands/monkey/MonkeyGetFrameRateEvent;->NO_OF_FRAMES_PATTERN:Ljava/util/regex/Pattern;

    .line 52
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "status"    # Ljava/lang/String;

    .line 62
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/commands/monkey/MonkeyEvent;-><init>(I)V

    .line 40
    const-string v0, "service call SurfaceFlinger 1013"

    iput-object v0, p0, Lcom/android/commands/monkey/MonkeyGetFrameRateEvent;->GET_FRAMERATE_CMD:Ljava/lang/String;

    .line 63
    iput-object p1, p0, Lcom/android/commands/monkey/MonkeyGetFrameRateEvent;->mStatus:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "status"    # Ljava/lang/String;
    .param p2, "testCaseName"    # Ljava/lang/String;

    .line 56
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/commands/monkey/MonkeyEvent;-><init>(I)V

    .line 40
    const-string v0, "service call SurfaceFlinger 1013"

    iput-object v0, p0, Lcom/android/commands/monkey/MonkeyGetFrameRateEvent;->GET_FRAMERATE_CMD:Ljava/lang/String;

    .line 57
    iput-object p1, p0, Lcom/android/commands/monkey/MonkeyGetFrameRateEvent;->mStatus:Ljava/lang/String;

    .line 58
    sput-object p2, Lcom/android/commands/monkey/MonkeyGetFrameRateEvent;->mTestCaseName:Ljava/lang/String;

    .line 59
    return-void
.end method

.method private getAverageFrameRate(IF)F
    .locals 2
    .param p1, "totalNumberOfFrame"    # I
    .param p2, "duration"    # F

    .line 68
    const/4 v0, 0x0

    .line 69
    .local v0, "avgFrameRate":F
    const/4 v1, 0x0

    cmpl-float v1, p2, v1

    if-lez v1, :cond_0

    .line 70
    int-to-float v1, p1

    div-float v0, v1, p2

    .line 72
    :cond_0
    return v0
.end method

.method private getNumberOfFrames(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "input"    # Ljava/lang/String;

    .line 101
    const/4 v0, 0x0

    .line 102
    .local v0, "noOfFrames":Ljava/lang/String;
    sget-object v1, Lcom/android/commands/monkey/MonkeyGetFrameRateEvent;->NO_OF_FRAMES_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 103
    .local v1, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 104
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 106
    :cond_0
    return-object v0
.end method

.method private writeAverageFrameRate()V
    .locals 8

    .line 79
    const-string v0, "IOException "

    const-string v1, "MonkeyGetFrameRateEvent"

    const/4 v2, 0x0

    .line 81
    .local v2, "writer":Ljava/io/FileWriter;
    const/4 v3, 0x0

    .line 83
    .local v3, "totalNumberOfFrame":I
    :try_start_0
    new-instance v4, Ljava/io/FileWriter;

    const-string v5, "/sdcard/avgFrameRateOut.txt"

    const/4 v6, 0x1

    invoke-direct {v4, v5, v6}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V

    move-object v2, v4

    .line 84
    sget v4, Lcom/android/commands/monkey/MonkeyGetFrameRateEvent;->mEndFrameNo:I

    sget v5, Lcom/android/commands/monkey/MonkeyGetFrameRateEvent;->mStartFrameNo:I

    sub-int v3, v4, v5

    .line 85
    sget v4, Lcom/android/commands/monkey/MonkeyGetFrameRateEvent;->mDuration:F

    invoke-direct {p0, v3, v4}, Lcom/android/commands/monkey/MonkeyGetFrameRateEvent;->getAverageFrameRate(IF)F

    move-result v4

    .line 86
    .local v4, "avgFrameRate":F
    const-string v5, "%s:%.2f\n"

    sget-object v6, Lcom/android/commands/monkey/MonkeyGetFrameRateEvent;->mTestCaseName:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    filled-new-array {v6, v7}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 87
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 95
    goto :goto_1

    .line 93
    :catch_0
    move-exception v5

    .line 94
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

    .line 96
    .end local v5    # "e":Ljava/io/IOException;
    goto :goto_1

    .line 91
    .end local v4    # "avgFrameRate":F
    :catchall_0
    move-exception v4

    goto :goto_2

    .line 88
    :catch_1
    move-exception v4

    .line 89
    .local v4, "e":Ljava/io/IOException;
    :try_start_2
    const-string v5, "Can\'t write sdcard log file"

    invoke-static {v1, v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 92
    .end local v4    # "e":Ljava/io/IOException;
    if-eqz v2, :cond_0

    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 93
    :catch_2
    move-exception v4

    .line 94
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

    .line 96
    .end local v4    # "e":Ljava/io/IOException;
    goto :goto_1

    .line 95
    :cond_0
    :goto_0
    nop

    .line 97
    :goto_1
    return-void

    .line 92
    :goto_2
    if-eqz v2, :cond_1

    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_3

    .line 93
    :catch_3
    move-exception v5

    .line 94
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

    .line 95
    .end local v5    # "e":Ljava/io/IOException;
    :cond_1
    :goto_3
    nop

    .line 96
    :goto_4
    throw v4
.end method


# virtual methods
.method public injectEvent(Landroid/view/IWindowManager;Landroid/app/IActivityManager;I)I
    .locals 10
    .param p1, "iwm"    # Landroid/view/IWindowManager;
    .param p2, "iam"    # Landroid/app/IActivityManager;
    .param p3, "verbose"    # I

    .line 111
    const/4 v0, 0x0

    .line 112
    .local v0, "p":Ljava/lang/Process;
    const/4 v1, 0x0

    .line 114
    .local v1, "result":Ljava/io/BufferedReader;
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    iget-object v3, p0, Lcom/android/commands/monkey/MonkeyGetFrameRateEvent;->GET_FRAMERATE_CMD:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2

    move-object v0, v2

    .line 115
    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I

    move-result v2

    .line 116
    .local v2, "status":I
    if-eqz v2, :cond_0

    .line 117
    sget-object v3, Lcom/android/commands/monkey/Logger;->err:Lcom/android/commands/monkey/Logger;

    const-string v4, "// Shell command %s status was %s"

    iget-object v5, p0, Lcom/android/commands/monkey/MonkeyGetFrameRateEvent;->GET_FRAMERATE_CMD:Ljava/lang/String;

    .line 118
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v5, v6}, [Ljava/lang/Object;

    move-result-object v5

    .line 117
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/commands/monkey/Logger;->println(Ljava/lang/String;)V

    .line 120
    :cond_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v1, v3

    .line 123
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 125
    .local v3, "output":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 126
    iget-object v4, p0, Lcom/android/commands/monkey/MonkeyGetFrameRateEvent;->mStatus:Ljava/lang/String;

    const-string v5, "start"

    const/16 v6, 0x10

    if-ne v4, v5, :cond_1

    .line 127
    invoke-direct {p0, v3}, Lcom/android/commands/monkey/MonkeyGetFrameRateEvent;->getNumberOfFrames(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    sput v4, Lcom/android/commands/monkey/MonkeyGetFrameRateEvent;->mStartFrameNo:I

    .line 128
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sput-wide v4, Lcom/android/commands/monkey/MonkeyGetFrameRateEvent;->mStartTime:J

    goto :goto_0

    .line 129
    :cond_1
    iget-object v4, p0, Lcom/android/commands/monkey/MonkeyGetFrameRateEvent;->mStatus:Ljava/lang/String;

    const-string v5, "end"

    if-ne v4, v5, :cond_2

    .line 130
    invoke-direct {p0, v3}, Lcom/android/commands/monkey/MonkeyGetFrameRateEvent;->getNumberOfFrames(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    sput v4, Lcom/android/commands/monkey/MonkeyGetFrameRateEvent;->mEndFrameNo:I

    .line 131
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sput-wide v4, Lcom/android/commands/monkey/MonkeyGetFrameRateEvent;->mEndTime:J

    .line 132
    sget-wide v4, Lcom/android/commands/monkey/MonkeyGetFrameRateEvent;->mEndTime:J

    sget-wide v6, Lcom/android/commands/monkey/MonkeyGetFrameRateEvent;->mStartTime:J

    sub-long/2addr v4, v6

    .line 133
    .local v4, "diff":J
    long-to-double v6, v4

    const-wide v8, 0x408f400000000000L    # 1000.0

    div-double/2addr v6, v8

    double-to-float v6, v6

    sput v6, Lcom/android/commands/monkey/MonkeyGetFrameRateEvent;->mDuration:F

    .line 134
    invoke-direct {p0}, Lcom/android/commands/monkey/MonkeyGetFrameRateEvent;->writeAverageFrameRate()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    .end local v2    # "status":I
    .end local v3    # "output":Ljava/lang/String;
    .end local v4    # "diff":J
    :cond_2
    :goto_0
    nop

    .line 143
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 145
    if-eqz v0, :cond_3

    .line 146
    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 150
    :cond_3
    :goto_1
    goto :goto_2

    .line 148
    :catch_0
    move-exception v2

    .line 149
    .local v2, "e":Ljava/io/IOException;
    sget-object v3, Lcom/android/commands/monkey/Logger;->err:Lcom/android/commands/monkey/Logger;

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/commands/monkey/Logger;->println(Ljava/lang/String;)V

    .line 151
    .end local v2    # "e":Ljava/io/IOException;
    goto :goto_2

    .line 141
    :catchall_0
    move-exception v2

    goto :goto_3

    .line 137
    :catch_1
    move-exception v2

    .line 138
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    sget-object v3, Lcom/android/commands/monkey/Logger;->err:Lcom/android/commands/monkey/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "// Exception from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/commands/monkey/MonkeyGetFrameRateEvent;->GET_FRAMERATE_CMD:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/commands/monkey/Logger;->println(Ljava/lang/String;)V

    .line 139
    sget-object v3, Lcom/android/commands/monkey/Logger;->err:Lcom/android/commands/monkey/Logger;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/commands/monkey/Logger;->println(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 142
    .end local v2    # "e":Ljava/lang/Exception;
    if-eqz v1, :cond_4

    .line 143
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 145
    :cond_4
    if-eqz v0, :cond_3

    .line 146
    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 152
    :goto_2
    const/4 v2, 0x1

    return v2

    .line 142
    :goto_3
    if-eqz v1, :cond_5

    .line 143
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    goto :goto_4

    .line 148
    :catch_2
    move-exception v3

    goto :goto_5

    .line 145
    :cond_5
    :goto_4
    if-eqz v0, :cond_6

    .line 146
    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_6

    .line 149
    .local v3, "e":Ljava/io/IOException;
    :goto_5
    sget-object v4, Lcom/android/commands/monkey/Logger;->err:Lcom/android/commands/monkey/Logger;

    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/commands/monkey/Logger;->println(Ljava/lang/String;)V

    goto :goto_7

    .line 150
    .end local v3    # "e":Ljava/io/IOException;
    :cond_6
    :goto_6
    nop

    .line 151
    :goto_7
    throw v2
.end method
