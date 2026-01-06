.class public abstract Lcom/samsung/android/server/wifi/util/SemPacketReader;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# static fields
.field public static final DEFAULT_RECV_BUF_SIZE:I = 0x800

.field private static final FD_EVENTS:I = 0x5

.field private static final UNREGISTER_THIS_FD:I


# instance fields
.field private mFd:Ljava/io/FileDescriptor;

.field private final mHandler:Landroid/os/Handler;

.field private final mPacket:[B

.field private mPacketsReceived:J

.field private final mQueue:Landroid/os/MessageQueue;


# direct methods
.method static bridge synthetic -$$Nest$mhandleInput(Lcom/samsung/android/server/wifi/util/SemPacketReader;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/util/SemPacketReader;->handleInput()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static bridge synthetic -$$Nest$misRunning(Lcom/samsung/android/server/wifi/util/SemPacketReader;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/util/SemPacketReader;->isRunning()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static bridge synthetic -$$Nest$munregisterAndDestroyFd(Lcom/samsung/android/server/wifi/util/SemPacketReader;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/util/SemPacketReader;->unregisterAndDestroyFd()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method protected constructor <init>(Landroid/os/Handler;)V
    .locals 1

    const/16 v0, 0x800

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/server/wifi/util/SemPacketReader;-><init>(Landroid/os/Handler;I)V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Handler;I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/samsung/android/server/wifi/util/SemPacketReader;->mHandler:Landroid/os/Handler;

    .line 4
    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/server/wifi/util/SemPacketReader;->mQueue:Landroid/os/MessageQueue;

    const/16 p1, 0x800

    .line 5
    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/samsung/android/server/wifi/util/SemPacketReader;->mPacket:[B

    return-void
.end method

.method protected static closeFd(Ljava/io/FileDescriptor;)V
    .locals 0

    .line 1
    invoke-static {p0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private createAndRegisterFd()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/util/SemPacketReader;->mFd:Ljava/io/FileDescriptor;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/util/SemPacketReader;->createFd()Ljava/io/FileDescriptor;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    iput-object v2, p0, Lcom/samsung/android/server/wifi/util/SemPacketReader;->mFd:Ljava/io/FileDescriptor;

    .line 13
    .line 14
    if-eqz v2, :cond_1

    .line 15
    .line 16
    invoke-static {v2, v0}, Llibcore/io/IoUtils;->setBlocking(Ljava/io/FileDescriptor;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catch_0
    move-exception v2

    .line 21
    const-string v3, "Failed to create socket: "

    .line 22
    .line 23
    invoke-virtual {p0, v3, v2}, Lcom/samsung/android/server/wifi/util/SemPacketReader;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 24
    .line 25
    .line 26
    iget-object v2, p0, Lcom/samsung/android/server/wifi/util/SemPacketReader;->mFd:Ljava/io/FileDescriptor;

    .line 27
    .line 28
    invoke-static {v2}, Lcom/samsung/android/server/wifi/util/SemPacketReader;->closeFd(Ljava/io/FileDescriptor;)V

    .line 29
    .line 30
    .line 31
    const/4 v2, 0x0

    .line 32
    iput-object v2, p0, Lcom/samsung/android/server/wifi/util/SemPacketReader;->mFd:Ljava/io/FileDescriptor;

    .line 33
    .line 34
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/server/wifi/util/SemPacketReader;->mFd:Ljava/io/FileDescriptor;

    .line 35
    .line 36
    if-nez v2, :cond_2

    .line 37
    .line 38
    return v0

    .line 39
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/server/wifi/util/SemPacketReader;->mQueue:Landroid/os/MessageQueue;

    .line 40
    .line 41
    new-instance v3, Lcom/samsung/android/server/wifi/util/SemPacketReader$1;

    .line 42
    .line 43
    invoke-direct {v3, p0}, Lcom/samsung/android/server/wifi/util/SemPacketReader$1;-><init>(Lcom/samsung/android/server/wifi/util/SemPacketReader;)V

    .line 44
    .line 45
    .line 46
    const/4 v4, 0x5

    .line 47
    invoke-virtual {v0, v2, v4, v3}, Landroid/os/MessageQueue;->addOnFileDescriptorEventListener(Ljava/io/FileDescriptor;ILandroid/os/MessageQueue$OnFileDescriptorEventListener;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/util/SemPacketReader;->onStart()V

    .line 51
    .line 52
    .line 53
    return v1
.end method

.method public static varargs getMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-static {p3}, Lcom/samsung/android/server/wifi/util/SemPacketReader;->getObjectType([Ljava/lang/Object;)[Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p1, p2, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    const/4 p2, 0x1

    .line 14
    invoke-virtual {p1, p2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, p0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    return-object p0

    .line 22
    :catch_0
    move-exception p0

    .line 23
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 24
    .line 25
    .line 26
    instance-of p1, p0, Ljava/lang/reflect/InvocationTargetException;

    .line 27
    .line 28
    if-nez p1, :cond_0

    .line 29
    .line 30
    const/4 p0, 0x0

    .line 31
    return-object p0

    .line 32
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    check-cast p0, Ljava/lang/Exception;

    .line 37
    .line 38
    throw p0
.end method

.method public static varargs getObjectType([Ljava/lang/Object;)[Ljava/lang/Class;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1
    array-length v0, p0

    .line 2
    new-array v0, v0, [Ljava/lang/Class;

    .line 3
    .line 4
    :try_start_0
    const-string v1, "android.system.PacketSocketAddress"

    .line 5
    .line 6
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    const/4 v2, 0x0

    .line 11
    :goto_0
    array-length v3, p0

    .line 12
    if-ge v2, v3, :cond_a

    .line 13
    .line 14
    aget-object v3, p0, v2

    .line 15
    .line 16
    instance-of v4, v3, Ljava/lang/Integer;

    .line 17
    .line 18
    if-eqz v4, :cond_0

    .line 19
    .line 20
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 21
    .line 22
    aput-object v3, v0, v2

    .line 23
    .line 24
    goto :goto_2

    .line 25
    :cond_0
    instance-of v4, v3, Ljava/lang/Long;

    .line 26
    .line 27
    if-eqz v4, :cond_1

    .line 28
    .line 29
    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 30
    .line 31
    aput-object v3, v0, v2

    .line 32
    .line 33
    goto :goto_2

    .line 34
    :cond_1
    instance-of v4, v3, Ljava/lang/Boolean;

    .line 35
    .line 36
    if-eqz v4, :cond_2

    .line 37
    .line 38
    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 39
    .line 40
    aput-object v3, v0, v2

    .line 41
    .line 42
    goto :goto_2

    .line 43
    :cond_2
    instance-of v4, v3, Ljava/lang/Float;

    .line 44
    .line 45
    if-eqz v4, :cond_3

    .line 46
    .line 47
    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 48
    .line 49
    aput-object v3, v0, v2

    .line 50
    .line 51
    goto :goto_2

    .line 52
    :cond_3
    instance-of v4, v3, Ljava/lang/Double;

    .line 53
    .line 54
    if-eqz v4, :cond_4

    .line 55
    .line 56
    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 57
    .line 58
    aput-object v3, v0, v2

    .line 59
    .line 60
    goto :goto_2

    .line 61
    :cond_4
    instance-of v4, v3, Ljava/lang/Short;

    .line 62
    .line 63
    if-eqz v4, :cond_5

    .line 64
    .line 65
    sget-object v3, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    .line 66
    .line 67
    aput-object v3, v0, v2

    .line 68
    .line 69
    goto :goto_2

    .line 70
    :cond_5
    instance-of v4, v3, Ljava/lang/Byte;

    .line 71
    .line 72
    if-eqz v4, :cond_6

    .line 73
    .line 74
    sget-object v3, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    .line 75
    .line 76
    aput-object v3, v0, v2

    .line 77
    .line 78
    goto :goto_2

    .line 79
    :cond_6
    instance-of v4, v3, Ljava/net/Inet4Address;

    .line 80
    .line 81
    if-nez v4, :cond_9

    .line 82
    .line 83
    instance-of v4, v3, Ljava/net/Inet6Address;

    .line 84
    .line 85
    if-eqz v4, :cond_7

    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_7
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    if-ne v3, v1, :cond_8

    .line 93
    .line 94
    const-class v3, Ljava/net/SocketAddress;

    .line 95
    .line 96
    aput-object v3, v0, v2

    .line 97
    .line 98
    goto :goto_2

    .line 99
    :cond_8
    aget-object v3, p0, v2

    .line 100
    .line 101
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    aput-object v3, v0, v2

    .line 106
    .line 107
    goto :goto_2

    .line 108
    :cond_9
    :goto_1
    const-class v3, Ljava/net/InetAddress;

    .line 109
    .line 110
    aput-object v3, v0, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    .line 112
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 113
    .line 114
    goto :goto_0

    .line 115
    :cond_a
    return-object v0

    .line 116
    :catch_0
    const/4 p0, 0x0

    .line 117
    return-object p0
.end method

.method private handleInput()Z
    .locals 7

    .line 1
    const-string v0, "readPacket error: "

    .line 2
    .line 3
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/util/SemPacketReader;->isRunning()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_3

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/server/wifi/util/SemPacketReader;->mFd:Ljava/io/FileDescriptor;

    .line 11
    .line 12
    iget-object v3, p0, Lcom/samsung/android/server/wifi/util/SemPacketReader;->mPacket:[B

    .line 13
    .line 14
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/server/wifi/util/SemPacketReader;->readPacket(Ljava/io/FileDescriptor;[B)I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-ge v2, v1, :cond_0

    .line 19
    .line 20
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/util/SemPacketReader;->isRunning()Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_3

    .line 25
    .line 26
    const-string v2, "Socket closed, exiting"

    .line 27
    .line 28
    const/4 v3, 0x0

    .line 29
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/server/wifi/util/SemPacketReader;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 30
    .line 31
    .line 32
    goto :goto_3

    .line 33
    :catch_0
    move-exception v1

    .line 34
    goto :goto_1

    .line 35
    :catch_1
    move-exception v2

    .line 36
    goto :goto_2

    .line 37
    :cond_0
    iget-wide v3, p0, Lcom/samsung/android/server/wifi/util/SemPacketReader;->mPacketsReceived:J

    .line 38
    .line 39
    const-wide/16 v5, 0x1

    .line 40
    .line 41
    add-long/2addr v3, v5

    .line 42
    iput-wide v3, p0, Lcom/samsung/android/server/wifi/util/SemPacketReader;->mPacketsReceived:J
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    .line 44
    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/server/wifi/util/SemPacketReader;->mPacket:[B

    .line 45
    .line 46
    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/server/wifi/util/SemPacketReader;->handlePacket([BI)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :catch_2
    move-exception v0

    .line 51
    const-string v1, "handlePacket error: "

    .line 52
    .line 53
    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/server/wifi/util/SemPacketReader;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 54
    .line 55
    .line 56
    goto :goto_3

    .line 57
    :goto_1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/util/SemPacketReader;->isRunning()Z

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    if-eqz v2, :cond_3

    .line 62
    .line 63
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/server/wifi/util/SemPacketReader;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 64
    .line 65
    .line 66
    goto :goto_3

    .line 67
    :goto_2
    iget v3, v2, Landroid/system/ErrnoException;->errno:I

    .line 68
    .line 69
    sget v4, Landroid/system/OsConstants;->EAGAIN:I

    .line 70
    .line 71
    if-ne v3, v4, :cond_1

    .line 72
    .line 73
    return v1

    .line 74
    :cond_1
    sget v1, Landroid/system/OsConstants;->EINTR:I

    .line 75
    .line 76
    if-ne v3, v1, :cond_2

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/util/SemPacketReader;->isRunning()Z

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    if-eqz v1, :cond_3

    .line 84
    .line 85
    invoke-virtual {p0, v0, v2}, Lcom/samsung/android/server/wifi/util/SemPacketReader;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 86
    .line 87
    .line 88
    :cond_3
    :goto_3
    const/4 p0, 0x0

    .line 89
    return p0
.end method

.method private isRunning()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/util/SemPacketReader;->mFd:Ljava/io/FileDescriptor;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/io/FileDescriptor;->valid()Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x1

    .line 12
    return p0

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    return p0
.end method

.method private onCorrectThread()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/util/SemPacketReader;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-ne p0, v0, :cond_0

    .line 12
    .line 13
    const/4 p0, 0x1

    .line 14
    return p0

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    return p0
.end method

.method private unregisterAndDestroyFd()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/util/SemPacketReader;->mFd:Ljava/io/FileDescriptor;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/util/SemPacketReader;->mQueue:Landroid/os/MessageQueue;

    .line 7
    .line 8
    invoke-virtual {v1, v0}, Landroid/os/MessageQueue;->removeOnFileDescriptorEventListener(Ljava/io/FileDescriptor;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/samsung/android/server/wifi/util/SemPacketReader;->mFd:Ljava/io/FileDescriptor;

    .line 12
    .line 13
    invoke-static {v0}, Lcom/samsung/android/server/wifi/util/SemPacketReader;->closeFd(Ljava/io/FileDescriptor;)V

    .line 14
    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lcom/samsung/android/server/wifi/util/SemPacketReader;->mFd:Ljava/io/FileDescriptor;

    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/util/SemPacketReader;->onStop()V

    .line 20
    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method protected abstract createFd()Ljava/io/FileDescriptor;
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/util/SemPacketReader;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    return-object p0
.end method

.method protected handlePacket([BI)V
    .locals 0

    .line 1
    return-void
.end method

.method protected logError(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final numPacketsReceived()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/util/SemPacketReader;->mPacketsReceived:J

    .line 2
    .line 3
    return-wide v0
.end method

.method protected onStart()V
    .locals 0

    .line 1
    return-void
.end method

.method protected onStop()V
    .locals 0

    .line 1
    return-void
.end method

.method protected readPacket(Ljava/io/FileDescriptor;[B)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    array-length p0, p2

    .line 2
    const/4 v0, 0x0

    .line 3
    invoke-static {p1, p2, v0, p0}, Landroid/system/Os;->read(Ljava/io/FileDescriptor;[BII)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final recvBufSize()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/util/SemPacketReader;->mPacket:[B

    .line 2
    .line 3
    array-length p0, p0

    .line 4
    return p0
.end method

.method public start()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/util/SemPacketReader;->onCorrectThread()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/util/SemPacketReader;->createAndRegisterFd()Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0

    .line 12
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 13
    .line 14
    const-string v0, "start() called from off-thread"

    .line 15
    .line 16
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    throw p0
.end method

.method public stop()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/util/SemPacketReader;->onCorrectThread()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/util/SemPacketReader;->unregisterAndDestroyFd()V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 12
    .line 13
    const-string v0, "stop() called from off-thread"

    .line 14
    .line 15
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    throw p0
.end method
