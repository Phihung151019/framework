.class public Lcom/samsung/android/server/uwb/factory/rfTest/UwbTestNotificationHandler;
.super Ljava/lang/Object;
.source "UwbTestNotificationHandler.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UwbTestNotificationHandler"


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mRfTestCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lcom/samsung/android/server/uwb/factory/rfTest/ITestModeSessionCallback;",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/uwb/factory/rfTest/UwbTestNotificationHandler;->mRfTestCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 42
    iput-object p1, p0, Lcom/samsung/android/server/uwb/factory/rfTest/UwbTestNotificationHandler;->mContext:Landroid/content/Context;

    .line 43
    return-void
.end method

.method private handleRxTestDataNtf([B)V
    .locals 3
    .param p1, "data"    # [B

    .line 130
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.uwb.action.UWB_RX_TEST_DATA"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 131
    .local v0, "rxDataIntent":Landroid/content/Intent;
    const-string v1, "UWB_RX_TEST_DATA_KEY"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 132
    iget-object v1, p0, Lcom/samsung/android/server/uwb/factory/rfTest/UwbTestNotificationHandler;->mContext:Landroid/content/Context;

    const-string v2, "com.samsung.android.uwb.READ_NOTIFICATION"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 133
    return-void
.end method


# virtual methods
.method public handlePerRxDataNtf([B)V
    .locals 5
    .param p1, "data"    # [B

    .line 86
    iget-object v0, p0, Lcom/samsung/android/server/uwb/factory/rfTest/UwbTestNotificationHandler;->mRfTestCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 87
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/samsung/android/server/uwb/factory/rfTest/ITestModeSessionCallback;Ljava/util/concurrent/Executor;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/server/uwb/factory/rfTest/ITestModeSessionCallback;

    .line 88
    .local v2, "callback":Lcom/samsung/android/server/uwb/factory/rfTest/ITestModeSessionCallback;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/Executor;

    .line 90
    .local v3, "executor":Ljava/util/concurrent/Executor;
    if-eqz v3, :cond_0

    if-nez v2, :cond_1

    .line 91
    goto :goto_0

    .line 94
    :cond_1
    new-instance v4, Lcom/samsung/android/server/uwb/factory/rfTest/UwbTestNotificationHandler$2;

    invoke-direct {v4, p0, v2, p1}, Lcom/samsung/android/server/uwb/factory/rfTest/UwbTestNotificationHandler$2;-><init>(Lcom/samsung/android/server/uwb/factory/rfTest/UwbTestNotificationHandler;Lcom/samsung/android/server/uwb/factory/rfTest/ITestModeSessionCallback;[B)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 100
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/samsung/android/server/uwb/factory/rfTest/ITestModeSessionCallback;Ljava/util/concurrent/Executor;>;"
    .end local v2    # "callback":Lcom/samsung/android/server/uwb/factory/rfTest/ITestModeSessionCallback;
    .end local v3    # "executor":Ljava/util/concurrent/Executor;
    goto :goto_0

    .line 102
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.uwb.action.UWB_PER_RX_DATA"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 103
    .local v0, "perRxDataIntent":Landroid/content/Intent;
    const-string v1, "UWB_PER_RX_DATA_KEY"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 104
    iget-object v1, p0, Lcom/samsung/android/server/uwb/factory/rfTest/UwbTestNotificationHandler;->mContext:Landroid/content/Context;

    const-string v2, "com.samsung.android.uwb.READ_NOTIFICATION"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 105
    return-void
.end method

.method public handlePeriodicTxDataNtf([B)V
    .locals 6
    .param p1, "data"    # [B

    .line 62
    new-instance v0, Lcom/samsung/uwb/support/data/rftest/TestPeriodicTxData;

    invoke-direct {v0, p1}, Lcom/samsung/uwb/support/data/rftest/TestPeriodicTxData;-><init>([B)V

    .line 64
    .local v0, "testPeriodicTxData":Lcom/samsung/uwb/support/data/rftest/TestPeriodicTxData;
    iget-object v1, p0, Lcom/samsung/android/server/uwb/factory/rfTest/UwbTestNotificationHandler;->mRfTestCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 65
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/samsung/android/server/uwb/factory/rfTest/ITestModeSessionCallback;Ljava/util/concurrent/Executor;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/server/uwb/factory/rfTest/ITestModeSessionCallback;

    .line 66
    .local v3, "callback":Lcom/samsung/android/server/uwb/factory/rfTest/ITestModeSessionCallback;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/concurrent/Executor;

    .line 68
    .local v4, "executor":Ljava/util/concurrent/Executor;
    if-eqz v4, :cond_0

    if-nez v3, :cond_1

    .line 69
    goto :goto_0

    .line 72
    :cond_1
    new-instance v5, Lcom/samsung/android/server/uwb/factory/rfTest/UwbTestNotificationHandler$1;

    invoke-direct {v5, p0, v3, v0}, Lcom/samsung/android/server/uwb/factory/rfTest/UwbTestNotificationHandler$1;-><init>(Lcom/samsung/android/server/uwb/factory/rfTest/UwbTestNotificationHandler;Lcom/samsung/android/server/uwb/factory/rfTest/ITestModeSessionCallback;Lcom/samsung/uwb/support/data/rftest/TestPeriodicTxData;)V

    invoke-interface {v4, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 78
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/samsung/android/server/uwb/factory/rfTest/ITestModeSessionCallback;Ljava/util/concurrent/Executor;>;"
    .end local v3    # "callback":Lcom/samsung/android/server/uwb/factory/rfTest/ITestModeSessionCallback;
    .end local v4    # "executor":Ljava/util/concurrent/Executor;
    goto :goto_0

    .line 80
    :cond_2
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.android.uwb.action.UWB_PERIODIC_TX_DATA"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 81
    .local v1, "periodicTxDataIntent":Landroid/content/Intent;
    const-string v2, "UWB_PERIODIC_TX_DATA_KEY"

    invoke-virtual {v0}, Lcom/samsung/uwb/support/data/rftest/TestPeriodicTxData;->getStatus()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 82
    iget-object v2, p0, Lcom/samsung/android/server/uwb/factory/rfTest/UwbTestNotificationHandler;->mContext:Landroid/content/Context;

    const-string v3, "com.samsung.android.uwb.READ_NOTIFICATION"

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 83
    return-void
.end method

.method public handleRfTestNotification(Lcom/samsung/uwb/support/uci/UciPacket;)V
    .locals 5
    .param p1, "uciPacket"    # Lcom/samsung/uwb/support/uci/UciPacket;

    .line 46
    invoke-virtual {p1}, Lcom/samsung/uwb/support/uci/UciPacket;->getPayload()[B

    move-result-object v0

    .line 47
    .local v0, "payload":[B
    instance-of v1, p1, Lcom/samsung/uwb/support/uci/ntf/TestPeriodicTxNotification;

    if-eqz v1, :cond_0

    .line 48
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/uwb/factory/rfTest/UwbTestNotificationHandler;->handlePeriodicTxDataNtf([B)V

    goto :goto_0

    .line 49
    :cond_0
    instance-of v1, p1, Lcom/samsung/uwb/support/uci/ntf/TestPerRxNotification;

    if-eqz v1, :cond_1

    .line 50
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/uwb/factory/rfTest/UwbTestNotificationHandler;->handlePerRxDataNtf([B)V

    goto :goto_0

    .line 51
    :cond_1
    instance-of v1, p1, Lcom/samsung/uwb/support/uci/ntf/TestRxNotification;

    if-eqz v1, :cond_2

    .line 52
    invoke-direct {p0, v0}, Lcom/samsung/android/server/uwb/factory/rfTest/UwbTestNotificationHandler;->handleRxTestDataNtf([B)V

    goto :goto_0

    .line 53
    :cond_2
    instance-of v1, p1, Lcom/samsung/uwb/support/uci/ntf/TestLoopbackNotification;

    if-eqz v1, :cond_3

    .line 54
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/uwb/factory/rfTest/UwbTestNotificationHandler;->handleUwbLoopBackTestDataNtf([B)V

    goto :goto_0

    .line 56
    :cond_3
    nop

    .line 57
    invoke-virtual {p1}, Lcom/samsung/uwb/support/uci/UciPacket;->getGid()B

    move-result v1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/uwb/support/uci/UciPacket;->getOid()B

    move-result v2

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {p1}, Lcom/samsung/uwb/support/uci/UciPacket;->getLength()S

    move-result v3

    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    invoke-static {v0}, Lcom/samsung/uwb/support/util/UwbUtil;->toHexString([B)Ljava/lang/String;

    move-result-object v4

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v1

    .line 56
    const-string v2, "handleRfTestNotification: UnDefined UciPacket {Gid=%d, Oid=%d, Length=%d, Payload=%s}"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "UwbTestNotificationHandler"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    :goto_0
    return-void
.end method

.method public handleUwbLoopBackTestDataNtf([B)V
    .locals 5
    .param p1, "data"    # [B

    .line 108
    iget-object v0, p0, Lcom/samsung/android/server/uwb/factory/rfTest/UwbTestNotificationHandler;->mRfTestCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 109
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/samsung/android/server/uwb/factory/rfTest/ITestModeSessionCallback;Ljava/util/concurrent/Executor;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/server/uwb/factory/rfTest/ITestModeSessionCallback;

    .line 110
    .local v2, "callback":Lcom/samsung/android/server/uwb/factory/rfTest/ITestModeSessionCallback;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/Executor;

    .line 112
    .local v3, "executor":Ljava/util/concurrent/Executor;
    if-eqz v3, :cond_0

    if-nez v2, :cond_1

    .line 113
    goto :goto_0

    .line 116
    :cond_1
    new-instance v4, Lcom/samsung/android/server/uwb/factory/rfTest/UwbTestNotificationHandler$3;

    invoke-direct {v4, p0, v2, p1}, Lcom/samsung/android/server/uwb/factory/rfTest/UwbTestNotificationHandler$3;-><init>(Lcom/samsung/android/server/uwb/factory/rfTest/UwbTestNotificationHandler;Lcom/samsung/android/server/uwb/factory/rfTest/ITestModeSessionCallback;[B)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 122
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/samsung/android/server/uwb/factory/rfTest/ITestModeSessionCallback;Ljava/util/concurrent/Executor;>;"
    .end local v2    # "callback":Lcom/samsung/android/server/uwb/factory/rfTest/ITestModeSessionCallback;
    .end local v3    # "executor":Ljava/util/concurrent/Executor;
    goto :goto_0

    .line 124
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.uwb.action.UWB_LOOPBACK_DATA"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 125
    .local v0, "loopbackDataIntent":Landroid/content/Intent;
    const-string v1, "UWB_LOOPBACK_DATA_KEY"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 126
    iget-object v1, p0, Lcom/samsung/android/server/uwb/factory/rfTest/UwbTestNotificationHandler;->mContext:Landroid/content/Context;

    const-string v2, "com.samsung.android.uwb.READ_NOTIFICATION"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 127
    return-void
.end method

.method public registerRfTestCallback(Lcom/samsung/android/server/uwb/factory/rfTest/ITestModeSessionCallback;Ljava/util/concurrent/Executor;)V
    .locals 2
    .param p1, "callback"    # Lcom/samsung/android/server/uwb/factory/rfTest/ITestModeSessionCallback;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .line 136
    const-string v0, "registerRfTestCallback()"

    const-string v1, "UwbTestNotificationHandler"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    if-eqz p2, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/uwb/factory/rfTest/UwbTestNotificationHandler;->mRfTestCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    return-void

    .line 139
    :cond_1
    :goto_0
    const-string v0, "registerRfTestCallback - param must not NULL"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    return-void
.end method

.method public unregisterRfTestCallback(Lcom/samsung/android/server/uwb/factory/rfTest/ITestModeSessionCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/samsung/android/server/uwb/factory/rfTest/ITestModeSessionCallback;

    .line 147
    const-string v0, "unregisterRfTestCallback()"

    const-string v1, "UwbTestNotificationHandler"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    if-nez p1, :cond_0

    .line 150
    const-string v0, "registerRfTestCallback - param must not NULL"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    return-void

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/uwb/factory/rfTest/UwbTestNotificationHandler;->mRfTestCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    return-void
.end method
