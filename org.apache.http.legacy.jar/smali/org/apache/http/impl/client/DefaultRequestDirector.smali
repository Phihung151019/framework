.class public Lorg/apache/http/impl/client/DefaultRequestDirector;
.super Ljava/lang/Object;
.source "DefaultRequestDirector.java"

# interfaces
.implements Lorg/apache/http/client/RequestDirector;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static cleartextTrafficPermittedMethod:Ljava/lang/reflect/Method;

.field private static networkSecurityPolicy:Ljava/lang/Object;


# instance fields
.field protected final connManager:Lorg/apache/http/conn/ClientConnectionManager;

.field protected final httpProcessor:Lorg/apache/http/protocol/HttpProcessor;

.field protected final keepAliveStrategy:Lorg/apache/http/conn/ConnectionKeepAliveStrategy;

.field private final log:Lorg/apache/commons/logging/Log;

.field protected managedConn:Lorg/apache/http/conn/ManagedClientConnection;

.field private maxRedirects:I

.field protected final params:Lorg/apache/http/params/HttpParams;

.field private final proxyAuthHandler:Lorg/apache/http/client/AuthenticationHandler;

.field private final proxyAuthState:Lorg/apache/http/auth/AuthState;

.field private redirectCount:I

.field protected final redirectHandler:Lorg/apache/http/client/RedirectHandler;

.field protected final requestExec:Lorg/apache/http/protocol/HttpRequestExecutor;

.field protected final retryHandler:Lorg/apache/http/client/HttpRequestRetryHandler;

.field protected final reuseStrategy:Lorg/apache/http/ConnectionReuseStrategy;

.field protected final routePlanner:Lorg/apache/http/conn/routing/HttpRoutePlanner;

.field private final targetAuthHandler:Lorg/apache/http/client/AuthenticationHandler;

.field private final targetAuthState:Lorg/apache/http/auth/AuthState;

.field private final userTokenHandler:Lorg/apache/http/client/UserTokenHandler;


# direct methods
.method public constructor <init>(Lorg/apache/http/protocol/HttpRequestExecutor;Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/ConnectionReuseStrategy;Lorg/apache/http/conn/ConnectionKeepAliveStrategy;Lorg/apache/http/conn/routing/HttpRoutePlanner;Lorg/apache/http/protocol/HttpProcessor;Lorg/apache/http/client/HttpRequestRetryHandler;Lorg/apache/http/client/RedirectHandler;Lorg/apache/http/client/AuthenticationHandler;Lorg/apache/http/client/AuthenticationHandler;Lorg/apache/http/client/UserTokenHandler;Lorg/apache/http/params/HttpParams;)V
    .locals 3
    .param p1, "requestExec"    # Lorg/apache/http/protocol/HttpRequestExecutor;
    .param p2, "conman"    # Lorg/apache/http/conn/ClientConnectionManager;
    .param p3, "reustrat"    # Lorg/apache/http/ConnectionReuseStrategy;
    .param p4, "kastrat"    # Lorg/apache/http/conn/ConnectionKeepAliveStrategy;
    .param p5, "rouplan"    # Lorg/apache/http/conn/routing/HttpRoutePlanner;
    .param p6, "httpProcessor"    # Lorg/apache/http/protocol/HttpProcessor;
    .param p7, "retryHandler"    # Lorg/apache/http/client/HttpRequestRetryHandler;
    .param p8, "redirectHandler"    # Lorg/apache/http/client/RedirectHandler;
    .param p9, "targetAuthHandler"    # Lorg/apache/http/client/AuthenticationHandler;
    .param p10, "proxyAuthHandler"    # Lorg/apache/http/client/AuthenticationHandler;
    .param p11, "userTokenHandler"    # Lorg/apache/http/client/UserTokenHandler;
    .param p12, "params"    # Lorg/apache/http/params/HttpParams;

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    .line 181
    if-eqz p1, :cond_b

    .line 185
    if-eqz p2, :cond_a

    .line 189
    if-eqz p3, :cond_9

    .line 193
    if-eqz p4, :cond_8

    .line 197
    if-eqz p5, :cond_7

    .line 201
    if-eqz p6, :cond_6

    .line 205
    if-eqz p7, :cond_5

    .line 209
    if-eqz p8, :cond_4

    .line 213
    if-eqz p9, :cond_3

    .line 217
    if-eqz p10, :cond_2

    .line 221
    if-eqz p11, :cond_1

    .line 225
    if-eqz p12, :cond_0

    .line 229
    iput-object p1, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->requestExec:Lorg/apache/http/protocol/HttpRequestExecutor;

    .line 230
    iput-object p2, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->connManager:Lorg/apache/http/conn/ClientConnectionManager;

    .line 231
    iput-object p3, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->reuseStrategy:Lorg/apache/http/ConnectionReuseStrategy;

    .line 232
    iput-object p4, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->keepAliveStrategy:Lorg/apache/http/conn/ConnectionKeepAliveStrategy;

    .line 233
    iput-object p5, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->routePlanner:Lorg/apache/http/conn/routing/HttpRoutePlanner;

    .line 234
    iput-object p6, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->httpProcessor:Lorg/apache/http/protocol/HttpProcessor;

    .line 235
    iput-object p7, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->retryHandler:Lorg/apache/http/client/HttpRequestRetryHandler;

    .line 236
    iput-object p8, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->redirectHandler:Lorg/apache/http/client/RedirectHandler;

    .line 237
    iput-object p9, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->targetAuthHandler:Lorg/apache/http/client/AuthenticationHandler;

    .line 238
    iput-object p10, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->proxyAuthHandler:Lorg/apache/http/client/AuthenticationHandler;

    .line 239
    iput-object p11, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->userTokenHandler:Lorg/apache/http/client/UserTokenHandler;

    .line 240
    iput-object p12, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->params:Lorg/apache/http/params/HttpParams;

    .line 242
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    .line 244
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->redirectCount:I

    .line 245
    iget-object v0, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->params:Lorg/apache/http/params/HttpParams;

    const-string v1, "http.protocol.max-redirects"

    const/16 v2, 0x64

    invoke-interface {v0, v1, v2}, Lorg/apache/http/params/HttpParams;->getIntParameter(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->maxRedirects:I

    .line 246
    new-instance v0, Lorg/apache/http/auth/AuthState;

    invoke-direct {v0}, Lorg/apache/http/auth/AuthState;-><init>()V

    iput-object v0, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->targetAuthState:Lorg/apache/http/auth/AuthState;

    .line 247
    new-instance v0, Lorg/apache/http/auth/AuthState;

    invoke-direct {v0}, Lorg/apache/http/auth/AuthState;-><init>()V

    iput-object v0, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->proxyAuthState:Lorg/apache/http/auth/AuthState;

    .line 248
    return-void

    .line 226
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP parameters may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 222
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "User token handler may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 218
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Proxy authentication handler may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 214
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Target authentication handler may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 210
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Redirect handler may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 206
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP request retry handler may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 202
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP protocol processor may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 198
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Route planner may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 194
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Connection keep alive strategy may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 190
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Connection reuse strategy may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 186
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Client connection manager may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 182
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Request executor may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private abortConnection()V
    .locals 4

    .line 1039
    iget-object v0, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    .line 1040
    .local v0, "mcc":Lorg/apache/http/conn/ManagedClientConnection;
    if-eqz v0, :cond_1

    .line 1043
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    .line 1045
    :try_start_0
    invoke-interface {v0}, Lorg/apache/http/conn/ManagedClientConnection;->abortConnection()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1050
    goto :goto_0

    .line 1046
    :catch_0
    move-exception v1

    .line 1047
    .local v1, "ex":Ljava/io/IOException;
    iget-object v2, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v2}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1048
    iget-object v2, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1053
    .end local v1    # "ex":Ljava/io/IOException;
    :cond_0
    :goto_0
    :try_start_1
    invoke-interface {v0}, Lorg/apache/http/conn/ManagedClientConnection;->releaseConnection()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1056
    goto :goto_1

    .line 1054
    :catch_1
    move-exception v1

    .line 1055
    .local v1, "ignored":Ljava/io/IOException;
    iget-object v2, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    const-string v3, "Error releasing connection"

    invoke-interface {v2, v3, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1058
    .end local v1    # "ignored":Ljava/io/IOException;
    :cond_1
    :goto_1
    return-void
.end method

.method private static isCleartextTrafficPermitted(Ljava/lang/String;)Z
    .locals 8
    .param p0, "hostname"    # Ljava/lang/String;

    .line 1149
    const/4 v0, 0x1

    :try_start_0
    const-class v1, Lorg/apache/http/impl/client/DefaultRequestDirector;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1150
    :try_start_1
    sget-object v2, Lorg/apache/http/impl/client/DefaultRequestDirector;->cleartextTrafficPermittedMethod:Ljava/lang/reflect/Method;

    if-nez v2, :cond_0

    .line 1151
    const-string v2, "android.security.NetworkSecurityPolicy"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 1152
    .local v2, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v3, "getInstance"

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 1153
    .local v3, "getInstanceMethod":Ljava/lang/reflect/Method;
    new-array v5, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v3, v6, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    sput-object v5, Lorg/apache/http/impl/client/DefaultRequestDirector;->networkSecurityPolicy:Ljava/lang/Object;

    .line 1154
    const-string v5, "isCleartextTrafficPermitted"

    new-array v6, v0, [Ljava/lang/Class;

    const-class v7, Ljava/lang/String;

    aput-object v7, v6, v4

    .line 1155
    invoke-virtual {v2, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    sput-object v4, Lorg/apache/http/impl/client/DefaultRequestDirector;->cleartextTrafficPermittedMethod:Ljava/lang/reflect/Method;

    .line 1157
    .end local v2    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "getInstanceMethod":Ljava/lang/reflect/Method;
    :cond_0
    sget-object v2, Lorg/apache/http/impl/client/DefaultRequestDirector;->networkSecurityPolicy:Ljava/lang/Object;

    .line 1158
    .local v2, "policy":Ljava/lang/Object;
    sget-object v3, Lorg/apache/http/impl/client/DefaultRequestDirector;->cleartextTrafficPermittedMethod:Ljava/lang/reflect/Method;

    .line 1159
    .local v3, "method":Ljava/lang/reflect/Method;
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1160
    :try_start_2
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v3, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_2
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_2 .. :try_end_2} :catch_0

    return v0

    .line 1159
    .end local v2    # "policy":Ljava/lang/Object;
    .end local v3    # "method":Ljava/lang/reflect/Method;
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local p0    # "hostname":Ljava/lang/String;
    :try_start_4
    throw v2
    :try_end_4
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_4 .. :try_end_4} :catch_0

    .line 1161
    .restart local p0    # "hostname":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 1165
    .local v1, "e":Ljava/lang/ReflectiveOperationException;
    return v0
.end method

.method private processChallenges(Ljava/util/Map;Lorg/apache/http/auth/AuthState;Lorg/apache/http/client/AuthenticationHandler;Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)V
    .locals 6
    .param p2, "authState"    # Lorg/apache/http/auth/AuthState;
    .param p3, "authHandler"    # Lorg/apache/http/client/AuthenticationHandler;
    .param p4, "response"    # Lorg/apache/http/HttpResponse;
    .param p5, "context"    # Lorg/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/http/Header;",
            ">;",
            "Lorg/apache/http/auth/AuthState;",
            "Lorg/apache/http/client/AuthenticationHandler;",
            "Lorg/apache/http/HttpResponse;",
            "Lorg/apache/http/protocol/HttpContext;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/auth/MalformedChallengeException;,
            Lorg/apache/http/auth/AuthenticationException;
        }
    .end annotation

    .line 1069
    .local p1, "challenges":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/http/Header;>;"
    invoke-virtual {p2}, Lorg/apache/http/auth/AuthState;->getAuthScheme()Lorg/apache/http/auth/AuthScheme;

    move-result-object v0

    .line 1070
    .local v0, "authScheme":Lorg/apache/http/auth/AuthScheme;
    if-nez v0, :cond_0

    .line 1072
    invoke-interface {p3, p1, p4, p5}, Lorg/apache/http/client/AuthenticationHandler;->selectScheme(Ljava/util/Map;Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/auth/AuthScheme;

    move-result-object v0

    .line 1073
    invoke-virtual {p2, v0}, Lorg/apache/http/auth/AuthState;->setAuthScheme(Lorg/apache/http/auth/AuthScheme;)V

    .line 1075
    :cond_0
    invoke-interface {v0}, Lorg/apache/http/auth/AuthScheme;->getSchemeName()Ljava/lang/String;

    move-result-object v1

    .line 1077
    .local v1, "id":Ljava/lang/String;
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/http/Header;

    .line 1078
    .local v2, "challenge":Lorg/apache/http/Header;
    if-eqz v2, :cond_1

    .line 1082
    invoke-interface {v0, v2}, Lorg/apache/http/auth/AuthScheme;->processChallenge(Lorg/apache/http/Header;)V

    .line 1083
    iget-object v3, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    const-string v4, "Authorization challenge processed"

    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 1084
    return-void

    .line 1079
    :cond_1
    new-instance v3, Lorg/apache/http/auth/AuthenticationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " authorization challenge expected, but not found"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/http/auth/AuthenticationException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private updateAuthState(Lorg/apache/http/auth/AuthState;Lorg/apache/http/HttpHost;Lorg/apache/http/client/CredentialsProvider;)V
    .locals 7
    .param p1, "authState"    # Lorg/apache/http/auth/AuthState;
    .param p2, "host"    # Lorg/apache/http/HttpHost;
    .param p3, "credsProvider"    # Lorg/apache/http/client/CredentialsProvider;

    .line 1092
    invoke-virtual {p1}, Lorg/apache/http/auth/AuthState;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1093
    return-void

    .line 1096
    :cond_0
    invoke-virtual {p2}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v0

    .line 1097
    .local v0, "hostname":Ljava/lang/String;
    invoke-virtual {p2}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v1

    .line 1098
    .local v1, "port":I
    if-gez v1, :cond_1

    .line 1099
    iget-object v2, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->connManager:Lorg/apache/http/conn/ClientConnectionManager;

    invoke-interface {v2}, Lorg/apache/http/conn/ClientConnectionManager;->getSchemeRegistry()Lorg/apache/http/conn/scheme/SchemeRegistry;

    move-result-object v2

    invoke-virtual {v2, p2}, Lorg/apache/http/conn/scheme/SchemeRegistry;->getScheme(Lorg/apache/http/HttpHost;)Lorg/apache/http/conn/scheme/Scheme;

    move-result-object v2

    .line 1100
    .local v2, "scheme":Lorg/apache/http/conn/scheme/Scheme;
    invoke-virtual {v2}, Lorg/apache/http/conn/scheme/Scheme;->getDefaultPort()I

    move-result v1

    .line 1103
    .end local v2    # "scheme":Lorg/apache/http/conn/scheme/Scheme;
    :cond_1
    invoke-virtual {p1}, Lorg/apache/http/auth/AuthState;->getAuthScheme()Lorg/apache/http/auth/AuthScheme;

    move-result-object v2

    .line 1104
    .local v2, "authScheme":Lorg/apache/http/auth/AuthScheme;
    new-instance v3, Lorg/apache/http/auth/AuthScope;

    .line 1107
    invoke-interface {v2}, Lorg/apache/http/auth/AuthScheme;->getRealm()Ljava/lang/String;

    move-result-object v4

    .line 1108
    invoke-interface {v2}, Lorg/apache/http/auth/AuthScheme;->getSchemeName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v0, v1, v4, v5}, Lorg/apache/http/auth/AuthScope;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 1110
    .local v3, "authScope":Lorg/apache/http/auth/AuthScope;
    iget-object v4, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v4}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1111
    iget-object v4, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Authentication scope: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 1113
    :cond_2
    invoke-virtual {p1}, Lorg/apache/http/auth/AuthState;->getCredentials()Lorg/apache/http/auth/Credentials;

    move-result-object v4

    .line 1114
    .local v4, "creds":Lorg/apache/http/auth/Credentials;
    if-nez v4, :cond_4

    .line 1115
    invoke-interface {p3, v3}, Lorg/apache/http/client/CredentialsProvider;->getCredentials(Lorg/apache/http/auth/AuthScope;)Lorg/apache/http/auth/Credentials;

    move-result-object v4

    .line 1116
    iget-object v5, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v5}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1117
    if-eqz v4, :cond_3

    .line 1118
    iget-object v5, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    const-string v6, "Found credentials"

    invoke-interface {v5, v6}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    goto :goto_0

    .line 1120
    :cond_3
    iget-object v5, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    const-string v6, "Credentials not found"

    invoke-interface {v5, v6}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    goto :goto_0

    .line 1124
    :cond_4
    invoke-interface {v2}, Lorg/apache/http/auth/AuthScheme;->isComplete()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1125
    iget-object v5, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    const-string v6, "Authentication failed"

    invoke-interface {v5, v6}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 1126
    const/4 v4, 0x0

    .line 1129
    :cond_5
    :goto_0
    invoke-virtual {p1, v3}, Lorg/apache/http/auth/AuthState;->setAuthScope(Lorg/apache/http/auth/AuthScope;)V

    .line 1130
    invoke-virtual {p1, v4}, Lorg/apache/http/auth/AuthState;->setCredentials(Lorg/apache/http/auth/Credentials;)V

    .line 1131
    return-void
