.class public Lcom/android/commands/monkey/MonkeyPowerEvent;
.super Lcom/android/commands/monkey/MonkeyEvent;
.source "MonkeyPowerEvent.java"


# static fields
.field private static final LOG_FILE:Ljava/lang/String; = "/sdcard/autotester.log"

.field private static final TAG:Ljava/lang/String; = "PowerTester"

.field private static final TEST_DELAY_STARTED:Ljava/lang/String; = "AUTOTEST_TEST_BEGIN_DELAY"

.field private static final TEST_ENDED:Ljava/lang/String; = "AUTOTEST_TEST_SUCCESS"

.field private static final TEST_IDLE_ENDED:Ljava/lang/String; = "AUTOTEST_IDLE_SUCCESS"

.field private static final TEST_SEQ_BEGIN:Ljava/lang/String; = "AUTOTEST_SEQUENCE_BEGIN"

.field private static final TEST_STARTED:Ljava/lang/String; = "AUTOTEST_TEST_BEGIN"

.field private static final USB_DELAY_TIME:J = 0x2710L

.field private static mLogEvents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation
.end field

.field private static mTestStartTime:J


# instance fields
.field private mPowerLogTag:Ljava/lang/String;

.field private mTestResult:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/commands/monkey/MonkeyPowerEvent;->mLogEvents:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 64
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/commands/monkey/MonkeyEvent;-><init>(I)V

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/commands/monkey/MonkeyPowerEvent;->mPowerLogTag:Ljava/lang/String;

    .line 66
    iput-object v0, p0, Lcom/android/commands/monkey/MonkeyPowerEvent;->mTestResult:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "powerLogTag"    # Ljava/lang/String;

    .line 58
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/commands/monkey/MonkeyEvent;-><init>(I)V

    .line 59
    iput-object p1, p0, Lcom/android/commands/monkey/MonkeyPowerEvent;->mPowerLogTag:Ljava/lang/String;

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/commands/monkey/MonkeyPowerEvent;->mTestResult:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "powerLogTag"    # Ljava/lang/String;
    .param p2, "powerTestResult"    # Ljava/lang/String;

    .line 52
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/commands/monkey/MonkeyEvent;-><init>(I)V

    .line 53
    iput-object p1, p0, Lcom/android/commands/monkey/MonkeyPowerEvent;->mPowerLogTag:Ljava/lang/String;

    .line 54
    iput-object p2, p0, Lcom/android/commands/monkey/MonkeyPowerEvent;->mTestResult:Ljava/lang/String;

    .line 55
    return-void
.end method

