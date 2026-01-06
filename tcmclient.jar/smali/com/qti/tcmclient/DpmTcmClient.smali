.class public Lcom/qti/tcmclient/DpmTcmClient;
.super Ljava/lang/Object;
.source "DpmTcmClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qti/tcmclient/DpmTcmClient$TcmReceiver;
    }
.end annotation


# static fields
.field private static DEBUG:Z = false

.field private static final DPM_CONFIG_FEATURE_MASK_TCM:I = 0x8

.field private static final DPM_DEFAULT_LOGLEVEL:I = 0x0

.field private static final DPM_ENABLE_PROPERTY:I = 0x0

.field private static final DPM_ENABLE_PROPERTY_MASK:I = 0xb

.field private static final DPM_TCM_RUN_TIME_OFF:I = 0x1

.field private static final DPM_TCM_RUN_TIME_ON:I = 0x2

.field private static final DPM_VERBOSE_LOGLEVEL:I = 0x1e91

.field static final MAX_RETRY_COUNT:I = 0x78

.field static SOCKET_NAME_TCM:Ljava/lang/String; = null

.field static final SOCKET_OPEN_RETRY_MILLISECONDS:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "DpmTcmClient"

.field private static tcmclient:Lcom/qti/tcmclient/DpmTcmClient;


# instance fields
.field private mReceiver:Lcom/qti/tcmclient/DpmTcmClient$TcmReceiver;

.field private mReceiverThread:Ljava/lang/Thread;

.field private mTcmIfaces:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/quicinc/tcmiface/DpmTcmIface;",
            ">;>;"
        }
    .end annotation
.end field

