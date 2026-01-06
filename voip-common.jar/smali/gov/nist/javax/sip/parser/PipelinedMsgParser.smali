.class public final Lgov/nist/javax/sip/parser/PipelinedMsgParser;
.super Ljava/lang/Object;
.source "PipelinedMsgParser.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static greylist uid:I


# instance fields
.field private greylist maxMessageSize:I

.field private greylist mythread:Ljava/lang/Thread;

.field private greylist rawInputStream:Lgov/nist/javax/sip/parser/Pipeline;

.field protected greylist sipMessageListener:Lgov/nist/javax/sip/parser/SIPMessageListener;

.field private greylist sizeCounter:I


# direct methods
.method static constructor greylist <clinit>()V
    .locals 1

    .line 87
    const/4 v0, 0x0

    sput v0, Lgov/nist/javax/sip/parser/PipelinedMsgParser;->uid:I

    return-void
.end method

.method protected constructor greylist <init>()V
    .locals 0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    return-void
.end method

.method public constructor greylist <init>(Lgov/nist/javax/sip/parser/Pipeline;)V
    .locals 2
    .param p1, "in"    # Lgov/nist/javax/sip/parser/Pipeline;

    .line 139
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1, v1}, Lgov/nist/javax/sip/parser/PipelinedMsgParser;-><init>(Lgov/nist/javax/sip/parser/SIPMessageListener;Lgov/nist/javax/sip/parser/Pipeline;ZI)V

    .line 140
    return-void
.end method

.method public constructor greylist <init>(Lgov/nist/javax/sip/parser/SIPMessageListener;Lgov/nist/javax/sip/parser/Pipeline;I)V
    .locals 1
    .param p1, "mhandler"    # Lgov/nist/javax/sip/parser/SIPMessageListener;
    .param p2, "in"    # Lgov/nist/javax/sip/parser/Pipeline;
    .param p3, "maxMsgSize"    # I

    .line 128
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lgov/nist/javax/sip/parser/PipelinedMsgParser;-><init>(Lgov/nist/javax/sip/parser/SIPMessageListener;Lgov/nist/javax/sip/parser/Pipeline;ZI)V

    .line 129
    return-void
.end method

.method public constructor greylist <init>(Lgov/nist/javax/sip/parser/SIPMessageListener;Lgov/nist/javax/sip/parser/Pipeline;ZI)V
    .locals 3
    .param p1, "sipMessageListener"    # Lgov/nist/javax/sip/parser/SIPMessageListener;
    .param p2, "in"    # Lgov/nist/javax/sip/parser/Pipeline;
    .param p3, "debug"    # Z
    .param p4, "maxMessageSize"    # I

    .line 107
    invoke-direct {p0}, Lgov/nist/javax/sip/parser/PipelinedMsgParser;-><init>()V

    .line 108
    iput-object p1, p0, Lgov/nist/javax/sip/parser/PipelinedMsgParser;->sipMessageListener:Lgov/nist/javax/sip/parser/SIPMessageListener;

    .line 109
    iput-object p2, p0, Lgov/nist/javax/sip/parser/PipelinedMsgParser;->rawInputStream:Lgov/nist/javax/sip/parser/Pipeline;

    .line 110
    iput p4, p0, Lgov/nist/javax/sip/parser/PipelinedMsgParser;->maxMessageSize:I

    .line 111
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lgov/nist/javax/sip/parser/PipelinedMsgParser;->mythread:Ljava/lang/Thread;

    .line 112
    iget-object v0, p0, Lgov/nist/javax/sip/parser/PipelinedMsgParser;->mythread:Ljava/lang/Thread;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PipelineThread-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lgov/nist/javax/sip/parser/PipelinedMsgParser;->getNewUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 114
    return-void
.end method

