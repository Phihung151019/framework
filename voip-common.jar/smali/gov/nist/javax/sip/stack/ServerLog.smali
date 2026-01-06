.class public Lgov/nist/javax/sip/stack/ServerLog;
.super Ljava/lang/Object;
.source "ServerLog.java"

# interfaces
.implements Lgov/nist/core/ServerLogger;


# instance fields
.field private greylist auxInfo:Ljava/lang/String;

.field private greylist configurationProperties:Ljava/util/Properties;

.field private greylist description:Ljava/lang/String;

.field private greylist logContent:Z

.field private greylist logFileName:Ljava/lang/String;

.field private greylist printWriter:Ljava/io/PrintWriter;

.field private greylist sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

.field private greylist stackIpAddress:Ljava/lang/String;

.field protected greylist stackLogger:Lgov/nist/core/StackLogger;

.field protected greylist traceLevel:I


# direct methods
.method public constructor greylist <init>()V
    .locals 1

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    const/16 v0, 0x10

    iput v0, p0, Lgov/nist/javax/sip/stack/ServerLog;->traceLevel:I

    .line 94
    return-void
.end method

.method private greylist logMessage(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .line 311
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/ServerLog;->checkLogFile()V

    .line 312
    move-object v0, p1

    .line 313
    .local v0, "logInfo":Ljava/lang/String;
    iget-object v1, p0, Lgov/nist/javax/sip/stack/ServerLog;->printWriter:Ljava/io/PrintWriter;

    if-eqz v1, :cond_0

    .line 314
    iget-object v1, p0, Lgov/nist/javax/sip/stack/ServerLog;->printWriter:Ljava/io/PrintWriter;

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 316
    :cond_0
    iget-object v1, p0, Lgov/nist/javax/sip/stack/ServerLog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 317
    iget-object v1, p0, Lgov/nist/javax/sip/stack/ServerLog;->stackLogger:Lgov/nist/core/StackLogger;

    invoke-interface {v1, v0}, Lgov/nist/core/StackLogger;->logInfo(Ljava/lang/String;)V

    .line 320
    :cond_1
    return-void
.end method

.method private greylist logMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V
    .locals 13
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "from"    # Ljava/lang/String;
    .param p3, "to"    # Ljava/lang/String;
    .param p4, "sender"    # Z
    .param p5, "callId"    # Ljava/lang/String;
    .param p6, "firstLine"    # Ljava/lang/String;
    .param p7, "status"    # Ljava/lang/String;
    .param p8, "tid"    # Ljava/lang/String;
    .param p9, "time"    # J
    .param p11, "timestampVal"    # J

    .line 326
    iget-object v0, p0, Lgov/nist/javax/sip/stack/ServerLog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    iget-object v1, v0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->logRecordFactory:Lgov/nist/javax/sip/LogRecordFactory;

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move/from16 v7, p4

    move-object/from16 v10, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p8

    move-wide/from16 v5, p9

    move-wide/from16 v11, p11

    invoke-interface/range {v1 .. v12}, Lgov/nist/javax/sip/LogRecordFactory;->createLogRecord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Lgov/nist/javax/sip/LogRecord;

    move-result-object v0

    .line 328
    .local v0, "log":Lgov/nist/javax/sip/LogRecord;
    if-eqz v0, :cond_0

    .line 329
    invoke-interface {v0}, Lgov/nist/javax/sip/LogRecord;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lgov/nist/javax/sip/stack/ServerLog;->logMessage(Ljava/lang/String;)V

    .line 330
    :cond_0
    return-void
.end method

.method private greylist setProperties(Ljava/util/Properties;)V
    .locals 7
    .param p1, "configurationProperties"    # Ljava/util/Properties;

    .line 97
    iput-object p1, p0, Lgov/nist/javax/sip/stack/ServerLog;->configurationProperties:Ljava/util/Properties;

    .line 99
    const-string v0, "javax.sip.STACK_NAME"

    invoke-virtual {p1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgov/nist/javax/sip/stack/ServerLog;->description:Ljava/lang/String;

    .line 100
    const-string v0, "javax.sip.IP_ADDRESS"

    invoke-virtual {p1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgov/nist/javax/sip/stack/ServerLog;->stackIpAddress:Ljava/lang/String;

    .line 101
    const-string v0, "gov.nist.javax.sip.SERVER_LOG"

    invoke-virtual {p1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgov/nist/javax/sip/stack/ServerLog;->logFileName:Ljava/lang/String;

    .line 102
    const-string v0, "gov.nist.javax.sip.TRACE_LEVEL"

    invoke-virtual {p1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 103
    .local v0, "logLevel":Ljava/lang/String;
    nop

    .line 104
    const-string v1, "gov.nist.javax.sip.LOG_MESSAGE_CONTENT"

    invoke-virtual {p1, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 106
    .local v1, "logContent":Ljava/lang/String;
    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const-string v3, "true"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    iput-boolean v3, p0, Lgov/nist/javax/sip/stack/ServerLog;->logContent:Z

    .line 108
    if-eqz v0, :cond_7

    .line 109
    const-string v3, "LOG4J"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_3

    .line 137
    :cond_1
    :try_start_0
    const-string v3, "DEBUG"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 138
    const/16 v3, 0x20

    .local v3, "ll":I
    goto :goto_2

    .line 139
    .end local v3    # "ll":I
    :cond_2
    const-string v3, "INFO"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 140
    const/16 v3, 0x10

    .restart local v3    # "ll":I
    goto :goto_2

    .line 141
    .end local v3    # "ll":I
    :cond_3
    const-string v3, "ERROR"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 142
    const/4 v3, 0x4

    .restart local v3    # "ll":I
    goto :goto_2

    .line 143
    .end local v3    # "ll":I
    :cond_4
    const-string v3, "NONE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "OFF"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_1

    .line 146
    :cond_5
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .restart local v3    # "ll":I
    goto :goto_2

    .line 144
    .end local v3    # "ll":I
    :cond_6
    :goto_1
    const/4 v3, 0x0

    .line 149
    .restart local v3    # "ll":I
    :goto_2
    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/stack/ServerLog;->setTraceLevel(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    .end local v3    # "ll":I
    goto :goto_3

    .line 150
    :catch_0
    move-exception v3

    .line 151
    .local v3, "ex":Ljava/lang/NumberFormatException;
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ServerLog: WARNING Bad integer "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 152
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "logging dislabled "

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 153
    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/stack/ServerLog;->setTraceLevel(I)V

    .line 157
    .end local v3    # "ex":Ljava/lang/NumberFormatException;
    :cond_7
    :goto_3
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/ServerLog;->checkLogFile()V

    .line 159
    return-void
.end method


# virtual methods
.method public greylist checkLogFile()V
    .locals 20

    .line 181
    move-object/from16 v1, p0

    const-string v0, "\"/>\n "

    const-string v2, "\"\n auxInfo=\""

    const-string v3, "javax.sip.OUTBOUND_PROXY"

    const-string v4, "\njavax.sip.OUTBOUND_PROXY= "

    const-string v5, "javax.sip.ROUTER_PATH"

    const-string v6, "\njavax.sip.ROUTER_PATH= "

    const-string v7, "javax.sip.STACK_NAME"

    const-string v8, "javax.sip.IP_ADDRESS"

    const-string v9, "\"\n name=\""

    const-string v10, "<description\n logDescription=\""

    iget-object v11, v1, Lgov/nist/javax/sip/stack/ServerLog;->logFileName:Ljava/lang/String;

    if-eqz v11, :cond_7

    iget v11, v1, Lgov/nist/javax/sip/stack/ServerLog;->traceLevel:I

    const/16 v12, 0x10

    if-ge v11, v12, :cond_0

    goto/16 :goto_3

    .line 187
    :cond_0
    :try_start_0
    new-instance v11, Ljava/io/File;

    iget-object v12, v1, Lgov/nist/javax/sip/stack/ServerLog;->logFileName:Ljava/lang/String;

    invoke-direct {v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 188
    .local v11, "logFile":Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v12

    if-nez v12, :cond_1

    .line 189
    invoke-virtual {v11}, Ljava/io/File;->createNewFile()Z

    .line 190
    const/4 v12, 0x0

    iput-object v12, v1, Lgov/nist/javax/sip/stack/ServerLog;->printWriter:Ljava/io/PrintWriter;

    .line 194
    :cond_1
    iget-object v12, v1, Lgov/nist/javax/sip/stack/ServerLog;->printWriter:Ljava/io/PrintWriter;

    if-nez v12, :cond_5

    .line 195
    iget-object v12, v1, Lgov/nist/javax/sip/stack/ServerLog;->configurationProperties:Ljava/util/Properties;

    const-string v13, "gov.nist.javax.sip.SERVER_LOG_OVERWRITE"

    .line 196
    invoke-virtual {v12, v13}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 195
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    .line 199
    .local v12, "overwrite":Z
    new-instance v13, Ljava/io/FileWriter;

    iget-object v14, v1, Lgov/nist/javax/sip/stack/ServerLog;->logFileName:Ljava/lang/String;

    if-nez v12, :cond_2

    const/4 v15, 0x1

    goto :goto_0

    :cond_2
    const/16 v16, 0x0

    move/from16 v15, v16

    :goto_0
    invoke-direct {v13, v14, v15}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V

    .line 201
    .local v13, "fw":Ljava/io/FileWriter;
    new-instance v14, Ljava/io/PrintWriter;

    const/4 v15, 0x1

    invoke-direct {v14, v13, v15}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    iput-object v14, v1, Lgov/nist/javax/sip/stack/ServerLog;->printWriter:Ljava/io/PrintWriter;

    .line 202
    iget-object v14, v1, Lgov/nist/javax/sip/stack/ServerLog;->printWriter:Ljava/io/PrintWriter;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v11

    .end local v11    # "logFile":Ljava/io/File;
    .local v16, "logFile":Ljava/io/File;
    const-string v11, "<!-- Use the  Trace Viewer in src/tools/tracesviewer to view this  trace  \nHere are the stack configuration properties \njavax.sip.IP_ADDRESS= "

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v15, v1, Lgov/nist/javax/sip/stack/ServerLog;->configurationProperties:Ljava/util/Properties;

    .line 207
    invoke-virtual {v15, v8}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v15, "\njavax.sip.STACK_NAME= "

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v15, v1, Lgov/nist/javax/sip/stack/ServerLog;->configurationProperties:Ljava/util/Properties;

    .line 209
    invoke-virtual {v15, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v15, v1, Lgov/nist/javax/sip/stack/ServerLog;->configurationProperties:Ljava/util/Properties;

    .line 211
    invoke-virtual {v15, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v15, v1, Lgov/nist/javax/sip/stack/ServerLog;->configurationProperties:Ljava/util/Properties;

    .line 213
    invoke-virtual {v15, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v15, "\n-->"

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 202
    invoke-virtual {v14, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 215
    iget-object v11, v1, Lgov/nist/javax/sip/stack/ServerLog;->printWriter:Ljava/io/PrintWriter;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v15, v1, Lgov/nist/javax/sip/stack/ServerLog;->description:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v15, v1, Lgov/nist/javax/sip/stack/ServerLog;->configurationProperties:Ljava/util/Properties;

    .line 217
    invoke-virtual {v15, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v14, v1, Lgov/nist/javax/sip/stack/ServerLog;->auxInfo:Ljava/lang/String;

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 215
    invoke-virtual {v11, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 219
    iget-object v7, v1, Lgov/nist/javax/sip/stack/ServerLog;->auxInfo:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v11, "<![CDATA[ "

    const-string v14, "<debug>"

    const-string v15, "</debug>"

    move-object/from16 v17, v7

    const-string v7, "\n"

    if-eqz v17, :cond_4

    .line 221
    move/from16 v17, v12

    .end local v12    # "overwrite":Z
    .local v17, "overwrite":Z
    :try_start_1
    iget-object v12, v1, Lgov/nist/javax/sip/stack/ServerLog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v12}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 222
    iget-object v12, v1, Lgov/nist/javax/sip/stack/ServerLog;->stackLogger:Lgov/nist/core/StackLogger;

    move-object/from16 v18, v13

    .end local v13    # "fw":Ljava/io/FileWriter;
    .local v18, "fw":Ljava/io/FileWriter;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v19, v11

    const-string v11, "Here are the stack configuration properties \njavax.sip.IP_ADDRESS= "

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v13, v1, Lgov/nist/javax/sip/stack/ServerLog;->configurationProperties:Ljava/util/Properties;

    .line 226
    invoke-virtual {v13, v8}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, v1, Lgov/nist/javax/sip/stack/ServerLog;->configurationProperties:Ljava/util/Properties;

    .line 230
    invoke-virtual {v8, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lgov/nist/javax/sip/stack/ServerLog;->configurationProperties:Ljava/util/Properties;

    .line 234
    invoke-virtual {v5, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\ngov.nist.javax.sip.CACHE_CLIENT_CONNECTIONS= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lgov/nist/javax/sip/stack/ServerLog;->configurationProperties:Ljava/util/Properties;

    const-string v5, "gov.nist.javax.sip.CACHE_CLIENT_CONNECTIONS"

    .line 238
    invoke-virtual {v4, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\ngov.nist.javax.sip.CACHE_SERVER_CONNECTIONS= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lgov/nist/javax/sip/stack/ServerLog;->configurationProperties:Ljava/util/Properties;

    const-string v5, "gov.nist.javax.sip.CACHE_SERVER_CONNECTIONS"

    .line 242
    invoke-virtual {v4, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\ngov.nist.javax.sip.REENTRANT_LISTENER= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lgov/nist/javax/sip/stack/ServerLog;->configurationProperties:Ljava/util/Properties;

    const-string v5, "gov.nist.javax.sip.REENTRANT_LISTENER"

    .line 246
    invoke-virtual {v4, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "gov.nist.javax.sip.THREAD_POOL_SIZE= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lgov/nist/javax/sip/stack/ServerLog;->configurationProperties:Ljava/util/Properties;

    const-string v5, "gov.nist.javax.sip.THREAD_POOL_SIZE"

    .line 249
    invoke-virtual {v4, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 223
    invoke-interface {v12, v3}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 251
    iget-object v3, v1, Lgov/nist/javax/sip/stack/ServerLog;->stackLogger:Lgov/nist/core/StackLogger;

    const-string v4, " ]]> "

    invoke-interface {v3, v4}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 252
    iget-object v3, v1, Lgov/nist/javax/sip/stack/ServerLog;->stackLogger:Lgov/nist/core/StackLogger;

    invoke-interface {v3, v15}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 253
    iget-object v3, v1, Lgov/nist/javax/sip/stack/ServerLog;->stackLogger:Lgov/nist/core/StackLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lgov/nist/javax/sip/stack/ServerLog;->description:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lgov/nist/javax/sip/stack/ServerLog;->stackIpAddress:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v1, Lgov/nist/javax/sip/stack/ServerLog;->auxInfo:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 256
    iget-object v0, v1, Lgov/nist/javax/sip/stack/ServerLog;->stackLogger:Lgov/nist/core/StackLogger;

    invoke-interface {v0, v14}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 257
    iget-object v0, v1, Lgov/nist/javax/sip/stack/ServerLog;->stackLogger:Lgov/nist/core/StackLogger;

    move-object/from16 v2, v19

    invoke-interface {v0, v2}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto :goto_1

    .line 221
    .end local v18    # "fw":Ljava/io/FileWriter;
    .restart local v13    # "fw":Ljava/io/FileWriter;
    :cond_3
    move-object/from16 v18, v13

    .end local v13    # "fw":Ljava/io/FileWriter;
    .restart local v18    # "fw":Ljava/io/FileWriter;
    goto :goto_1

    .line 261
    .end local v17    # "overwrite":Z
    .end local v18    # "fw":Ljava/io/FileWriter;
    .restart local v12    # "overwrite":Z
    .restart local v13    # "fw":Ljava/io/FileWriter;
    :cond_4
    move-object v2, v11

    move/from16 v17, v12

    move-object/from16 v18, v13

    .end local v12    # "overwrite":Z
    .end local v13    # "fw":Ljava/io/FileWriter;
    .restart local v17    # "overwrite":Z
    .restart local v18    # "fw":Ljava/io/FileWriter;
    iget-object v0, v1, Lgov/nist/javax/sip/stack/ServerLog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 262
    iget-object v0, v1, Lgov/nist/javax/sip/stack/ServerLog;->stackLogger:Lgov/nist/core/StackLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Here are the stack configuration properties \n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lgov/nist/javax/sip/stack/ServerLog;->configurationProperties:Ljava/util/Properties;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 264
    iget-object v0, v1, Lgov/nist/javax/sip/stack/ServerLog;->stackLogger:Lgov/nist/core/StackLogger;

    const-string v3, " ]]>"

    invoke-interface {v0, v3}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 265
    iget-object v0, v1, Lgov/nist/javax/sip/stack/ServerLog;->stackLogger:Lgov/nist/core/StackLogger;

    invoke-interface {v0, v15}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 266
    iget-object v0, v1, Lgov/nist/javax/sip/stack/ServerLog;->stackLogger:Lgov/nist/core/StackLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lgov/nist/javax/sip/stack/ServerLog;->description:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lgov/nist/javax/sip/stack/ServerLog;->stackIpAddress:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\" />\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 268
    iget-object v0, v1, Lgov/nist/javax/sip/stack/ServerLog;->stackLogger:Lgov/nist/core/StackLogger;

    invoke-interface {v0, v14}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 269
    iget-object v0, v1, Lgov/nist/javax/sip/stack/ServerLog;->stackLogger:Lgov/nist/core/StackLogger;

    invoke-interface {v0, v2}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 194
    .end local v16    # "logFile":Ljava/io/File;
    .end local v17    # "overwrite":Z
    .end local v18    # "fw":Ljava/io/FileWriter;
    .restart local v11    # "logFile":Ljava/io/File;
    :cond_5
    move-object/from16 v16, v11

    .line 275
    .end local v11    # "logFile":Ljava/io/File;
    :cond_6
    :goto_1
    goto :goto_2

    .line 273
    :catch_0
    move-exception v0

    .line 276
    :goto_2
    return-void

    .line 184
    :cond_7
    :goto_3
    return-void
.end method

.method public declared-synchronized greylist closeLogFile()V
    .locals 1

    monitor-enter p0

    .line 174
    :try_start_0
    iget-object v0, p0, Lgov/nist/javax/sip/stack/ServerLog;->printWriter:Ljava/io/PrintWriter;

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lgov/nist/javax/sip/stack/ServerLog;->printWriter:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    .line 176
    const/4 v0, 0x0

    iput-object v0, p0, Lgov/nist/javax/sip/stack/ServerLog;->printWriter:Ljava/io/PrintWriter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
    .end local p0    # "this":Lgov/nist/javax/sip/stack/ServerLog;
    :cond_0
    monitor-exit p0

    return-void

    .line 173
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public greylist getLogFileName()Ljava/lang/String;
    .locals 1

    .line 301
    iget-object v0, p0, Lgov/nist/javax/sip/stack/ServerLog;->logFileName:Ljava/lang/String;

    return-object v0
.end method

.method public greylist getTraceLevel()I
    .locals 1

    .line 436
    iget v0, p0, Lgov/nist/javax/sip/stack/ServerLog;->traceLevel:I

    return v0
.end method

.method public greylist logException(Ljava/lang/Exception;)V
    .locals 2
    .param p1, "ex"    # Ljava/lang/Exception;

    .line 404
    iget v0, p0, Lgov/nist/javax/sip/stack/ServerLog;->traceLevel:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    .line 405
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/ServerLog;->checkLogFile()V

    .line 406
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 407
    iget-object v0, p0, Lgov/nist/javax/sip/stack/ServerLog;->printWriter:Ljava/io/PrintWriter;

    if-eqz v0, :cond_0

    .line 408
    iget-object v0, p0, Lgov/nist/javax/sip/stack/ServerLog;->printWriter:Ljava/io/PrintWriter;

    invoke-virtual {p1, v0}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 411
    :cond_0
    return-void
.end method

.method public greylist logMessage(Lgov/nist/javax/sip/message/SIPMessage;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 8
    .param p1, "message"    # Lgov/nist/javax/sip/message/SIPMessage;
    .param p2, "from"    # Ljava/lang/String;
    .param p3, "to"    # Ljava/lang/String;
    .param p4, "status"    # Ljava/lang/String;
    .param p5, "sender"    # Z

    .line 394
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    .end local p1    # "message":Lgov/nist/javax/sip/message/SIPMessage;
    .end local p2    # "from":Ljava/lang/String;
    .end local p3    # "to":Ljava/lang/String;
    .end local p4    # "status":Ljava/lang/String;
    .end local p5    # "sender":Z
    .local v1, "message":Lgov/nist/javax/sip/message/SIPMessage;
    .local v2, "from":Ljava/lang/String;
    .local v3, "to":Ljava/lang/String;
    .local v4, "status":Ljava/lang/String;
    .local v5, "sender":Z
    invoke-virtual/range {v0 .. v7}, Lgov/nist/javax/sip/stack/ServerLog;->logMessage(Lgov/nist/javax/sip/message/SIPMessage;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJ)V

    .line 395
    return-void
.end method

.method public greylist logMessage(Lgov/nist/javax/sip/message/SIPMessage;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJ)V
    .locals 16
    .param p1, "message"    # Lgov/nist/javax/sip/message/SIPMessage;
    .param p2, "from"    # Ljava/lang/String;
    .param p3, "to"    # Ljava/lang/String;
    .param p4, "status"    # Ljava/lang/String;
    .param p5, "sender"    # Z
    .param p6, "time"    # J

    .line 369
    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/stack/ServerLog;->checkLogFile()V

    .line 370
    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPMessage;->getCallId()Ljavax/sip/header/CallIdHeader;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/header/CallID;

    .line 371
    .local v0, "cid":Lgov/nist/javax/sip/header/CallID;
    const/4 v1, 0x0

    .line 372
    .local v1, "callId":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 373
    invoke-virtual {v0}, Lgov/nist/javax/sip/header/CallID;->getCallId()Ljava/lang/String;

    move-result-object v1

    move-object v7, v1

    goto :goto_0

    .line 372
    :cond_0
    move-object v7, v1

    .line 374
    .end local v1    # "callId":Ljava/lang/String;
    .local v7, "callId":Ljava/lang/String;
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPMessage;->getFirstLine()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 375
    .local v8, "firstLine":Ljava/lang/String;
    move-object/from16 v2, p0

    iget-boolean v1, v2, Lgov/nist/javax/sip/stack/ServerLog;->logContent:Z

    if-eqz v1, :cond_1

    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPMessage;->encode()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPMessage;->encodeMessage()Ljava/lang/String;

    move-result-object v1

    :goto_1
    move-object v3, v1

    .line 376
    .local v3, "encoded":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPMessage;->getTransactionId()Ljava/lang/String;

    move-result-object v10

    .line 377
    .local v10, "tid":Ljava/lang/String;
    const-string v1, "Timestamp"

    move-object/from16 v15, p1

    invoke-virtual {v15, v1}, Lgov/nist/javax/sip/message/SIPMessage;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v1

    check-cast v1, Ljavax/sip/header/TimeStampHeader;

    .line 378
    .local v1, "tshdr":Ljavax/sip/header/TimeStampHeader;
    if-nez v1, :cond_2

    const-wide/16 v4, 0x0

    goto :goto_2

    :cond_2
    invoke-interface {v1}, Ljavax/sip/header/TimeStampHeader;->getTime()J

    move-result-wide v4

    :goto_2
    move-wide v13, v4

    .line 379
    .local v13, "tsval":J
    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v9, p4

    move/from16 v6, p5

    move-wide/from16 v11, p6

    invoke-direct/range {v2 .. v14}, Lgov/nist/javax/sip/stack/ServerLog;->logMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V

    .line 380
    return-void
.end method

.method public greylist logMessage(Lgov/nist/javax/sip/message/SIPMessage;Ljava/lang/String;Ljava/lang/String;ZJ)V
    .locals 16
    .param p1, "message"    # Lgov/nist/javax/sip/message/SIPMessage;
    .param p2, "from"    # Ljava/lang/String;
    .param p3, "to"    # Ljava/lang/String;
    .param p4, "sender"    # Z
    .param p5, "time"    # J

    .line 342
    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/stack/ServerLog;->checkLogFile()V

    .line 343
    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPMessage;->getFirstLine()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 344
    return-void

    .line 345
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPMessage;->getCallId()Ljavax/sip/header/CallIdHeader;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/header/CallID;

    .line 346
    .local v0, "cid":Lgov/nist/javax/sip/header/CallID;
    const/4 v1, 0x0

    .line 347
    .local v1, "callId":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 348
    invoke-virtual {v0}, Lgov/nist/javax/sip/header/CallID;->getCallId()Ljava/lang/String;

    move-result-object v1

    move-object v7, v1

    goto :goto_0

    .line 347
    :cond_1
    move-object v7, v1

    .line 349
    .end local v1    # "callId":Ljava/lang/String;
    .local v7, "callId":Ljava/lang/String;
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPMessage;->getFirstLine()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 350
    .local v8, "firstLine":Ljava/lang/String;
    move-object/from16 v2, p0

    iget-boolean v1, v2, Lgov/nist/javax/sip/stack/ServerLog;->logContent:Z

    if-eqz v1, :cond_2

    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPMessage;->encode()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPMessage;->encodeMessage()Ljava/lang/String;

    move-result-object v1

    :goto_1
    move-object v3, v1

    .line 351
    .local v3, "inputText":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPMessage;->getTransactionId()Ljava/lang/String;

    move-result-object v10

    .line 352
    .local v10, "tid":Ljava/lang/String;
    const-string v1, "Timestamp"

    move-object/from16 v15, p1

    invoke-virtual {v15, v1}, Lgov/nist/javax/sip/message/SIPMessage;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v1

    check-cast v1, Ljavax/sip/header/TimeStampHeader;

    .line 353
    .local v1, "tsHdr":Ljavax/sip/header/TimeStampHeader;
    if-nez v1, :cond_3

    const-wide/16 v4, 0x0

    goto :goto_2

    :cond_3
    invoke-interface {v1}, Ljavax/sip/header/TimeStampHeader;->getTime()J

    move-result-wide v4

    :goto_2
    move-wide v13, v4

    .line 354
    .local v13, "tsval":J
    const/4 v9, 0x0

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p4

    move-wide/from16 v11, p5

    invoke-direct/range {v2 .. v14}, Lgov/nist/javax/sip/stack/ServerLog;->logMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V

    .line 355
    return-void
.end method

.method public greylist needsLogging()Z
    .locals 1

    .line 285
    iget-object v0, p0, Lgov/nist/javax/sip/stack/ServerLog;->logFileName:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public greylist setAuxInfo(Ljava/lang/String;)V
    .locals 0
    .param p1, "auxInfo"    # Ljava/lang/String;

    .line 446
    iput-object p1, p0, Lgov/nist/javax/sip/stack/ServerLog;->auxInfo:Ljava/lang/String;

    .line 447
    return-void
.end method

.method public greylist setLevel(I)V
    .locals 0
    .param p1, "jsipLoggingLevel"    # I

    .line 464
    return-void
.end method

.method public greylist setLogFileName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 294
    iput-object p1, p0, Lgov/nist/javax/sip/stack/ServerLog;->logFileName:Ljava/lang/String;

    .line 295
    return-void
.end method

.method public greylist setSipStack(Ljavax/sip/SipStack;)V
    .locals 2
    .param p1, "sipStack"    # Ljavax/sip/SipStack;

    .line 450
    instance-of v0, p1, Lgov/nist/javax/sip/stack/SIPTransactionStack;

    if-eqz v0, :cond_0

    .line 451
    move-object v0, p1

    check-cast v0, Lgov/nist/javax/sip/stack/SIPTransactionStack;

    iput-object v0, p0, Lgov/nist/javax/sip/stack/ServerLog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    .line 452
    iget-object v0, p0, Lgov/nist/javax/sip/stack/ServerLog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    iput-object v0, p0, Lgov/nist/javax/sip/stack/ServerLog;->stackLogger:Lgov/nist/core/StackLogger;

    .line 456
    return-void

    .line 455
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "sipStack must be a SIPTransactionStack"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist setStackIpAddress(Ljava/lang/String;)V
    .locals 0
    .param p1, "ipAddress"    # Ljava/lang/String;

    .line 162
    iput-object p1, p0, Lgov/nist/javax/sip/stack/ServerLog;->stackIpAddress:Ljava/lang/String;

    .line 163
    return-void
.end method

.method public greylist setStackProperties(Ljava/util/Properties;)V
    .locals 0
    .param p1, "stackProperties"    # Ljava/util/Properties;

    .line 459
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/stack/ServerLog;->setProperties(Ljava/util/Properties;)V

    .line 460
    return-void
.end method

.method public greylist setTraceLevel(I)V
    .locals 0
    .param p1, "level"    # I

    .line 427
    iput p1, p0, Lgov/nist/javax/sip/stack/ServerLog;->traceLevel:I

    .line 428
    return-void
.end method
