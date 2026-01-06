.class Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl$HostapdDeathRecipient;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HostapdDeathRecipient"
.end annotation


# instance fields
.field private final mWho:Landroid/os/IBinder;

.field final synthetic this$0:Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;


# direct methods
.method public static synthetic $r8$lambda$w6fODN9CEujAOymQREiU53judEE(Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl$HostapdDeathRecipient;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl$HostapdDeathRecipient;->lambda$binderDied$0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method constructor <init>(Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;Landroid/os/IBinder;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl$HostapdDeathRecipient;->this$0:Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl$HostapdDeathRecipient;->mWho:Landroid/os/IBinder;

    .line 7
    .line 8
    return-void
.end method

.method private synthetic lambda$binderDied$0()V
    .locals 4

    .line 1
    const-string v0, "SemHostapdHalAidlImpl IHostapd/clearState died.:mWho "

    .line 2
    .line 3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl$HostapdDeathRecipient;->this$0:Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;

    .line 4
    .line 5
    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->-$$Nest$fgetmLock(Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    monitor-enter v1

    .line 10
    :try_start_0
    const-string v2, "SemHostapdHalAidlImpl"

    .line 11
    .line 12
    const-string v3, "Handle IHostapd/IHostapd died."

    .line 13
    .line 14
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl$HostapdDeathRecipient;->this$0:Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;

    .line 18
    .line 19
    new-instance v3, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl$HostapdDeathRecipient;->mWho:Landroid/os/IBinder;

    .line 25
    .line 26
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v2, v0}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->addMHSDumpLog(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl$HostapdDeathRecipient;->this$0:Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;

    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->clearState()V

    .line 39
    .line 40
    .line 41
    monitor-exit v1

    .line 42
    return-void

    .line 43
    :catchall_0
    move-exception p0

    .line 44
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    throw p0
.end method


# virtual methods
.method public binderDied()V
    .locals 4

    .line 1
    const-string v0, "IHostapd/IHostapd died. who "

    .line 2
    .line 3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl$HostapdDeathRecipient;->this$0:Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;

    .line 4
    .line 5
    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->-$$Nest$fgetmLock(Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    monitor-enter v1

    .line 10
    :try_start_0
    const-string v2, "SemHostapdHalAidlImpl"

    .line 11
    .line 12
    new-instance v3, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl$HostapdDeathRecipient;->mWho:Landroid/os/IBinder;

    .line 18
    .line 19
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v0, " service "

    .line 23
    .line 24
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl$HostapdDeathRecipient;->this$0:Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->getServiceBinderMockable()Landroid/os/IBinder;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl$HostapdDeathRecipient;->this$0:Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;

    .line 44
    .line 45
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->-$$Nest$fgetmWaitForDeathLatch(Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;)Ljava/util/concurrent/CountDownLatch;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    if-eqz v0, :cond_0

    .line 50
    .line 51
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl$HostapdDeathRecipient;->this$0:Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;

    .line 52
    .line 53
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->-$$Nest$fgetmWaitForDeathLatch(Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;)Ljava/util/concurrent/CountDownLatch;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :catchall_0
    move-exception p0

    .line 62
    goto :goto_1

    .line 63
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl$HostapdDeathRecipient;->mWho:Landroid/os/IBinder;

    .line 64
    .line 65
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl$HostapdDeathRecipient;->this$0:Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;

    .line 66
    .line 67
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->getServiceBinderMockable()Landroid/os/IBinder;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    if-ne v0, v2, :cond_1

    .line 72
    .line 73
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl$HostapdDeathRecipient;->this$0:Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;

    .line 74
    .line 75
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->-$$Nest$fgetmEventHandler(Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;)Landroid/os/Handler;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    new-instance v2, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl$ServiceCallback$$ExternalSyntheticLambda0;

    .line 80
    .line 81
    const/4 v3, 0x1

    .line 82
    invoke-direct {v2, v3, p0}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl$ServiceCallback$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 86
    .line 87
    .line 88
    :cond_1
    monitor-exit v1

    .line 89
    return-void

    .line 90
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    throw p0
.end method