.end method

.method private wrapRequest(Lorg/apache/http/HttpRequest;)Lorg/apache/http/impl/client/RequestWrapper;
    .locals 2
    .param p1, "request"    # Lorg/apache/http/HttpRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/ProtocolException;
        }
    .end annotation

    .line 253
    instance-of v0, p1, Lorg/apache/http/HttpEntityEnclosingRequest;

    if-eqz v0, :cond_0

    .line 254
    new-instance v0, Lorg/apache/http/impl/client/EntityEnclosingRequestWrapper;

    move-object v1, p1

    check-cast v1, Lorg/apache/http/HttpEntityEnclosingRequest;

    invoke-direct {v0, v1}, Lorg/apache/http/impl/client/EntityEnclosingRequestWrapper;-><init>(Lorg/apache/http/HttpEntityEnclosingRequest;)V

    return-object v0

    .line 257
    :cond_0
    new-instance v0, Lorg/apache/http/impl/client/RequestWrapper;

    invoke-direct {v0, p1}, Lorg/apache/http/impl/client/RequestWrapper;-><init>(Lorg/apache/http/HttpRequest;)V

    return-object v0
.end method


# virtual methods
.method protected createConnectRequest(Lorg/apache/http/conn/routing/HttpRoute;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpRequest;
    .locals 8
    .param p1, "route"    # Lorg/apache/http/conn/routing/HttpRoute;
    .param p2, "context"    # Lorg/apache/http/protocol/HttpContext;

    .line 881
    invoke-virtual {p1}, Lorg/apache/http/conn/routing/HttpRoute;->getTargetHost()Lorg/apache/http/HttpHost;

    move-result-object v0

    .line 883
    .local v0, "target":Lorg/apache/http/HttpHost;
    invoke-virtual {v0}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v1

    .line 884
    .local v1, "host":Ljava/lang/String;
    invoke-virtual {v0}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v2

    .line 885
    .local v2, "port":I
    if-gez v2, :cond_0

    .line 886
    iget-object v3, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->connManager:Lorg/apache/http/conn/ClientConnectionManager;

    invoke-interface {v3}, Lorg/apache/http/conn/ClientConnectionManager;->getSchemeRegistry()Lorg/apache/http/conn/scheme/SchemeRegistry;

    move-result-object v3

    .line 887
    invoke-virtual {v0}, Lorg/apache/http/HttpHost;->getSchemeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/http/conn/scheme/SchemeRegistry;->getScheme(Ljava/lang/String;)Lorg/apache/http/conn/scheme/Scheme;

    move-result-object v3

    .line 888
    .local v3, "scheme":Lorg/apache/http/conn/scheme/Scheme;
    invoke-virtual {v3}, Lorg/apache/http/conn/scheme/Scheme;->getDefaultPort()I

    move-result v2

    .line 891
    .end local v3    # "scheme":Lorg/apache/http/conn/scheme/Scheme;
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x6

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 892
    .local v3, "buffer":Ljava/lang/StringBuilder;
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 893
    const/16 v4, 0x3a

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 894
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 896
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 897
    .local v4, "authority":Ljava/lang/String;
    iget-object v5, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->params:Lorg/apache/http/params/HttpParams;

    invoke-static {v5}, Lorg/apache/http/params/HttpProtocolParams;->getVersion(Lorg/apache/http/params/HttpParams;)Lorg/apache/http/ProtocolVersion;

    move-result-object v5

    .line 898
    .local v5, "ver":Lorg/apache/http/ProtocolVersion;
    new-instance v6, Lorg/apache/http/message/BasicHttpRequest;

    const-string v7, "CONNECT"

    invoke-direct {v6, v7, v4, v5}, Lorg/apache/http/message/BasicHttpRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/ProtocolVersion;)V

    .line 901
    .local v6, "req":Lorg/apache/http/HttpRequest;
    return-object v6
.end method

