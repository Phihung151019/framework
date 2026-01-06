.class Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsNetdEvent;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsNetdEvent$ServiceHandler;
    }
.end annotation


# static fields
.field static final NW_EVENT_KEY:Ljava/lang/String; = "network_event"

.field static final NW_RECEIVE_EVENT_MSG:I = 0x1

.field private static final TAG:Ljava/lang/String; = "MobileWips::netd"


# instance fields
.field private final ISemMobileWipsCallback:Lcom/samsung/android/server/wifi/mobilewips/ISemMobileWipsFrameworkServiceCallback;

.field private mContext:Landroid/content/Context;

.field private mIpConnectivityMetrics:Landroid/net/IIpConnectivityMetrics;

.field private mIsCallbackRegistered:Z

.field private mIsEnabled:Z

.field private final mNetdEventCallback:Landroid/net/INetdEventCallback;

.field private mNetdEventHandler:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsNetdEvent$ServiceHandler;

.field private mNetdThread:Landroid/os/HandlerThread;

.field private mPaused:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetISemMobileWipsCallback(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsNetdEvent;)Lcom/samsung/android/server/wifi/mobilewips/ISemMobileWipsFrameworkServiceCallback;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsNetdEvent;->ISemMobileWipsCallback:Lcom/samsung/android/server/wifi/mobilewips/ISemMobileWipsFrameworkServiceCallback;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsNetdEvent;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsNetdEvent;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsEnabled(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsNetdEvent;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsNetdEvent;->mIsEnabled:Z

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmPaused(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsNetdEvent;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsNetdEvent;->mPaused:Z

    .line 2
    .line 3
    return p0
.end method

.method public constructor <init>(Lcom/samsung/android/server/wifi/mobilewips/ISemMobileWipsFrameworkServiceCallback;Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsNetdEvent;->mPaused:Z

    .line 6
    .line 7
    new-instance v0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsNetdEvent$1;

    .line 8
    .line 9
    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsNetdEvent$1;-><init>(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsNetdEvent;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsNetdEvent;->mNetdEventCallback:Landroid/net/INetdEventCallback;

    .line 13
    .line 14
    const-string v0, "connmetrics"

    .line 15
    .line 16
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-static {v0}, Landroid/net/IIpConnectivityMetrics$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IIpConnectivityMetrics;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iput-object v0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsNetdEvent;->mIpConnectivityMetrics:Landroid/net/IIpConnectivityMetrics;

    .line 25
    .line 26
    iput-object p2, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsNetdEvent;->mContext:Landroid/content/Context;

    .line 27
    .line 28
    iput-object p1, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsNetdEvent;->ISemMobileWipsCallback:Lcom/samsung/android/server/wifi/mobilewips/ISemMobileWipsFrameworkServiceCallback;

    .line 29
    .line 30
    new-instance p1, Landroid/os/HandlerThread;

    .line 31
    .line 32
    const-string p2, "MobileWips::netd"

    .line 33
    .line 34
    invoke-direct {p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    iput-object p1, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsNetdEvent;->mNetdThread:Landroid/os/HandlerThread;

    .line 38
    .line 39
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 40
    .line 41
    .line 42
    new-instance p1, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsNetdEvent$ServiceHandler;

    .line 43
    .line 44
    iget-object p2, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsNetdEvent;->mNetdThread:Landroid/os/HandlerThread;

    .line 45
    .line 46
    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    invoke-direct {p1, p2}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsNetdEvent$ServiceHandler;-><init>(Landroid/os/Looper;)V

    .line 51
    .line 52
    .line 53
    iput-object p1, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsNetdEvent;->mNetdEventHandler:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsNetdEvent$ServiceHandler;

    .line 54
    .line 55
    return-void
.end method

.method private checkSetNetdEventCallback(Z)Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsNetdEvent;->mIsCallbackRegistered:Z

    .line 2
    .line 3
    const-string v1, "MobileWips::netd"

    .line 4
    .line 5
    if-ne p1, v0, :cond_0

    .line 6
    .line 7
    new-instance p0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v0, "Netd event callback registeration ("

    .line 10
    .line 11
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string p1, ") not changed."

    .line 18
    .line 19
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    const/4 p0, 0x1

    .line 30
    return p0

    .line 31
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsNetdEvent;->mIpConnectivityMetrics:Landroid/net/IIpConnectivityMetrics;

    .line 32
    .line 33
    const/4 v0, 0x0

    .line 34
    if-nez p1, :cond_1

    .line 35
    .line 36
    const-string p1, "connmetrics"

    .line 37
    .line 38
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-static {p1}, Landroid/net/IIpConnectivityMetrics$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IIpConnectivityMetrics;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    iput-object p1, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsNetdEvent;->mIpConnectivityMetrics:Landroid/net/IIpConnectivityMetrics;

    .line 47
    .line 48
    if-nez p1, :cond_1

    .line 49
    .line 50
    const-string p0, "Failed to register callback with IIpConnectivityMetrics."

    .line 51
    .line 52
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    :cond_1
    return v0
.end method


# virtual methods
.method public getHandler()Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsNetdEvent$ServiceHandler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsNetdEvent;->mNetdEventHandler:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsNetdEvent$ServiceHandler;

    .line 2
    .line 3
    return-object p0
.end method

.method public removeMessages(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsNetdEvent;->mNetdEventHandler:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsNetdEvent$ServiceHandler;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public sendEmptyMessage(I)V
    .locals 1

    .line 1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput p1, v0, Landroid/os/Message;->what:I

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsNetdEvent;->sendMessage(Landroid/os/Message;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public sendEmptyMessageDelayed(II)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsNetdEvent;->mNetdEventHandler:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsNetdEvent$ServiceHandler;

    .line 2
    .line 3
    int-to-long v0, p2

    .line 4
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public sendMessage(Landroid/os/Message;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsNetdEvent;->mNetdEventHandler:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsNetdEvent$ServiceHandler;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setNetdEventStatus(I)Z
    .locals 3

    .line 1
    const-string v0, "setNetdEventStatus "

    .line 2
    .line 3
    const-string v1, "MobileWips::netd"

    .line 4
    .line 5
    invoke-static {v0, p1, v1}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    const/4 v2, 0x0

    .line 10
    packed-switch p1, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    new-instance p0, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string v0, "setNetdEventStatus::wrong value"

    .line 16
    .line 17
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    return v2

    .line 31
    :pswitch_0
    iput-boolean v2, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsNetdEvent;->mIsEnabled:Z

    .line 32
    .line 33
    return v2

    .line 34
    :pswitch_1
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsNetdEvent;->mIsEnabled:Z

    .line 35
    .line 36
    return v2

    .line 37
    :pswitch_2
    iput-boolean v2, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsNetdEvent;->mPaused:Z

    .line 38
    .line 39
    return v2

    .line 40
    :pswitch_3
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsNetdEvent;->mPaused:Z

    .line 41
    .line 42
    return v2

    .line 43
    :pswitch_4
    invoke-direct {p0, v2}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsNetdEvent;->checkSetNetdEventCallback(Z)Z

    .line 44
    .line 45
    .line 46
    move-result p0

    .line 47
    return p0

    .line 48
    :pswitch_5
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsNetdEvent;->checkSetNetdEventCallback(Z)Z

    .line 49
    .line 50
    .line 51
    move-result p0

    .line 52
    return p0

    .line 53
    :pswitch_data_0
    .packed-switch 0x2b
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
