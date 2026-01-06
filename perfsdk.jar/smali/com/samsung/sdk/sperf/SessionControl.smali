.class Lcom/samsung/sdk/sperf/SessionControl;
.super Ljava/lang/Object;
.source "SessionControl.java"


# static fields
.field private static instance:Lcom/samsung/sdk/sperf/SessionControl;


# instance fields
.field private client:Landroid/net/LocalSocket;

.field private in:Ljava/io/DataInputStream;

.field private localSocketObject:Ljava/lang/Object;

.field private mService:Lcom/samsung/android/perfsdkservice/IPerfSDKService;

.field private out:Ljava/io/DataOutputStream;

.field private perfSDKListerners:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lcom/samsung/sdk/sperf/SPerfListener;",
            ">;"
        }
    .end annotation
.end field

.field private server:Landroid/net/LocalServerSocket;

.field private socketName:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$fgetclient(Lcom/samsung/sdk/sperf/SessionControl;)Landroid/net/LocalSocket;
    .locals 0

    iget-object p0, p0, Lcom/samsung/sdk/sperf/SessionControl;->client:Landroid/net/LocalSocket;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetserver(Lcom/samsung/sdk/sperf/SessionControl;)Landroid/net/LocalServerSocket;
    .locals 0

    iget-object p0, p0, Lcom/samsung/sdk/sperf/SessionControl;->server:Landroid/net/LocalServerSocket;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsocketName(Lcom/samsung/sdk/sperf/SessionControl;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/sdk/sperf/SessionControl;->socketName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputclient(Lcom/samsung/sdk/sperf/SessionControl;Landroid/net/LocalSocket;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/sdk/sperf/SessionControl;->client:Landroid/net/LocalSocket;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputin(Lcom/samsung/sdk/sperf/SessionControl;Ljava/io/DataInputStream;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/sdk/sperf/SessionControl;->in:Ljava/io/DataInputStream;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputout(Lcom/samsung/sdk/sperf/SessionControl;Ljava/io/DataOutputStream;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/sdk/sperf/SessionControl;->out:Ljava/io/DataOutputStream;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputserver(Lcom/samsung/sdk/sperf/SessionControl;Landroid/net/LocalServerSocket;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/sdk/sperf/SessionControl;->server:Landroid/net/LocalServerSocket;

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 26
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/sdk/sperf/SessionControl;->instance:Lcom/samsung/sdk/sperf/SessionControl;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/sdk/sperf/SessionControl;->localSocketObject:Ljava/lang/Object;

    .line 27
    iput-object v0, p0, Lcom/samsung/sdk/sperf/SessionControl;->perfSDKListerners:Ljava/util/Vector;

    .line 29
    iput-object v0, p0, Lcom/samsung/sdk/sperf/SessionControl;->mService:Lcom/samsung/android/perfsdkservice/IPerfSDKService;

    .line 31
    iput-object v0, p0, Lcom/samsung/sdk/sperf/SessionControl;->server:Landroid/net/LocalServerSocket;

    .line 32
    iput-object v0, p0, Lcom/samsung/sdk/sperf/SessionControl;->client:Landroid/net/LocalSocket;

    .line 33
    iput-object v0, p0, Lcom/samsung/sdk/sperf/SessionControl;->in:Ljava/io/DataInputStream;

    .line 34
    iput-object v0, p0, Lcom/samsung/sdk/sperf/SessionControl;->out:Ljava/io/DataOutputStream;

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PERFSDK_SOC_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v1

    const/16 v3, 0x24

    invoke-static {v1, v2, v3}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x5

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/sdk/sperf/SessionControl;->socketName:Ljava/lang/String;

    .line 39
    invoke-direct {p0}, Lcom/samsung/sdk/sperf/SessionControl;->createServer()V

    .line 40
    const-string v0, "Make Server for connection with PerfSDK Server"

    invoke-static {v0}, Lcom/samsung/sdk/sperf/SPerfUtil;->log(Ljava/lang/String;)V

    .line 42
    invoke-virtual {p0}, Lcom/samsung/sdk/sperf/SessionControl;->getService()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/sdk/sperf/SessionControl;->localSocketObject:Ljava/lang/Object;

    .line 44
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/samsung/sdk/sperf/SessionControl;->perfSDKListerners:Ljava/util/Vector;

    .line 45
    return-void
.end method

.method public static createInstance()Lcom/samsung/sdk/sperf/SessionControl;
    .locals 2

    .line 48
    sget-object v0, Lcom/samsung/sdk/sperf/SessionControl;->instance:Lcom/samsung/sdk/sperf/SessionControl;

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Lcom/samsung/sdk/sperf/SessionControl;

    invoke-direct {v0}, Lcom/samsung/sdk/sperf/SessionControl;-><init>()V

    sput-object v0, Lcom/samsung/sdk/sperf/SessionControl;->instance:Lcom/samsung/sdk/sperf/SessionControl;

    .line 51
    :cond_0
    sget-object v0, Lcom/samsung/sdk/sperf/SessionControl;->instance:Lcom/samsung/sdk/sperf/SessionControl;

    .line 52
    .local v0, "tmpInstance":Lcom/samsung/sdk/sperf/SessionControl;
    if-eqz v0, :cond_2

    .line 53
    invoke-virtual {v0}, Lcom/samsung/sdk/sperf/SessionControl;->getDataInputStream()Ljava/io/DataInputStream;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/samsung/sdk/sperf/SessionControl;->getDataOutputStream()Ljava/io/DataOutputStream;

    move-result-object v1

    if-nez v1, :cond_2

    .line 54
    :cond_1
    const/4 v1, 0x0

    sput-object v1, Lcom/samsung/sdk/sperf/SessionControl;->instance:Lcom/samsung/sdk/sperf/SessionControl;

    .line 55
    return-object v1

    .line 59
    :cond_2
    sget-object v1, Lcom/samsung/sdk/sperf/SessionControl;->instance:Lcom/samsung/sdk/sperf/SessionControl;

    return-object v1
.end method

.method private createServer()V
    .locals 2

    .line 128
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/samsung/sdk/sperf/SessionControl$1;

    invoke-direct {v1, p0}, Lcom/samsung/sdk/sperf/SessionControl$1;-><init>(Lcom/samsung/sdk/sperf/SessionControl;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 149
    .local v0, "thread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 150
    return-void
.end method


# virtual methods
.method public addListerner(Lcom/samsung/sdk/sperf/SPerfListener;)V
    .locals 1
    .param p1, "listerner"    # Lcom/samsung/sdk/sperf/SPerfListener;

    .line 98
    iget-object v0, p0, Lcom/samsung/sdk/sperf/SessionControl;->perfSDKListerners:Ljava/util/Vector;

    if-nez v0, :cond_0

    .line 99
    return-void

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/samsung/sdk/sperf/SessionControl;->perfSDKListerners:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 102
    return-void
.end method

.method public callback(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1, "obj"    # Ljava/lang/Object;

    .line 63
    return-object p1
.end method

.method public getDataInputStream()Ljava/io/DataInputStream;
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/samsung/sdk/sperf/SessionControl;->in:Ljava/io/DataInputStream;

    return-object v0
.end method

.method public getDataOutputStream()Ljava/io/DataOutputStream;
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/samsung/sdk/sperf/SessionControl;->out:Ljava/io/DataOutputStream;

    return-object v0
.end method

.method public getService()Ljava/lang/Object;
    .locals 4

    .line 67
    iget-object v0, p0, Lcom/samsung/sdk/sperf/SessionControl;->localSocketObject:Ljava/lang/Object;

    if-nez v0, :cond_3

    .line 70
    :try_start_0
    const-string v0, "perfsdkservice"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 71
    .local v0, "b":Landroid/os/IBinder;
    if-eqz v0, :cond_0

    .line 72
    invoke-static {v0}, Lcom/samsung/android/perfsdkservice/IPerfSDKService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/perfsdkservice/IPerfSDKService;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/sdk/sperf/SessionControl;->mService:Lcom/samsung/android/perfsdkservice/IPerfSDKService;

    .line 73
    const-string v1, "Get mService Interface"

    invoke-static {v1}, Lcom/samsung/sdk/sperf/SPerfUtil;->log(Ljava/lang/String;)V

    .line 76
    :cond_0
    iget-object v1, p0, Lcom/samsung/sdk/sperf/SessionControl;->mService:Lcom/samsung/android/perfsdkservice/IPerfSDKService;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v1, :cond_2

    .line 78
    :try_start_1
    iget-object v1, p0, Lcom/samsung/sdk/sperf/SessionControl;->socketName:Ljava/lang/String;

    .line 79
    .local v1, "serverName":Ljava/lang/String;
    iget-object v2, p0, Lcom/samsung/sdk/sperf/SessionControl;->mService:Lcom/samsung/android/perfsdkservice/IPerfSDKService;

    invoke-interface {v2, v1}, Lcom/samsung/android/perfsdkservice/IPerfSDKService;->initPerfSDK(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/sdk/sperf/SessionControl;->localSocketObject:Ljava/lang/Object;

    .line 80
    iget-object v2, p0, Lcom/samsung/sdk/sperf/SessionControl;->mService:Lcom/samsung/android/perfsdkservice/IPerfSDKService;

    invoke-interface {v2}, Lcom/samsung/android/perfsdkservice/IPerfSDKService;->getAllowedPkgName()Ljava/lang/String;

    move-result-object v2

    .line 81
    .local v2, "allowedPkgName":Ljava/lang/String;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 82
    invoke-static {v2}, Lcom/samsung/sdk/sperf/Boost;->setNativePkgName(Ljava/lang/String;)I

    .line 84
    :cond_1
    const-string v3, "Do initPerfSDK"

    invoke-static {v3}, Lcom/samsung/sdk/sperf/SPerfUtil;->log(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_1 .. :try_end_1} :catch_1

    .line 87
    .end local v1    # "serverName":Ljava/lang/String;
    .end local v2    # "allowedPkgName":Ljava/lang/String;
    goto :goto_0

    .line 85
    :catch_0
    move-exception v1

    .line 86
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/NoSuchMethodError; {:try_start_2 .. :try_end_2} :catch_1

    .line 91
    .end local v0    # "b":Landroid/os/IBinder;
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_2
    :goto_0
    goto :goto_1

    .line 89
    :catch_1
    move-exception v0

    .line 90
    .local v0, "e":Ljava/lang/NoSuchMethodError;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodError;->printStackTrace()V

    .line 94
    .end local v0    # "e":Ljava/lang/NoSuchMethodError;
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/samsung/sdk/sperf/SessionControl;->localSocketObject:Ljava/lang/Object;

    return-object v0
.end method

.method public notifyReleaseToListener()V
    .locals 2

    .line 120
    iget-object v0, p0, Lcom/samsung/sdk/sperf/SessionControl;->perfSDKListerners:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 121
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/sdk/sperf/SPerfListener;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 122
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/sdk/sperf/SPerfListener;

    .line 123
    .local v1, "listener":Lcom/samsung/sdk/sperf/SPerfListener;
    invoke-interface {v1}, Lcom/samsung/sdk/sperf/SPerfListener;->onReleasedByTimeout()V

    .line 124
    .end local v1    # "listener":Lcom/samsung/sdk/sperf/SPerfListener;
    goto :goto_0

    .line 125
    :cond_0
    return-void
.end method

.method public notifyyWarningLevelToListener(I)V
    .locals 2
    .param p1, "warningLevel"    # I

    .line 112
    iget-object v0, p0, Lcom/samsung/sdk/sperf/SessionControl;->perfSDKListerners:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 113
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/sdk/sperf/SPerfListener;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 114
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/sdk/sperf/SPerfListener;

    .line 115
    .local v1, "listener":Lcom/samsung/sdk/sperf/SPerfListener;
    invoke-interface {v1, p1}, Lcom/samsung/sdk/sperf/SPerfListener;->onHighTempWarning(I)V

    .line 116
    .end local v1    # "listener":Lcom/samsung/sdk/sperf/SPerfListener;
    goto :goto_0

    .line 117
    :cond_0
    return-void
.end method

.method public removeListener(Lcom/samsung/sdk/sperf/SPerfListener;)Z
    .locals 1
    .param p1, "listener"    # Lcom/samsung/sdk/sperf/SPerfListener;

    .line 105
    iget-object v0, p0, Lcom/samsung/sdk/sperf/SessionControl;->perfSDKListerners:Ljava/util/Vector;

    if-nez v0, :cond_0

    .line 106
    const/4 v0, 0x0

    return v0

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/samsung/sdk/sperf/SessionControl;->perfSDKListerners:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
