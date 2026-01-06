.class public Lorg/apache/http/impl/conn/DefaultClientConnectionOperator;
.super Ljava/lang/Object;
.source "DefaultClientConnectionOperator.java"

# interfaces
.implements Lorg/apache/http/conn/ClientConnectionOperator;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final staticPlainSocketFactory:Lorg/apache/http/conn/scheme/PlainSocketFactory;


# instance fields
.field protected schemeRegistry:Lorg/apache/http/conn/scheme/SchemeRegistry;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 78
    new-instance v0, Lorg/apache/http/conn/scheme/PlainSocketFactory;

    invoke-direct {v0}, Lorg/apache/http/conn/scheme/PlainSocketFactory;-><init>()V

    sput-object v0, Lorg/apache/http/impl/conn/DefaultClientConnectionOperator;->staticPlainSocketFactory:Lorg/apache/http/conn/scheme/PlainSocketFactory;

    return-void
.end method

.method public constructor <init>(Lorg/apache/http/conn/scheme/SchemeRegistry;)V
    .locals 2
    .param p1, "schemes"    # Lorg/apache/http/conn/scheme/SchemeRegistry;

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    if-eqz p1, :cond_0

    .line 94
    iput-object p1, p0, Lorg/apache/http/impl/conn/DefaultClientConnectionOperator;->schemeRegistry:Lorg/apache/http/conn/scheme/SchemeRegistry;

    .line 95
    return-void

    .line 91
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Scheme registry must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public createConnection()Lorg/apache/http/conn/OperatedClientConnection;
    .locals 1

    .line 100
    new-instance v0, Lorg/apache/http/impl/conn/DefaultClientConnection;

    invoke-direct {v0}, Lorg/apache/http/impl/conn/DefaultClientConnection;-><init>()V

    return-object v0
.end method