.method private bufferLogEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 73
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 75
    .local v0, "tagTime":J
    const-string v2, "AUTOTEST_TEST_BEGIN"

    invoke-virtual {p1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    .line 76
    sput-wide v0, Lcom/android/commands/monkey/MonkeyPowerEvent;->mTestStartTime:J

    goto :goto_0

    .line 77
    :cond_0
    const-string v2, "AUTOTEST_IDLE_SUCCESS"

    invoke-virtual {p1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_2

    .line 78
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 79
    .local v2, "lagTime":J
    sget-wide v4, Lcom/android/commands/monkey/MonkeyPowerEvent;->mTestStartTime:J

    add-long v0, v4, v2

    .line 80
    const-string p1, "AUTOTEST_TEST_SUCCESS"

    .line 81
    .end local v2    # "lagTime":J
    :cond_1
    goto :goto_0

    :cond_2
    const-string v2, "AUTOTEST_TEST_BEGIN_DELAY"

    invoke-virtual {p1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1

    .line 82
    const-wide/16 v2, 0x2710

    add-long/2addr v2, v0

    sput-wide v2, Lcom/android/commands/monkey/MonkeyPowerEvent;->mTestStartTime:J

    .line 83
    sget-wide v0, Lcom/android/commands/monkey/MonkeyPowerEvent;->mTestStartTime:J

    .line 84
    const-string p1, "AUTOTEST_TEST_BEGIN"

    .line 87
    :goto_0
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 88
    .local v2, "event":Landroid/content/ContentValues;
    const-string v3, "date"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 89
    const-string v3, "tag"

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    if-eqz p2, :cond_3

    .line 92
    const-string v3, "value"

    invoke-virtual {v2, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    :cond_3
    sget-object v3, Lcom/android/commands/monkey/MonkeyPowerEvent;->mLogEvents:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    return-void
.end method

.method private writeLogEvents()V
    .locals 9

    .line 103
    const-string v0, "value"

    sget-object v1, Lcom/android/commands/monkey/MonkeyPowerEvent;->mLogEvents:Ljava/util/ArrayList;

    const/4 v2, 0x0

    new-array v2, v2, [Landroid/content/ContentValues;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/content/ContentValues;

    .line 104
    .local v1, "events":[Landroid/content/ContentValues;
    sget-object v2, Lcom/android/commands/monkey/MonkeyPowerEvent;->mLogEvents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 105
    const/4 v2, 0x0

    .line 107
    .local v2, "writer":Ljava/io/FileWriter;
    :try_start_0
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 108
    .local v3, "buffer":Ljava/lang/StringBuffer;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v5, v1

    if-ge v4, v5, :cond_1

    .line 109
    aget-object v5, v1, v4

    .line 110
    .local v5, "event":Landroid/content/ContentValues;
    const-string v6, "date"

    invoke-virtual {v5, v6}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/android/commands/monkey/MonkeyUtils;->toCalendarTime(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 111
    const-string v6, "tag"

    invoke-virtual {v5, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 112
    invoke-virtual {v5, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 113
    invoke-virtual {v5, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 114
    .local v6, "value":Ljava/lang/String;
    const-string v7, " "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 115
    const/16 v7, 0xa

    const/16 v8, 0x2f

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 117
    .end local v6    # "value":Ljava/lang/String;
    :cond_0
    const-string v6, "\n"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 108
    nop

    .end local v5    # "event":Landroid/content/ContentValues;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 119
    .end local v4    # "i":I
    :cond_1
    new-instance v0, Ljava/io/FileWriter;

    const-string v4, "/sdcard/autotester.log"

    const/4 v5, 0x1

    invoke-direct {v0, v4, v5}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V

    move-object v2, v0

    .line 120
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    .end local v3    # "buffer":Ljava/lang/StringBuffer;
    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 127
    :cond_2
    :goto_1
    goto :goto_2

    .line 126
    :catch_0
    move-exception v0

    .line 128
    goto :goto_2

    .line 124
    :catchall_0
    move-exception v0

    goto :goto_3

    .line 121
    :catch_1
    move-exception v0

    .line 122
    .local v0, "e":Ljava/io/IOException;
    :try_start_2
    const-string v3, "PowerTester"

    const-string v4, "Can\'t write sdcard log file"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 125
    .end local v0    # "e":Ljava/io/IOException;
    if-eqz v2, :cond_2

    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 129
    :goto_2
    return-void

    .line 125
    :goto_3
    if-eqz v2, :cond_3

    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_4

    .line 126
    :catch_2
    move-exception v3

    goto :goto_5

    .line 127
    :cond_3
    :goto_4
    nop

    .line 128
    :goto_5
    throw v0
.end method


# virtual methods
.method public injectEvent(Landroid/view/IWindowManager;Landroid/app/IActivityManager;I)I
    .locals 2
    .param p1, "iwm"    # Landroid/view/IWindowManager;
    .param p2, "iam"    # Landroid/app/IActivityManager;
    .param p3, "verbose"    # I

    .line 133
    iget-object v0, p0, Lcom/android/commands/monkey/MonkeyPowerEvent;->mPowerLogTag:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 134
    iget-object v0, p0, Lcom/android/commands/monkey/MonkeyPowerEvent;->mPowerLogTag:Ljava/lang/String;

    const-string v1, "AUTOTEST_SEQUENCE_BEGIN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/android/commands/monkey/MonkeyPowerEvent;->mPowerLogTag:Ljava/lang/String;

    sget-object v1, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/android/commands/monkey/MonkeyPowerEvent;->bufferLogEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/android/commands/monkey/MonkeyPowerEvent;->mTestResult:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 137
    iget-object v0, p0, Lcom/android/commands/monkey/MonkeyPowerEvent;->mPowerLogTag:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/commands/monkey/MonkeyPowerEvent;->mTestResult:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/android/commands/monkey/MonkeyPowerEvent;->bufferLogEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 140
    :cond_1
    invoke-direct {p0}, Lcom/android/commands/monkey/MonkeyPowerEvent;->writeLogEvents()V

    .line 142
    :cond_2
    :goto_0
    const/4 v0, 0x1

    return v0
.end method