.method private static declared-synchronized greylist getNewUid()I
    .locals 3

    const-class v0, Lgov/nist/javax/sip/parser/PipelinedMsgParser;

    monitor-enter v0

    .line 90
    :try_start_0
    sget v1, Lgov/nist/javax/sip/parser/PipelinedMsgParser;->uid:I

    add-int/lit8 v2, v1, 0x1

    sput v2, Lgov/nist/javax/sip/parser/PipelinedMsgParser;->uid:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    .line 90
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private greylist readLine(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 5
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 182
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 185
    .local v0, "retval":Ljava/lang/StringBuffer;
    :goto_0
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 186
    .local v1, "i":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_4

    .line 189
    int-to-char v2, v1

    .line 191
    .local v2, "ch":C
    iget v3, p0, Lgov/nist/javax/sip/parser/PipelinedMsgParser;->maxMessageSize:I

    if-lez v3, :cond_1

    .line 192
    iget v3, p0, Lgov/nist/javax/sip/parser/PipelinedMsgParser;->sizeCounter:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lgov/nist/javax/sip/parser/PipelinedMsgParser;->sizeCounter:I

    .line 193
    iget v3, p0, Lgov/nist/javax/sip/parser/PipelinedMsgParser;->sizeCounter:I

    if-lez v3, :cond_0

    goto :goto_1

    .line 194
    :cond_0
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Max size exceeded!"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 196
    :cond_1
    :goto_1
    const/16 v3, 0xd

    if-eq v2, v3, :cond_2

    .line 197
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 198
    :cond_2
    const/16 v3, 0xa

    if-ne v2, v3, :cond_3

    .line 199
    nop

    .line 202
    .end local v1    # "i":I
    .end local v2    # "ch":C
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 201
    :cond_3
    goto :goto_0

    .line 187
    .restart local v1    # "i":I
    :cond_4
    new-instance v2, Ljava/io/IOException;

    const-string v3, "End of stream"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method protected whitelist test-api clone()Ljava/lang/Object;
    .locals 3

    .line 155
    new-instance v0, Lgov/nist/javax/sip/parser/PipelinedMsgParser;

    invoke-direct {v0}, Lgov/nist/javax/sip/parser/PipelinedMsgParser;-><init>()V

    .line 157
    .local v0, "p":Lgov/nist/javax/sip/parser/PipelinedMsgParser;
    iget-object v1, p0, Lgov/nist/javax/sip/parser/PipelinedMsgParser;->rawInputStream:Lgov/nist/javax/sip/parser/Pipeline;

    iput-object v1, v0, Lgov/nist/javax/sip/parser/PipelinedMsgParser;->rawInputStream:Lgov/nist/javax/sip/parser/Pipeline;

    .line 158
    iget-object v1, p0, Lgov/nist/javax/sip/parser/PipelinedMsgParser;->sipMessageListener:Lgov/nist/javax/sip/parser/SIPMessageListener;

    iput-object v1, v0, Lgov/nist/javax/sip/parser/PipelinedMsgParser;->sipMessageListener:Lgov/nist/javax/sip/parser/SIPMessageListener;

    .line 159
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 160
    .local v1, "mythread":Ljava/lang/Thread;
    const-string v2, "PipelineThread"

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 161
    return-object v0
.end method

.method public greylist close()V
    .locals 1

    .line 361
    :try_start_0
    iget-object v0, p0, Lgov/nist/javax/sip/parser/PipelinedMsgParser;->rawInputStream:Lgov/nist/javax/sip/parser/Pipeline;

    invoke-virtual {v0}, Lgov/nist/javax/sip/parser/Pipeline;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 364
    goto :goto_0

    .line 362
    :catch_0
    move-exception v0

    .line 365
    :goto_0
    return-void
.end method

.method public greylist processInput()V
    .locals 1

    .line 146
    iget-object v0, p0, Lgov/nist/javax/sip/parser/PipelinedMsgParser;->mythread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 147
    return-void
.end method

.method public whitelist test-api run()V
    .locals 12

    .line 213
    iget-object v0, p0, Lgov/nist/javax/sip/parser/PipelinedMsgParser;->rawInputStream:Lgov/nist/javax/sip/parser/Pipeline;

    .line 219
    .local v0, "inputStream":Lgov/nist/javax/sip/parser/Pipeline;
    :goto_0
    :try_start_0
    iget v1, p0, Lgov/nist/javax/sip/parser/PipelinedMsgParser;->maxMessageSize:I

    iput v1, p0, Lgov/nist/javax/sip/parser/PipelinedMsgParser;->sizeCounter:I

    .line 221
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 223
    .local v1, "inputBuffer":Ljava/lang/StringBuffer;
    sget-boolean v2, Lgov/nist/core/Debug;->parserDebug:Z

    if-eqz v2, :cond_0

    .line 224
    const-string v2, "Starting parse!"

    invoke-static {v2}, Lgov/nist/core/Debug;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 227
    :cond_0
    const/4 v2, 0x0

    .line 231
    .local v2, "line2":Ljava/lang/String;
    :goto_1
    :try_start_1
    invoke-direct {p0, v0}, Lgov/nist/javax/sip/parser/PipelinedMsgParser;->readLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v3

    .line 233
    .local v3, "line1":Ljava/lang/String;
    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 234
    sget-boolean v4, Lgov/nist/core/Debug;->parserDebug:Z

    if-eqz v4, :cond_1

    .line 235
    const-string v4, "Discarding blank line. "

    invoke-static {v4}, Lgov/nist/core/Debug;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 237
    :cond_1
    goto :goto_1

    .line 239
    :cond_2
    nop

    .line 248
    :try_start_2
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 250
    iget-object v4, p0, Lgov/nist/javax/sip/parser/PipelinedMsgParser;->rawInputStream:Lgov/nist/javax/sip/parser/Pipeline;

    invoke-virtual {v4}, Lgov/nist/javax/sip/parser/Pipeline;->startTimer()V

    .line 252
    const-string v4, "Reading Input Stream"

    invoke-static {v4}, Lgov/nist/core/Debug;->println(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 255
    :goto_2
    :try_start_3
    invoke-direct {p0, v0}, Lgov/nist/javax/sip/parser/PipelinedMsgParser;->readLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    .line 256
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 257
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v4, :cond_e

    .line 258
    nop

    .line 268
    :try_start_4
    iget-object v4, p0, Lgov/nist/javax/sip/parser/PipelinedMsgParser;->rawInputStream:Lgov/nist/javax/sip/parser/Pipeline;

    invoke-virtual {v4}, Lgov/nist/javax/sip/parser/Pipeline;->stopTimer()V

    .line 269
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 270
    new-instance v4, Lgov/nist/javax/sip/parser/StringMsgParser;

    iget-object v5, p0, Lgov/nist/javax/sip/parser/PipelinedMsgParser;->sipMessageListener:Lgov/nist/javax/sip/parser/SIPMessageListener;

    invoke-direct {v4, v5}, Lgov/nist/javax/sip/parser/StringMsgParser;-><init>(Lgov/nist/javax/sip/parser/ParseExceptionListener;)V

    .line 271
    .local v4, "smp":Lgov/nist/javax/sip/parser/StringMsgParser;
    const/4 v5, 0x0

    iput-boolean v5, v4, Lgov/nist/javax/sip/parser/StringMsgParser;->readBody:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 272
    const/4 v5, 0x0

    .line 275
    .local v5, "sipMessage":Lgov/nist/javax/sip/message/SIPMessage;
    :try_start_5
    sget-boolean v6, Lgov/nist/core/Debug;->debug:Z

    if-eqz v6, :cond_3

    .line 276
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "About to parse : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lgov/nist/core/Debug;->println(Ljava/lang/String;)V

    .line 278
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lgov/nist/javax/sip/parser/StringMsgParser;->parseSIPMessage(Ljava/lang/String;)Lgov/nist/javax/sip/message/SIPMessage;

    move-result-object v6

    move-object v5, v6

    .line 279
    if-nez v5, :cond_4

    .line 280
    iget-object v6, p0, Lgov/nist/javax/sip/parser/PipelinedMsgParser;->rawInputStream:Lgov/nist/javax/sip/parser/Pipeline;

    invoke-virtual {v6}, Lgov/nist/javax/sip/parser/Pipeline;->stopTimer()V
    :try_end_5
    .catch Ljava/text/ParseException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 281
    goto/16 :goto_0

    .line 287
    :cond_4
    nop

    .line 289
    :try_start_6
    sget-boolean v6, Lgov/nist/core/Debug;->debug:Z

    if-eqz v6, :cond_5

    .line 290
    const-string v6, "Completed parsing message"

    invoke-static {v6}, Lgov/nist/core/Debug;->println(Ljava/lang/String;)V

    .line 292
    :cond_5
    nop

    .line 293
    invoke-virtual {v5}, Lgov/nist/javax/sip/message/SIPMessage;->getContentLength()Ljavax/sip/header/ContentLengthHeader;

    move-result-object v6

    check-cast v6, Lgov/nist/javax/sip/header/ContentLength;

    .line 294
    .local v6, "cl":Lgov/nist/javax/sip/header/ContentLength;
    const/4 v7, 0x0

    .line 295
    .local v7, "contentLength":I
    if-eqz v6, :cond_6

    .line 296
    invoke-virtual {v6}, Lgov/nist/javax/sip/header/ContentLength;->getContentLength()I

    move-result v8

    .end local v7    # "contentLength":I
    .local v8, "contentLength":I
    goto :goto_3

    .line 298
    .end local v8    # "contentLength":I
    .restart local v7    # "contentLength":I
    :cond_6
    const/4 v8, 0x0

    .line 301
    .end local v7    # "contentLength":I
    .restart local v8    # "contentLength":I
    :goto_3
    sget-boolean v7, Lgov/nist/core/Debug;->debug:Z

    if-eqz v7, :cond_7

    .line 302
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "contentLength "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lgov/nist/core/Debug;->println(Ljava/lang/String;)V

    .line 305
    :cond_7
    if-nez v8, :cond_8

    .line 306
    invoke-virtual {v5}, Lgov/nist/javax/sip/message/SIPMessage;->removeContent()V

    goto :goto_7

    .line 307
    :cond_8
    iget v7, p0, Lgov/nist/javax/sip/parser/PipelinedMsgParser;->maxMessageSize:I

    if-eqz v7, :cond_9

    iget v7, p0, Lgov/nist/javax/sip/parser/PipelinedMsgParser;->sizeCounter:I

    if-ge v8, v7, :cond_c

    .line 309
    :cond_9
    new-array v7, v8, [B

    .line 310
    .local v7, "message_body":[B
    const/4 v9, 0x0

    .line 311
    .local v9, "nread":I
    :goto_4
    if-ge v9, v8, :cond_b

    .line 318
    iget-object v10, p0, Lgov/nist/javax/sip/parser/PipelinedMsgParser;->rawInputStream:Lgov/nist/javax/sip/parser/Pipeline;

    invoke-virtual {v10}, Lgov/nist/javax/sip/parser/Pipeline;->startTimer()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 321
    sub-int v10, v8, v9

    :try_start_7
    invoke-virtual {v0, v7, v9, v10}, Lgov/nist/javax/sip/parser/Pipeline;->read([BII)I

    move-result v10
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 323
    .local v10, "readlength":I
    if-lez v10, :cond_a

    .line 324
    add-int/2addr v9, v10

    .line 333
    .end local v10    # "readlength":I
    :try_start_8
    iget-object v10, p0, Lgov/nist/javax/sip/parser/PipelinedMsgParser;->rawInputStream:Lgov/nist/javax/sip/parser/Pipeline;

    invoke-virtual {v10}, Lgov/nist/javax/sip/parser/Pipeline;->stopTimer()V

    .line 334
    goto :goto_4

    .line 333
    .restart local v10    # "readlength":I
    :cond_a
    iget-object v11, p0, Lgov/nist/javax/sip/parser/PipelinedMsgParser;->rawInputStream:Lgov/nist/javax/sip/parser/Pipeline;

    invoke-virtual {v11}, Lgov/nist/javax/sip/parser/Pipeline;->stopTimer()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 326
    goto :goto_6

    .line 333
    .end local v10    # "readlength":I
    :catchall_0
    move-exception v10

    goto :goto_5

    .line 328
    :catch_0
    move-exception v10

    .line 329
    .local v10, "ex":Ljava/io/IOException;
    :try_start_9
    const-string v11, "Exception Reading Content"

    invoke-static {v11, v10}, Lgov/nist/core/Debug;->logError(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 333
    :try_start_a
    iget-object v11, p0, Lgov/nist/javax/sip/parser/PipelinedMsgParser;->rawInputStream:Lgov/nist/javax/sip/parser/Pipeline;

    invoke-virtual {v11}, Lgov/nist/javax/sip/parser/Pipeline;->stopTimer()V

    .line 330
    goto :goto_6

    .line 333
    .end local v10    # "ex":Ljava/io/IOException;
    :goto_5
    iget-object v11, p0, Lgov/nist/javax/sip/parser/PipelinedMsgParser;->rawInputStream:Lgov/nist/javax/sip/parser/Pipeline;

    invoke-virtual {v11}, Lgov/nist/javax/sip/parser/Pipeline;->stopTimer()V

    .line 334
    nop

    .end local v0    # "inputStream":Lgov/nist/javax/sip/parser/Pipeline;
    .end local p0    # "this":Lgov/nist/javax/sip/parser/PipelinedMsgParser;
    throw v10

    .line 336
    .restart local v0    # "inputStream":Lgov/nist/javax/sip/parser/Pipeline;
    .restart local p0    # "this":Lgov/nist/javax/sip/parser/PipelinedMsgParser;
    :cond_b
    :goto_6
    invoke-virtual {v5, v7}, Lgov/nist/javax/sip/message/SIPMessage;->setMessageContent([B)V

    .line 340
    .end local v7    # "message_body":[B
    .end local v9    # "nread":I
    :cond_c
    :goto_7
    iget-object v7, p0, Lgov/nist/javax/sip/parser/PipelinedMsgParser;->sipMessageListener:Lgov/nist/javax/sip/parser/SIPMessageListener;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    if-eqz v7, :cond_d

    .line 342
    :try_start_b
    iget-object v7, p0, Lgov/nist/javax/sip/parser/PipelinedMsgParser;->sipMessageListener:Lgov/nist/javax/sip/parser/SIPMessageListener;

    invoke-interface {v7, v5}, Lgov/nist/javax/sip/parser/SIPMessageListener;->processMessage(Lgov/nist/javax/sip/message/SIPMessage;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 347
    goto :goto_9

    .line 343
    :catch_1
    move-exception v7

    .line 346
    .local v7, "ex":Ljava/lang/Exception;
    nop

    .line 352
    .end local v1    # "inputBuffer":Ljava/lang/StringBuffer;
    .end local v2    # "line2":Ljava/lang/String;
    .end local v3    # "line1":Ljava/lang/String;
    .end local v4    # "smp":Lgov/nist/javax/sip/parser/StringMsgParser;
    .end local v5    # "sipMessage":Lgov/nist/javax/sip/message/SIPMessage;
    .end local v6    # "cl":Lgov/nist/javax/sip/header/ContentLength;
    .end local v7    # "ex":Ljava/lang/Exception;
    .end local v8    # "contentLength":I
    :try_start_c
    invoke-virtual {v0}, Lgov/nist/javax/sip/parser/Pipeline;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_2

    .line 355
    goto :goto_8

    .line 353
    :catch_2
    move-exception v1

    .line 354
    .local v1, "e":Ljava/io/IOException;
    invoke-static {v1}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V

    .line 356
    .end local v1    # "e":Ljava/io/IOException;
    nop

    .line 357
    :goto_8
    return-void

    .line 349
    :cond_d
    :goto_9
    goto/16 :goto_0

    .line 283
    .local v1, "inputBuffer":Ljava/lang/StringBuffer;
    .restart local v2    # "line2":Ljava/lang/String;
    .restart local v3    # "line1":Ljava/lang/String;
    .restart local v4    # "smp":Lgov/nist/javax/sip/parser/StringMsgParser;
    .restart local v5    # "sipMessage":Lgov/nist/javax/sip/message/SIPMessage;
    :catch_3
    move-exception v6

    .line 285
    .local v6, "ex":Ljava/text/ParseException;
    :try_start_d
    const-string v7, "Detected a parse error"

    invoke-static {v7, v6}, Lgov/nist/core/Debug;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 286
    goto/16 :goto_0

    .line 264
    .end local v4    # "smp":Lgov/nist/javax/sip/parser/StringMsgParser;
    .end local v5    # "sipMessage":Lgov/nist/javax/sip/message/SIPMessage;
    .end local v6    # "ex":Ljava/text/ParseException;
    :cond_e
    goto/16 :goto_2

    .line 259
    :catch_4
    move-exception v4

    .line 260
    .local v4, "ex":Ljava/io/IOException;
    iget-object v5, p0, Lgov/nist/javax/sip/parser/PipelinedMsgParser;->rawInputStream:Lgov/nist/javax/sip/parser/Pipeline;

    invoke-virtual {v5}, Lgov/nist/javax/sip/parser/Pipeline;->stopTimer()V

    .line 261
    invoke-static {v4}, Lgov/nist/core/Debug;->printStackTrace(Ljava/lang/Exception;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 352
    :try_start_e
    invoke-virtual {v0}, Lgov/nist/javax/sip/parser/Pipeline;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_5

    .line 355
    goto :goto_a

    .line 353
    :catch_5
    move-exception v5

    .line 354
    .local v5, "e":Ljava/io/IOException;
    invoke-static {v5}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V

    .line 262
    .end local v5    # "e":Ljava/io/IOException;
    :goto_a
    return-void

    .line 240
    .end local v3    # "line1":Ljava/lang/String;
    .end local v4    # "ex":Ljava/io/IOException;
    :catch_6
    move-exception v3

    .line 241
    .local v3, "ex":Ljava/io/IOException;
    :try_start_f
    invoke-static {v3}, Lgov/nist/core/Debug;->printStackTrace(Ljava/lang/Exception;)V

    .line 242
    iget-object v4, p0, Lgov/nist/javax/sip/parser/PipelinedMsgParser;->rawInputStream:Lgov/nist/javax/sip/parser/Pipeline;

    invoke-virtual {v4}, Lgov/nist/javax/sip/parser/Pipeline;->stopTimer()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .line 352
    :try_start_10
    invoke-virtual {v0}, Lgov/nist/javax/sip/parser/Pipeline;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_7

    .line 355
    goto :goto_b

    .line 353
    :catch_7
    move-exception v4

    .line 354
    .local v4, "e":Ljava/io/IOException;
    invoke-static {v4}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V

    .line 243
    .end local v4    # "e":Ljava/io/IOException;
    :goto_b
    return-void

    .line 351
    .end local v1    # "inputBuffer":Ljava/lang/StringBuffer;
    .end local v2    # "line2":Ljava/lang/String;
    .end local v3    # "ex":Ljava/io/IOException;
    :catchall_1
    move-exception v1

    .line 352
    :try_start_11
    invoke-virtual {v0}, Lgov/nist/javax/sip/parser/Pipeline;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_8

    .line 355
    goto :goto_c

    .line 353
    :catch_8
    move-exception v2

    .line 354
    .local v2, "e":Ljava/io/IOException;
    invoke-static {v2}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V

    .line 356
    .end local v2    # "e":Ljava/io/IOException;
    :goto_c
    throw v1
.end method

.method public greylist setMessageListener(Lgov/nist/javax/sip/parser/SIPMessageListener;)V
    .locals 0
    .param p1, "mlistener"    # Lgov/nist/javax/sip/parser/SIPMessageListener;

    .line 174
    iput-object p1, p0, Lgov/nist/javax/sip/parser/PipelinedMsgParser;->sipMessageListener:Lgov/nist/javax/sip/parser/SIPMessageListener;

    .line 175
    return-void
.end method