.method protected createTunnelToProxy(Lorg/apache/http/conn/routing/HttpRoute;ILorg/apache/http/protocol/HttpContext;)Z
    .locals 2
    .param p1, "route"    # Lorg/apache/http/conn/routing/HttpRoute;
    .param p2, "hop"    # I
    .param p3, "context"    # Lorg/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 860
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Proxy chains are not supported."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected createTunnelToTarget(Lorg/apache/http/conn/routing/HttpRoute;Lorg/apache/http/protocol/HttpContext;)Z
    .locals 20
    .param p1, "route"    # Lorg/apache/http/conn/routing/HttpRoute;
    .param p2, "context"    # Lorg/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 714
    move-object/from16 v1, p0

    move-object/from16 v6, p2

    invoke-virtual/range {p1 .. p1}, Lorg/apache/http/conn/routing/HttpRoute;->getProxyHost()Lorg/apache/http/HttpHost;

    move-result-object v7

    .line 715
    .local v7, "proxy":Lorg/apache/http/HttpHost;
    invoke-virtual/range {p1 .. p1}, Lorg/apache/http/conn/routing/HttpRoute;->getTargetHost()Lorg/apache/http/HttpHost;

    move-result-object v8

    .line 716
    .local v8, "target":Lorg/apache/http/HttpHost;
    const/4 v0, 0x0

    .line 718
    .local v0, "response":Lorg/apache/http/HttpResponse;
    const/4 v2, 0x0

    move/from16 v19, v2

    move-object v2, v0

    move/from16 v0, v19

    .line 719
    .local v0, "done":Z
    .local v2, "response":Lorg/apache/http/HttpResponse;
    :goto_0
    if-nez v0, :cond_b

    .line 721
    const/4 v9, 0x1

    .line 723
    .end local v0    # "done":Z
    .local v9, "done":Z
    iget-object v0, v1, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    invoke-interface {v0}, Lorg/apache/http/conn/ManagedClientConnection;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 724
    iget-object v0, v1, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    iget-object v3, v1, Lorg/apache/http/impl/client/DefaultRequestDirector;->params:Lorg/apache/http/params/HttpParams;

    move-object/from16 v10, p1

    invoke-interface {v0, v10, v6, v3}, Lorg/apache/http/conn/ManagedClientConnection;->open(Lorg/apache/http/conn/routing/HttpRoute;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/params/HttpParams;)V

    goto :goto_1

    .line 723
    :cond_0
    move-object/from16 v10, p1

    .line 727
    :goto_1
    invoke-virtual/range {p0 .. p2}, Lorg/apache/http/impl/client/DefaultRequestDirector;->createConnectRequest(Lorg/apache/http/conn/routing/HttpRoute;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpRequest;

    move-result-object v11

    .line 729
    .local v11, "connect":Lorg/apache/http/HttpRequest;
    iget-object v0, v1, Lorg/apache/http/impl/client/DefaultRequestDirector;->params:Lorg/apache/http/params/HttpParams;

    invoke-static {v0}, Lorg/apache/http/params/HttpProtocolParams;->getUserAgent(Lorg/apache/http/params/HttpParams;)Ljava/lang/String;

    move-result-object v12

    .line 730
    .local v12, "agent":Ljava/lang/String;
    if-eqz v12, :cond_1

    .line 731
    const-string v0, "User-Agent"

    invoke-interface {v11, v0, v12}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 733
    :cond_1
    const-string v0, "Host"

    invoke-virtual {v8}, Lorg/apache/http/HttpHost;->toHostString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v11, v0, v3}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 735
    iget-object v0, v1, Lorg/apache/http/impl/client/DefaultRequestDirector;->proxyAuthState:Lorg/apache/http/auth/AuthState;

    invoke-virtual {v0}, Lorg/apache/http/auth/AuthState;->getAuthScheme()Lorg/apache/http/auth/AuthScheme;

    move-result-object v13

    .line 736
    .local v13, "authScheme":Lorg/apache/http/auth/AuthScheme;
    iget-object v0, v1, Lorg/apache/http/impl/client/DefaultRequestDirector;->proxyAuthState:Lorg/apache/http/auth/AuthState;

    invoke-virtual {v0}, Lorg/apache/http/auth/AuthState;->getAuthScope()Lorg/apache/http/auth/AuthScope;

    move-result-object v14

    .line 737
    .local v14, "authScope":Lorg/apache/http/auth/AuthScope;
    iget-object v0, v1, Lorg/apache/http/impl/client/DefaultRequestDirector;->proxyAuthState:Lorg/apache/http/auth/AuthState;

    invoke-virtual {v0}, Lorg/apache/http/auth/AuthState;->getCredentials()Lorg/apache/http/auth/Credentials;

    move-result-object v15

    .line 738
    .local v15, "creds":Lorg/apache/http/auth/Credentials;
    if-eqz v15, :cond_3

    .line 739
    if-nez v14, :cond_2

    invoke-interface {v13}, Lorg/apache/http/auth/AuthScheme;->isConnectionBased()Z

    move-result v0

    if-nez v0, :cond_3

    .line 741
    :cond_2
    :try_start_0
    invoke-interface {v13, v15, v11}, Lorg/apache/http/auth/AuthScheme;->authenticate(Lorg/apache/http/auth/Credentials;Lorg/apache/http/HttpRequest;)Lorg/apache/http/Header;

    move-result-object v0

    invoke-interface {v11, v0}, Lorg/apache/http/HttpRequest;->addHeader(Lorg/apache/http/Header;)V
    :try_end_0
    .catch Lorg/apache/http/auth/AuthenticationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 746
    goto :goto_2

    .line 742
    :catch_0
    move-exception v0

    .line 743
    .local v0, "ex":Lorg/apache/http/auth/AuthenticationException;
    iget-object v3, v1, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v3}, Lorg/apache/commons/logging/Log;->isErrorEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 744
    iget-object v3, v1, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Proxy authentication error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lorg/apache/http/auth/AuthenticationException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;)V

    .line 750
    .end local v0    # "ex":Lorg/apache/http/auth/AuthenticationException;
    :cond_3
    :goto_2
    iget-object v0, v1, Lorg/apache/http/impl/client/DefaultRequestDirector;->requestExec:Lorg/apache/http/protocol/HttpRequestExecutor;

    iget-object v3, v1, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    invoke-virtual {v0, v11, v3, v6}, Lorg/apache/http/protocol/HttpRequestExecutor;->execute(Lorg/apache/http/HttpRequest;Lorg/apache/http/HttpClientConnection;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v5

    .line 752
    .end local v2    # "response":Lorg/apache/http/HttpResponse;
    .local v5, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    .line 753
    .local v2, "status":I
    const/16 v0, 0xc8

    if-lt v2, v0, :cond_a

    .line 758
    nop

    .line 759
    const-string v0, "http.auth.credentials-provider"

    invoke-interface {v6, v0}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lorg/apache/http/client/CredentialsProvider;

    .line 761
    .local v3, "credsProvider":Lorg/apache/http/client/CredentialsProvider;
    if-eqz v3, :cond_9

    iget-object v0, v1, Lorg/apache/http/impl/client/DefaultRequestDirector;->params:Lorg/apache/http/params/HttpParams;

    invoke-static {v0}, Lorg/apache/http/client/params/HttpClientParams;->isAuthenticating(Lorg/apache/http/params/HttpParams;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 762
    iget-object v0, v1, Lorg/apache/http/impl/client/DefaultRequestDirector;->proxyAuthHandler:Lorg/apache/http/client/AuthenticationHandler;

    invoke-interface {v0, v5, v6}, Lorg/apache/http/client/AuthenticationHandler;->isAuthenticationRequested(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 764
    iget-object v0, v1, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    const-string v4, "Proxy requested authentication"

    invoke-interface {v0, v4}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 765
    iget-object v0, v1, Lorg/apache/http/impl/client/DefaultRequestDirector;->proxyAuthHandler:Lorg/apache/http/client/AuthenticationHandler;

    invoke-interface {v0, v5, v6}, Lorg/apache/http/client/AuthenticationHandler;->getChallenges(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Ljava/util/Map;

    move-result-object v4

    .line 768
    .local v4, "challenges":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/http/Header;>;"
    move-object/from16 v16, v3

    .end local v3    # "credsProvider":Lorg/apache/http/client/CredentialsProvider;
    .local v16, "credsProvider":Lorg/apache/http/client/CredentialsProvider;
    :try_start_1
    iget-object v3, v1, Lorg/apache/http/impl/client/DefaultRequestDirector;->proxyAuthState:Lorg/apache/http/auth/AuthState;
    :try_end_1
    .catch Lorg/apache/http/auth/AuthenticationException; {:try_start_1 .. :try_end_1} :catch_3

    move/from16 v17, v2

    move-object v2, v4

    .end local v4    # "challenges":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/http/Header;>;"
    .local v2, "challenges":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/http/Header;>;"
    .local v17, "status":I
    :try_start_2
    iget-object v4, v1, Lorg/apache/http/impl/client/DefaultRequestDirector;->proxyAuthHandler:Lorg/apache/http/client/AuthenticationHandler;
    :try_end_2
    .catch Lorg/apache/http/auth/AuthenticationException; {:try_start_2 .. :try_end_2} :catch_2

    move-object/from16 v19, v16

    move-object/from16 v16, v8

    move-object/from16 v8, v19

    .local v8, "credsProvider":Lorg/apache/http/client/CredentialsProvider;
    .local v16, "target":Lorg/apache/http/HttpHost;
    :try_start_3
    invoke-direct/range {v1 .. v6}, Lorg/apache/http/impl/client/DefaultRequestDirector;->processChallenges(Ljava/util/Map;Lorg/apache/http/auth/AuthState;Lorg/apache/http/client/AuthenticationHandler;Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)V
    :try_end_3
    .catch Lorg/apache/http/auth/AuthenticationException; {:try_start_3 .. :try_end_3} :catch_1

    .line 776
    goto :goto_4

    .line 771
    :catch_1
    move-exception v0

    goto :goto_3

    .local v8, "target":Lorg/apache/http/HttpHost;
    .local v16, "credsProvider":Lorg/apache/http/client/CredentialsProvider;
    :catch_2
    move-exception v0

    move-object/from16 v19, v16

    move-object/from16 v16, v8

    move-object/from16 v8, v19

    .local v8, "credsProvider":Lorg/apache/http/client/CredentialsProvider;
    .local v16, "target":Lorg/apache/http/HttpHost;
    goto :goto_3

    .end local v17    # "status":I
    .local v2, "status":I
    .restart local v4    # "challenges":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/http/Header;>;"
    .local v8, "target":Lorg/apache/http/HttpHost;
    .local v16, "credsProvider":Lorg/apache/http/client/CredentialsProvider;
    :catch_3
    move-exception v0

    move-object/from16 v17, v16

    move-object/from16 v16, v8

    move-object/from16 v8, v17

    move/from16 v17, v2

    move-object v2, v4

    .line 772
    .end local v4    # "challenges":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/http/Header;>;"
    .restart local v0    # "ex":Lorg/apache/http/auth/AuthenticationException;
    .local v2, "challenges":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/http/Header;>;"
    .local v8, "credsProvider":Lorg/apache/http/client/CredentialsProvider;
    .local v16, "target":Lorg/apache/http/HttpHost;
    .restart local v17    # "status":I
    :goto_3
    iget-object v3, v1, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v3}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 773
    iget-object v3, v1, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v18, v0

    .end local v0    # "ex":Lorg/apache/http/auth/AuthenticationException;
    .local v18, "ex":Lorg/apache/http/auth/AuthenticationException;
    const-string v0, "Authentication error: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual/range {v18 .. v18}, Lorg/apache/http/auth/AuthenticationException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    .line 774
    move-object v2, v5

    move v0, v9

    goto/16 :goto_8

    .line 772
    .end local v18    # "ex":Lorg/apache/http/auth/AuthenticationException;
    .restart local v0    # "ex":Lorg/apache/http/auth/AuthenticationException;
    :cond_4
    move-object/from16 v18, v0

    .line 777
    .end local v0    # "ex":Lorg/apache/http/auth/AuthenticationException;
    :goto_4
    iget-object v0, v1, Lorg/apache/http/impl/client/DefaultRequestDirector;->proxyAuthState:Lorg/apache/http/auth/AuthState;

    invoke-direct {v1, v0, v7, v8}, Lorg/apache/http/impl/client/DefaultRequestDirector;->updateAuthState(Lorg/apache/http/auth/AuthState;Lorg/apache/http/HttpHost;Lorg/apache/http/client/CredentialsProvider;)V

    .line 779
    iget-object v0, v1, Lorg/apache/http/impl/client/DefaultRequestDirector;->proxyAuthState:Lorg/apache/http/auth/AuthState;

    invoke-virtual {v0}, Lorg/apache/http/auth/AuthState;->getCredentials()Lorg/apache/http/auth/Credentials;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 780
    const/4 v9, 0x0

    .line 783
    iget-object v0, v1, Lorg/apache/http/impl/client/DefaultRequestDirector;->reuseStrategy:Lorg/apache/http/ConnectionReuseStrategy;

    invoke-interface {v0, v5, v6}, Lorg/apache/http/ConnectionReuseStrategy;->keepAlive(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 784
    iget-object v0, v1, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    const-string v3, "Connection kept alive"

    invoke-interface {v0, v3}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 786
    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 787
    .local v0, "entity":Lorg/apache/http/HttpEntity;
    if-eqz v0, :cond_5

    .line 788
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 790
    .end local v0    # "entity":Lorg/apache/http/HttpEntity;
    :cond_5
    goto :goto_5

    .line 791
    :cond_6
    iget-object v0, v1, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    invoke-interface {v0}, Lorg/apache/http/conn/ManagedClientConnection;->close()V

    .line 796
    .end local v2    # "challenges":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/http/Header;>;"
    :cond_7
    :goto_5
    move v0, v9

    goto :goto_7

    .line 798
    .end local v16    # "target":Lorg/apache/http/HttpHost;
    .end local v17    # "status":I
    .local v2, "status":I
    .restart local v3    # "credsProvider":Lorg/apache/http/client/CredentialsProvider;
    .local v8, "target":Lorg/apache/http/HttpHost;
    :cond_8
    move/from16 v17, v2

    move-object/from16 v16, v8

    move-object v8, v3

    .end local v2    # "status":I
    .end local v3    # "credsProvider":Lorg/apache/http/client/CredentialsProvider;
    .local v8, "credsProvider":Lorg/apache/http/client/CredentialsProvider;
    .restart local v16    # "target":Lorg/apache/http/HttpHost;
    .restart local v17    # "status":I
    iget-object v0, v1, Lorg/apache/http/impl/client/DefaultRequestDirector;->proxyAuthState:Lorg/apache/http/auth/AuthState;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/apache/http/auth/AuthState;->setAuthScope(Lorg/apache/http/auth/AuthScope;)V

    goto :goto_6

    .line 761
    .end local v16    # "target":Lorg/apache/http/HttpHost;
    .end local v17    # "status":I
    .restart local v2    # "status":I
    .restart local v3    # "credsProvider":Lorg/apache/http/client/CredentialsProvider;
    .local v8, "target":Lorg/apache/http/HttpHost;
    :cond_9
    move/from16 v17, v2

    move-object/from16 v16, v8

    move-object v8, v3

    .line 801
    .end local v2    # "status":I
    .end local v3    # "credsProvider":Lorg/apache/http/client/CredentialsProvider;
    .end local v8    # "target":Lorg/apache/http/HttpHost;
    .end local v11    # "connect":Lorg/apache/http/HttpRequest;
    .end local v12    # "agent":Ljava/lang/String;
    .end local v13    # "authScheme":Lorg/apache/http/auth/AuthScheme;
    .end local v14    # "authScope":Lorg/apache/http/auth/AuthScope;
    .end local v15    # "creds":Lorg/apache/http/auth/Credentials;
    .restart local v16    # "target":Lorg/apache/http/HttpHost;
    :goto_6
    move v0, v9

    .end local v9    # "done":Z
    .local v0, "done":Z
    :goto_7
    move-object v2, v5

    move-object/from16 v8, v16

    goto/16 :goto_0

    .line 754
    .end local v0    # "done":Z
    .end local v16    # "target":Lorg/apache/http/HttpHost;
    .restart local v2    # "status":I
    .restart local v8    # "target":Lorg/apache/http/HttpHost;
    .restart local v9    # "done":Z
    .restart local v11    # "connect":Lorg/apache/http/HttpRequest;
    .restart local v12    # "agent":Ljava/lang/String;
    .restart local v13    # "authScheme":Lorg/apache/http/auth/AuthScheme;
    .restart local v14    # "authScope":Lorg/apache/http/auth/AuthScope;
    .restart local v15    # "creds":Lorg/apache/http/auth/Credentials;
    :cond_a
    move/from16 v17, v2

    .end local v2    # "status":I
    .restart local v17    # "status":I
    new-instance v0, Lorg/apache/http/HttpException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected response to CONNECT request: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 755
    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/apache/http/HttpException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 719
    .end local v5    # "response":Lorg/apache/http/HttpResponse;
    .end local v9    # "done":Z
    .end local v11    # "connect":Lorg/apache/http/HttpRequest;
    .end local v12    # "agent":Ljava/lang/String;
    .end local v13    # "authScheme":Lorg/apache/http/auth/AuthScheme;
    .end local v14    # "authScope":Lorg/apache/http/auth/AuthScope;
    .end local v15    # "creds":Lorg/apache/http/auth/Credentials;
    .end local v17    # "status":I
    .restart local v0    # "done":Z
    .local v2, "response":Lorg/apache/http/HttpResponse;
    :cond_b
    move-object/from16 v10, p1

    move-object/from16 v16, v8

    .line 803
    .end local v8    # "target":Lorg/apache/http/HttpHost;
    .restart local v16    # "target":Lorg/apache/http/HttpHost;
    :goto_8
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v3

    .line 805
    .local v3, "status":I
    const/16 v4, 0x12b

    if-le v3, v4, :cond_d

    .line 808
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v4

    .line 809
    .local v4, "entity":Lorg/apache/http/HttpEntity;
    if-eqz v4, :cond_c

    .line 810
    new-instance v5, Lorg/apache/http/entity/BufferedHttpEntity;

    invoke-direct {v5, v4}, Lorg/apache/http/entity/BufferedHttpEntity;-><init>(Lorg/apache/http/HttpEntity;)V

    invoke-interface {v2, v5}, Lorg/apache/http/HttpResponse;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 813
    :cond_c
    iget-object v5, v1, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    invoke-interface {v5}, Lorg/apache/http/conn/ManagedClientConnection;->close()V

    .line 814
    new-instance v5, Lorg/apache/http/impl/client/TunnelRefusedException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "CONNECT refused by proxy: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 815
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v8, v2}, Lorg/apache/http/impl/client/TunnelRefusedException;-><init>(Ljava/lang/String;Lorg/apache/http/HttpResponse;)V

    throw v5

    .line 818
    .end local v4    # "entity":Lorg/apache/http/HttpEntity;
    :cond_d
    iget-object v4, v1, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    invoke-interface {v4}, Lorg/apache/http/conn/ManagedClientConnection;->markReusable()V

    .line 824
    const/4 v4, 0x0

    return v4
.end method

.method protected determineRoute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/conn/routing/HttpRoute;
    .locals 6
    .param p1, "target"    # Lorg/apache/http/HttpHost;
    .param p2, "request"    # Lorg/apache/http/HttpRequest;
    .param p3, "context"    # Lorg/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;
        }
    .end annotation

    .line 588
    if-nez p1, :cond_0

    .line 589
    invoke-interface {p2}, Lorg/apache/http/HttpRequest;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    const-string v1, "http.default-host"

    invoke-interface {v0, v1}, Lorg/apache/http/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object p1, v0

    check-cast p1, Lorg/apache/http/HttpHost;

    .line 592
    :cond_0
    if-nez p1, :cond_2

    .line 595
    const/4 v0, 0x0

    .line 596
    .local v0, "scheme":Ljava/lang/String;
    const/4 v1, 0x0

    .line 597
    .local v1, "host":Ljava/lang/String;
    const/4 v2, 0x0

    .line 599
    .local v2, "path":Ljava/lang/String;
    instance-of v3, p2, Lorg/apache/http/client/methods/HttpUriRequest;

    if-eqz v3, :cond_1

    move-object v3, p2

    check-cast v3, Lorg/apache/http/client/methods/HttpUriRequest;

    .line 600
    invoke-interface {v3}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v3

    move-object v4, v3

    .local v4, "uri":Ljava/net/URI;
    if-eqz v3, :cond_1

    .line 601
    invoke-virtual {v4}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 602
    invoke-virtual {v4}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 603
    invoke-virtual {v4}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 605
    .end local v4    # "uri":Ljava/net/URI;
    :cond_1
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Target host must not be null, or set in parameters. scheme="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", host="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", path="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 610
    .end local v0    # "scheme":Ljava/lang/String;
    .end local v1    # "host":Ljava/lang/String;
    .end local v2    # "path":Ljava/lang/String;
    :cond_2
    iget-object v0, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->routePlanner:Lorg/apache/http/conn/routing/HttpRoutePlanner;

    invoke-interface {v0, p1, p2, p3}, Lorg/apache/http/conn/routing/HttpRoutePlanner;->determineRoute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/conn/routing/HttpRoute;

    move-result-object v0

    return-object v0
.end method

.method protected establishRoute(Lorg/apache/http/conn/routing/HttpRoute;Lorg/apache/http/protocol/HttpContext;)V
    .locals 8
    .param p1, "route"    # Lorg/apache/http/conn/routing/HttpRoute;
    .param p2, "context"    # Lorg/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 635
    new-instance v0, Lorg/apache/http/conn/routing/BasicRouteDirector;

    invoke-direct {v0}, Lorg/apache/http/conn/routing/BasicRouteDirector;-><init>()V

    .line 638
    .local v0, "rowdy":Lorg/apache/http/conn/routing/HttpRouteDirector;
    :cond_0
    iget-object v1, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    invoke-interface {v1}, Lorg/apache/http/conn/ManagedClientConnection;->getRoute()Lorg/apache/http/conn/routing/HttpRoute;

    move-result-object v1

    .line 639
    .local v1, "fact":Lorg/apache/http/conn/routing/HttpRoute;
    invoke-interface {v0, p1, v1}, Lorg/apache/http/conn/routing/HttpRouteDirector;->nextStep(Lorg/apache/http/conn/routing/RouteInfo;Lorg/apache/http/conn/routing/RouteInfo;)I

    move-result v2

    .line 641
    .local v2, "step":I
    packed-switch v2, :pswitch_data_0

    .line 682
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown step indicator "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " from RouteDirector."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 668
    :pswitch_0
    iget-object v3, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    iget-object v4, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->params:Lorg/apache/http/params/HttpParams;

    invoke-interface {v3, p2, v4}, Lorg/apache/http/conn/ManagedClientConnection;->layerProtocol(Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/params/HttpParams;)V

    .line 669
    goto :goto_0

    .line 659
    :pswitch_1
    invoke-virtual {v1}, Lorg/apache/http/conn/routing/HttpRoute;->getHopCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .line 660
    .local v3, "hop":I
    invoke-virtual {p0, p1, v3, p2}, Lorg/apache/http/impl/client/DefaultRequestDirector;->createTunnelToProxy(Lorg/apache/http/conn/routing/HttpRoute;ILorg/apache/http/protocol/HttpContext;)Z

    move-result v4

    .line 661
    .local v4, "secure":Z
    iget-object v5, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    const-string v6, "Tunnel to proxy created."

    invoke-interface {v5, v6}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 662
    iget-object v5, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    invoke-virtual {p1, v3}, Lorg/apache/http/conn/routing/HttpRoute;->getHopTarget(I)Lorg/apache/http/HttpHost;

    move-result-object v6

    iget-object v7, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->params:Lorg/apache/http/params/HttpParams;

    invoke-interface {v5, v6, v4, v7}, Lorg/apache/http/conn/ManagedClientConnection;->tunnelProxy(Lorg/apache/http/HttpHost;ZLorg/apache/http/params/HttpParams;)V

    .line 664
    .end local v3    # "hop":I
    .end local v4    # "secure":Z
    goto :goto_0

    .line 649
    :pswitch_2
    invoke-virtual {p0, p1, p2}, Lorg/apache/http/impl/client/DefaultRequestDirector;->createTunnelToTarget(Lorg/apache/http/conn/routing/HttpRoute;Lorg/apache/http/protocol/HttpContext;)Z

    move-result v3

    .line 650
    .local v3, "secure":Z
    iget-object v4, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    const-string v5, "Tunnel to target created."

    invoke-interface {v4, v5}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 651
    iget-object v4, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    iget-object v5, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->params:Lorg/apache/http/params/HttpParams;

    invoke-interface {v4, v3, v5}, Lorg/apache/http/conn/ManagedClientConnection;->tunnelTarget(ZLorg/apache/http/params/HttpParams;)V

    .line 652
    .end local v3    # "secure":Z
    goto :goto_0

    .line 645
    :pswitch_3
    iget-object v3, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    iget-object v4, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->params:Lorg/apache/http/params/HttpParams;

    invoke-interface {v3, p1, p2, v4}, Lorg/apache/http/conn/ManagedClientConnection;->open(Lorg/apache/http/conn/routing/HttpRoute;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/params/HttpParams;)V

    .line 646
    goto :goto_0

    .line 679
    :pswitch_4
    nop

    .line 686
    .end local v1    # "fact":Lorg/apache/http/conn/routing/HttpRoute;
    :goto_0
    if-gtz v2, :cond_0

    .line 688
    return-void

    .line 672
    .restart local v1    # "fact":Lorg/apache/http/conn/routing/HttpRoute;
    :pswitch_5
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to establish route.\nplanned = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\ncurrent = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
    .locals 22
    .param p1, "target"    # Lorg/apache/http/HttpHost;
    .param p2, "request"    # Lorg/apache/http/HttpRequest;
    .param p3, "context"    # Lorg/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 296
    move-object/from16 v1, p0

    move-object/from16 v2, p3

    const-string v3, "http.user-token"

    move-object/from16 v4, p2

    .line 297
    .local v4, "orig":Lorg/apache/http/HttpRequest;
    invoke-direct {v1, v4}, Lorg/apache/http/impl/client/DefaultRequestDirector;->wrapRequest(Lorg/apache/http/HttpRequest;)Lorg/apache/http/impl/client/RequestWrapper;

    move-result-object v5

    .line 298
    .local v5, "origWrapper":Lorg/apache/http/impl/client/RequestWrapper;
    iget-object v0, v1, Lorg/apache/http/impl/client/DefaultRequestDirector;->params:Lorg/apache/http/params/HttpParams;

    invoke-virtual {v5, v0}, Lorg/apache/http/impl/client/RequestWrapper;->setParams(Lorg/apache/http/params/HttpParams;)V

    .line 299
    move-object/from16 v0, p1

    invoke-virtual {v1, v0, v5, v2}, Lorg/apache/http/impl/client/DefaultRequestDirector;->determineRoute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/conn/routing/HttpRoute;

    move-result-object v6

    .line 301
    .local v6, "origRoute":Lorg/apache/http/conn/routing/HttpRoute;
    new-instance v7, Lorg/apache/http/impl/client/RoutedRequest;

    invoke-direct {v7, v5, v6}, Lorg/apache/http/impl/client/RoutedRequest;-><init>(Lorg/apache/http/impl/client/RequestWrapper;Lorg/apache/http/conn/routing/HttpRoute;)V

    .line 303
    .local v7, "roureq":Lorg/apache/http/impl/client/RoutedRequest;
    iget-object v8, v1, Lorg/apache/http/impl/client/DefaultRequestDirector;->params:Lorg/apache/http/params/HttpParams;

    invoke-static {v8}, Lorg/apache/http/conn/params/ConnManagerParams;->getTimeout(Lorg/apache/http/params/HttpParams;)J

    move-result-wide v8

    .line 305
    .local v8, "timeout":J
    const/4 v10, 0x0

    .line 307
    .local v10, "execCount":I
    const/4 v11, 0x0

    .line 308
    .local v11, "reuse":Z
    const/4 v12, 0x0

    .line 309
    .local v12, "response":Lorg/apache/http/HttpResponse;
    const/4 v13, 0x0

    move v14, v13

    move-object v13, v12

    move v12, v11

    move v11, v10

    move-object v10, v7

    move-object v7, v0

    .line 311
    .end local p1    # "target":Lorg/apache/http/HttpHost;
    .local v7, "target":Lorg/apache/http/HttpHost;
    .local v10, "roureq":Lorg/apache/http/impl/client/RoutedRequest;
    .local v11, "execCount":I
    .local v12, "reuse":Z
    .local v13, "response":Lorg/apache/http/HttpResponse;
    .local v14, "done":Z
    :goto_0
    if-nez v14, :cond_18

    .line 317
    :try_start_0
    invoke-virtual {v10}, Lorg/apache/http/impl/client/RoutedRequest;->getRequest()Lorg/apache/http/impl/client/RequestWrapper;

    move-result-object v0

    move-object v15, v0

    .line 318
    .local v15, "wrapper":Lorg/apache/http/impl/client/RequestWrapper;
    invoke-virtual {v10}, Lorg/apache/http/impl/client/RoutedRequest;->getRoute()Lorg/apache/http/conn/routing/HttpRoute;

    move-result-object v0

    move-object/from16 p1, v0

    .line 321
    .local p1, "route":Lorg/apache/http/conn/routing/HttpRoute;
    invoke-interface {v2, v3}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    .line 324
    .local v16, "userToken":Ljava/lang/Object;
    iget-object v0, v1, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;
    :try_end_0
    .catch Lorg/apache/http/HttpException; {:try_start_0 .. :try_end_0} :catch_19
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_18
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_17

    if-nez v0, :cond_2

    .line 325
    :try_start_1
    iget-object v0, v1, Lorg/apache/http/impl/client/DefaultRequestDirector;->connManager:Lorg/apache/http/conn/ClientConnectionManager;
    :try_end_1
    .catch Lorg/apache/http/HttpException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_5

    move-object/from16 v17, v16

    move-object/from16 v16, v6

    move-object/from16 v6, v17

    move-object/from16 v17, v5

    move-object/from16 v5, p1

    .end local p1    # "route":Lorg/apache/http/conn/routing/HttpRoute;
    .local v5, "route":Lorg/apache/http/conn/routing/HttpRoute;
    .local v6, "userToken":Ljava/lang/Object;
    .local v16, "origRoute":Lorg/apache/http/conn/routing/HttpRoute;
    .local v17, "origWrapper":Lorg/apache/http/impl/client/RequestWrapper;
    :try_start_2
    invoke-interface {v0, v5, v6}, Lorg/apache/http/conn/ClientConnectionManager;->requestConnection(Lorg/apache/http/conn/routing/HttpRoute;Ljava/lang/Object;)Lorg/apache/http/conn/ClientConnectionRequest;

    move-result-object v0

    move-object/from16 p1, v0

    .line 327
    .local p1, "connRequest":Lorg/apache/http/conn/ClientConnectionRequest;
    instance-of v0, v4, Lorg/apache/http/client/methods/AbortableHttpRequest;

    if-eqz v0, :cond_0

    .line 328
    move-object v0, v4

    check-cast v0, Lorg/apache/http/client/methods/AbortableHttpRequest;

    move-object/from16 v18, v6

    move-object/from16 v6, p1

    .end local p1    # "connRequest":Lorg/apache/http/conn/ClientConnectionRequest;
    .local v6, "connRequest":Lorg/apache/http/conn/ClientConnectionRequest;
    .local v18, "userToken":Ljava/lang/Object;
    invoke-interface {v0, v6}, Lorg/apache/http/client/methods/AbortableHttpRequest;->setConnectionRequest(Lorg/apache/http/conn/ClientConnectionRequest;)V
    :try_end_2
    .catch Lorg/apache/http/HttpException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    .line 327
    .end local v18    # "userToken":Ljava/lang/Object;
    .local v6, "userToken":Ljava/lang/Object;
    .restart local p1    # "connRequest":Lorg/apache/http/conn/ClientConnectionRequest;
    :cond_0
    move-object/from16 v18, v6

    move-object/from16 v6, p1

    .line 332
    .end local p1    # "connRequest":Lorg/apache/http/conn/ClientConnectionRequest;
    .local v6, "connRequest":Lorg/apache/http/conn/ClientConnectionRequest;
    .restart local v18    # "userToken":Ljava/lang/Object;
    :goto_1
    :try_start_3
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v6, v8, v9, v0}, Lorg/apache/http/conn/ClientConnectionRequest;->getConnection(JLjava/util/concurrent/TimeUnit;)Lorg/apache/http/conn/ManagedClientConnection;

    move-result-object v0

    iput-object v0, v1, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lorg/apache/http/HttpException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2

    .line 337
    nop

    .line 339
    :try_start_4
    iget-object v0, v1, Lorg/apache/http/impl/client/DefaultRequestDirector;->params:Lorg/apache/http/params/HttpParams;

    invoke-static {v0}, Lorg/apache/http/params/HttpConnectionParams;->isStaleCheckingEnabled(Lorg/apache/http/params/HttpParams;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 341
    iget-object v0, v1, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 p1, v6

    .end local v6    # "connRequest":Lorg/apache/http/conn/ClientConnectionRequest;
    .restart local p1    # "connRequest":Lorg/apache/http/conn/ClientConnectionRequest;
    const-string v6, "Stale connection check"

    invoke-interface {v0, v6}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 342
    iget-object v0, v1, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    invoke-interface {v0}, Lorg/apache/http/conn/ManagedClientConnection;->isStale()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 343
    iget-object v0, v1, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    const-string v6, "Stale connection detected"

    invoke-interface {v0, v6}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V
    :try_end_4
    .catch Lorg/apache/http/HttpException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_2

    .line 346
    :try_start_5
    iget-object v0, v1, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    invoke-interface {v0}, Lorg/apache/http/conn/ManagedClientConnection;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Lorg/apache/http/HttpException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_2

    .line 354
    goto :goto_2

    .line 347
    :catch_0
    move-exception v0

    goto :goto_2

    .line 339
    .end local p1    # "connRequest":Lorg/apache/http/conn/ClientConnectionRequest;
    .restart local v6    # "connRequest":Lorg/apache/http/conn/ClientConnectionRequest;
    :cond_1
    move-object/from16 p1, v6

    .end local v6    # "connRequest":Lorg/apache/http/conn/ClientConnectionRequest;
    .restart local p1    # "connRequest":Lorg/apache/http/conn/ClientConnectionRequest;
    goto :goto_2

    .line 333
    .end local p1    # "connRequest":Lorg/apache/http/conn/ClientConnectionRequest;
    .restart local v6    # "connRequest":Lorg/apache/http/conn/ClientConnectionRequest;
    :catch_1
    move-exception v0

    move-object/from16 p1, v6

    .line 334
    .end local v6    # "connRequest":Lorg/apache/http/conn/ClientConnectionRequest;
    .local v0, "interrupted":Ljava/lang/InterruptedException;
    .restart local p1    # "connRequest":Lorg/apache/http/conn/ClientConnectionRequest;
    :try_start_6
    new-instance v3, Ljava/io/InterruptedIOException;

    invoke-direct {v3}, Ljava/io/InterruptedIOException;-><init>()V

    .line 335
    .local v3, "iox":Ljava/io/InterruptedIOException;
    invoke-virtual {v3, v0}, Ljava/io/InterruptedIOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 336
    nop

    .end local v4    # "orig":Lorg/apache/http/HttpRequest;
    .end local v7    # "target":Lorg/apache/http/HttpHost;
    .end local v8    # "timeout":J
    .end local v10    # "roureq":Lorg/apache/http/impl/client/RoutedRequest;
    .end local v11    # "execCount":I
    .end local v12    # "reuse":Z
    .end local v13    # "response":Lorg/apache/http/HttpResponse;
    .end local v14    # "done":Z
    .end local v16    # "origRoute":Lorg/apache/http/conn/routing/HttpRoute;
    .end local v17    # "origWrapper":Lorg/apache/http/impl/client/RequestWrapper;
    .end local p0    # "this":Lorg/apache/http/impl/client/DefaultRequestDirector;
    .end local p2    # "request":Lorg/apache/http/HttpRequest;
    .end local p3    # "context":Lorg/apache/http/protocol/HttpContext;
    throw v3
    :try_end_6
    .catch Lorg/apache/http/HttpException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_2

    .line 543
    .end local v0    # "interrupted":Ljava/lang/InterruptedException;
    .end local v3    # "iox":Ljava/io/InterruptedIOException;
    .end local v5    # "route":Lorg/apache/http/conn/routing/HttpRoute;
    .end local v15    # "wrapper":Lorg/apache/http/impl/client/RequestWrapper;
    .end local v18    # "userToken":Ljava/lang/Object;
    .end local p1    # "connRequest":Lorg/apache/http/conn/ClientConnectionRequest;
    .restart local v4    # "orig":Lorg/apache/http/HttpRequest;
    .restart local v7    # "target":Lorg/apache/http/HttpHost;
    .restart local v8    # "timeout":J
    .restart local v10    # "roureq":Lorg/apache/http/impl/client/RoutedRequest;
    .restart local v11    # "execCount":I
    .restart local v12    # "reuse":Z
    .restart local v13    # "response":Lorg/apache/http/HttpResponse;
    .restart local v14    # "done":Z
    .restart local v16    # "origRoute":Lorg/apache/http/conn/routing/HttpRoute;
    .restart local v17    # "origWrapper":Lorg/apache/http/impl/client/RequestWrapper;
    .restart local p0    # "this":Lorg/apache/http/impl/client/DefaultRequestDirector;
    .restart local p2    # "request":Lorg/apache/http/HttpRequest;
    .restart local p3    # "context":Lorg/apache/http/protocol/HttpContext;
    :catch_2
    move-exception v0

    move-object/from16 v19, v4

    goto/16 :goto_f

    .line 540
    :catch_3
    move-exception v0

    move-object/from16 v19, v4

    goto/16 :goto_10

    .line 537
    :catch_4
    move-exception v0

    move-object/from16 v19, v4

    goto/16 :goto_11

    .line 543
    .end local v16    # "origRoute":Lorg/apache/http/conn/routing/HttpRoute;
    .end local v17    # "origWrapper":Lorg/apache/http/impl/client/RequestWrapper;
    .local v5, "origWrapper":Lorg/apache/http/impl/client/RequestWrapper;
    .local v6, "origRoute":Lorg/apache/http/conn/routing/HttpRoute;
    :catch_5
    move-exception v0

    move-object/from16 v17, v5

    move-object/from16 v16, v6

    move-object/from16 v19, v4

    .end local v5    # "origWrapper":Lorg/apache/http/impl/client/RequestWrapper;
    .end local v6    # "origRoute":Lorg/apache/http/conn/routing/HttpRoute;
    .restart local v16    # "origRoute":Lorg/apache/http/conn/routing/HttpRoute;
    .restart local v17    # "origWrapper":Lorg/apache/http/impl/client/RequestWrapper;
    goto/16 :goto_f

    .line 540
    .end local v16    # "origRoute":Lorg/apache/http/conn/routing/HttpRoute;
    .end local v17    # "origWrapper":Lorg/apache/http/impl/client/RequestWrapper;
    .restart local v5    # "origWrapper":Lorg/apache/http/impl/client/RequestWrapper;
    .restart local v6    # "origRoute":Lorg/apache/http/conn/routing/HttpRoute;
    :catch_6
    move-exception v0

    move-object/from16 v17, v5

    move-object/from16 v16, v6

    move-object/from16 v19, v4

    .end local v5    # "origWrapper":Lorg/apache/http/impl/client/RequestWrapper;
    .end local v6    # "origRoute":Lorg/apache/http/conn/routing/HttpRoute;
    .restart local v16    # "origRoute":Lorg/apache/http/conn/routing/HttpRoute;
    .restart local v17    # "origWrapper":Lorg/apache/http/impl/client/RequestWrapper;
    goto/16 :goto_10

    .line 537
    .end local v16    # "origRoute":Lorg/apache/http/conn/routing/HttpRoute;
    .end local v17    # "origWrapper":Lorg/apache/http/impl/client/RequestWrapper;
    .restart local v5    # "origWrapper":Lorg/apache/http/impl/client/RequestWrapper;
    .restart local v6    # "origRoute":Lorg/apache/http/conn/routing/HttpRoute;
    :catch_7
    move-exception v0

    move-object/from16 v17, v5

    move-object/from16 v16, v6

    move-object/from16 v19, v4

    .end local v5    # "origWrapper":Lorg/apache/http/impl/client/RequestWrapper;
    .end local v6    # "origRoute":Lorg/apache/http/conn/routing/HttpRoute;
    .restart local v16    # "origRoute":Lorg/apache/http/conn/routing/HttpRoute;
    .restart local v17    # "origWrapper":Lorg/apache/http/impl/client/RequestWrapper;
    goto/16 :goto_11

    .line 324
    .end local v17    # "origWrapper":Lorg/apache/http/impl/client/RequestWrapper;
    .restart local v5    # "origWrapper":Lorg/apache/http/impl/client/RequestWrapper;
    .restart local v6    # "origRoute":Lorg/apache/http/conn/routing/HttpRoute;
    .restart local v15    # "wrapper":Lorg/apache/http/impl/client/RequestWrapper;
    .local v16, "userToken":Ljava/lang/Object;
    .local p1, "route":Lorg/apache/http/conn/routing/HttpRoute;
    :cond_2
    move-object/from16 v17, v5

    move-object/from16 v18, v16

    move-object/from16 v5, p1

    move-object/from16 v16, v6

    .line 360
    .end local v6    # "origRoute":Lorg/apache/http/conn/routing/HttpRoute;
    .end local p1    # "route":Lorg/apache/http/conn/routing/HttpRoute;
    .local v5, "route":Lorg/apache/http/conn/routing/HttpRoute;
    .local v16, "origRoute":Lorg/apache/http/conn/routing/HttpRoute;
    .restart local v17    # "origWrapper":Lorg/apache/http/impl/client/RequestWrapper;
    .restart local v18    # "userToken":Ljava/lang/Object;
    :cond_3
    :goto_2
    :try_start_7
    instance-of v0, v4, Lorg/apache/http/client/methods/AbortableHttpRequest;
    :try_end_7
    .catch Lorg/apache/http/HttpException; {:try_start_7 .. :try_end_7} :catch_16
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_15
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_14

    if-eqz v0, :cond_4

    .line 361
    :try_start_8
    move-object v0, v4

    check-cast v0, Lorg/apache/http/client/methods/AbortableHttpRequest;

    iget-object v6, v1, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    invoke-interface {v0, v6}, Lorg/apache/http/client/methods/AbortableHttpRequest;->setReleaseTrigger(Lorg/apache/http/conn/ConnectionReleaseTrigger;)V
    :try_end_8
    .catch Lorg/apache/http/HttpException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_2

    .line 365
    :cond_4
    :try_start_9
    iget-object v0, v1, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    invoke-interface {v0}, Lorg/apache/http/conn/ManagedClientConnection;->isOpen()Z

    move-result v0
    :try_end_9
    .catch Lorg/apache/http/HttpException; {:try_start_9 .. :try_end_9} :catch_16
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_15
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_14

    if-nez v0, :cond_5

    .line 366
    :try_start_a
    iget-object v0, v1, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    iget-object v6, v1, Lorg/apache/http/impl/client/DefaultRequestDirector;->params:Lorg/apache/http/params/HttpParams;

    invoke-interface {v0, v5, v2, v6}, Lorg/apache/http/conn/ManagedClientConnection;->open(Lorg/apache/http/conn/routing/HttpRoute;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/params/HttpParams;)V
    :try_end_a
    .catch Lorg/apache/http/HttpException; {:try_start_a .. :try_end_a} :catch_4
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_2

    goto :goto_3

    .line 371
    :cond_5
    :try_start_b
    iget-object v0, v1, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    iget-object v6, v1, Lorg/apache/http/impl/client/DefaultRequestDirector;->params:Lorg/apache/http/params/HttpParams;

    invoke-static {v6}, Lorg/apache/http/params/HttpConnectionParams;->getSoTimeout(Lorg/apache/http/params/HttpParams;)I

    move-result v6

    invoke-interface {v0, v6}, Lorg/apache/http/conn/ManagedClientConnection;->setSocketTimeout(I)V
    :try_end_b
    .catch Lorg/apache/http/HttpException; {:try_start_b .. :try_end_b} :catch_16
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_15
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_14

    .line 376
    :goto_3
    :try_start_c
    invoke-virtual {v1, v5, v2}, Lorg/apache/http/impl/client/DefaultRequestDirector;->establishRoute(Lorg/apache/http/conn/routing/HttpRoute;Lorg/apache/http/protocol/HttpContext;)V
    :try_end_c
    .catch Lorg/apache/http/impl/client/TunnelRefusedException; {:try_start_c .. :try_end_c} :catch_13
    .catch Lorg/apache/http/HttpException; {:try_start_c .. :try_end_c} :catch_16
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_15
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_14

    .line 383
    nop

    .line 386
    :try_start_d
    invoke-virtual {v15}, Lorg/apache/http/impl/client/RequestWrapper;->resetHeaders()V

    .line 389
    invoke-virtual {v1, v15, v5}, Lorg/apache/http/impl/client/DefaultRequestDirector;->rewriteRequestURI(Lorg/apache/http/impl/client/RequestWrapper;Lorg/apache/http/conn/routing/HttpRoute;)V

    .line 392
    invoke-virtual {v15}, Lorg/apache/http/impl/client/RequestWrapper;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    const-string v6, "http.virtual-host"

    invoke-interface {v0, v6}, Lorg/apache/http/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/HttpHost;
    :try_end_d
    .catch Lorg/apache/http/HttpException; {:try_start_d .. :try_end_d} :catch_16
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_15
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_14

    move-object v7, v0

    .line 395
    if-nez v7, :cond_6

    .line 396
    :try_start_e
    invoke-virtual {v5}, Lorg/apache/http/conn/routing/HttpRoute;->getTargetHost()Lorg/apache/http/HttpHost;

    move-result-object v0
    :try_end_e
    .catch Lorg/apache/http/HttpException; {:try_start_e .. :try_end_e} :catch_4
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_2

    move-object v7, v0

    .line 399
    :cond_6
    :try_start_f
    invoke-virtual {v5}, Lorg/apache/http/conn/routing/HttpRoute;->getProxyHost()Lorg/apache/http/HttpHost;

    move-result-object v0

    move-object v6, v0

    .line 402
    .local v6, "proxy":Lorg/apache/http/HttpHost;
    const-string v0, "http.target_host"

    invoke-interface {v2, v0, v7}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 404
    const-string v0, "http.proxy_host"

    invoke-interface {v2, v0, v6}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 406
    const-string v0, "http.connection"
    :try_end_f
    .catch Lorg/apache/http/HttpException; {:try_start_f .. :try_end_f} :catch_12
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_11
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_f} :catch_10

    move-object/from16 v19, v4

    .end local v4    # "orig":Lorg/apache/http/HttpRequest;
    .local v19, "orig":Lorg/apache/http/HttpRequest;
    :try_start_10
    iget-object v4, v1, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    invoke-interface {v2, v0, v4}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 408
    const-string v0, "http.auth.target-scope"

    iget-object v4, v1, Lorg/apache/http/impl/client/DefaultRequestDirector;->targetAuthState:Lorg/apache/http/auth/AuthState;

    invoke-interface {v2, v0, v4}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 410
    const-string v0, "http.auth.proxy-scope"

    iget-object v4, v1, Lorg/apache/http/impl/client/DefaultRequestDirector;->proxyAuthState:Lorg/apache/http/auth/AuthState;

    invoke-interface {v2, v0, v4}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 414
    iget-object v0, v1, Lorg/apache/http/impl/client/DefaultRequestDirector;->requestExec:Lorg/apache/http/protocol/HttpRequestExecutor;

    iget-object v4, v1, Lorg/apache/http/impl/client/DefaultRequestDirector;->httpProcessor:Lorg/apache/http/protocol/HttpProcessor;

    invoke-virtual {v0, v15, v4, v2}, Lorg/apache/http/protocol/HttpRequestExecutor;->preProcess(Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpProcessor;Lorg/apache/http/protocol/HttpContext;)V

    .line 416
    const-string v0, "http.request"

    invoke-interface {v2, v0, v15}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 419
    const/4 v0, 0x1

    move v4, v0

    .line 420
    .local v4, "retrying":Z
    :goto_4
    if-eqz v4, :cond_10

    .line 422
    add-int/lit8 v11, v11, 0x1

    .line 424
    invoke-virtual {v15}, Lorg/apache/http/impl/client/RequestWrapper;->incrementExecCount()V

    .line 425
    invoke-virtual {v15}, Lorg/apache/http/impl/client/RequestWrapper;->getExecCount()I

    move-result v0
    :try_end_10
    .catch Lorg/apache/http/HttpException; {:try_start_10 .. :try_end_10} :catch_f
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_e
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_10} :catch_d

    move/from16 p1, v4

    .end local v4    # "retrying":Z
    .local p1, "retrying":Z
    const/4 v4, 0x1

    if-le v0, v4, :cond_8

    :try_start_11
    invoke-virtual {v15}, Lorg/apache/http/impl/client/RequestWrapper;->isRepeatable()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_5

    .line 426
    :cond_7
    new-instance v0, Lorg/apache/http/client/NonRepeatableRequestException;

    const-string v3, "Cannot retry request with a non-repeatable request entity"

    invoke-direct {v0, v3}, Lorg/apache/http/client/NonRepeatableRequestException;-><init>(Ljava/lang/String;)V

    .end local v7    # "target":Lorg/apache/http/HttpHost;
    .end local v8    # "timeout":J
    .end local v10    # "roureq":Lorg/apache/http/impl/client/RoutedRequest;
    .end local v11    # "execCount":I
    .end local v12    # "reuse":Z
    .end local v13    # "response":Lorg/apache/http/HttpResponse;
    .end local v14    # "done":Z
    .end local v16    # "origRoute":Lorg/apache/http/conn/routing/HttpRoute;
    .end local v17    # "origWrapper":Lorg/apache/http/impl/client/RequestWrapper;
    .end local v19    # "orig":Lorg/apache/http/HttpRequest;
    .end local p0    # "this":Lorg/apache/http/impl/client/DefaultRequestDirector;
    .end local p2    # "request":Lorg/apache/http/HttpRequest;
    .end local p3    # "context":Lorg/apache/http/protocol/HttpContext;
    throw v0
    :try_end_11
    .catch Lorg/apache/http/HttpException; {:try_start_11 .. :try_end_11} :catch_1c
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_1b
    .catch Ljava/lang/RuntimeException; {:try_start_11 .. :try_end_11} :catch_1a

    .line 431
    .restart local v7    # "target":Lorg/apache/http/HttpHost;
    .restart local v8    # "timeout":J
    .restart local v10    # "roureq":Lorg/apache/http/impl/client/RoutedRequest;
    .restart local v11    # "execCount":I
    .restart local v12    # "reuse":Z
    .restart local v13    # "response":Lorg/apache/http/HttpResponse;
    .restart local v14    # "done":Z
    .restart local v16    # "origRoute":Lorg/apache/http/conn/routing/HttpRoute;
    .restart local v17    # "origWrapper":Lorg/apache/http/impl/client/RequestWrapper;
    .restart local v19    # "orig":Lorg/apache/http/HttpRequest;
    .restart local p0    # "this":Lorg/apache/http/impl/client/DefaultRequestDirector;
    .restart local p2    # "request":Lorg/apache/http/HttpRequest;
    .restart local p3    # "context":Lorg/apache/http/protocol/HttpContext;
    :cond_8
    :goto_5
    :try_start_12
    iget-object v0, v1, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 432
    iget-object v0, v1, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_9
    .catch Lorg/apache/http/HttpException; {:try_start_12 .. :try_end_12} :catch_1c
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_12} :catch_1a

    move-object/from16 v20, v6

    .end local v6    # "proxy":Lorg/apache/http/HttpHost;
    .local v20, "proxy":Lorg/apache/http/HttpHost;
    :try_start_13
    const-string v6, "Attempt "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " to execute request"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    goto :goto_6

    .line 431
    .end local v20    # "proxy":Lorg/apache/http/HttpHost;
    .restart local v6    # "proxy":Lorg/apache/http/HttpHost;
    :cond_9
    move-object/from16 v20, v6

    .line 435
    .end local v6    # "proxy":Lorg/apache/http/HttpHost;
    .restart local v20    # "proxy":Lorg/apache/http/HttpHost;
    :goto_6
    invoke-virtual {v5}, Lorg/apache/http/conn/routing/HttpRoute;->isSecure()Z

    move-result v0

    if-nez v0, :cond_b

    .line 437
    invoke-virtual {v5}, Lorg/apache/http/conn/routing/HttpRoute;->getTargetHost()Lorg/apache/http/HttpHost;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v0

    .line 436
    invoke-static {v0}, Lorg/apache/http/impl/client/DefaultRequestDirector;->isCleartextTrafficPermitted(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_7

    .line 438
    :cond_a
    new-instance v0, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cleartext traffic not permitted: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 439
    invoke-virtual {v5}, Lorg/apache/http/conn/routing/HttpRoute;->getTargetHost()Lorg/apache/http/HttpHost;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v5    # "route":Lorg/apache/http/conn/routing/HttpRoute;
    .end local v7    # "target":Lorg/apache/http/HttpHost;
    .end local v8    # "timeout":J
    .end local v10    # "roureq":Lorg/apache/http/impl/client/RoutedRequest;
    .end local v11    # "execCount":I
    .end local v12    # "reuse":Z
    .end local v13    # "response":Lorg/apache/http/HttpResponse;
    .end local v14    # "done":Z
    .end local v15    # "wrapper":Lorg/apache/http/impl/client/RequestWrapper;
    .end local v16    # "origRoute":Lorg/apache/http/conn/routing/HttpRoute;
    .end local v17    # "origWrapper":Lorg/apache/http/impl/client/RequestWrapper;
    .end local v18    # "userToken":Ljava/lang/Object;
    .end local v19    # "orig":Lorg/apache/http/HttpRequest;
    .end local v20    # "proxy":Lorg/apache/http/HttpHost;
    .end local p0    # "this":Lorg/apache/http/impl/client/DefaultRequestDirector;
    .end local p1    # "retrying":Z
    .end local p2    # "request":Lorg/apache/http/HttpRequest;
    .end local p3    # "context":Lorg/apache/http/protocol/HttpContext;
    throw v0

    .line 442
    .restart local v5    # "route":Lorg/apache/http/conn/routing/HttpRoute;
    .restart local v7    # "target":Lorg/apache/http/HttpHost;
    .restart local v8    # "timeout":J
    .restart local v10    # "roureq":Lorg/apache/http/impl/client/RoutedRequest;
    .restart local v11    # "execCount":I
    .restart local v12    # "reuse":Z
    .restart local v13    # "response":Lorg/apache/http/HttpResponse;
    .restart local v14    # "done":Z
    .restart local v15    # "wrapper":Lorg/apache/http/impl/client/RequestWrapper;
    .restart local v16    # "origRoute":Lorg/apache/http/conn/routing/HttpRoute;
    .restart local v17    # "origWrapper":Lorg/apache/http/impl/client/RequestWrapper;
    .restart local v18    # "userToken":Ljava/lang/Object;
    .restart local v19    # "orig":Lorg/apache/http/HttpRequest;
    .restart local v20    # "proxy":Lorg/apache/http/HttpHost;
    .restart local p0    # "this":Lorg/apache/http/impl/client/DefaultRequestDirector;
    .restart local p1    # "retrying":Z
    .restart local p2    # "request":Lorg/apache/http/HttpRequest;
    .restart local p3    # "context":Lorg/apache/http/protocol/HttpContext;
    :cond_b
    :goto_7
    iget-object v0, v1, Lorg/apache/http/impl/client/DefaultRequestDirector;->requestExec:Lorg/apache/http/protocol/HttpRequestExecutor;

    iget-object v4, v1, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    invoke-virtual {v0, v15, v4, v2}, Lorg/apache/http/protocol/HttpRequestExecutor;->execute(Lorg/apache/http/HttpRequest;Lorg/apache/http/HttpClientConnection;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v0
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_8
    .catch Lorg/apache/http/HttpException; {:try_start_13 .. :try_end_13} :catch_1c
    .catch Ljava/lang/RuntimeException; {:try_start_13 .. :try_end_13} :catch_1a

    move-object v13, v0

    .line 443
    const/4 v4, 0x0

    .line 472
    .end local p1    # "retrying":Z
    .restart local v4    # "retrying":Z
    move-object/from16 v6, v20

    goto/16 :goto_4

    .line 445
    .end local v4    # "retrying":Z
    .restart local p1    # "retrying":Z
    :catch_8
    move-exception v0

    goto :goto_8

    .end local v20    # "proxy":Lorg/apache/http/HttpHost;
    .restart local v6    # "proxy":Lorg/apache/http/HttpHost;
    :catch_9
    move-exception v0

    move-object/from16 v20, v6

    .line 446
    .end local v6    # "proxy":Lorg/apache/http/HttpHost;
    .local v0, "ex":Ljava/io/IOException;
    .restart local v20    # "proxy":Lorg/apache/http/HttpHost;
    :goto_8
    :try_start_14
    iget-object v4, v1, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    const-string v6, "Closing the connection."

    invoke-interface {v4, v6}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 447
    iget-object v4, v1, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    invoke-interface {v4}, Lorg/apache/http/conn/ManagedClientConnection;->close()V

    .line 448
    iget-object v4, v1, Lorg/apache/http/impl/client/DefaultRequestDirector;->retryHandler:Lorg/apache/http/client/HttpRequestRetryHandler;

    invoke-interface {v4, v0, v11, v2}, Lorg/apache/http/client/HttpRequestRetryHandler;->retryRequest(Ljava/io/IOException;ILorg/apache/http/protocol/HttpContext;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 449
    iget-object v4, v1, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v4}, Lorg/apache/commons/logging/Log;->isInfoEnabled()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 450
    iget-object v4, v1, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_14
    .catch Lorg/apache/http/HttpException; {:try_start_14 .. :try_end_14} :catch_f
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_e
    .catch Ljava/lang/RuntimeException; {:try_start_14 .. :try_end_14} :catch_d

    move-object/from16 v21, v7

    .end local v7    # "target":Lorg/apache/http/HttpHost;
    .local v21, "target":Lorg/apache/http/HttpHost;
    :try_start_15
    const-string v7, "I/O exception ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") caught when processing request: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 452
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 450
    invoke-interface {v4, v6}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    goto :goto_9

    .line 449
    .end local v21    # "target":Lorg/apache/http/HttpHost;
    .restart local v7    # "target":Lorg/apache/http/HttpHost;
    :cond_c
    move-object/from16 v21, v7

    .line 454
    .end local v7    # "target":Lorg/apache/http/HttpHost;
    .restart local v21    # "target":Lorg/apache/http/HttpHost;
    :goto_9
    iget-object v4, v1, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v4}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 455
    iget-object v4, v1, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6, v0}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 457
    :cond_d
    iget-object v4, v1, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    const-string v6, "Retrying request"

    invoke-interface {v4, v6}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 464
    invoke-virtual {v5}, Lorg/apache/http/conn/routing/HttpRoute;->getHopCount()I

    move-result v4

    const/4 v6, 0x1

    if-ne v4, v6, :cond_e

    .line 465
    iget-object v4, v1, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    const-string v6, "Reopening the direct connection."

    invoke-interface {v4, v6}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 466
    iget-object v4, v1, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    iget-object v6, v1, Lorg/apache/http/impl/client/DefaultRequestDirector;->params:Lorg/apache/http/params/HttpParams;

    invoke-interface {v4, v5, v2, v6}, Lorg/apache/http/conn/ManagedClientConnection;->open(Lorg/apache/http/conn/routing/HttpRoute;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/params/HttpParams;)V

    .line 472
    .end local v0    # "ex":Ljava/io/IOException;
    move/from16 v4, p1

    move-object/from16 v6, v20

    move-object/from16 v7, v21

    goto/16 :goto_4

    .line 469
    .restart local v0    # "ex":Ljava/io/IOException;
    :cond_e
    nop

    .end local v8    # "timeout":J
    .end local v10    # "roureq":Lorg/apache/http/impl/client/RoutedRequest;
    .end local v11    # "execCount":I
    .end local v12    # "reuse":Z
    .end local v13    # "response":Lorg/apache/http/HttpResponse;
    .end local v14    # "done":Z
    .end local v16    # "origRoute":Lorg/apache/http/conn/routing/HttpRoute;
    .end local v17    # "origWrapper":Lorg/apache/http/impl/client/RequestWrapper;
    .end local v19    # "orig":Lorg/apache/http/HttpRequest;
    .end local v21    # "target":Lorg/apache/http/HttpHost;
    .end local p0    # "this":Lorg/apache/http/impl/client/DefaultRequestDirector;
    .end local p2    # "request":Lorg/apache/http/HttpRequest;
    .end local p3    # "context":Lorg/apache/http/protocol/HttpContext;
    throw v0

    .line 459
    .restart local v7    # "target":Lorg/apache/http/HttpHost;
    .restart local v8    # "timeout":J
    .restart local v10    # "roureq":Lorg/apache/http/impl/client/RoutedRequest;
    .restart local v11    # "execCount":I
    .restart local v12    # "reuse":Z
    .restart local v13    # "response":Lorg/apache/http/HttpResponse;
    .restart local v14    # "done":Z
    .restart local v16    # "origRoute":Lorg/apache/http/conn/routing/HttpRoute;
    .restart local v17    # "origWrapper":Lorg/apache/http/impl/client/RequestWrapper;
    .restart local v19    # "orig":Lorg/apache/http/HttpRequest;
    .restart local p0    # "this":Lorg/apache/http/impl/client/DefaultRequestDirector;
    .restart local p2    # "request":Lorg/apache/http/HttpRequest;
    .restart local p3    # "context":Lorg/apache/http/protocol/HttpContext;
    :cond_f
    move-object/from16 v21, v7

    .end local v7    # "target":Lorg/apache/http/HttpHost;
    .end local v8    # "timeout":J
    .end local v10    # "roureq":Lorg/apache/http/impl/client/RoutedRequest;
    .end local v11    # "execCount":I
    .end local v12    # "reuse":Z
    .end local v13    # "response":Lorg/apache/http/HttpResponse;
    .end local v14    # "done":Z
    .end local v16    # "origRoute":Lorg/apache/http/conn/routing/HttpRoute;
    .end local v17    # "origWrapper":Lorg/apache/http/impl/client/RequestWrapper;
    .end local v19    # "orig":Lorg/apache/http/HttpRequest;
    .end local p0    # "this":Lorg/apache/http/impl/client/DefaultRequestDirector;
    .end local p2    # "request":Lorg/apache/http/HttpRequest;
    .end local p3    # "context":Lorg/apache/http/protocol/HttpContext;
    throw v0

    .line 477
    .end local v0    # "ex":Ljava/io/IOException;
    .end local v20    # "proxy":Lorg/apache/http/HttpHost;
    .end local p1    # "retrying":Z
    .restart local v4    # "retrying":Z
    .restart local v6    # "proxy":Lorg/apache/http/HttpHost;
    .restart local v7    # "target":Lorg/apache/http/HttpHost;
    .restart local v8    # "timeout":J
    .restart local v10    # "roureq":Lorg/apache/http/impl/client/RoutedRequest;
    .restart local v11    # "execCount":I
    .restart local v12    # "reuse":Z
    .restart local v13    # "response":Lorg/apache/http/HttpResponse;
    .restart local v14    # "done":Z
    .restart local v16    # "origRoute":Lorg/apache/http/conn/routing/HttpRoute;
    .restart local v17    # "origWrapper":Lorg/apache/http/impl/client/RequestWrapper;
    .restart local v19    # "orig":Lorg/apache/http/HttpRequest;
    .restart local p0    # "this":Lorg/apache/http/impl/client/DefaultRequestDirector;
    .restart local p2    # "request":Lorg/apache/http/HttpRequest;
    .restart local p3    # "context":Lorg/apache/http/protocol/HttpContext;
    :cond_10
    move/from16 p1, v4

    move-object/from16 v20, v6

    move-object/from16 v21, v7

    .end local v4    # "retrying":Z
    .end local v6    # "proxy":Lorg/apache/http/HttpHost;
    .end local v7    # "target":Lorg/apache/http/HttpHost;
    .restart local v20    # "proxy":Lorg/apache/http/HttpHost;
    .restart local v21    # "target":Lorg/apache/http/HttpHost;
    .restart local p1    # "retrying":Z
    iget-object v0, v1, Lorg/apache/http/impl/client/DefaultRequestDirector;->params:Lorg/apache/http/params/HttpParams;

    invoke-interface {v13, v0}, Lorg/apache/http/HttpResponse;->setParams(Lorg/apache/http/params/HttpParams;)V

    .line 478
    iget-object v0, v1, Lorg/apache/http/impl/client/DefaultRequestDirector;->requestExec:Lorg/apache/http/protocol/HttpRequestExecutor;

    iget-object v4, v1, Lorg/apache/http/impl/client/DefaultRequestDirector;->httpProcessor:Lorg/apache/http/protocol/HttpProcessor;

    invoke-virtual {v0, v13, v4, v2}, Lorg/apache/http/protocol/HttpRequestExecutor;->postProcess(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpProcessor;Lorg/apache/http/protocol/HttpContext;)V

    .line 482
    iget-object v0, v1, Lorg/apache/http/impl/client/DefaultRequestDirector;->reuseStrategy:Lorg/apache/http/ConnectionReuseStrategy;

    invoke-interface {v0, v13, v2}, Lorg/apache/http/ConnectionReuseStrategy;->keepAlive(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Z

    move-result v0

    move v12, v0

    .line 483
    if-eqz v12, :cond_11

    .line 485
    iget-object v0, v1, Lorg/apache/http/impl/client/DefaultRequestDirector;->keepAliveStrategy:Lorg/apache/http/conn/ConnectionKeepAliveStrategy;

    invoke-interface {v0, v13, v2}, Lorg/apache/http/conn/ConnectionKeepAliveStrategy;->getKeepAliveDuration(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)J

    move-result-wide v6

    .line 486
    .local v6, "duration":J
    iget-object v0, v1, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v6, v7, v4}, Lorg/apache/http/conn/ManagedClientConnection;->setIdleDuration(JLjava/util/concurrent/TimeUnit;)V

    .line 489
    .end local v6    # "duration":J
    :cond_11
    invoke-virtual {v1, v10, v13, v2}, Lorg/apache/http/impl/client/DefaultRequestDirector;->handleResponse(Lorg/apache/http/impl/client/RoutedRequest;Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/impl/client/RoutedRequest;

    move-result-object v0

    .line 490
    .local v0, "followup":Lorg/apache/http/impl/client/RoutedRequest;
    if-nez v0, :cond_12

    .line 491
    const/4 v4, 0x1

    move v14, v4

    .end local v14    # "done":Z
    .local v4, "done":Z
    goto :goto_b

    .line 493
    .end local v4    # "done":Z
    .restart local v14    # "done":Z
    :cond_12
    if-eqz v12, :cond_14

    .line 494
    iget-object v4, v1, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    const-string v6, "Connection kept alive"

    invoke-interface {v4, v6}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 496
    invoke-interface {v13}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v4

    .line 497
    .local v4, "entity":Lorg/apache/http/HttpEntity;
    if-eqz v4, :cond_13

    .line 498
    invoke-interface {v4}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 502
    :cond_13
    iget-object v6, v1, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    invoke-interface {v6}, Lorg/apache/http/conn/ManagedClientConnection;->markReusable()V

    .line 503
    .end local v4    # "entity":Lorg/apache/http/HttpEntity;
    goto :goto_a

    .line 504
    :cond_14
    iget-object v4, v1, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    invoke-interface {v4}, Lorg/apache/http/conn/ManagedClientConnection;->close()V

    .line 507
    :goto_a
    invoke-virtual {v0}, Lorg/apache/http/impl/client/RoutedRequest;->getRoute()Lorg/apache/http/conn/routing/HttpRoute;

    move-result-object v4

    invoke-virtual {v10}, Lorg/apache/http/impl/client/RoutedRequest;->getRoute()Lorg/apache/http/conn/routing/HttpRoute;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/apache/http/conn/routing/HttpRoute;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_15

    .line 508
    invoke-virtual {v1}, Lorg/apache/http/impl/client/DefaultRequestDirector;->releaseConnection()V

    .line 510
    :cond_15
    move-object v4, v0

    move-object v10, v4

    .line 513
    :goto_b
    iget-object v4, v1, Lorg/apache/http/impl/client/DefaultRequestDirector;->userTokenHandler:Lorg/apache/http/client/UserTokenHandler;

    invoke-interface {v4, v2}, Lorg/apache/http/client/UserTokenHandler;->getUserToken(Lorg/apache/http/protocol/HttpContext;)Ljava/lang/Object;

    move-result-object v4

    .line 514
    .end local v18    # "userToken":Ljava/lang/Object;
    .local v4, "userToken":Ljava/lang/Object;
    invoke-interface {v2, v3, v4}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 515
    iget-object v6, v1, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    if-eqz v6, :cond_16

    .line 516
    iget-object v6, v1, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    invoke-interface {v6, v4}, Lorg/apache/http/conn/ManagedClientConnection;->setState(Ljava/lang/Object;)V
    :try_end_15
    .catch Lorg/apache/http/HttpException; {:try_start_15 .. :try_end_15} :catch_c
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_b
    .catch Ljava/lang/RuntimeException; {:try_start_15 .. :try_end_15} :catch_a

    .line 518
    .end local v0    # "followup":Lorg/apache/http/impl/client/RoutedRequest;
    .end local v4    # "userToken":Ljava/lang/Object;
    .end local v5    # "route":Lorg/apache/http/conn/routing/HttpRoute;
    .end local v15    # "wrapper":Lorg/apache/http/impl/client/RequestWrapper;
    .end local v20    # "proxy":Lorg/apache/http/HttpHost;
    .end local p1    # "retrying":Z
    :cond_16
    move-object/from16 v6, v16

    move-object/from16 v5, v17

    move-object/from16 v4, v19

    move-object/from16 v7, v21

    goto/16 :goto_0

    .line 543
    :catch_a
    move-exception v0

    move-object/from16 v7, v21

    goto/16 :goto_f

    .line 540
    :catch_b
    move-exception v0

    move-object/from16 v7, v21

    goto/16 :goto_10

    .line 537
    :catch_c
    move-exception v0

    move-object/from16 v7, v21

    goto/16 :goto_11

    .line 543
    .end local v21    # "target":Lorg/apache/http/HttpHost;
    .restart local v7    # "target":Lorg/apache/http/HttpHost;
    :catch_d
    move-exception v0

    move-object/from16 v21, v7

    .end local v7    # "target":Lorg/apache/http/HttpHost;
    .restart local v21    # "target":Lorg/apache/http/HttpHost;
    goto/16 :goto_f

    .line 540
    .end local v21    # "target":Lorg/apache/http/HttpHost;
    .restart local v7    # "target":Lorg/apache/http/HttpHost;
    :catch_e
    move-exception v0

    move-object/from16 v21, v7

    .end local v7    # "target":Lorg/apache/http/HttpHost;
    .restart local v21    # "target":Lorg/apache/http/HttpHost;
    goto/16 :goto_10

    .line 537
    .end local v21    # "target":Lorg/apache/http/HttpHost;
    .restart local v7    # "target":Lorg/apache/http/HttpHost;
    :catch_f
    move-exception v0

    move-object/from16 v21, v7

    .end local v7    # "target":Lorg/apache/http/HttpHost;
    .restart local v21    # "target":Lorg/apache/http/HttpHost;
    goto/16 :goto_11

    .line 543
    .end local v19    # "orig":Lorg/apache/http/HttpRequest;
    .end local v21    # "target":Lorg/apache/http/HttpHost;
    .local v4, "orig":Lorg/apache/http/HttpRequest;
    .restart local v7    # "target":Lorg/apache/http/HttpHost;
    :catch_10
    move-exception v0

    move-object/from16 v19, v4

    move-object/from16 v21, v7

    .end local v4    # "orig":Lorg/apache/http/HttpRequest;
    .end local v7    # "target":Lorg/apache/http/HttpHost;
    .restart local v19    # "orig":Lorg/apache/http/HttpRequest;
    .restart local v21    # "target":Lorg/apache/http/HttpHost;
    goto/16 :goto_f

    .line 540
    .end local v19    # "orig":Lorg/apache/http/HttpRequest;
    .end local v21    # "target":Lorg/apache/http/HttpHost;
    .restart local v4    # "orig":Lorg/apache/http/HttpRequest;
    .restart local v7    # "target":Lorg/apache/http/HttpHost;
    :catch_11
    move-exception v0

    move-object/from16 v19, v4

    move-object/from16 v21, v7

    .end local v4    # "orig":Lorg/apache/http/HttpRequest;
    .end local v7    # "target":Lorg/apache/http/HttpHost;
    .restart local v19    # "orig":Lorg/apache/http/HttpRequest;
    .restart local v21    # "target":Lorg/apache/http/HttpHost;
    goto/16 :goto_10

    .line 537
    .end local v19    # "orig":Lorg/apache/http/HttpRequest;
    .end local v21    # "target":Lorg/apache/http/HttpHost;
    .restart local v4    # "orig":Lorg/apache/http/HttpRequest;
    .restart local v7    # "target":Lorg/apache/http/HttpHost;
    :catch_12
    move-exception v0

    move-object/from16 v19, v4

    move-object/from16 v21, v7

    .end local v4    # "orig":Lorg/apache/http/HttpRequest;
    .end local v7    # "target":Lorg/apache/http/HttpHost;
    .restart local v19    # "orig":Lorg/apache/http/HttpRequest;
    .restart local v21    # "target":Lorg/apache/http/HttpHost;
    goto/16 :goto_11

    .line 377
    .end local v19    # "orig":Lorg/apache/http/HttpRequest;
    .end local v21    # "target":Lorg/apache/http/HttpHost;
    .restart local v4    # "orig":Lorg/apache/http/HttpRequest;
    .restart local v5    # "route":Lorg/apache/http/conn/routing/HttpRoute;
    .restart local v7    # "target":Lorg/apache/http/HttpHost;
    .restart local v15    # "wrapper":Lorg/apache/http/impl/client/RequestWrapper;
    .restart local v18    # "userToken":Ljava/lang/Object;
    :catch_13
    move-exception v0

    move-object/from16 v19, v4

    .line 378
    .end local v4    # "orig":Lorg/apache/http/HttpRequest;
    .local v0, "ex":Lorg/apache/http/impl/client/TunnelRefusedException;
    .restart local v19    # "orig":Lorg/apache/http/HttpRequest;
    :try_start_16
    iget-object v3, v1, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v3}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_17

    .line 379
    iget-object v3, v1, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/TunnelRefusedException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 381
    :cond_17
    invoke-virtual {v0}, Lorg/apache/http/impl/client/TunnelRefusedException;->getResponse()Lorg/apache/http/HttpResponse;

    move-result-object v3

    move-object v13, v3

    .line 382
    goto :goto_c

    .line 543
    .end local v0    # "ex":Lorg/apache/http/impl/client/TunnelRefusedException;
    .end local v5    # "route":Lorg/apache/http/conn/routing/HttpRoute;
    .end local v15    # "wrapper":Lorg/apache/http/impl/client/RequestWrapper;
    .end local v18    # "userToken":Ljava/lang/Object;
    .end local v19    # "orig":Lorg/apache/http/HttpRequest;
    .restart local v4    # "orig":Lorg/apache/http/HttpRequest;
    :catch_14
    move-exception v0

    move-object/from16 v19, v4

    .end local v4    # "orig":Lorg/apache/http/HttpRequest;
    .restart local v19    # "orig":Lorg/apache/http/HttpRequest;
    goto/16 :goto_f

    .line 540
    .end local v19    # "orig":Lorg/apache/http/HttpRequest;
    .restart local v4    # "orig":Lorg/apache/http/HttpRequest;
    :catch_15
    move-exception v0

    move-object/from16 v19, v4

    .end local v4    # "orig":Lorg/apache/http/HttpRequest;
    .restart local v19    # "orig":Lorg/apache/http/HttpRequest;
    goto :goto_10

    .line 537
    .end local v19    # "orig":Lorg/apache/http/HttpRequest;
    .restart local v4    # "orig":Lorg/apache/http/HttpRequest;
    :catch_16
    move-exception v0

    move-object/from16 v19, v4

    .end local v4    # "orig":Lorg/apache/http/HttpRequest;
    .restart local v19    # "orig":Lorg/apache/http/HttpRequest;
    goto :goto_11

    .line 543
    .end local v16    # "origRoute":Lorg/apache/http/conn/routing/HttpRoute;
    .end local v17    # "origWrapper":Lorg/apache/http/impl/client/RequestWrapper;
    .end local v19    # "orig":Lorg/apache/http/HttpRequest;
    .restart local v4    # "orig":Lorg/apache/http/HttpRequest;
    .local v5, "origWrapper":Lorg/apache/http/impl/client/RequestWrapper;
    .local v6, "origRoute":Lorg/apache/http/conn/routing/HttpRoute;
    :catch_17
    move-exception v0

    move-object/from16 v19, v4

    move-object/from16 v17, v5

    move-object/from16 v16, v6

    .end local v4    # "orig":Lorg/apache/http/HttpRequest;
    .end local v5    # "origWrapper":Lorg/apache/http/impl/client/RequestWrapper;
    .end local v6    # "origRoute":Lorg/apache/http/conn/routing/HttpRoute;
    .restart local v16    # "origRoute":Lorg/apache/http/conn/routing/HttpRoute;
    .restart local v17    # "origWrapper":Lorg/apache/http/impl/client/RequestWrapper;
    .restart local v19    # "orig":Lorg/apache/http/HttpRequest;
    goto :goto_f

    .line 540
    .end local v16    # "origRoute":Lorg/apache/http/conn/routing/HttpRoute;
    .end local v17    # "origWrapper":Lorg/apache/http/impl/client/RequestWrapper;
    .end local v19    # "orig":Lorg/apache/http/HttpRequest;
    .restart local v4    # "orig":Lorg/apache/http/HttpRequest;
    .restart local v5    # "origWrapper":Lorg/apache/http/impl/client/RequestWrapper;
    .restart local v6    # "origRoute":Lorg/apache/http/conn/routing/HttpRoute;
    :catch_18
    move-exception v0

    move-object/from16 v19, v4

    move-object/from16 v17, v5

    move-object/from16 v16, v6

    .end local v4    # "orig":Lorg/apache/http/HttpRequest;
    .end local v5    # "origWrapper":Lorg/apache/http/impl/client/RequestWrapper;
    .end local v6    # "origRoute":Lorg/apache/http/conn/routing/HttpRoute;
    .restart local v16    # "origRoute":Lorg/apache/http/conn/routing/HttpRoute;
    .restart local v17    # "origWrapper":Lorg/apache/http/impl/client/RequestWrapper;
    .restart local v19    # "orig":Lorg/apache/http/HttpRequest;
    goto :goto_10

    .line 537
    .end local v16    # "origRoute":Lorg/apache/http/conn/routing/HttpRoute;
    .end local v17    # "origWrapper":Lorg/apache/http/impl/client/RequestWrapper;
    .end local v19    # "orig":Lorg/apache/http/HttpRequest;
    .restart local v4    # "orig":Lorg/apache/http/HttpRequest;
    .restart local v5    # "origWrapper":Lorg/apache/http/impl/client/RequestWrapper;
    .restart local v6    # "origRoute":Lorg/apache/http/conn/routing/HttpRoute;
    :catch_19
    move-exception v0

    move-object/from16 v19, v4

    move-object/from16 v17, v5

    move-object/from16 v16, v6

    .end local v4    # "orig":Lorg/apache/http/HttpRequest;
    .end local v5    # "origWrapper":Lorg/apache/http/impl/client/RequestWrapper;
    .end local v6    # "origRoute":Lorg/apache/http/conn/routing/HttpRoute;
    .restart local v16    # "origRoute":Lorg/apache/http/conn/routing/HttpRoute;
    .restart local v17    # "origWrapper":Lorg/apache/http/impl/client/RequestWrapper;
    .restart local v19    # "orig":Lorg/apache/http/HttpRequest;
    goto :goto_11

    .line 311
    .end local v16    # "origRoute":Lorg/apache/http/conn/routing/HttpRoute;
    .end local v17    # "origWrapper":Lorg/apache/http/impl/client/RequestWrapper;
    .end local v19    # "orig":Lorg/apache/http/HttpRequest;
    .restart local v4    # "orig":Lorg/apache/http/HttpRequest;
    .restart local v5    # "origWrapper":Lorg/apache/http/impl/client/RequestWrapper;
    .restart local v6    # "origRoute":Lorg/apache/http/conn/routing/HttpRoute;
    :cond_18
    move-object/from16 v19, v4

    move-object/from16 v17, v5

    move-object/from16 v16, v6

    .line 522
    .end local v4    # "orig":Lorg/apache/http/HttpRequest;
    .end local v5    # "origWrapper":Lorg/apache/http/impl/client/RequestWrapper;
    .end local v6    # "origRoute":Lorg/apache/http/conn/routing/HttpRoute;
    .restart local v16    # "origRoute":Lorg/apache/http/conn/routing/HttpRoute;
    .restart local v17    # "origWrapper":Lorg/apache/http/impl/client/RequestWrapper;
    .restart local v19    # "orig":Lorg/apache/http/HttpRequest;
    :goto_c
    if-eqz v13, :cond_1a

    invoke-interface {v13}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 523
    invoke-interface {v13}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->isStreaming()Z

    move-result v0

    if-nez v0, :cond_19

    goto :goto_d

    .line 530
    :cond_19
    invoke-interface {v13}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 531
    .local v0, "entity":Lorg/apache/http/HttpEntity;
    new-instance v3, Lorg/apache/http/conn/BasicManagedEntity;

    iget-object v4, v1, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    invoke-direct {v3, v0, v4, v12}, Lorg/apache/http/conn/BasicManagedEntity;-><init>(Lorg/apache/http/HttpEntity;Lorg/apache/http/conn/ManagedClientConnection;Z)V

    .line 532
    .end local v0    # "entity":Lorg/apache/http/HttpEntity;
    .local v3, "entity":Lorg/apache/http/HttpEntity;
    invoke-interface {v13, v3}, Lorg/apache/http/HttpResponse;->setEntity(Lorg/apache/http/HttpEntity;)V

    goto :goto_e

    .line 543
    .end local v3    # "entity":Lorg/apache/http/HttpEntity;
    :catch_1a
    move-exception v0

    goto :goto_f

    .line 540
    :catch_1b
    move-exception v0

    goto :goto_10

    .line 537
    :catch_1c
    move-exception v0

    goto :goto_11

    .line 525
    :cond_1a
    :goto_d
    if-eqz v12, :cond_1b

    .line 526
    iget-object v0, v1, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    invoke-interface {v0}, Lorg/apache/http/conn/ManagedClientConnection;->markReusable()V

    .line 527
    :cond_1b
    invoke-virtual {v1}, Lorg/apache/http/impl/client/DefaultRequestDirector;->releaseConnection()V
    :try_end_16
    .catch Lorg/apache/http/HttpException; {:try_start_16 .. :try_end_16} :catch_1c
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_1b
    .catch Ljava/lang/RuntimeException; {:try_start_16 .. :try_end_16} :catch_1a

    .line 535
    :goto_e
    return-object v13

    .line 544
    .local v0, "ex":Ljava/lang/RuntimeException;
    :goto_f
    invoke-direct {v1}, Lorg/apache/http/impl/client/DefaultRequestDirector;->abortConnection()V

    .line 545
    throw v0

    .line 541
    .local v0, "ex":Ljava/io/IOException;
    :goto_10
    invoke-direct {v1}, Lorg/apache/http/impl/client/DefaultRequestDirector;->abortConnection()V

    .line 542
    throw v0

    .line 538
    .local v0, "ex":Lorg/apache/http/HttpException;
    :goto_11
    invoke-direct {v1}, Lorg/apache/http/impl/client/DefaultRequestDirector;->abortConnection()V

    .line 539
    throw v0
