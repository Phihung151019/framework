.class public Lcom/samsung/android/server/wifi/util/SemWifiAsyncChannel;
.super Lcom/android/internal/util/AsyncChannel;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SemWifiAsyncChannel"


# instance fields
.field private mLog:Lcom/samsung/android/server/wifi/util/SemWifiLog;

.field private mTag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "SemWifiAsyncChannel."

    .line 5
    .line 6
    invoke-static {v0, p1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Lcom/samsung/android/server/wifi/util/SemWifiAsyncChannel;->mTag:Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method

.method private getOrInitLog()Lcom/samsung/android/server/wifi/util/SemWifiLog;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/util/SemWifiAsyncChannel;->mLog:Lcom/samsung/android/server/wifi/util/SemWifiLog;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/samsung/android/server/wifi/util/SemWifiAsyncChannel;->mTag:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiInjector;->makeLog(Ljava/lang/String;)Lcom/samsung/android/server/wifi/util/SemWifiLog;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/samsung/android/server/wifi/util/SemWifiAsyncChannel;->mLog:Lcom/samsung/android/server/wifi/util/SemWifiLog;

    .line 16
    .line 17
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/util/SemWifiAsyncChannel;->mLog:Lcom/samsung/android/server/wifi/util/SemWifiLog;

    .line 18
    .line 19
    return-object p0
.end method


# virtual methods
.method public replyToMessage(Landroid/os/Message;Landroid/os/Message;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/util/SemWifiAsyncChannel;->getOrInitLog()Lcom/samsung/android/server/wifi/util/SemWifiLog;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "replyToMessage recvdMessage=% sendingUid=% sentMessage=%"

    .line 6
    .line 7
    invoke-interface {v0, v1}, Lcom/samsung/android/server/wifi/util/SemWifiLog;->trace(Ljava/lang/String;)Lcom/samsung/android/server/wifi/util/SemWifiLog$LogMessage;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget v1, p1, Landroid/os/Message;->what:I

    .line 12
    .line 13
    int-to-long v1, v1

    .line 14
    invoke-interface {v0, v1, v2}, Lcom/samsung/android/server/wifi/util/SemWifiLog$LogMessage;->c(J)Lcom/samsung/android/server/wifi/util/SemWifiLog$LogMessage;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iget v1, p1, Landroid/os/Message;->sendingUid:I

    .line 19
    .line 20
    int-to-long v1, v1

    .line 21
    invoke-interface {v0, v1, v2}, Lcom/samsung/android/server/wifi/util/SemWifiLog$LogMessage;->c(J)Lcom/samsung/android/server/wifi/util/SemWifiLog$LogMessage;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iget v1, p2, Landroid/os/Message;->what:I

    .line 26
    .line 27
    int-to-long v1, v1

    .line 28
    invoke-interface {v0, v1, v2}, Lcom/samsung/android/server/wifi/util/SemWifiLog$LogMessage;->c(J)Lcom/samsung/android/server/wifi/util/SemWifiLog$LogMessage;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-interface {v0}, Lcom/samsung/android/server/wifi/util/SemWifiLog$LogMessage;->flush()V

    .line 33
    .line 34
    .line 35
    invoke-super {p0, p1, p2}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;Landroid/os/Message;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public sendMessage(Landroid/os/Message;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/util/SemWifiAsyncChannel;->getOrInitLog()Lcom/samsung/android/server/wifi/util/SemWifiLog;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "sendMessage message=%"

    .line 6
    .line 7
    invoke-interface {v0, v1}, Lcom/samsung/android/server/wifi/util/SemWifiLog;->trace(Ljava/lang/String;)Lcom/samsung/android/server/wifi/util/SemWifiLog$LogMessage;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget v1, p1, Landroid/os/Message;->what:I

    .line 12
    .line 13
    int-to-long v1, v1

    .line 14
    invoke-interface {v0, v1, v2}, Lcom/samsung/android/server/wifi/util/SemWifiLog$LogMessage;->c(J)Lcom/samsung/android/server/wifi/util/SemWifiLog$LogMessage;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-interface {v0}, Lcom/samsung/android/server/wifi/util/SemWifiLog$LogMessage;->flush()V

    .line 19
    .line 20
    .line 21
    invoke-super {p0, p1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(Landroid/os/Message;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public sendMessageSynchronously(Landroid/os/Message;)Landroid/os/Message;
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/util/SemWifiAsyncChannel;->getOrInitLog()Lcom/samsung/android/server/wifi/util/SemWifiLog;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "sendMessageSynchronously.send message=%"

    .line 6
    .line 7
    invoke-interface {v0, v1}, Lcom/samsung/android/server/wifi/util/SemWifiLog;->trace(Ljava/lang/String;)Lcom/samsung/android/server/wifi/util/SemWifiLog$LogMessage;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget v1, p1, Landroid/os/Message;->what:I

    .line 12
    .line 13
    int-to-long v1, v1

    .line 14
    invoke-interface {v0, v1, v2}, Lcom/samsung/android/server/wifi/util/SemWifiLog$LogMessage;->c(J)Lcom/samsung/android/server/wifi/util/SemWifiLog$LogMessage;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-interface {v0}, Lcom/samsung/android/server/wifi/util/SemWifiLog$LogMessage;->flush()V

    .line 19
    .line 20
    .line 21
    invoke-super {p0, p1}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(Landroid/os/Message;)Landroid/os/Message;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    if-eqz p1, :cond_0

    .line 26
    .line 27
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/util/SemWifiAsyncChannel;->getOrInitLog()Lcom/samsung/android/server/wifi/util/SemWifiLog;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    const-string v0, "sendMessageSynchronously.recv message=% sendingUid=%"

    .line 32
    .line 33
    invoke-interface {p0, v0}, Lcom/samsung/android/server/wifi/util/SemWifiLog;->trace(Ljava/lang/String;)Lcom/samsung/android/server/wifi/util/SemWifiLog$LogMessage;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    iget v0, p1, Landroid/os/Message;->what:I

    .line 38
    .line 39
    int-to-long v0, v0

    .line 40
    invoke-interface {p0, v0, v1}, Lcom/samsung/android/server/wifi/util/SemWifiLog$LogMessage;->c(J)Lcom/samsung/android/server/wifi/util/SemWifiLog$LogMessage;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    iget v0, p1, Landroid/os/Message;->sendingUid:I

    .line 45
    .line 46
    int-to-long v0, v0

    .line 47
    invoke-interface {p0, v0, v1}, Lcom/samsung/android/server/wifi/util/SemWifiLog$LogMessage;->c(J)Lcom/samsung/android/server/wifi/util/SemWifiLog$LogMessage;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    invoke-interface {p0}, Lcom/samsung/android/server/wifi/util/SemWifiLog$LogMessage;->flush()V

    .line 52
    .line 53
    .line 54
    :cond_0
    return-object p1
.end method

.method public setSemWifiLog(Lcom/samsung/android/server/wifi/util/SemWifiLog;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/util/SemWifiAsyncChannel;->mLog:Lcom/samsung/android/server/wifi/util/SemWifiLog;

    .line 2
    .line 3
    return-void
.end method
