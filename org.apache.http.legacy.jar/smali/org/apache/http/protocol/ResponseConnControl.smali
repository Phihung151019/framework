.class public Lorg/apache/http/protocol/ResponseConnControl;
.super Ljava/lang/Object;
.source "ResponseConnControl.java"

# interfaces
.implements Lorg/apache/http/HttpResponseInterceptor;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    return-void
.end method


# virtual methods
.method public process(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)V
    .locals 9
    .param p1, "response"    # Lorg/apache/http/HttpResponse;
    .param p2, "context"    # Lorg/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 69
    if-eqz p1, :cond_6

    .line 72
    if-eqz p2, :cond_5

    .line 76
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    .line 77
    .local v0, "status":I
    const/16 v1, 0x190

    const-string v2, "Close"

    const-string v3, "Connection"

    if-eq v0, v1, :cond_4

    const/16 v1, 0x198

    if-eq v0, v1, :cond_4

    const/16 v1, 0x19b

    if-eq v0, v1, :cond_4

    const/16 v1, 0x19d

    if-eq v0, v1, :cond_4

    const/16 v1, 0x19e

    if-eq v0, v1, :cond_4

    const/16 v1, 0x1f7

    if-eq v0, v1, :cond_4

    const/16 v1, 0x1f5

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 89
    :cond_0
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    .line 90
    .local v1, "entity":Lorg/apache/http/HttpEntity;
    if-eqz v1, :cond_2

    .line 91
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/StatusLine;->getProtocolVersion()Lorg/apache/http/ProtocolVersion;

    move-result-object v4

    .line 92
    .local v4, "ver":Lorg/apache/http/ProtocolVersion;
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-gez v5, :cond_2

    .line 93
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->isChunked()Z

    move-result v5

    if-eqz v5, :cond_1

    sget-object v5, Lorg/apache/http/HttpVersion;->HTTP_1_0:Lorg/apache/http/HttpVersion;

    invoke-virtual {v4, v5}, Lorg/apache/http/ProtocolVersion;->lessEquals(Lorg/apache/http/ProtocolVersion;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 94
    :cond_1
    invoke-interface {p1, v3, v2}, Lorg/apache/http/HttpResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    return-void

    .line 99
    .end local v4    # "ver":Lorg/apache/http/ProtocolVersion;
    :cond_2
    nop

    .line 100
    const-string v2, "http.request"

    invoke-interface {p2, v2}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/http/HttpRequest;

    .line 101
    .local v2, "request":Lorg/apache/http/HttpRequest;
    if-eqz v2, :cond_3

    .line 102
    invoke-interface {v2, v3}, Lorg/apache/http/HttpRequest;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v4

    .line 103
    .local v4, "header":Lorg/apache/http/Header;
    if-eqz v4, :cond_3

    .line 104
    invoke-interface {v4}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v3, v5}, Lorg/apache/http/HttpResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    .end local v4    # "header":Lorg/apache/http/Header;
    :cond_3
    return-void

    .line 84
    .end local v1    # "entity":Lorg/apache/http/HttpEntity;
    .end local v2    # "request":Lorg/apache/http/HttpRequest;
    :cond_4
    :goto_0
    invoke-interface {p1, v3, v2}, Lorg/apache/http/HttpResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    return-void

    .line 73
    .end local v0    # "status":I
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP context may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP response may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