.field private tcmRuntimeFeature:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmTcmIfaces(Lcom/qti/tcmclient/DpmTcmClient;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/qti/tcmclient/DpmTcmClient;->mTcmIfaces:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettcmRuntimeFeature(Lcom/qti/tcmclient/DpmTcmClient;)I
    .locals 0

    iget p0, p0, Lcom/qti/tcmclient/DpmTcmClient;->tcmRuntimeFeature:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmReceiver(Lcom/qti/tcmclient/DpmTcmClient;Lcom/qti/tcmclient/DpmTcmClient$TcmReceiver;)V
    .locals 0

    iput-object p1, p0, Lcom/qti/tcmclient/DpmTcmClient;->mReceiver:Lcom/qti/tcmclient/DpmTcmClient$TcmReceiver;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputtcmRuntimeFeature(Lcom/qti/tcmclient/DpmTcmClient;I)V
    .locals 0

    iput p1, p0, Lcom/qti/tcmclient/DpmTcmClient;->tcmRuntimeFeature:I

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetDEBUG()Z
    .locals 1

    sget-boolean v0, Lcom/qti/tcmclient/DpmTcmClient;->DEBUG:Z

    return v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 21
    const/4 v0, 0x0

    sput-boolean v0, Lcom/qti/tcmclient/DpmTcmClient;->DEBUG:Z

    .line 22
    const-string v0, ""

    sput-object v0, Lcom/qti/tcmclient/DpmTcmClient;->SOCKET_NAME_TCM:Ljava/lang/String;

    .line 35
    const/4 v0, 0x0

    sput-object v0, Lcom/qti/tcmclient/DpmTcmClient;->tcmclient:Lcom/qti/tcmclient/DpmTcmClient;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x2

    iput v0, p0, Lcom/qti/tcmclient/DpmTcmClient;->tcmRuntimeFeature:I

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qti/tcmclient/DpmTcmClient;->mReceiver:Lcom/qti/tcmclient/DpmTcmClient$TcmReceiver;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qti/tcmclient/DpmTcmClient;->mTcmIfaces:Ljava/util/ArrayList;

    .line 40
    const-string v0, "persist.vendor.dpm.loglevel"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 41
    .local v0, "logLevel":Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x1e91

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    sput-boolean v1, Lcom/qti/tcmclient/DpmTcmClient;->DEBUG:Z

    .line 42
    :cond_0
    sget-boolean v1, Lcom/qti/tcmclient/DpmTcmClient;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "DpmTcmClient"

    const-string v2, "DpmTcmClient constructor"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    :cond_1
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/qti/tcmclient/DpmTcmClient;
    .locals 2

    const-class v0, Lcom/qti/tcmclient/DpmTcmClient;

    monitor-enter v0

    .line 48
    :try_start_0
    sget-object v1, Lcom/qti/tcmclient/DpmTcmClient;->tcmclient:Lcom/qti/tcmclient/DpmTcmClient;

    if-nez v1, :cond_0

    .line 49
    new-instance v1, Lcom/qti/tcmclient/DpmTcmClient;

    invoke-direct {v1}, Lcom/qti/tcmclient/DpmTcmClient;-><init>()V

    sput-object v1, Lcom/qti/tcmclient/DpmTcmClient;->tcmclient:Lcom/qti/tcmclient/DpmTcmClient;

    .line 51
    :cond_0
    sget-object v1, Lcom/qti/tcmclient/DpmTcmClient;->tcmclient:Lcom/qti/tcmclient/DpmTcmClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 47
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public registerTcmMonitor(Ljava/lang/Object;)V
    .locals 11
    .param p1, "obj"    # Ljava/lang/Object;

    .line 57
    const-string v0, "persist.vendor.dpm.feature"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 58
    .local v0, "dpmEnable":I
    const-string v2, "persist.vendor.dpm.vndr.feature"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 60
    .local v2, "dpmVendorEnable":I
    if-eqz v2, :cond_1

    .line 61
    sget-boolean v3, Lcom/qti/tcmclient/DpmTcmClient;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "DpmTcmClient"

    const-string v4, "dpm vendor daemon is enabled"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    :cond_0
    const-string v3, "tcmd"

    sput-object v3, Lcom/qti/tcmclient/DpmTcmClient;->SOCKET_NAME_TCM:Ljava/lang/String;

    .line 63
    sget-boolean v3, Lcom/qti/tcmclient/DpmTcmClient;->DEBUG:Z

    if-eqz v3, :cond_1

    const-string v3, "DpmTcmClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dpmd vendor daemon socket name :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/qti/tcmclient/DpmTcmClient;->SOCKET_NAME_TCM:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    :cond_1
    if-eqz v0, :cond_3

    .line 66
    sget-boolean v3, Lcom/qti/tcmclient/DpmTcmClient;->DEBUG:Z

    if-eqz v3, :cond_2

    const-string v3, "DpmTcmClient"

    const-string v4, "dpm system daemon is enabled"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    :cond_2
    const-string v3, "tcm"

    sput-object v3, Lcom/qti/tcmclient/DpmTcmClient;->SOCKET_NAME_TCM:Ljava/lang/String;

    .line 68
    sget-boolean v3, Lcom/qti/tcmclient/DpmTcmClient;->DEBUG:Z

    if-eqz v3, :cond_3

    const-string v3, "DpmTcmClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dpmd system socket name :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/qti/tcmclient/DpmTcmClient;->SOCKET_NAME_TCM:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    :cond_3
    move-object v3, p1

    check-cast v3, Lcom/quicinc/tcmiface/DpmTcmIface;

    .line 73
    .local v3, "iface":Lcom/quicinc/tcmiface/DpmTcmIface;
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    if-nez v4, :cond_4

    .line 74
    return-void

    .line 75
    :cond_4
    const-string v4, "persist.vendor.dpm.feature"

    const/16 v5, 0xb

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 76
    .local v4, "dpmFeature":I
    const-string v6, "persist.vendor.dpm.vndr.feature"

    invoke-static {v6, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 77
    .local v5, "dpmVndrFeature":I
    and-int/lit8 v6, v4, 0x8

    const/16 v7, 0x8

    if-eq v6, v7, :cond_6

    and-int/lit8 v6, v5, 0x8

    if-eq v6, v7, :cond_6

    .line 79
    sget-boolean v1, Lcom/qti/tcmclient/DpmTcmClient;->DEBUG:Z

    if-eqz v1, :cond_5

    const-string v1, "DpmTcmClient"

    const-string v6, "DpmTcmClient tcm is disabled"

    invoke-static {v1, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    :cond_5
    return-void

    .line 82
    :cond_6
    const-string v6, "persist.vendor.dpm.loglevel"

    invoke-static {v6, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 83
    .local v6, "logLevel":Ljava/lang/Integer;
    const-string v7, "persist.vendor.dpm.vndr.loglevel"

    invoke-static {v7, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 84
    .local v1, "dpmVndrLogLevel":Ljava/lang/Integer;
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v8, 0x1

    const/16 v9, 0x1e91

    if-eq v7, v9, :cond_7

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ne v7, v9, :cond_8

    :cond_7
    sput-boolean v8, Lcom/qti/tcmclient/DpmTcmClient;->DEBUG:Z

    .line 85
    :cond_8
    const-string v7, "DpmTcmClient"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "RegisterTcmMonitor from: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v3}, Lcom/quicinc/tcmiface/DpmTcmIface;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    iget-object v7, p0, Lcom/qti/tcmclient/DpmTcmClient;->mTcmIfaces:Ljava/util/ArrayList;

    monitor-enter v7

    .line 88
    :try_start_0
    iget-object v9, p0, Lcom/qti/tcmclient/DpmTcmClient;->mTcmIfaces:Ljava/util/ArrayList;

    new-instance v10, Ljava/lang/ref/WeakReference;

    invoke-direct {v10, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    const-string v7, "persist.vendor.dpm.tcm"

    const/4 v9, 0x2

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v7

    iput v7, p0, Lcom/qti/tcmclient/DpmTcmClient;->tcmRuntimeFeature:I

    .line 91
    iget v7, p0, Lcom/qti/tcmclient/DpmTcmClient;->tcmRuntimeFeature:I

    if-ne v7, v8, :cond_a

    .line 93
    sget-boolean v7, Lcom/qti/tcmclient/DpmTcmClient;->DEBUG:Z

    if-eqz v7, :cond_9

    const-string v7, "DpmTcmClient"

    const-string v8, "DpmTcmClient tcm is disabled runtime"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    :cond_9
    return-void

    .line 96
    :cond_a
    iget-object v7, p0, Lcom/qti/tcmclient/DpmTcmClient;->mReceiver:Lcom/qti/tcmclient/DpmTcmClient$TcmReceiver;

    if-nez v7, :cond_b

    .line 98
    :try_start_1
    new-instance v7, Lcom/qti/tcmclient/DpmTcmClient$TcmReceiver;

    invoke-direct {v7, p0}, Lcom/qti/tcmclient/DpmTcmClient$TcmReceiver;-><init>(Lcom/qti/tcmclient/DpmTcmClient;)V

    iput-object v7, p0, Lcom/qti/tcmclient/DpmTcmClient;->mReceiver:Lcom/qti/tcmclient/DpmTcmClient$TcmReceiver;

    .line 99
    new-instance v7, Ljava/lang/Thread;

    iget-object v8, p0, Lcom/qti/tcmclient/DpmTcmClient;->mReceiver:Lcom/qti/tcmclient/DpmTcmClient$TcmReceiver;

    const-string v9, "TcmReceiver"

    invoke-direct {v7, v8, v9}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v7, p0, Lcom/qti/tcmclient/DpmTcmClient;->mReceiverThread:Ljava/lang/Thread;

    .line 100
    iget-object v7, p0, Lcom/qti/tcmclient/DpmTcmClient;->mReceiverThread:Ljava/lang/Thread;

    invoke-virtual {v7}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 103
    goto :goto_0

    .line 101
    :catch_0
    move-exception v7

    .line 102
    .local v7, "e":Ljava/lang/Exception;
    sget-boolean v8, Lcom/qti/tcmclient/DpmTcmClient;->DEBUG:Z

    if-eqz v8, :cond_b

    const-string v8, "DpmTcmClient"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Thread new failed "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_b
    :goto_0
    return-void

    .line 89
    :catchall_0
    move-exception v8

    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v8
.end method
