.class public Lcom/android/commands/uinput/Uinput;
.super Ljava/lang/Object;
.source "Uinput.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UINPUT"


# instance fields
.field private final mDevices:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/commands/uinput/Device;",
            ">;"
        }
    .end annotation
.end field

.field private final mParser:Lcom/android/commands/uinput/EventParser;


# direct methods
.method private constructor <init>(Ljava/io/InputStream;)V
    .locals 3
    .param p1, "in"    # Ljava/io/InputStream;

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/commands/uinput/Uinput;->mDevices:Landroid/util/SparseArray;

    .line 81
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    const-string v2, "UTF-8"

    invoke-direct {v1, p1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 82
    .local v0, "reader":Ljava/io/BufferedReader;
    invoke-direct {p0, v0}, Lcom/android/commands/uinput/Uinput;->isEvemuFile(Ljava/io/BufferedReader;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/android/commands/uinput/EvemuParser;

    invoke-direct {v1, v0}, Lcom/android/commands/uinput/EvemuParser;-><init>(Ljava/io/Reader;)V

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/android/commands/uinput/JsonStyleParser;

    invoke-direct {v1, v0}, Lcom/android/commands/uinput/JsonStyleParser;-><init>(Ljava/io/Reader;)V

    :goto_0
    iput-object v1, p0, Lcom/android/commands/uinput/Uinput;->mParser:Lcom/android/commands/uinput/EventParser;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    .end local v0    # "reader":Ljava/io/BufferedReader;
    nop

    .line 86
    return-void

    .line 83
    :catch_0
    move-exception v0

    .line 84
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static error(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .line 157
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/commands/uinput/Uinput;->error(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 158
    return-void
.end method

.method private static error(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "e"    # Ljava/lang/Exception;

    .line 161
    const-string v0, "UINPUT"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    if-eqz p1, :cond_0

    .line 163
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    :cond_0
    return-void
.end method

.method private isEvemuFile(Ljava/io/BufferedReader;)Z
    .locals 7
    .param p1, "in"    # Ljava/io/BufferedReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 94
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v0

    .line 95
    .local v0, "lineSep":Ljava/lang/String;
    const/4 v1, 0x1

    new-array v2, v1, [C

    .line 97
    .local v2, "buf":[C
    invoke-virtual {p1, v1}, Ljava/io/BufferedReader;->mark(I)V

    .line 98
    invoke-virtual {p1, v2}, Ljava/io/BufferedReader;->read([C)I

    move-result v3

    .line 99
    .local v3, "charsRead":I
    :goto_0
    const/4 v4, 0x0

    if-lez v3, :cond_0

    aget-char v5, v2, v4

    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 100
    invoke-virtual {p1, v1}, Ljava/io/BufferedReader;->mark(I)V

    .line 101
    invoke-virtual {p1, v2}, Ljava/io/BufferedReader;->read([C)I

    move-result v3

    goto :goto_0

    .line 103
    :cond_0
    invoke-virtual {p1}, Ljava/io/BufferedReader;->reset()V

    .line 104
    aget-char v5, v2, v4

    const/16 v6, 0x23

    if-eq v5, v6, :cond_2

    aget-char v5, v2, v4

    const/16 v6, 0x4e

    if-ne v5, v6, :cond_1

    goto :goto_1

    :cond_1
    move v1, v4

    :cond_2
    :goto_1
    return v1
.end method

.method public static main([Ljava/lang/String;)V
    .locals 5
    .param p0, "args"    # [Ljava/lang/String;

    .line 49
    array-length v0, p0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 50
    invoke-static {}, Lcom/android/commands/uinput/Uinput;->usage()V

    .line 51
    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    .line 54
    :cond_0
    const/4 v0, 0x0

    .line 56
    .local v0, "stream":Ljava/io/InputStream;
    const/4 v2, 0x0

    :try_start_0
    aget-object v3, p0, v2

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 57
    sget-object v2, Ljava/lang/System;->in:Ljava/io/InputStream;

    move-object v0, v2

    .end local v0    # "stream":Ljava/io/InputStream;
    .local v2, "stream":Ljava/io/InputStream;
    goto :goto_0

    .line 59
    .end local v2    # "stream":Ljava/io/InputStream;
    .restart local v0    # "stream":Ljava/io/InputStream;
    :cond_1
    new-instance v3, Ljava/io/File;

    aget-object v2, p0, v2

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 60
    .local v3, "f":Ljava/io/File;
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v0, v2

    .line 62
    .end local v3    # "f":Ljava/io/File;
    :goto_0
    new-instance v2, Lcom/android/commands/uinput/Uinput;

    invoke-direct {v2, v0}, Lcom/android/commands/uinput/Uinput;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2}, Lcom/android/commands/uinput/Uinput;->run()V
    :try_end_0
    .catch Lcom/android/commands/uinput/EvemuParser$ParsingException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 74
    :goto_1
    goto :goto_2

    .line 73
    :catch_0
    move-exception v1

    .line 75
    goto :goto_2

    .line 71
    :catchall_0
    move-exception v1

    goto :goto_3

    .line 67
    :catch_1
    move-exception v2

    .line 68
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v3, "Uinput injection failed."

    invoke-static {v3, v2}, Lcom/android/commands/uinput/Uinput;->error(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 69
    invoke-static {v1}, Ljava/lang/System;->exit(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 72
    .end local v2    # "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 63
    :catch_2
    move-exception v2

    .line 64
    .local v2, "e":Lcom/android/commands/uinput/EvemuParser$ParsingException;
    :try_start_4
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v2}, Lcom/android/commands/uinput/EvemuParser$ParsingException;->makeErrorMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 65
    invoke-virtual {v2}, Lcom/android/commands/uinput/EvemuParser$ParsingException;->makeErrorMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/android/commands/uinput/Uinput;->error(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 66
    invoke-static {v1}, Ljava/lang/System;->exit(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 72
    .end local v2    # "e":Lcom/android/commands/uinput/EvemuParser$ParsingException;
    :try_start_5
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_1

    .line 76
    :goto_2
    return-void

    .line 72
    :goto_3
    :try_start_6
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 74
    goto :goto_4

    .line 73
    :catch_3
    move-exception v2

    .line 75
    :goto_4
    throw v1
.end method

.method private process(Lcom/android/commands/uinput/Event;)V
    .locals 5
    .param p1, "e"    # Lcom/android/commands/uinput/Event;

    .line 123
    iget-object v0, p0, Lcom/android/commands/uinput/Uinput;->mDevices:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/android/commands/uinput/Event;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    .line 124
    .local v0, "index":I
    if-gez v0, :cond_1

    .line 125
    invoke-virtual {p1}, Lcom/android/commands/uinput/Event;->getCommand()Lcom/android/commands/uinput/Event$Command;

    move-result-object v1

    sget-object v2, Lcom/android/commands/uinput/Event$Command;->REGISTER:Lcom/android/commands/uinput/Event$Command;

    if-eq v1, v2, :cond_0

    .line 126
    const-string v1, "UINPUT"

    const-string v2, "Unknown device id specified. Ignoring event."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    return-void

    .line 129
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/commands/uinput/Uinput;->registerDevice(Lcom/android/commands/uinput/Event;)V

    .line 130
    return-void

    .line 133
    :cond_1
    iget-object v1, p0, Lcom/android/commands/uinput/Uinput;->mDevices:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/commands/uinput/Device;

    .line 134
    .local v1, "d":Lcom/android/commands/uinput/Device;
    sget-object v2, Lcom/android/commands/uinput/Uinput$1;->$SwitchMap$com$android$commands$uinput$Event$Command:[I

    invoke-virtual {p1}, Lcom/android/commands/uinput/Event;->getCommand()Lcom/android/commands/uinput/Event$Command;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/commands/uinput/Event$Command;

    invoke-virtual {v3}, Lcom/android/commands/uinput/Event$Command;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 140
    :pswitch_0
    invoke-virtual {v1}, Lcom/android/commands/uinput/Device;->updateTimeBase()V

    goto :goto_0

    .line 139
    :pswitch_1
    invoke-virtual {p1}, Lcom/android/commands/uinput/Event;->getSyncToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/commands/uinput/Device;->syncEvent(Ljava/lang/String;)V

    goto :goto_0

    .line 138
    :pswitch_2
    invoke-virtual {p1}, Lcom/android/commands/uinput/Event;->getDurationNanos()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/android/commands/uinput/Device;->addDelayNanos(J)V

    goto :goto_0

    .line 137
    :pswitch_3
    invoke-virtual {p1}, Lcom/android/commands/uinput/Event;->getInjections()[I

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/commands/uinput/Event;->getTimestampOffsetMicros()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/commands/uinput/Device;->injectEvent([IJ)V

    goto :goto_0

    .line 136
    :pswitch_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Device id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/commands/uinput/Event;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is already registered. Ignoring event."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/commands/uinput/Uinput;->error(Ljava/lang/String;)V

    .line 142
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private registerDevice(Lcom/android/commands/uinput/Event;)V
    .locals 12
    .param p1, "e"    # Lcom/android/commands/uinput/Event;

    .line 145
    sget-object v0, Lcom/android/commands/uinput/Event$Command;->REGISTER:Lcom/android/commands/uinput/Event$Command;

    invoke-virtual {p1}, Lcom/android/commands/uinput/Event;->getCommand()Lcom/android/commands/uinput/Event$Command;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/commands/uinput/Event$Command;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    invoke-virtual {p1}, Lcom/android/commands/uinput/Event;->getId()I

    move-result v2

    .line 150
    .local v2, "id":I
    new-instance v1, Lcom/android/commands/uinput/Device;

    invoke-virtual {p1}, Lcom/android/commands/uinput/Event;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/commands/uinput/Event;->getVendorId()I

    move-result v4

    invoke-virtual {p1}, Lcom/android/commands/uinput/Event;->getProductId()I

    move-result v5

    .line 151
    invoke-virtual {p1}, Lcom/android/commands/uinput/Event;->getVersionId()I

    move-result v6

    invoke-virtual {p1}, Lcom/android/commands/uinput/Event;->getBus()I

    move-result v7

    invoke-virtual {p1}, Lcom/android/commands/uinput/Event;->getConfiguration()Landroid/util/SparseArray;

    move-result-object v8

    invoke-virtual {p1}, Lcom/android/commands/uinput/Event;->getFfEffectsMax()I

    move-result v9

    .line 152
    invoke-virtual {p1}, Lcom/android/commands/uinput/Event;->getAbsInfo()Landroid/util/SparseArray;

    move-result-object v10

    invoke-virtual {p1}, Lcom/android/commands/uinput/Event;->getPort()Ljava/lang/String;

    move-result-object v11

    invoke-direct/range {v1 .. v11}, Lcom/android/commands/uinput/Device;-><init>(ILjava/lang/String;IIIILandroid/util/SparseArray;ILandroid/util/SparseArray;Ljava/lang/String;)V

    .line 153
    .local v1, "d":Lcom/android/commands/uinput/Device;
    iget-object v0, p0, Lcom/android/commands/uinput/Uinput;->mDevices:Landroid/util/SparseArray;

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 154
    return-void

    .line 146
    .end local v1    # "d":Lcom/android/commands/uinput/Device;
    .end local v2    # "id":I
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tried to send command \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 147
    invoke-virtual {p1}, Lcom/android/commands/uinput/Event;->getCommand()Lcom/android/commands/uinput/Event$Command;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" to an unregistered device!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private run()V
    .locals 2

    .line 109
    const/4 v0, 0x0

    .line 110
    .local v0, "e":Lcom/android/commands/uinput/Event;
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/commands/uinput/Uinput;->mParser:Lcom/android/commands/uinput/EventParser;

    invoke-interface {v1}, Lcom/android/commands/uinput/EventParser;->getNextEvent()Lcom/android/commands/uinput/Event;

    move-result-object v1

    move-object v0, v1

    if-eqz v1, :cond_0

    .line 111
    invoke-direct {p0, v0}, Lcom/android/commands/uinput/Uinput;->process(Lcom/android/commands/uinput/Event;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 115
    .end local v0    # "e":Lcom/android/commands/uinput/Event;
    :cond_0
    goto :goto_1

    .line 113
    :catch_0
    move-exception v0

    .line 114
    .local v0, "ex":Ljava/io/IOException;
    const-string v1, "Error reading in events."

    invoke-static {v1, v0}, Lcom/android/commands/uinput/Uinput;->error(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 117
    .end local v0    # "ex":Ljava/io/IOException;
    :goto_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    iget-object v1, p0, Lcom/android/commands/uinput/Uinput;->mDevices:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 118
    iget-object v1, p0, Lcom/android/commands/uinput/Uinput;->mDevices:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/commands/uinput/Device;

    invoke-virtual {v1}, Lcom/android/commands/uinput/Device;->close()V

    .line 117
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 120
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private static usage()V
    .locals 1

    .line 42
    const-string v0, "Usage: uinput [FILE]"

    invoke-static {v0}, Lcom/android/commands/uinput/Uinput;->error(Ljava/lang/String;)V

    .line 43
    return-void
.end method
