.class public final Lcom/samsung/android/mcf/continuity/streaming/ContinuitySessionStreamManagerImpl;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# instance fields
.field private final mContinuityMediaStreamClient:Lcom/samsung/android/mcf/continuity/streaming/ContinuityMediaStreamClient;

.field private final mContinuityMediaStreamServer:Lcom/samsung/android/mcf/continuity/streaming/ContinuityMediaStreamServer;

.field private final mContinuityStreamingCmdManager:Lcom/samsung/android/mcf/continuity/impl/common/ContinuityRtpStreamingCommandManagerImpl;


# direct methods
.method public constructor <init>(Lcom/samsung/android/mcf/continuity/impl/common/ContinuityRtpStreamingCommandManagerImpl;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/samsung/android/mcf/continuity/streaming/ContinuityMediaStreamServer;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Lcom/samsung/android/mcf/continuity/streaming/ContinuityMediaStreamServer;-><init>(Lcom/samsung/android/mcf/continuity/impl/common/ContinuityRtpStreamingCommandManagerImpl;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/samsung/android/mcf/continuity/streaming/ContinuitySessionStreamManagerImpl;->mContinuityMediaStreamServer:Lcom/samsung/android/mcf/continuity/streaming/ContinuityMediaStreamServer;

    .line 10
    .line 11
    new-instance v1, Lcom/samsung/android/mcf/continuity/streaming/ContinuityMediaStreamClient;

    .line 12
    .line 13
    invoke-direct {v1, p1}, Lcom/samsung/android/mcf/continuity/streaming/ContinuityMediaStreamClient;-><init>(Lcom/samsung/android/mcf/continuity/impl/common/ContinuityRtpStreamingCommandManagerImpl;)V

    .line 14
    .line 15
    .line 16
    iput-object v1, p0, Lcom/samsung/android/mcf/continuity/streaming/ContinuitySessionStreamManagerImpl;->mContinuityMediaStreamClient:Lcom/samsung/android/mcf/continuity/streaming/ContinuityMediaStreamClient;

    .line 17
    .line 18
    new-instance v2, Lcom/samsung/android/mcf/continuity/streaming/ContinuityStreamingMessageListener;

    .line 19
    .line 20
    invoke-direct {v2, v0, v1}, Lcom/samsung/android/mcf/continuity/streaming/ContinuityStreamingMessageListener;-><init>(Lcom/samsung/android/mcf/continuity/streaming/ContinuityMediaStreamServer;Lcom/samsung/android/mcf/continuity/streaming/ContinuityMediaStreamClient;)V

    .line 21
    .line 22
    .line 23
    iput-object p1, p0, Lcom/samsung/android/mcf/continuity/streaming/ContinuitySessionStreamManagerImpl;->mContinuityStreamingCmdManager:Lcom/samsung/android/mcf/continuity/impl/common/ContinuityRtpStreamingCommandManagerImpl;

    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public final destroy()V
    .locals 4

    .line 1
    const-string v0, "ContinuityStreamingManagerImpl"

    .line 2
    .line 3
    const-string v1, "destroy"

    .line 4
    .line 5
    const-string v2, "-"

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, Lcom/samsung/android/mcf/continuity/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const-string v1, "stopStreamingServer"

    .line 11
    .line 12
    const-string v3, "in"

    .line 13
    .line 14
    invoke-static {v0, v1, v3}, Lcom/samsung/android/mcf/continuity/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iget-object v1, p0, Lcom/samsung/android/mcf/continuity/streaming/ContinuitySessionStreamManagerImpl;->mContinuityMediaStreamServer:Lcom/samsung/android/mcf/continuity/streaming/ContinuityMediaStreamServer;

    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/samsung/android/mcf/continuity/streaming/ContinuityMediaStreamServer;->stopStreamServer()V

    .line 20
    .line 21
    .line 22
    const-string v1, "stopStreamingClient"

    .line 23
    .line 24
    invoke-static {v0, v1, v3}, Lcom/samsung/android/mcf/continuity/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/streaming/ContinuitySessionStreamManagerImpl;->mContinuityMediaStreamClient:Lcom/samsung/android/mcf/continuity/streaming/ContinuityMediaStreamClient;

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/samsung/android/mcf/continuity/streaming/ContinuityMediaStreamClient;->stopStreamingClient()V

    .line 30
    .line 31
    .line 32
    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/streaming/ContinuitySessionStreamManagerImpl;->mContinuityStreamingCmdManager:Lcom/samsung/android/mcf/continuity/impl/common/ContinuityRtpStreamingCommandManagerImpl;

    .line 33
    .line 34
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    const-string v0, "ContinuityRtpStreamingCommandManagerImpl"

    .line 38
    .line 39
    const-string v1, "unregisterMessageListener"

    .line 40
    .line 41
    invoke-static {v0, v1, v2}, Lcom/samsung/android/mcf/continuity/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    new-instance v0, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityRtpStreamingCommandManagerImpl$$ExternalSyntheticLambda0;

    .line 45
    .line 46
    invoke-direct {v0, p0}, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityRtpStreamingCommandManagerImpl$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/mcf/continuity/impl/common/ContinuityRtpStreamingCommandManagerImpl;)V

    .line 47
    .line 48
    .line 49
    invoke-static {v0}, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->executeOnMain(Ljava/lang/Runnable;)Z

    .line 50
    .line 51
    .line 52
    return-void
.end method