.end method

.method protected handleResponse(Lorg/apache/http/impl/client/RoutedRequest;Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/impl/client/RoutedRequest;
    .locals 17
    .param p1, "roureq"    # Lorg/apache/http/impl/client/RoutedRequest;
    .param p2, "response"    # Lorg/apache/http/HttpResponse;
    .param p3, "context"    # Lorg/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 923
    move-object/from16 v1, p0

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    invoke-virtual/range {p1 .. p1}, Lorg/apache/http/impl/client/RoutedRequest;->getRoute()Lorg/apache/http/conn/routing/HttpRoute;

    move-result-object v7

    .line 924
    .local v7, "route":Lorg/apache/http/conn/routing/HttpRoute;
    invoke-virtual {v7}, Lorg/apache/http/conn/routing/HttpRoute;->getProxyHost()Lorg/apache/http/HttpHost;

    move-result-object v8

    .line 925
    .local v8, "proxy":Lorg/apache/http/HttpHost;
    invoke-virtual/range {p1 .. p1}, Lorg/apache/http/impl/client/RoutedRequest;->getRequest()Lorg/apache/http/impl/client/RequestWrapper;

    move-result-object v9

    .line 927
    .local v9, "request":Lorg/apache/http/impl/client/RequestWrapper;
    invoke-virtual {v9}, Lorg/apache/http/impl/client/RequestWrapper;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v10

    .line 928
    .local v10, "params":Lorg/apache/http/params/HttpParams;
    invoke-static {v10}, Lorg/apache/http/client/params/HttpClientParams;->isRedirecting(Lorg/apache/http/params/HttpParams;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, v1, Lorg/apache/http/impl/client/DefaultRequestDirector;->redirectHandler:Lorg/apache/http/client/RedirectHandler;

    .line 929
    invoke-interface {v0, v5, v6}, Lorg/apache/http/client/RedirectHandler;->isRedirectRequested(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 931
    iget v0, v1, Lorg/apache/http/impl/client/DefaultRequestDirector;->redirectCount:I

    iget v2, v1, Lorg/apache/http/impl/client/DefaultRequestDirector;->maxRedirects:I

    if-ge v0, v2, :cond_1

    .line 935
    iget v0, v1, Lorg/apache/http/impl/client/DefaultRequestDirector;->redirectCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v1, Lorg/apache/http/impl/client/DefaultRequestDirector;->redirectCount:I

    .line 937
    iget-object v0, v1, Lorg/apache/http/impl/client/DefaultRequestDirector;->redirectHandler:Lorg/apache/http/client/RedirectHandler;

    invoke-interface {v0, v5, v6}, Lorg/apache/http/client/RedirectHandler;->getLocationURI(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Ljava/net/URI;

    move-result-object v0

    .line 939
    .local v0, "uri":Ljava/net/URI;
    new-instance v2, Lorg/apache/http/HttpHost;

    .line 940
    invoke-virtual {v0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v3

    .line 941
    invoke-virtual {v0}, Ljava/net/URI;->getPort()I

    move-result v4

    .line 942
    invoke-virtual {v0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v2, v3, v4, v11}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 944
    .local v2, "newTarget":Lorg/apache/http/HttpHost;
    new-instance v3, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v3, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/net/URI;)V

    .line 946
    .local v3, "redirect":Lorg/apache/http/client/methods/HttpGet;
    invoke-virtual {v9}, Lorg/apache/http/impl/client/RequestWrapper;->getOriginal()Lorg/apache/http/HttpRequest;

    move-result-object v4

    .line 947
    .local v4, "orig":Lorg/apache/http/HttpRequest;
    invoke-interface {v4}, Lorg/apache/http/HttpRequest;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v11

    invoke-virtual {v3, v11}, Lorg/apache/http/client/methods/HttpGet;->setHeaders([Lorg/apache/http/Header;)V

    .line 949
    new-instance v11, Lorg/apache/http/impl/client/RequestWrapper;

    invoke-direct {v11, v3}, Lorg/apache/http/impl/client/RequestWrapper;-><init>(Lorg/apache/http/HttpRequest;)V

    .line 950
    .local v11, "wrapper":Lorg/apache/http/impl/client/RequestWrapper;
    invoke-virtual {v11, v10}, Lorg/apache/http/impl/client/RequestWrapper;->setParams(Lorg/apache/http/params/HttpParams;)V

    .line 952
    invoke-virtual {v1, v2, v11, v6}, Lorg/apache/http/impl/client/DefaultRequestDirector;->determineRoute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/conn/routing/HttpRoute;

    move-result-object v12

    .line 953
    .local v12, "newRoute":Lorg/apache/http/conn/routing/HttpRoute;
    new-instance v13, Lorg/apache/http/impl/client/RoutedRequest;

    invoke-direct {v13, v11, v12}, Lorg/apache/http/impl/client/RoutedRequest;-><init>(Lorg/apache/http/impl/client/RequestWrapper;Lorg/apache/http/conn/routing/HttpRoute;)V

    .line 955
    .local v13, "newRequest":Lorg/apache/http/impl/client/RoutedRequest;
    iget-object v14, v1, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v14}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v14

    if-eqz v14, :cond_0

    .line 956
    iget-object v14, v1, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v2

    .end local v2    # "newTarget":Lorg/apache/http/HttpHost;
    .local v16, "newTarget":Lorg/apache/http/HttpHost;
    const-string v2, "Redirecting to \'"

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v15, "\' via "

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v14, v2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    goto :goto_0

    .line 955
    .end local v16    # "newTarget":Lorg/apache/http/HttpHost;
    .restart local v2    # "newTarget":Lorg/apache/http/HttpHost;
    :cond_0
    move-object/from16 v16, v2

    .line 959
    .end local v2    # "newTarget":Lorg/apache/http/HttpHost;
    .restart local v16    # "newTarget":Lorg/apache/http/HttpHost;
    :goto_0
    return-object v13

    .line 932
    .end local v0    # "uri":Ljava/net/URI;
    .end local v3    # "redirect":Lorg/apache/http/client/methods/HttpGet;
    .end local v4    # "orig":Lorg/apache/http/HttpRequest;
    .end local v11    # "wrapper":Lorg/apache/http/impl/client/RequestWrapper;
    .end local v12    # "newRoute":Lorg/apache/http/conn/routing/HttpRoute;
    .end local v13    # "newRequest":Lorg/apache/http/impl/client/RoutedRequest;
    .end local v16    # "newTarget":Lorg/apache/http/HttpHost;
    :cond_1
    new-instance v0, Lorg/apache/http/client/RedirectException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Maximum redirects ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lorg/apache/http/impl/client/DefaultRequestDirector;->maxRedirects:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") exceeded"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/apache/http/client/RedirectException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 962
    :cond_2
    nop

    .line 963
    const-string v0, "http.auth.credentials-provider"

    invoke-interface {v6, v0}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lorg/apache/http/client/CredentialsProvider;

    .line 965
    .local v11, "credsProvider":Lorg/apache/http/client/CredentialsProvider;
    const/4 v12, 0x0

    if-eqz v11, :cond_a

    invoke-static {v10}, Lorg/apache/http/client/params/HttpClientParams;->isAuthenticating(Lorg/apache/http/params/HttpParams;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 967
    iget-object v0, v1, Lorg/apache/http/impl/client/DefaultRequestDirector;->targetAuthHandler:Lorg/apache/http/client/AuthenticationHandler;

    invoke-interface {v0, v5, v6}, Lorg/apache/http/client/AuthenticationHandler;->isAuthenticationRequested(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Z

    move-result v0

    const-string v13, "Authentication error: "

    if-eqz v0, :cond_6

    .line 969
    nop

    .line 970
    const-string v0, "http.target_host"

    invoke-interface {v6, v0}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/HttpHost;

    .line 971
    .local v0, "target":Lorg/apache/http/HttpHost;
    if-nez v0, :cond_3

    .line 972
    invoke-virtual {v7}, Lorg/apache/http/conn/routing/HttpRoute;->getTargetHost()Lorg/apache/http/HttpHost;

    move-result-object v0

    move-object v14, v0

    goto :goto_1

    .line 971
    :cond_3
    move-object v14, v0

    .line 975
    .end local v0    # "target":Lorg/apache/http/HttpHost;
    .local v14, "target":Lorg/apache/http/HttpHost;
    :goto_1
    iget-object v0, v1, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    const-string v2, "Target requested authentication"

    invoke-interface {v0, v2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 976
    iget-object v0, v1, Lorg/apache/http/impl/client/DefaultRequestDirector;->targetAuthHandler:Lorg/apache/http/client/AuthenticationHandler;

    invoke-interface {v0, v5, v6}, Lorg/apache/http/client/AuthenticationHandler;->getChallenges(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Ljava/util/Map;

    move-result-object v2

    .line 979
    .local v2, "challenges":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/http/Header;>;"
    :try_start_0
    iget-object v3, v1, Lorg/apache/http/impl/client/DefaultRequestDirector;->targetAuthState:Lorg/apache/http/auth/AuthState;

    iget-object v4, v1, Lorg/apache/http/impl/client/DefaultRequestDirector;->targetAuthHandler:Lorg/apache/http/client/AuthenticationHandler;

    invoke-direct/range {v1 .. v6}, Lorg/apache/http/impl/client/DefaultRequestDirector;->processChallenges(Ljava/util/Map;Lorg/apache/http/auth/AuthState;Lorg/apache/http/client/AuthenticationHandler;Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)V
    :try_end_0
    .catch Lorg/apache/http/auth/AuthenticationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 987
    goto :goto_2

    .line 982
    :catch_0
    move-exception v0

    .line 983
    .local v0, "ex":Lorg/apache/http/auth/AuthenticationException;
    iget-object v3, v1, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v3}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 984
    iget-object v3, v1, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lorg/apache/http/auth/AuthenticationException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    .line 985
    return-object v12

    .line 988
    .end local v0    # "ex":Lorg/apache/http/auth/AuthenticationException;
    :cond_4
    :goto_2
    iget-object v0, v1, Lorg/apache/http/impl/client/DefaultRequestDirector;->targetAuthState:Lorg/apache/http/auth/AuthState;

    invoke-direct {v1, v0, v14, v11}, Lorg/apache/http/impl/client/DefaultRequestDirector;->updateAuthState(Lorg/apache/http/auth/AuthState;Lorg/apache/http/HttpHost;Lorg/apache/http/client/CredentialsProvider;)V

    .line 990
    iget-object v0, v1, Lorg/apache/http/impl/client/DefaultRequestDirector;->targetAuthState:Lorg/apache/http/auth/AuthState;

    invoke-virtual {v0}, Lorg/apache/http/auth/AuthState;->getCredentials()Lorg/apache/http/auth/Credentials;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 992
    return-object p1

    .line 994
    :cond_5
    return-object v12

    .line 998
    .end local v2    # "challenges":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/http/Header;>;"
    .end local v14    # "target":Lorg/apache/http/HttpHost;
    :cond_6
    iget-object v0, v1, Lorg/apache/http/impl/client/DefaultRequestDirector;->targetAuthState:Lorg/apache/http/auth/AuthState;

    invoke-virtual {v0, v12}, Lorg/apache/http/auth/AuthState;->setAuthScope(Lorg/apache/http/auth/AuthScope;)V

    .line 1001
    iget-object v0, v1, Lorg/apache/http/impl/client/DefaultRequestDirector;->proxyAuthHandler:Lorg/apache/http/client/AuthenticationHandler;

    invoke-interface {v0, v5, v6}, Lorg/apache/http/client/AuthenticationHandler;->isAuthenticationRequested(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1003
    iget-object v0, v1, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    const-string v2, "Proxy requested authentication"

    invoke-interface {v0, v2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 1004
    iget-object v0, v1, Lorg/apache/http/impl/client/DefaultRequestDirector;->proxyAuthHandler:Lorg/apache/http/client/AuthenticationHandler;

    invoke-interface {v0, v5, v6}, Lorg/apache/http/client/AuthenticationHandler;->getChallenges(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Ljava/util/Map;

    move-result-object v2

    .line 1007
    .restart local v2    # "challenges":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/http/Header;>;"
    :try_start_1
    iget-object v3, v1, Lorg/apache/http/impl/client/DefaultRequestDirector;->proxyAuthState:Lorg/apache/http/auth/AuthState;

    iget-object v4, v1, Lorg/apache/http/impl/client/DefaultRequestDirector;->proxyAuthHandler:Lorg/apache/http/client/AuthenticationHandler;

    invoke-direct/range {v1 .. v6}, Lorg/apache/http/impl/client/DefaultRequestDirector;->processChallenges(Ljava/util/Map;Lorg/apache/http/auth/AuthState;Lorg/apache/http/client/AuthenticationHandler;Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)V
    :try_end_1
    .catch Lorg/apache/http/auth/AuthenticationException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1015
    goto :goto_3

    .line 1010
    :catch_1
    move-exception v0

    .line 1011
    .restart local v0    # "ex":Lorg/apache/http/auth/AuthenticationException;
    iget-object v3, v1, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v3}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1012
    iget-object v3, v1, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lorg/apache/http/auth/AuthenticationException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    .line 1013
    return-object v12

    .line 1016
    .end local v0    # "ex":Lorg/apache/http/auth/AuthenticationException;
    :cond_7
    :goto_3
    iget-object v0, v1, Lorg/apache/http/impl/client/DefaultRequestDirector;->proxyAuthState:Lorg/apache/http/auth/AuthState;

    invoke-direct {v1, v0, v8, v11}, Lorg/apache/http/impl/client/DefaultRequestDirector;->updateAuthState(Lorg/apache/http/auth/AuthState;Lorg/apache/http/HttpHost;Lorg/apache/http/client/CredentialsProvider;)V

    .line 1018
    iget-object v0, v1, Lorg/apache/http/impl/client/DefaultRequestDirector;->proxyAuthState:Lorg/apache/http/auth/AuthState;

    invoke-virtual {v0}, Lorg/apache/http/auth/AuthState;->getCredentials()Lorg/apache/http/auth/Credentials;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 1020
    return-object p1

    .line 1022
    :cond_8
    return-object v12

    .line 1026
    .end local v2    # "challenges":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/http/Header;>;"
    :cond_9
    iget-object v0, v1, Lorg/apache/http/impl/client/DefaultRequestDirector;->proxyAuthState:Lorg/apache/http/auth/AuthState;

    invoke-virtual {v0, v12}, Lorg/apache/http/auth/AuthState;->setAuthScope(Lorg/apache/http/auth/AuthScope;)V

    .line 1029
    :cond_a
    return-object v12
.end method

.method protected releaseConnection()V
    .locals 3

    .line 559
    :try_start_0
    iget-object v0, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    invoke-interface {v0}, Lorg/apache/http/conn/ManagedClientConnection;->releaseConnection()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 562
    goto :goto_0

    .line 560
    :catch_0
    move-exception v0

    .line 561
    .local v0, "ignored":Ljava/io/IOException;
    iget-object v1, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    const-string v2, "IOException releasing connection"

    invoke-interface {v1, v2, v0}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 563
    .end local v0    # "ignored":Ljava/io/IOException;
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    .line 564
    return-void
.end method

.method protected rewriteRequestURI(Lorg/apache/http/impl/client/RequestWrapper;Lorg/apache/http/conn/routing/HttpRoute;)V
    .locals 4
    .param p1, "request"    # Lorg/apache/http/impl/client/RequestWrapper;
    .param p2, "route"    # Lorg/apache/http/conn/routing/HttpRoute;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/ProtocolException;
        }
    .end annotation

    .line 268
    :try_start_0
    invoke-virtual {p1}, Lorg/apache/http/impl/client/RequestWrapper;->getURI()Ljava/net/URI;

    move-result-object v0

    .line 269
    .local v0, "uri":Ljava/net/URI;
    invoke-virtual {p2}, Lorg/apache/http/conn/routing/HttpRoute;->getProxyHost()Lorg/apache/http/HttpHost;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Lorg/apache/http/conn/routing/HttpRoute;->isTunnelled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 271
    invoke-virtual {v0}, Ljava/net/URI;->isAbsolute()Z

    move-result v1

    if-nez v1, :cond_1

    .line 272
    invoke-virtual {p2}, Lorg/apache/http/conn/routing/HttpRoute;->getTargetHost()Lorg/apache/http/HttpHost;

    move-result-object v1

    .line 273
    .local v1, "target":Lorg/apache/http/HttpHost;
    invoke-static {v0, v1}, Lorg/apache/http/client/utils/URIUtils;->rewriteURI(Ljava/net/URI;Lorg/apache/http/HttpHost;)Ljava/net/URI;

    move-result-object v2

    .line 274
    .end local v0    # "uri":Ljava/net/URI;
    .local v2, "uri":Ljava/net/URI;
    invoke-virtual {p1, v2}, Lorg/apache/http/impl/client/RequestWrapper;->setURI(Ljava/net/URI;)V

    .line 275
    .end local v1    # "target":Lorg/apache/http/HttpHost;
    goto :goto_0

    .line 278
    .end local v2    # "uri":Ljava/net/URI;
    .restart local v0    # "uri":Ljava/net/URI;
    :cond_0
    invoke-virtual {v0}, Ljava/net/URI;->isAbsolute()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 279
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/apache/http/client/utils/URIUtils;->rewriteURI(Ljava/net/URI;Lorg/apache/http/HttpHost;)Ljava/net/URI;

    move-result-object v1

    .line 280
    .end local v0    # "uri":Ljava/net/URI;
    .local v1, "uri":Ljava/net/URI;
    invoke-virtual {p1, v1}, Lorg/apache/http/impl/client/RequestWrapper;->setURI(Ljava/net/URI;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 287
    .end local v1    # "uri":Ljava/net/URI;
    :cond_1
    :goto_0
    nop

    .line 288
    return-void

    .line 284
    :catch_0
    move-exception v0

    .line 285
    .local v0, "ex":Ljava/net/URISyntaxException;
    new-instance v1, Lorg/apache/http/ProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid URI: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 286
    invoke-virtual {p1}, Lorg/apache/http/impl/client/RequestWrapper;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/RequestLine;->getUri()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/apache/http/ProtocolException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
