.class Lgov/nist/javax/sip/stack/IOHandler;
.super Ljava/lang/Object;
.source "IOHandler.java"


# static fields
.field private static greylist TCP:Ljava/lang/String;

.field private static greylist TLS:Ljava/lang/String;


# instance fields
.field private greylist ioSemaphore:Ljava/util/concurrent/Semaphore;

.field private greylist sipStack:Lgov/nist/javax/sip/SipStackImpl;

.field private greylist socketTable:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/net/Socket;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor greylist <clinit>()V
    .locals 1

    .line 66
    const-string v0, "tcp"

    sput-object v0, Lgov/nist/javax/sip/stack/IOHandler;->TCP:Ljava/lang/String;

    .line 69
    const-string v0, "tls"

    sput-object v0, Lgov/nist/javax/sip/stack/IOHandler;->TLS:Ljava/lang/String;

    return-void
.end method

.method protected constructor greylist <init>(Lgov/nist/javax/sip/stack/SIPTransactionStack;)V
    .locals 2
    .param p1, "sipStack"    # Lgov/nist/javax/sip/stack/SIPTransactionStack;

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lgov/nist/javax/sip/stack/IOHandler;->ioSemaphore:Ljava/util/concurrent/Semaphore;

    .line 81
    move-object v0, p1

    check-cast v0, Lgov/nist/javax/sip/SipStackImpl;

    iput-object v0, p0, Lgov/nist/javax/sip/stack/IOHandler;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    .line 82
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/stack/IOHandler;->socketTable:Ljava/util/concurrent/ConcurrentHashMap;

    .line 84
    return-void
.end method