.method public openConnection(Lorg/apache/http/conn/OperatedClientConnection;Lorg/apache/http/HttpHost;Ljava/net/InetAddress;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/params/HttpParams;)V
    .locals 17
    .param p1, "conn"    # Lorg/apache/http/conn/OperatedClientConnection;
    .param p2, "target"    # Lorg/apache/http/HttpHost;
    .param p3, "local"    # Ljava/net/InetAddress;
    .param p4, "context"    # Lorg/apache/http/protocol/HttpContext;
    .param p5, "params"    # Lorg/apache/http/params/HttpParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 112
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    if-eqz v2, :cond_b

    .line 116
    if-eqz v3, :cond_a

    .line 122
    if-eqz p5, :cond_9

    .line 126
    invoke-interface {v2}, Lorg/apache/http/conn/OperatedClientConnection;->isOpen()Z

    move-result v0

    if-nez v0, :cond_8

    .line 131
    iget-object v0, v1, Lorg/apache/http/impl/conn/DefaultClientConnectionOperator;->schemeRegistry:Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-virtual {v3}, Lorg/apache/http/HttpHost;->getSchemeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/apache/http/conn/scheme/SchemeRegistry;->getScheme(Ljava/lang/String;)Lorg/apache/http/conn/scheme/Scheme;

    move-result-object v11

    .line 132
    .local v11, "schm":Lorg/apache/http/conn/scheme/Scheme;
    invoke-virtual {v11}, Lorg/apache/http/conn/scheme/Scheme;->getSocketFactory()Lorg/apache/http/conn/scheme/SocketFactory;

    move-result-object v12

    .line 135
    .local v12, "sf":Lorg/apache/http/conn/scheme/SocketFactory;
    instance-of v0, v12, Lorg/apache/http/conn/scheme/LayeredSocketFactory;

    if-eqz v0, :cond_0

    .line 136
    sget-object v0, Lorg/apache/http/impl/conn/DefaultClientConnectionOperator;->staticPlainSocketFactory:Lorg/apache/http/conn/scheme/PlainSocketFactory;

    .line 137
    .local v0, "plain_sf":Lorg/apache/http/conn/scheme/SocketFactory;
    move-object v4, v12

    check-cast v4, Lorg/apache/http/conn/scheme/LayeredSocketFactory;

    move-object v13, v4

    move-object v4, v0

    .local v4, "layered_sf":Lorg/apache/http/conn/scheme/LayeredSocketFactory;
    goto :goto_0

    .line 139
    .end local v0    # "plain_sf":Lorg/apache/http/conn/scheme/SocketFactory;
    .end local v4    # "layered_sf":Lorg/apache/http/conn/scheme/LayeredSocketFactory;
    :cond_0
    move-object v0, v12

    .line 140
    .restart local v0    # "plain_sf":Lorg/apache/http/conn/scheme/SocketFactory;
    const/4 v4, 0x0

    move-object v13, v4

    move-object v4, v0

    .line 142
    .end local v0    # "plain_sf":Lorg/apache/http/conn/scheme/SocketFactory;
    .local v4, "plain_sf":Lorg/apache/http/conn/scheme/SocketFactory;
    .local v13, "layered_sf":Lorg/apache/http/conn/scheme/LayeredSocketFactory;
    :goto_0
    invoke-virtual {v3}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v14

    .line 144
    .local v14, "addresses":[Ljava/net/InetAddress;
    const/4 v0, 0x0

    move v15, v0

    .local v15, "i":I
    :goto_1
    array-length v0, v14

    if-ge v15, v0, :cond_7

    .line 145
    invoke-interface {v4}, Lorg/apache/http/conn/scheme/SocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v5

    .line 146
    .local v5, "sock":Ljava/net/Socket;
    invoke-interface {v2, v5, v3}, Lorg/apache/http/conn/OperatedClientConnection;->opening(Ljava/net/Socket;Lorg/apache/http/HttpHost;)V

    .line 149
    const/4 v6, 0x1

    :try_start_0
    aget-object v0, v14, v15
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_0 .. :try_end_0} :catch_5

    .line 150
    :try_start_1
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    .line 151
    invoke-virtual {v3}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v7

    invoke-virtual {v11, v7}, Lorg/apache/http/conn/scheme/Scheme;->resolvePort(I)I

    move-result v7
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_1 .. :try_end_1} :catch_5

    .line 149
    const/4 v9, 0x0

    move-object/from16 v8, p3

    move-object/from16 v10, p5

    move/from16 v16, v15

    move v15, v6

    move-object v6, v0

    .end local v15    # "i":I
    .local v16, "i":I
    :try_start_2
    invoke-interface/range {v4 .. v10}, Lorg/apache/http/conn/scheme/SocketFactory;->connectSocket(Ljava/net/Socket;Ljava/lang/String;ILjava/net/InetAddress;ILorg/apache/http/params/HttpParams;)Ljava/net/Socket;

    move-result-object v0

    .line 153
    .local v0, "connsock":Ljava/net/Socket;
    if-eq v5, v0, :cond_1

    .line 154
    move-object v5, v0

    .line 155
    invoke-interface {v2, v5, v3}, Lorg/apache/http/conn/OperatedClientConnection;->opening(Ljava/net/Socket;Lorg/apache/http/HttpHost;)V
    :try_end_2
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_2 .. :try_end_2} :catch_2

    .line 168
    :cond_1
    move-object/from16 v6, p4

    :try_start_3
    invoke-virtual {v1, v5, v6, v10}, Lorg/apache/http/impl/conn/DefaultClientConnectionOperator;->prepareSocket(Ljava/net/Socket;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/params/HttpParams;)V

    .line 169
    if-eqz v13, :cond_3

    .line 170
    nop

    .line 171
    invoke-virtual {v3}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v7

    .line 172
    invoke-virtual {v3}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v8

    invoke-virtual {v11, v8}, Lorg/apache/http/conn/scheme/Scheme;->resolvePort(I)I

    move-result v8

    .line 170
    invoke-interface {v13, v5, v7, v8, v15}, Lorg/apache/http/conn/scheme/LayeredSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v7

    .line 174
    .local v7, "layeredsock":Ljava/net/Socket;
    if-eq v7, v5, :cond_2

    .line 175
    invoke-interface {v2, v7, v3}, Lorg/apache/http/conn/OperatedClientConnection;->opening(Ljava/net/Socket;Lorg/apache/http/HttpHost;)V

    .line 177
    :cond_2
    invoke-interface {v12, v7}, Lorg/apache/http/conn/scheme/SocketFactory;->isSecure(Ljava/net/Socket;)Z

    move-result v8

    invoke-interface {v2, v8, v10}, Lorg/apache/http/conn/OperatedClientConnection;->openCompleted(ZLorg/apache/http/params/HttpParams;)V

    .line 178
    .end local v7    # "layeredsock":Ljava/net/Socket;
    goto :goto_2

    .line 179
    :cond_3
    invoke-interface {v12, v5}, Lorg/apache/http/conn/scheme/SocketFactory;->isSecure(Ljava/net/Socket;)Z

    move-result v7

    invoke-interface {v2, v7, v10}, Lorg/apache/http/conn/OperatedClientConnection;->openCompleted(ZLorg/apache/http/params/HttpParams;)V
    :try_end_3
    .catch Ljava/net/SocketException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_3 .. :try_end_3} :catch_0

    .line 181
    :goto_2
    goto/16 :goto_8

    .line 196
    .end local v0    # "connsock":Ljava/net/Socket;
    :catch_0
    move-exception v0

    goto :goto_4

    .line 184
    :catch_1
    move-exception v0

    goto :goto_3

    .line 196
    :catch_2
    move-exception v0

    move-object/from16 v6, p4

    goto :goto_4

    .line 184
    :catch_3
    move-exception v0

    move-object/from16 v6, p4

    :goto_3
    move/from16 v8, v16

    goto :goto_5

    .end local v16    # "i":I
    .restart local v15    # "i":I
    :catch_4
    move-exception v0

    move-object/from16 v10, p5

    move/from16 v16, v15

    move v15, v6

    move-object/from16 v6, p4

    move/from16 v8, v16

    .end local v15    # "i":I
    .restart local v16    # "i":I
    goto :goto_5

    .line 196
    .end local v16    # "i":I
    .restart local v15    # "i":I
    :catch_5
    move-exception v0

    move-object/from16 v10, p5

    move/from16 v16, v15

    move v15, v6

    move-object/from16 v6, p4

    .line 197
    .end local v15    # "i":I
    .local v0, "ex":Lorg/apache/http/conn/ConnectTimeoutException;
    .restart local v16    # "i":I
    :goto_4
    array-length v7, v14

    sub-int/2addr v7, v15

    move/from16 v8, v16

    .end local v16    # "i":I
    .local v8, "i":I
    if-eq v8, v7, :cond_4

    goto :goto_7

    .line 198
    :cond_4
    throw v0

    .line 184
    .end local v0    # "ex":Lorg/apache/http/conn/ConnectTimeoutException;
    .end local v8    # "i":I
    .restart local v15    # "i":I
    :catch_6
    move-exception v0

    move-object/from16 v10, p5

    move v8, v15

    move v15, v6

    move-object/from16 v6, p4

    .line 185
    .end local v15    # "i":I
    .local v0, "ex":Ljava/net/SocketException;
    .restart local v8    # "i":I
    :goto_5
    array-length v7, v14

    sub-int/2addr v7, v15

    if-ne v8, v7, :cond_6

    .line 187
    instance-of v7, v0, Ljava/net/ConnectException;

    if-eqz v7, :cond_5

    .line 188
    move-object v7, v0

    check-cast v7, Ljava/net/ConnectException;

    .local v7, "cause":Ljava/net/ConnectException;
    goto :goto_6

    .line 190
    .end local v7    # "cause":Ljava/net/ConnectException;
    :cond_5
    new-instance v7, Ljava/net/ConnectException;

    invoke-virtual {v0}, Ljava/net/SocketException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9}, Ljava/net/ConnectException;-><init>(Ljava/lang/String;)V

    .line 191
    .restart local v7    # "cause":Ljava/net/ConnectException;
    invoke-virtual {v7, v0}, Ljava/net/ConnectException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 193
    :goto_6
    new-instance v9, Lorg/apache/http/conn/HttpHostConnectException;

    invoke-direct {v9, v3, v7}, Lorg/apache/http/conn/HttpHostConnectException;-><init>(Lorg/apache/http/HttpHost;Ljava/net/ConnectException;)V

    throw v9

    .line 200
    .end local v0    # "ex":Ljava/net/SocketException;
    .end local v7    # "cause":Ljava/net/ConnectException;
    :cond_6
    nop

    .line 144
    .end local v5    # "sock":Ljava/net/Socket;
    :goto_7
    add-int/lit8 v15, v8, 0x1

    .end local v8    # "i":I
    .restart local v15    # "i":I
    goto/16 :goto_1

    :cond_7
    move-object/from16 v6, p4

    move-object/from16 v10, p5

    move v8, v15

    .line 202
    .end local v15    # "i":I
    :goto_8
    return-void

    .line 127
    .end local v4    # "plain_sf":Lorg/apache/http/conn/scheme/SocketFactory;
    .end local v11    # "schm":Lorg/apache/http/conn/scheme/Scheme;
    .end local v12    # "sf":Lorg/apache/http/conn/scheme/SocketFactory;
    .end local v13    # "layered_sf":Lorg/apache/http/conn/scheme/LayeredSocketFactory;
    .end local v14    # "addresses":[Ljava/net/InetAddress;
    :cond_8
    move-object/from16 v6, p4

    move-object/from16 v10, p5

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v4, "Connection must not be open."

    invoke-direct {v0, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 123
    :cond_9
    move-object/from16 v6, p4

    move-object/from16 v10, p5

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v4, "Parameters must not be null."

    invoke-direct {v0, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 117
    :cond_a
    move-object/from16 v6, p4

    move-object/from16 v10, p5

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v4, "Target host must not be null."

    invoke-direct {v0, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 113
    :cond_b
    move-object/from16 v6, p4

    move-object/from16 v10, p5

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v4, "Connection must not be null."

    invoke-direct {v0, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected prepareSocket(Ljava/net/Socket;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/params/HttpParams;)V
    .locals 2
    .param p1, "sock"    # Ljava/net/Socket;
    .param p2, "context"    # Lorg/apache/http/protocol/HttpContext;
    .param p3, "params"    # Lorg/apache/http/params/HttpParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 269
    invoke-static {p3}, Lorg/apache/http/params/HttpConnectionParams;->getTcpNoDelay(Lorg/apache/http/params/HttpParams;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    .line 270
    invoke-static {p3}, Lorg/apache/http/params/HttpConnectionParams;->getSoTimeout(Lorg/apache/http/params/HttpParams;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 272
    invoke-static {p3}, Lorg/apache/http/params/HttpConnectionParams;->getLinger(Lorg/apache/http/params/HttpParams;)I

    move-result v0

    .line 273
    .local v0, "linger":I
    if-ltz v0, :cond_1

    .line 274
    if-lez v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1, v1, v0}, Ljava/net/Socket;->setSoLinger(ZI)V

    .line 277
    :cond_1
    return-void
.end method

.method public updateSecureConnection(Lorg/apache/http/conn/OperatedClientConnection;Lorg/apache/http/HttpHost;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/params/HttpParams;)V
    .locals 6
    .param p1, "conn"    # Lorg/apache/http/conn/OperatedClientConnection;
    .param p2, "target"    # Lorg/apache/http/HttpHost;
    .param p3, "context"    # Lorg/apache/http/protocol/HttpContext;
    .param p4, "params"    # Lorg/apache/http/params/HttpParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 213
    if-eqz p1, :cond_4

    .line 217
    if-eqz p2, :cond_3

    .line 222
    if-eqz p4, :cond_2

    .line 226
    invoke-interface {p1}, Lorg/apache/http/conn/OperatedClientConnection;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 231
    iget-object v0, p0, Lorg/apache/http/impl/conn/DefaultClientConnectionOperator;->schemeRegistry:Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-virtual {p2}, Lorg/apache/http/HttpHost;->getSchemeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/http/conn/scheme/SchemeRegistry;->getScheme(Ljava/lang/String;)Lorg/apache/http/conn/scheme/Scheme;

    move-result-object v0

    .line 232
    .local v0, "schm":Lorg/apache/http/conn/scheme/Scheme;
    invoke-virtual {v0}, Lorg/apache/http/conn/scheme/Scheme;->getSocketFactory()Lorg/apache/http/conn/scheme/SocketFactory;

    move-result-object v1

    instance-of v1, v1, Lorg/apache/http/conn/scheme/LayeredSocketFactory;

    if-eqz v1, :cond_0

    .line 238
    invoke-virtual {v0}, Lorg/apache/http/conn/scheme/Scheme;->getSocketFactory()Lorg/apache/http/conn/scheme/SocketFactory;

    move-result-object v1

    check-cast v1, Lorg/apache/http/conn/scheme/LayeredSocketFactory;

    .line 241
    .local v1, "lsf":Lorg/apache/http/conn/scheme/LayeredSocketFactory;
    nop

    .line 242
    :try_start_0
    invoke-interface {p1}, Lorg/apache/http/conn/OperatedClientConnection;->getSocket()Ljava/net/Socket;

    move-result-object v2

    invoke-virtual {p2}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v4

    invoke-virtual {v0, v4}, Lorg/apache/http/conn/scheme/Scheme;->resolvePort(I)I

    move-result v4

    const/4 v5, 0x1

    invoke-interface {v1, v2, v3, v4, v5}, Lorg/apache/http/conn/scheme/LayeredSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v2
    :try_end_0
    .catch Ljava/net/ConnectException; {:try_start_0 .. :try_end_0} :catch_0

    .line 245
    .local v2, "sock":Ljava/net/Socket;
    nop

    .line 246
    invoke-virtual {p0, v2, p3, p4}, Lorg/apache/http/impl/conn/DefaultClientConnectionOperator;->prepareSocket(Ljava/net/Socket;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/params/HttpParams;)V

    .line 247
    invoke-interface {v1, v2}, Lorg/apache/http/conn/scheme/LayeredSocketFactory;->isSecure(Ljava/net/Socket;)Z

    move-result v3

    invoke-interface {p1, v2, p2, v3, p4}, Lorg/apache/http/conn/OperatedClientConnection;->update(Ljava/net/Socket;Lorg/apache/http/HttpHost;ZLorg/apache/http/params/HttpParams;)V

    .line 250
    return-void

    .line 243
    .end local v2    # "sock":Ljava/net/Socket;
    :catch_0
    move-exception v2

    .line 244
    .local v2, "ex":Ljava/net/ConnectException;
    new-instance v3, Lorg/apache/http/conn/HttpHostConnectException;

    invoke-direct {v3, p2, v2}, Lorg/apache/http/conn/HttpHostConnectException;-><init>(Lorg/apache/http/HttpHost;Ljava/net/ConnectException;)V

    throw v3

    .line 233
    .end local v1    # "lsf":Lorg/apache/http/conn/scheme/LayeredSocketFactory;
    .end local v2    # "ex":Ljava/net/ConnectException;
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Target scheme ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 234
    invoke-virtual {v0}, Lorg/apache/http/conn/scheme/Scheme;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") must have layered socket factory."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 227
    .end local v0    # "schm":Lorg/apache/http/conn/scheme/Scheme;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Connection must be open."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 223
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parameters must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 218
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Target host must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 214
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Connection must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