.method protected static greylist makeKey(Ljava/net/InetAddress;I)Ljava/lang/String;
    .locals 2
    .param p0, "addr"    # Ljava/net/InetAddress;
    .param p1, "port"    # I

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private greylist writeChunks(Ljava/io/OutputStream;[BI)V
    .locals 3
    .param p1, "outputStream"    # Ljava/io/OutputStream;
    .param p2, "bytes"    # [B
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 108
    monitor-enter p1

    .line 110
    const/16 v0, 0x2000

    .line 111
    .local v0, "chunksize":I
    const/4 v1, 0x0

    .local v1, "p":I
    :goto_0
    if-ge v1, p3, :cond_1

    .line 112
    add-int v2, v1, v0

    if-ge v2, p3, :cond_0

    move v2, v0

    goto :goto_1

    :cond_0
    sub-int v2, p3, v1

    .line 113
    .local v2, "chunk":I
    :goto_1
    :try_start_0
    invoke-virtual {p1, p2, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 111
    .end local v2    # "chunk":I
    add-int/2addr v1, v0

    goto :goto_0

    .line 115
    .end local v0    # "chunksize":I
    .end local v1    # "p":I
    :cond_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 117
    return-void

    .line 115
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public greylist closeAll()V
    .locals 3

    .line 330
    iget-object v0, p0, Lgov/nist/javax/sip/stack/IOHandler;->socketTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .local v0, "values":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/Socket;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 331
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/Socket;

    .line 333
    .local v1, "s":Ljava/net/Socket;
    :try_start_0
    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 335
    goto :goto_1

    .line 334
    :catch_0
    move-exception v2

    .line 336
    .end local v1    # "s":Ljava/net/Socket;
    :goto_1
    goto :goto_0

    .line 338
    .end local v0    # "values":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/Socket;>;"
    :cond_0
    return-void
.end method

.method protected greylist getSocket(Ljava/lang/String;)Ljava/net/Socket;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 92
    iget-object v0, p0, Lgov/nist/javax/sip/stack/IOHandler;->socketTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/Socket;

    return-object v0
.end method

.method public greylist obtainLocalAddress(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Ljava/net/SocketAddress;
    .locals 3
    .param p1, "dst"    # Ljava/net/InetAddress;
    .param p2, "dstPort"    # I
    .param p3, "localAddress"    # Ljava/net/InetAddress;
    .param p4, "localPort"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 135
    invoke-static {p1, p2}, Lgov/nist/javax/sip/stack/IOHandler;->makeKey(Ljava/net/InetAddress;I)Ljava/lang/String;

    move-result-object v0

    .line 137
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/stack/IOHandler;->getSocket(Ljava/lang/String;)Ljava/net/Socket;

    move-result-object v1

    .line 139
    .local v1, "clientSock":Ljava/net/Socket;
    if-nez v1, :cond_0

    .line 140
    iget-object v2, p0, Lgov/nist/javax/sip/stack/IOHandler;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v2}, Lgov/nist/javax/sip/SipStackImpl;->getNetworkLayer()Lgov/nist/core/net/NetworkLayer;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3, p4}, Lgov/nist/core/net/NetworkLayer;->createSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object v1

    .line 142
    invoke-virtual {p0, v0, v1}, Lgov/nist/javax/sip/stack/IOHandler;->putSocket(Ljava/lang/String;Ljava/net/Socket;)V

    .line 145
    :cond_0
    invoke-virtual {v1}, Ljava/net/Socket;->getLocalSocketAddress()Ljava/net/SocketAddress;

    move-result-object v2

    return-object v2
.end method

.method protected greylist putSocket(Ljava/lang/String;Ljava/net/Socket;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "sock"    # Ljava/net/Socket;

    .line 87
    iget-object v0, p0, Lgov/nist/javax/sip/stack/IOHandler;->socketTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    return-void
.end method

.method protected greylist removeSocket(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 96
    iget-object v0, p0, Lgov/nist/javax/sip/stack/IOHandler;->socketTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    return-void
.end method

.method public greylist sendBytes(Ljava/net/InetAddress;Ljava/net/InetAddress;ILjava/lang/String;[BZLgov/nist/javax/sip/stack/MessageChannel;)Ljava/net/Socket;
    .locals 21
    .param p1, "senderAddress"    # Ljava/net/InetAddress;
    .param p2, "receiverAddress"    # Ljava/net/InetAddress;
    .param p3, "contactPort"    # I
    .param p4, "transport"    # Ljava/lang/String;
    .param p5, "bytes"    # [B
    .param p6, "retry"    # Z
    .param p7, "messageChannel"    # Lgov/nist/javax/sip/stack/MessageChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 162
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v7, p2

    move/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v4, p5

    const/4 v10, 0x0

    .line 163
    .local v10, "retry_count":I
    if-eqz p6, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    move v11, v0

    .line 165
    .local v11, "max_retry":I
    array-length v6, v4

    .line 166
    .local v6, "length":I
    iget-object v0, v1, Lgov/nist/javax/sip/stack/IOHandler;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v0}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 167
    iget-object v0, v1, Lgov/nist/javax/sip/stack/IOHandler;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v0}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendBytes "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " inAddr "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 168
    invoke-virtual {v7}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " port = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " length = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 167
    invoke-interface {v0, v3}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 171
    :cond_1
    iget-object v0, v1, Lgov/nist/javax/sip/stack/IOHandler;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v0}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, v1, Lgov/nist/javax/sip/stack/IOHandler;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v0}, Lgov/nist/javax/sip/SipStackImpl;->isLogStackTraceOnMessageSend()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 172
    iget-object v0, v1, Lgov/nist/javax/sip/stack/IOHandler;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v0}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    const/16 v3, 0x10

    invoke-interface {v0, v3}, Lgov/nist/core/StackLogger;->logStackTrace(I)V

    .line 174
    :cond_2
    sget-object v0, Lgov/nist/javax/sip/stack/IOHandler;->TCP:Ljava/lang/String;

    invoke-virtual {v9, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    const-string v3, "port = "

    const-string v5, "inaddr = "

    const-string v12, "exception in acquiring sem"

    const-string v15, ":"

    const-string v13, "Could not connect to "

    if-nez v0, :cond_a

    .line 175
    invoke-static/range {p2 .. p3}, Lgov/nist/javax/sip/stack/IOHandler;->makeKey(Ljava/net/InetAddress;I)Ljava/lang/String;

    move-result-object v14

    .line 180
    .local v14, "key":Ljava/lang/String;
    :try_start_0
    iget-object v0, v1, Lgov/nist/javax/sip/stack/IOHandler;->ioSemaphore:Ljava/util/concurrent/Semaphore;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_4

    move/from16 v18, v10

    .end local v10    # "retry_count":I
    .local v18, "retry_count":I
    :try_start_1
    sget-object v10, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_3

    move-object/from16 v19, v12

    move-object/from16 v20, v13

    const-wide/16 v12, 0x2710

    :try_start_2
    invoke-virtual {v0, v12, v13, v10}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2

    .line 181
    .local v0, "retval":Z
    if-eqz v0, :cond_9

    .line 187
    .end local v0    # "retval":Z
    nop

    .line 188
    invoke-virtual {v1, v14}, Lgov/nist/javax/sip/stack/IOHandler;->getSocket(Ljava/lang/String;)Ljava/net/Socket;

    move-result-object v0

    move-object v10, v0

    move/from16 v12, v18

    .line 192
    .end local v18    # "retry_count":I
    .local v10, "clientSock":Ljava/net/Socket;
    .local v12, "retry_count":I
    :goto_1
    if-ge v12, v11, :cond_6

    .line 193
    if-nez v10, :cond_4

    .line 194
    :try_start_3
    iget-object v0, v1, Lgov/nist/javax/sip/stack/IOHandler;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v0}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 195
    iget-object v0, v1, Lgov/nist/javax/sip/stack/IOHandler;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v0}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 196
    iget-object v0, v1, Lgov/nist/javax/sip/stack/IOHandler;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v0}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 204
    :cond_3
    iget-object v0, v1, Lgov/nist/javax/sip/stack/IOHandler;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v0}, Lgov/nist/javax/sip/SipStackImpl;->getNetworkLayer()Lgov/nist/core/net/NetworkLayer;

    move-result-object v0

    invoke-interface {v0, v7, v8, v2}, Lgov/nist/core/net/NetworkLayer;->createSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;)Ljava/net/Socket;

    move-result-object v0

    move-object v10, v0

    .line 206
    invoke-virtual {v10}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 207
    .local v0, "outputStream":Ljava/io/OutputStream;
    invoke-direct {v1, v0, v4, v6}, Lgov/nist/javax/sip/stack/IOHandler;->writeChunks(Ljava/io/OutputStream;[BI)V

    .line 208
    invoke-virtual {v1, v14, v10}, Lgov/nist/javax/sip/stack/IOHandler;->putSocket(Ljava/lang/String;Ljava/net/Socket;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 209
    goto :goto_6

    .line 212
    .end local v0    # "outputStream":Ljava/io/OutputStream;
    :cond_4
    :try_start_4
    invoke-virtual {v10}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 213
    .restart local v0    # "outputStream":Ljava/io/OutputStream;
    invoke-direct {v1, v0, v4, v6}, Lgov/nist/javax/sip/stack/IOHandler;->writeChunks(Ljava/io/OutputStream;[BI)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 214
    move-object/from16 v16, v10

    goto :goto_5

    .line 232
    .end local v0    # "outputStream":Ljava/io/OutputStream;
    :catchall_0
    move-exception v0

    goto :goto_4

    .line 215
    :catch_0
    move-exception v0

    move-object v13, v0

    .line 216
    .local v13, "ex":Ljava/io/IOException;
    :try_start_5
    iget-object v0, v1, Lgov/nist/javax/sip/stack/IOHandler;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v0}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 217
    iget-object v0, v1, Lgov/nist/javax/sip/stack/IOHandler;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v0}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-object/from16 v16, v10

    .end local v10    # "clientSock":Ljava/net/Socket;
    .local v16, "clientSock":Ljava/net/Socket;
    :try_start_6
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v17, v13

    .end local v13    # "ex":Ljava/io/IOException;
    .local v17, "ex":Ljava/io/IOException;
    const-string v13, "IOException occured retryCount "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v0, v10}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto :goto_2

    .line 216
    .end local v16    # "clientSock":Ljava/net/Socket;
    .end local v17    # "ex":Ljava/io/IOException;
    .restart local v10    # "clientSock":Ljava/net/Socket;
    .restart local v13    # "ex":Ljava/io/IOException;
    :cond_5
    move-object/from16 v16, v10

    move-object/from16 v17, v13

    .line 221
    .end local v10    # "clientSock":Ljava/net/Socket;
    .end local v13    # "ex":Ljava/io/IOException;
    .restart local v16    # "clientSock":Ljava/net/Socket;
    .restart local v17    # "ex":Ljava/io/IOException;
    :goto_2
    invoke-virtual {v1, v14}, Lgov/nist/javax/sip/stack/IOHandler;->removeSocket(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 223
    :try_start_7
    invoke-virtual/range {v16 .. v16}, Ljava/net/Socket;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 225
    goto :goto_3

    .line 224
    :catch_1
    move-exception v0

    .line 226
    :goto_3
    const/4 v10, 0x0

    .line 227
    .end local v16    # "clientSock":Ljava/net/Socket;
    .restart local v10    # "clientSock":Ljava/net/Socket;
    nop

    .end local v17    # "ex":Ljava/io/IOException;
    add-int/lit8 v12, v12, 0x1

    .line 228
    goto/16 :goto_1

    .line 232
    .end local v10    # "clientSock":Ljava/net/Socket;
    .restart local v16    # "clientSock":Ljava/net/Socket;
    :catchall_1
    move-exception v0

    move-object/from16 v10, v16

    goto :goto_4

    .end local v16    # "clientSock":Ljava/net/Socket;
    .restart local v10    # "clientSock":Ljava/net/Socket;
    :catchall_2
    move-exception v0

    move-object/from16 v16, v10

    :goto_4
    iget-object v3, v1, Lgov/nist/javax/sip/stack/IOHandler;->ioSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v3}, Ljava/util/concurrent/Semaphore;->release()V

    .line 233
    throw v0

    .line 192
    :cond_6
    move-object/from16 v16, v10

    .line 232
    .end local v10    # "clientSock":Ljava/net/Socket;
    .restart local v16    # "clientSock":Ljava/net/Socket;
    :goto_5
    move-object/from16 v10, v16

    .end local v16    # "clientSock":Ljava/net/Socket;
    .restart local v10    # "clientSock":Ljava/net/Socket;
    :goto_6
    iget-object v0, v1, Lgov/nist/javax/sip/stack/IOHandler;->ioSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 233
    nop

    .line 235
    if-nez v10, :cond_8

    .line 237
    iget-object v0, v1, Lgov/nist/javax/sip/stack/IOHandler;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v0}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 238
    iget-object v0, v1, Lgov/nist/javax/sip/stack/IOHandler;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v0}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    iget-object v3, v1, Lgov/nist/javax/sip/stack/IOHandler;->socketTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 239
    iget-object v0, v1, Lgov/nist/javax/sip/stack/IOHandler;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v0}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v13, v20

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;)V

    goto :goto_7

    .line 237
    :cond_7
    move-object/from16 v13, v20

    .line 243
    :goto_7
    new-instance v0, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 246
    :cond_8
    return-object v10

    .line 182
    .end local v10    # "clientSock":Ljava/net/Socket;
    .end local v12    # "retry_count":I
    .local v0, "retval":Z
    .restart local v18    # "retry_count":I
    :cond_9
    :try_start_8
    new-instance v3, Ljava/io/IOException;

    const-string v5, "Could not acquire IO Semaphore after 10 seconds -- giving up "

    invoke-direct {v3, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v6    # "length":I
    .end local v11    # "max_retry":I
    .end local v14    # "key":Ljava/lang/String;
    .end local v18    # "retry_count":I
    .end local p0    # "this":Lgov/nist/javax/sip/stack/IOHandler;
    .end local p1    # "senderAddress":Ljava/net/InetAddress;
    .end local p2    # "receiverAddress":Ljava/net/InetAddress;
    .end local p3    # "contactPort":I
    .end local p4    # "transport":Ljava/lang/String;
    .end local p5    # "bytes":[B
    .end local p6    # "retry":Z
    .end local p7    # "messageChannel":Lgov/nist/javax/sip/stack/MessageChannel;
    throw v3
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_2

    .line 185
    .end local v0    # "retval":Z
    .restart local v6    # "length":I
    .restart local v11    # "max_retry":I
    .restart local v14    # "key":Ljava/lang/String;
    .restart local v18    # "retry_count":I
    .restart local p0    # "this":Lgov/nist/javax/sip/stack/IOHandler;
    .restart local p1    # "senderAddress":Ljava/net/InetAddress;
    .restart local p2    # "receiverAddress":Ljava/net/InetAddress;
    .restart local p3    # "contactPort":I
    .restart local p4    # "transport":Ljava/lang/String;
    .restart local p5    # "bytes":[B
    .restart local p6    # "retry":Z
    .restart local p7    # "messageChannel":Lgov/nist/javax/sip/stack/MessageChannel;
    :catch_2
    move-exception v0

    goto :goto_8

    :catch_3
    move-exception v0

    move-object/from16 v19, v12

    goto :goto_8

    .end local v18    # "retry_count":I
    .local v10, "retry_count":I
    :catch_4
    move-exception v0

    move/from16 v18, v10

    move-object/from16 v19, v12

    .line 186
    .end local v10    # "retry_count":I
    .local v0, "ex":Ljava/lang/InterruptedException;
    .restart local v18    # "retry_count":I
    :goto_8
    new-instance v3, Ljava/io/IOException;

    move-object/from16 v10, v19

    invoke-direct {v3, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 250
    .end local v0    # "ex":Ljava/lang/InterruptedException;
    .end local v14    # "key":Ljava/lang/String;
    .end local v18    # "retry_count":I
    .restart local v10    # "retry_count":I
    :cond_a
    move/from16 v18, v10

    move-object v10, v12

    .end local v10    # "retry_count":I
    .restart local v18    # "retry_count":I
    sget-object v0, Lgov/nist/javax/sip/stack/IOHandler;->TLS:Ljava/lang/String;

    invoke-virtual {v9, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_11

    .line 251
    invoke-static/range {p2 .. p3}, Lgov/nist/javax/sip/stack/IOHandler;->makeKey(Ljava/net/InetAddress;I)Ljava/lang/String;

    move-result-object v12

    .line 253
    .local v12, "key":Ljava/lang/String;
    :try_start_9
    iget-object v0, v1, Lgov/nist/javax/sip/stack/IOHandler;->ioSemaphore:Ljava/util/concurrent/Semaphore;

    sget-object v14, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_8

    move-object/from16 v19, v10

    const-wide/16 v9, 0x2710

    :try_start_a
    invoke-virtual {v0, v9, v10, v14}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_7

    .line 254
    .local v0, "retval":Z
    if-eqz v0, :cond_10

    .line 258
    .end local v0    # "retval":Z
    nop

    .line 259
    invoke-virtual {v1, v12}, Lgov/nist/javax/sip/stack/IOHandler;->getSocket(Ljava/lang/String;)Ljava/net/Socket;

    move-result-object v0

    move-object v9, v0

    move/from16 v10, v18

    .line 262
    .end local v18    # "retry_count":I
    .local v9, "clientSock":Ljava/net/Socket;
    .restart local v10    # "retry_count":I
    :goto_9
    if-ge v10, v11, :cond_e

    .line 263
    if-nez v9, :cond_c

    .line 264
    :try_start_b
    iget-object v0, v1, Lgov/nist/javax/sip/stack/IOHandler;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v0}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 265
    iget-object v0, v1, Lgov/nist/javax/sip/stack/IOHandler;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v0}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 266
    iget-object v0, v1, Lgov/nist/javax/sip/stack/IOHandler;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v0}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 269
    :cond_b
    iget-object v0, v1, Lgov/nist/javax/sip/stack/IOHandler;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v0}, Lgov/nist/javax/sip/SipStackImpl;->getNetworkLayer()Lgov/nist/core/net/NetworkLayer;

    move-result-object v0

    invoke-interface {v0, v7, v8, v2}, Lgov/nist/core/net/NetworkLayer;->createSSLSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;)Ljavax/net/ssl/SSLSocket;

    move-result-object v0

    move-object v9, v0

    .line 271
    move-object v0, v9

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    .line 272
    .local v0, "sslsock":Ljavax/net/ssl/SSLSocket;
    new-instance v3, Lgov/nist/javax/sip/stack/HandshakeCompletedListenerImpl;

    move-object/from16 v5, p7

    check-cast v5, Lgov/nist/javax/sip/stack/TLSMessageChannel;

    invoke-direct {v3, v5}, Lgov/nist/javax/sip/stack/HandshakeCompletedListenerImpl;-><init>(Lgov/nist/javax/sip/stack/TLSMessageChannel;)V

    .line 274
    .local v3, "listner":Ljavax/net/ssl/HandshakeCompletedListener;
    move-object/from16 v5, p7

    check-cast v5, Lgov/nist/javax/sip/stack/TLSMessageChannel;

    .line 275
    invoke-virtual {v5, v3}, Lgov/nist/javax/sip/stack/TLSMessageChannel;->setHandshakeCompletedListener(Ljavax/net/ssl/HandshakeCompletedListener;)V

    .line 276
    invoke-virtual {v0, v3}, Ljavax/net/ssl/SSLSocket;->addHandshakeCompletedListener(Ljavax/net/ssl/HandshakeCompletedListener;)V

    .line 277
    iget-object v5, v1, Lgov/nist/javax/sip/stack/IOHandler;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v5}, Lgov/nist/javax/sip/SipStackImpl;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljavax/net/ssl/SSLSocket;->setEnabledProtocols([Ljava/lang/String;)V

    .line 278
    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    .line 280
    invoke-virtual {v9}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    .line 281
    .local v5, "outputStream":Ljava/io/OutputStream;
    invoke-direct {v1, v5, v4, v6}, Lgov/nist/javax/sip/stack/IOHandler;->writeChunks(Ljava/io/OutputStream;[BI)V

    .line 282
    invoke-virtual {v1, v12, v9}, Lgov/nist/javax/sip/stack/IOHandler;->putSocket(Ljava/lang/String;Ljava/net/Socket;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 283
    goto :goto_c

    .line 286
    .end local v0    # "sslsock":Ljavax/net/ssl/SSLSocket;
    .end local v3    # "listner":Ljavax/net/ssl/HandshakeCompletedListener;
    .end local v5    # "outputStream":Ljava/io/OutputStream;
    :cond_c
    :try_start_c
    invoke-virtual {v9}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 287
    .local v0, "outputStream":Ljava/io/OutputStream;
    invoke-direct {v1, v0, v4, v6}, Lgov/nist/javax/sip/stack/IOHandler;->writeChunks(Ljava/io/OutputStream;[BI)V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_5
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 288
    goto :goto_c

    .line 305
    .end local v0    # "outputStream":Ljava/io/OutputStream;
    :catchall_3
    move-exception v0

    goto :goto_b

    .line 289
    :catch_5
    move-exception v0

    move-object v14, v0

    .line 290
    .local v14, "ex":Ljava/io/IOException;
    :try_start_d
    iget-object v0, v1, Lgov/nist/javax/sip/stack/IOHandler;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v0}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 291
    iget-object v0, v1, Lgov/nist/javax/sip/stack/IOHandler;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v0}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    invoke-interface {v0, v14}, Lgov/nist/core/StackLogger;->logException(Ljava/lang/Throwable;)V

    .line 294
    :cond_d
    invoke-virtual {v1, v12}, Lgov/nist/javax/sip/stack/IOHandler;->removeSocket(Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    .line 296
    :try_start_e
    invoke-virtual {v9}, Ljava/net/Socket;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_6
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    .line 298
    goto :goto_a

    .line 297
    :catch_6
    move-exception v0

    .line 299
    :goto_a
    const/4 v9, 0x0

    .line 300
    nop

    .end local v14    # "ex":Ljava/io/IOException;
    add-int/lit8 v10, v10, 0x1

    .line 301
    goto/16 :goto_9

    .line 305
    :goto_b
    iget-object v3, v1, Lgov/nist/javax/sip/stack/IOHandler;->ioSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v3}, Ljava/util/concurrent/Semaphore;->release()V

    .line 306
    throw v0

    .line 305
    :cond_e
    :goto_c
    iget-object v0, v1, Lgov/nist/javax/sip/stack/IOHandler;->ioSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 306
    nop

    .line 307
    if-eqz v9, :cond_f

    .line 311
    return-object v9

    .line 308
    :cond_f
    new-instance v0, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 255
    .end local v9    # "clientSock":Ljava/net/Socket;
    .end local v10    # "retry_count":I
    .local v0, "retval":Z
    .restart local v18    # "retry_count":I
    :cond_10
    :try_start_f
    new-instance v3, Ljava/io/IOException;

    const-string v5, "Timeout acquiring IO SEM"

    invoke-direct {v3, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v6    # "length":I
    .end local v11    # "max_retry":I
    .end local v12    # "key":Ljava/lang/String;
    .end local v18    # "retry_count":I
    .end local p0    # "this":Lgov/nist/javax/sip/stack/IOHandler;
    .end local p1    # "senderAddress":Ljava/net/InetAddress;
    .end local p2    # "receiverAddress":Ljava/net/InetAddress;
    .end local p3    # "contactPort":I
    .end local p4    # "transport":Ljava/lang/String;
    .end local p5    # "bytes":[B
    .end local p6    # "retry":Z
    .end local p7    # "messageChannel":Lgov/nist/javax/sip/stack/MessageChannel;
    throw v3
    :try_end_f
    .catch Ljava/lang/InterruptedException; {:try_start_f .. :try_end_f} :catch_7

    .line 256
    .end local v0    # "retval":Z
    .restart local v6    # "length":I
    .restart local v11    # "max_retry":I
    .restart local v12    # "key":Ljava/lang/String;
    .restart local v18    # "retry_count":I
    .restart local p0    # "this":Lgov/nist/javax/sip/stack/IOHandler;
    .restart local p1    # "senderAddress":Ljava/net/InetAddress;
    .restart local p2    # "receiverAddress":Ljava/net/InetAddress;
    .restart local p3    # "contactPort":I
    .restart local p4    # "transport":Ljava/lang/String;
    .restart local p5    # "bytes":[B
    .restart local p6    # "retry":Z
    .restart local p7    # "messageChannel":Lgov/nist/javax/sip/stack/MessageChannel;
    :catch_7
    move-exception v0

    goto :goto_d

    :catch_8
    move-exception v0

    move-object/from16 v19, v10

    .line 257
    .local v0, "ex":Ljava/lang/InterruptedException;
    :goto_d
    new-instance v3, Ljava/io/IOException;

    move-object/from16 v10, v19

    invoke-direct {v3, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 315
    .end local v0    # "ex":Ljava/lang/InterruptedException;
    .end local v12    # "key":Ljava/lang/String;
    :cond_11
    iget-object v0, v1, Lgov/nist/javax/sip/stack/IOHandler;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v0}, Lgov/nist/javax/sip/SipStackImpl;->getNetworkLayer()Lgov/nist/core/net/NetworkLayer;

    move-result-object v0

    invoke-interface {v0}, Lgov/nist/core/net/NetworkLayer;->createDatagramSocket()Ljava/net/DatagramSocket;

    move-result-object v0

    .line 316
    .local v0, "datagramSock":Ljava/net/DatagramSocket;
    invoke-virtual {v0, v7, v8}, Ljava/net/DatagramSocket;->connect(Ljava/net/InetAddress;I)V

    .line 317
    new-instance v3, Ljava/net/DatagramPacket;

    const/4 v5, 0x0

    invoke-direct/range {v3 .. v8}, Ljava/net/DatagramPacket;-><init>([BIILjava/net/InetAddress;I)V

    .line 319
    .local v3, "dgPacket":Ljava/net/DatagramPacket;
    invoke-virtual {v0, v3}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    .line 320
    invoke-virtual {v0}, Ljava/net/DatagramSocket;->close()V

    .line 321
    const/4 v4, 0x0

    return-object v4
.end method
