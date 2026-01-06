.class public Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# static fields
.field private static final TAG:Ljava/lang/String; = "SemWifiApClientListManager"


# instance fields
.field private mActiveClientMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController;",
            ">;"
        }
    .end annotation
.end field

.field private mClientListJsonHandler:Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbHistory$ClientListJsonHandler;

.field private mConnectedClientMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController;",
            ">;"
        }
    .end annotation
.end field

.field mContext:Landroid/content/Context;

.field mDbHistory:Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbHistory;

.field mDbSetting:Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbSetting;

.field private mDisconnectedClientMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController;",
            ">;"
        }
    .end annotation
.end field

.field private mSortedListOfConnClients:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController;",
            ">;"
        }
    .end annotation
.end field

.field private mSortedListOfDisconnectedClients:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController;",
            ">;"
        }
    .end annotation
.end field

.field private mSumOfDataUsageOfConnectedList:J

.field private mSumOfDataUsageOfDisConnectedList:J

.field meBPF:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;


# direct methods
.method public static synthetic $r8$lambda$IJ_cNJnl2djyQtTmki8gn0COEBM(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;Ljava/lang/String;Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;->lambda$handleDateOrSimChangeForActiveClientList$0(Ljava/lang/String;Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$Ob2RvrhCXunh-4tUkP_Cgr5PmvU(Ljava/lang/String;Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;->lambda$handleWifiApStopped$1(Ljava/lang/String;Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbSetting;Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbHistory;IIILjava/lang/String;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;->mClientListJsonHandler:Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbHistory$ClientListJsonHandler;

    .line 6
    .line 7
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;->mActiveClientMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 13
    .line 14
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 15
    .line 16
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;->mConnectedClientMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 20
    .line 21
    new-instance v0, Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;->mSortedListOfConnClients:Ljava/util/List;

    .line 27
    .line 28
    const-wide/16 v0, 0x0

    .line 29
    .line 30
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;->mSumOfDataUsageOfConnectedList:J

    .line 31
    .line 32
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    .line 33
    .line 34
    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object v2, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;->mDisconnectedClientMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 38
    .line 39
    new-instance v2, Ljava/util/ArrayList;

    .line 40
    .line 41
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 42
    .line 43
    .line 44
    iput-object v2, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;->mSortedListOfDisconnectedClients:Ljava/util/List;

    .line 45
    .line 46
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;->mSumOfDataUsageOfDisConnectedList:J

    .line 47
    .line 48
    if-eqz p1, :cond_0

    .line 49
    .line 50
    if-eqz p2, :cond_0

    .line 51
    .line 52
    if-eqz p3, :cond_0

    .line 53
    .line 54
    if-nez p4, :cond_1

    .line 55
    .line 56
    :cond_0
    sget-object v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;->TAG:Ljava/lang/String;

    .line 57
    .line 58
    const-string v1, "null pointer pass in arguments : SemWifiApClientListManager"

    .line 59
    .line 60
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    .line 62
    .line 63
    :cond_1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;->mContext:Landroid/content/Context;

    .line 64
    .line 65
    iput-object p2, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;->meBPF:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;

    .line 66
    .line 67
    iput-object p3, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;->mDbSetting:Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbSetting;

    .line 68
    .line 69
    iput-object p4, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;->mDbHistory:Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbHistory;

    .line 70
    .line 71
    invoke-static {p8}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageUtils;->isValidSimSerialNumber(Ljava/lang/String;)Z

    .line 72
    .line 73
    .line 74
    move-result p1

    .line 75
    if-eqz p1, :cond_2

    .line 76
    .line 77
    new-instance p2, Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbHistory$ClientListJsonHandler;

    .line 78
    .line 79
    move-object p3, p4

    .line 80
    move p4, p5

    .line 81
    move p5, p6

    .line 82
    move p6, p7

    .line 83
    move-object p7, p8

    .line 84
    invoke-direct/range {p2 .. p7}, Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbHistory$ClientListJsonHandler;-><init>(Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbHistory;IIILjava/lang/String;)V

    .line 85
    .line 86
    .line 87
    iput-object p2, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;->mClientListJsonHandler:Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbHistory$ClientListJsonHandler;

    .line 88
    .line 89
    return-void

    .line 90
    :cond_2
    move-object p7, p8

    .line 91
    sget-object p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;->TAG:Ljava/lang/String;

    .line 92
    .line 93
    const-string p1, "invalid sim "

    .line 94
    .line 95
    invoke-static {p1, p7, p0}, Lcom/samsung/android/server/wifi/SemClientModeManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    return-void
.end method

.method private addClientDetail(Ljava/lang/Object;Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController;",
            ")V"
        }
    .end annotation

    .line 1
    instance-of p0, p1, Ljava/lang/StringBuffer;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    check-cast p1, Ljava/lang/StringBuffer;

    .line 6
    .line 7
    new-instance p0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p2}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->getClientTodayTotalMobileDataUsage()J

    .line 13
    .line 14
    .line 15
    move-result-wide v0

    .line 16
    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string v0, " "

    .line 20
    .line 21
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p2}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->getClientDeviceName()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string p2, "\n"

    .line 32
    .line 33
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :cond_0
    instance-of p0, p1, Ljava/util/List;

    .line 45
    .line 46
    if-eqz p0, :cond_1

    .line 47
    .line 48
    check-cast p1, Ljava/util/List;

    .line 49
    .line 50
    new-instance p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;

    .line 51
    .line 52
    invoke-direct {p0, p2}, Lcom/samsung/android/wifi/SemWifiApClientDetails;-><init>(Lcom/samsung/android/wifi/SemWifiApClientDetails;)V

    .line 53
    .line 54
    .line 55
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    :cond_1
    return-void
.end method

.method private addClientDetailInJsonHandler(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;->mClientListJsonHandler:Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbHistory$ClientListJsonHandler;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->getClientMacAddress()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {p1}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->getClientDeviceName()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-virtual {p1}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->getClientTodayTotalMobileDataUsage()J

    .line 14
    .line 15
    .line 16
    move-result-wide v3

    .line 17
    invoke-virtual {p1}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->getClientTodayTotalTime()J

    .line 18
    .line 19
    .line 20
    move-result-wide v5

    .line 21
    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbHistory$ClientListJsonHandler;->setDeviceDetails(Ljava/lang/String;Ljava/lang/String;JJ)V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method private addClientInSortedDisconnectedList(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;->mSortedListOfDisconnectedClients:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    if-eqz v2, :cond_1

    .line 13
    .line 14
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    check-cast v2, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController;

    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->getClientTodayTotalMobileDataUsage()J

    .line 21
    .line 22
    .line 23
    move-result-wide v3

    .line 24
    invoke-virtual {v2}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->getClientTodayTotalMobileDataUsage()J

    .line 25
    .line 26
    .line 27
    move-result-wide v5

    .line 28
    cmp-long v2, v3, v5

    .line 29
    .line 30
    if-ltz v2, :cond_0

    .line 31
    .line 32
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;->mSortedListOfDisconnectedClients:Ljava/util/List;

    .line 33
    .line 34
    invoke-interface {p0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;->mSortedListOfDisconnectedClients:Ljava/util/List;

    .line 42
    .line 43
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method private applyClientSetting(Lorg/json/JSONObject;Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController;)V
    .locals 3

    .line 1
    const-string p0, "device_data_limit"

    .line 2
    .line 3
    const-string v0, "device_time_limit"

    .line 4
    .line 5
    const-string v1, "device_is_sharing_pause_by_user"

    .line 6
    .line 7
    :try_start_0
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-nez v2, :cond_1

    .line 12
    .line 13
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    const/4 v2, 0x1

    .line 18
    if-ne v1, v2, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v2, 0x0

    .line 22
    :goto_0
    invoke-virtual {p2, v2}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController;->setClientDataPausedByUser(Z)Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController;

    .line 23
    .line 24
    .line 25
    :cond_1
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-nez v1, :cond_2

    .line 30
    .line 31
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    .line 32
    .line 33
    .line 34
    move-result-wide v0

    .line 35
    invoke-virtual {p2, v0, v1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController;->setClientTimeLimit(J)Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController;

    .line 36
    .line 37
    .line 38
    :cond_2
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-nez v0, :cond_3

    .line 43
    .line 44
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    .line 45
    .line 46
    .line 47
    move-result-wide p0

    .line 48
    invoke-virtual {p2, p0, p1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController;->setClientDataLimit(J)Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :catch_0
    move-exception p0

    .line 53
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    .line 54
    .line 55
    .line 56
    :cond_3
    return-void
.end method

.method private createNewClient(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJZZ)Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController;
    .locals 3

    .line 1
    new-instance v0, Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbSetting$ClientSettingGetter;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;->mDbSetting:Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbSetting;

    .line 4
    .line 5
    invoke-direct {v0, v1, p1}, Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbSetting$ClientSettingGetter;-><init>(Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbSetting;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    if-nez p3, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbSetting$ClientSettingGetter;->getName()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p3

    .line 14
    :cond_0
    new-instance v1, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController$Builder;

    .line 15
    .line 16
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;->mContext:Landroid/content/Context;

    .line 17
    .line 18
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;->meBPF:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;

    .line 19
    .line 20
    invoke-direct {v1, v2, p0, p1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController$Builder;-><init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, p3}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController$Builder;->setName(Ljava/lang/String;)Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController$Builder;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-virtual {p0, p2}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController$Builder;->setIpAddress(Ljava/lang/String;)Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController$Builder;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbSetting$ClientSettingGetter;->getDeviceType()I

    .line 32
    .line 33
    .line 34
    move-result p2

    .line 35
    invoke-virtual {p0, p2}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController$Builder;->setDeviceType(I)Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController$Builder;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbSetting$ClientSettingGetter;->getDataLimitInBytes()J

    .line 40
    .line 41
    .line 42
    move-result-wide p2

    .line 43
    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController$Builder;->setDataLimitInBytes(J)Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController$Builder;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbSetting$ClientSettingGetter;->getTimeLimitInMilliSeconds()J

    .line 48
    .line 49
    .line 50
    move-result-wide p2

    .line 51
    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController$Builder;->setTimeLimitInMilliSec(J)Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController$Builder;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbSetting$ClientSettingGetter;->getPausedSharing()Z

    .line 56
    .line 57
    .line 58
    move-result p2

    .line 59
    invoke-virtual {p0, p2}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController$Builder;->setInternetPauseByUser(Z)Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController$Builder;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    invoke-virtual {p0, p9}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController$Builder;->setCellularStream(Z)Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController$Builder;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    invoke-virtual {p0, p4, p5}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController$Builder;->setNonActiveSessionCellularDataUsage(J)Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController$Builder;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    invoke-virtual {p0, p6, p7}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController$Builder;->setNonActiveSessionTotalTime(J)Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController$Builder;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    invoke-virtual {p0, p8}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController$Builder;->setClientConnected(Z)Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController$Builder;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbSetting$ClientSettingGetter;->getEditedName()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p2

    .line 83
    invoke-virtual {p0, p2}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController$Builder;->setClientEditedName(Ljava/lang/String;)Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController$Builder;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbSetting$ClientSettingGetter;->getNsdName()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p2

    .line 91
    invoke-virtual {p0, p2}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController$Builder;->setClientNsdName(Ljava/lang/String;)Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController$Builder;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 96
    .line 97
    .line 98
    move-result-object p2

    .line 99
    invoke-virtual {p2}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getSoftApManager()Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    .line 100
    .line 101
    .line 102
    move-result-object p2

    .line 103
    invoke-virtual {p2, p1}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->isWifiApGuestClient(Ljava/lang/String;)Z

    .line 104
    .line 105
    .line 106
    move-result p1

    .line 107
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController$Builder;->setIsGuestClient(Z)Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController$Builder;

    .line 108
    .line 109
    .line 110
    move-result-object p0

    .line 111
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController$Builder;->build()Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController;

    .line 112
    .line 113
    .line 114
    move-result-object p0

    .line 115
    return-object p0
.end method

.method private getIPAddressFromArpTable(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/4 p1, 0x0

    .line 6
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    .line 7
    .line 8
    new-instance v1, Ljava/io/FileReader;

    .line 9
    .line 10
    const-string v2, "/proc/net/arp"

    .line 11
    .line 12
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 13
    .line 14
    invoke-direct {v1, v2, v3}, Ljava/io/FileReader;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V

    .line 15
    .line 16
    .line 17
    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 18
    .line 19
    .line 20
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    sget-object v2, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;->TAG:Ljava/lang/String;

    .line 25
    .line 26
    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    if-eqz v1, :cond_3

    .line 34
    .line 35
    const-string v2, "[ ]+"

    .line 36
    .line 37
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    array-length v3, v2

    .line 42
    const/4 v4, 0x6

    .line 43
    if-ge v3, v4, :cond_1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    sget-boolean v3, Lcom/samsung/android/wifi/SemWifiManager;->MHSDBG:Z

    .line 47
    .line 48
    if-eqz v3, :cond_2

    .line 49
    .line 50
    sget-object v3, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;->TAG:Ljava/lang/String;

    .line 51
    .line 52
    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    goto :goto_1

    .line 56
    :catchall_0
    move-exception p0

    .line 57
    move-object p1, v0

    .line 58
    goto :goto_6

    .line 59
    :catch_0
    move-object p0, p1

    .line 60
    move-object p1, v0

    .line 61
    goto :goto_2

    .line 62
    :catch_1
    move-object p0, p1

    .line 63
    move-object p1, v0

    .line 64
    goto :goto_4

    .line 65
    :cond_2
    :goto_1
    const/4 v1, 0x0

    .line 66
    aget-object v1, v2, v1

    .line 67
    .line 68
    const/4 v3, 0x3

    .line 69
    aget-object v2, v2, v3

    .line 70
    .line 71
    invoke-static {p0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 72
    .line 73
    .line 74
    move-result v2

    .line 75
    if-eqz v2, :cond_0

    .line 76
    .line 77
    move-object p1, v1

    .line 78
    :cond_3
    if-nez p1, :cond_4

    .line 79
    .line 80
    sget-object v1, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;->TAG:Ljava/lang/String;

    .line 81
    .line 82
    new-instance v2, Ljava/lang/StringBuilder;

    .line 83
    .line 84
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 85
    .line 86
    .line 87
    const-string v3, "Did not find remoteAddress {"

    .line 88
    .line 89
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    const-string p0, "} in /proc/net/arp"

    .line 96
    .line 97
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object p0

    .line 104
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 105
    .line 106
    .line 107
    :cond_4
    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    .line 108
    .line 109
    .line 110
    goto :goto_5

    .line 111
    :catchall_1
    move-exception p0

    .line 112
    goto :goto_6

    .line 113
    :catch_2
    move-object p0, p1

    .line 114
    goto :goto_2

    .line 115
    :catch_3
    move-object p0, p1

    .line 116
    goto :goto_4

    .line 117
    :goto_2
    :try_start_3
    sget-object v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;->TAG:Ljava/lang/String;

    .line 118
    .line 119
    const-string v1, "Could not read /proc/net/arp to lookup mac address"

    .line 120
    .line 121
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 122
    .line 123
    .line 124
    if-eqz p1, :cond_5

    .line 125
    .line 126
    :goto_3
    :try_start_4
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 127
    .line 128
    .line 129
    :catch_4
    :cond_5
    move-object p1, p0

    .line 130
    goto :goto_5

    .line 131
    :goto_4
    :try_start_5
    sget-object v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;->TAG:Ljava/lang/String;

    .line 132
    .line 133
    const-string v1, "Could not open /proc/net/arp to lookup mac address"

    .line 134
    .line 135
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 136
    .line 137
    .line 138
    if-eqz p1, :cond_5

    .line 139
    .line 140
    goto :goto_3

    .line 141
    :catch_5
    :goto_5
    return-object p1

    .line 142
    :goto_6
    if-eqz p1, :cond_6

    .line 143
    .line 144
    :try_start_6
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    .line 145
    .line 146
    .line 147
    :catch_6
    :cond_6
    throw p0
.end method

.method private handleDateOrSimChangeForActiveClientList()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;->mClientListJsonHandler:Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbHistory$ClientListJsonHandler;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-wide/16 v0, 0x0

    .line 6
    .line 7
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;->mSumOfDataUsageOfConnectedList:J

    .line 8
    .line 9
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;->mActiveClientMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 10
    .line 11
    new-instance v1, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager$$ExternalSyntheticLambda0;

    .line 12
    .line 13
    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method private handleDateOrSimChangedForDisconnectedClientList()V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;->mClientListJsonHandler:Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbHistory$ClientListJsonHandler;

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;->mDisconnectedClientMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;->mSortedListOfDisconnectedClients:Ljava/util/List;

    .line 11
    .line 12
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 13
    .line 14
    .line 15
    const-wide/16 v0, 0x0

    .line 16
    .line 17
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;->mSumOfDataUsageOfDisConnectedList:J

    .line 18
    .line 19
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;->mClientListJsonHandler:Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbHistory$ClientListJsonHandler;

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbHistory$ClientListJsonHandler;->getClientMacIterator()Ljava/util/Iterator;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_2

    .line 30
    .line 31
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    move-object v3, v1

    .line 36
    check-cast v3, Ljava/lang/String;

    .line 37
    .line 38
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;->mConnectedClientMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 39
    .line 40
    invoke-virtual {v1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-nez v1, :cond_0

    .line 45
    .line 46
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;->mActiveClientMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 47
    .line 48
    invoke-virtual {v1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    if-eqz v1, :cond_1

    .line 53
    .line 54
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;->mActiveClientMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 55
    .line 56
    invoke-virtual {v1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    check-cast v1, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController;

    .line 61
    .line 62
    move-object v2, p0

    .line 63
    goto :goto_1

    .line 64
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;->mClientListJsonHandler:Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbHistory$ClientListJsonHandler;

    .line 65
    .line 66
    invoke-virtual {v1, v3}, Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbHistory$ClientListJsonHandler;->getClientName(Ljava/lang/String;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v5

    .line 70
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;->mClientListJsonHandler:Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbHistory$ClientListJsonHandler;

    .line 71
    .line 72
    invoke-virtual {v1, v3}, Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbHistory$ClientListJsonHandler;->getClientDataUsageInBytes(Ljava/lang/String;)J

    .line 73
    .line 74
    .line 75
    move-result-wide v6

    .line 76
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;->mClientListJsonHandler:Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbHistory$ClientListJsonHandler;

    .line 77
    .line 78
    invoke-virtual {v1, v3}, Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbHistory$ClientListJsonHandler;->getClientTimeUsageInMilliSec(Ljava/lang/String;)J

    .line 79
    .line 80
    .line 81
    move-result-wide v8

    .line 82
    const/4 v10, 0x0

    .line 83
    const/4 v11, 0x0

    .line 84
    const-string v4, ""

    .line 85
    .line 86
    move-object v2, p0

    .line 87
    invoke-direct/range {v2 .. v11}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;->createNewClient(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJZZ)Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    :goto_1
    iget-object p0, v2, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;->mDisconnectedClientMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 92
    .line 93
    invoke-virtual {p0, v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    iget-object p0, v2, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;->mSortedListOfDisconnectedClients:Ljava/util/List;

    .line 97
    .line 98
    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    iget-wide v3, v2, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;->mSumOfDataUsageOfDisConnectedList:J

    .line 102
    .line 103
    invoke-virtual {v1}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->getClientTodayTotalMobileDataUsage()J

    .line 104
    .line 105
    .line 106
    move-result-wide v5

    .line 107
    add-long/2addr v5, v3

    .line 108
    iput-wide v5, v2, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;->mSumOfDataUsageOfDisConnectedList:J

    .line 109
    .line 110
    move-object p0, v2

    .line 111
    goto :goto_0

    .line 112
    :cond_2
    move-object v2, p0

    .line 113
    iget-object p0, v2, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;->mSortedListOfDisconnectedClients:Ljava/util/List;

    .line 114
    .line 115
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 116
    .line 117
    .line 118
    move-result p0

    .line 119
    if-lez p0, :cond_3

    .line 120
    .line 121
    iget-object p0, v2, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;->mSortedListOfDisconnectedClients:Ljava/util/List;

    .line 122
    .line 123
    invoke-static {}, Ljava/util/Collections;->reverseOrder()Ljava/util/Comparator;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 128
    .line 129
    .line 130
    :cond_3
    return-void
.end method

.method private synthetic lambda$handleDateOrSimChangeForActiveClientList$0(Ljava/lang/String;Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;->mClientListJsonHandler:Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbHistory$ClientListJsonHandler;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbHistory$ClientListJsonHandler;->isClientMacPresent(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;->mClientListJsonHandler:Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbHistory$ClientListJsonHandler;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbHistory$ClientListJsonHandler;->getClientDataUsageInBytes(Ljava/lang/String;)J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;->mClientListJsonHandler:Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbHistory$ClientListJsonHandler;

    .line 16
    .line 17
    invoke-virtual {v2, p1}, Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbHistory$ClientListJsonHandler;->getClientTimeUsageInMilliSec(Ljava/lang/String;)J

    .line 18
    .line 19
    .line 20
    move-result-wide v2

    .line 21
    invoke-virtual {p2, v0, v1, v2, v3}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController;->handleDateOrSimChangedEvent(JJ)V

    .line 22
    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;->mDbHistory:Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbHistory;

    .line 26
    .line 27
    const-wide/16 v1, 0x0

    .line 28
    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbHistory;->getTodayTImeUsageOfGivenClient(Ljava/lang/String;)J

    .line 32
    .line 33
    .line 34
    move-result-wide v3

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    move-wide v3, v1

    .line 37
    :goto_0
    invoke-virtual {p2, v1, v2, v3, v4}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController;->handleDateOrSimChangedEvent(JJ)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p2}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->isClientConnected()Z

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    if-eqz p1, :cond_2

    .line 45
    .line 46
    invoke-direct {p0, p2}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;->addClientDetailInJsonHandler(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController;)V

    .line 47
    .line 48
    .line 49
    :cond_2
    :goto_1
    invoke-virtual {p2}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->isClientConnected()Z

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    if-eqz p1, :cond_3

    .line 54
    .line 55
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;->mSumOfDataUsageOfConnectedList:J

    .line 56
    .line 57
    invoke-virtual {p2}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->getClientTodayTotalMobileDataUsage()J

    .line 58
    .line 59
    .line 60
    move-result-wide p1

    .line 61
    add-long/2addr p1, v0

    .line 62
    iput-wide p1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;->mSumOfDataUsageOfConnectedList:J

    .line 63
    .line 64
    :cond_3
    return-void
.end method

.method private static synthetic lambda$handleWifiApStopped$1(Ljava/lang/String;Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController;->handleWifiApSwitchOffEvent()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private logClientInfoInSALogging(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController;)V
    .locals 3

    .line 1
    const-string p0, "client details logged="

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    sget-object p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;->TAG:Ljava/lang/String;

    .line 6
    .line 7
    const-string p1, "Can\'t log null object"

    .line 8
    .line 9
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    .line 14
    .line 15
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 16
    .line 17
    .line 18
    const-string v1, "mhc_os"

    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->getClientOsTypeFromDhcpFingerprint()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/dhcpfingerprint/SemWifiApDhcpAcronymMapper;->getOSTypeAcronym(Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 29
    .line 30
    .line 31
    const-string v1, "mhc_type"

    .line 32
    .line 33
    invoke-virtual {p1}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->getClientDeviceTypeFromDhcpFingerPrint()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/dhcpfingerprint/SemWifiApDhcpAcronymMapper;->getDeviceTypeAcronym(Ljava/lang/String;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 42
    .line 43
    .line 44
    const-string v1, "mhc_manu"

    .line 45
    .line 46
    invoke-virtual {p1}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->getClientManufactureFromDhcpFingerprint()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/dhcpfingerprint/SemWifiApDhcpAcronymMapper;->getManufacturerAcronym(Ljava/lang/String;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 55
    .line 56
    .line 57
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApSaLoggingHandler()Lcom/samsung/android/server/wifi/bigdata/WifiApSaLoggingHandler;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    const-string v1, "mhs_client"

    .line 66
    .line 67
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    invoke-virtual {p1, v1, v2}, Lcom/samsung/android/server/wifi/bigdata/WifiApSaLoggingHandler;->sendEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    sget-object p1, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;->TAG:Ljava/lang/String;

    .line 75
    .line 76
    new-instance v1, Ljava/lang/StringBuilder;

    .line 77
    .line 78
    invoke-direct {v1, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p0

    .line 92
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    .line 94
    .line 95
    return-void

    .line 96
    :catch_0
    move-exception p0

    .line 97
    new-instance p1, Ljava/lang/RuntimeException;

    .line 98
    .line 99
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 100
    .line 101
    .line 102
    throw p1
.end method

.method private printListLog(Ljava/lang/String;)V
    .locals 3

    .line 1
    const-string v0, "\n"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lcom/samsung/android/mcf/continuity/common/DLog$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v2, "Active List = "

    .line 10
    .line 11
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;->mActiveClientMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 15
    .line 16
    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApUtils;->hideMacAddressInStringIfAny(Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    new-instance v1, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    const-string v2, "Connected List = "

    .line 40
    .line 41
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;->mSortedListOfConnClients:Ljava/util/List;

    .line 45
    .line 46
    invoke-interface {v2}, Ljava/util/List;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApUtils;->hideMacAddressInStringIfAny(Ljava/lang/String;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    new-instance v1, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    const-string v2, "Disconnected List = "

    .line 70
    .line 71
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;->mSortedListOfDisconnectedClients:Ljava/util/List;

    .line 75
    .line 76
    invoke-interface {p0}, Ljava/util/List;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApUtils;->hideMacAddressInStringIfAny(Ljava/lang/String;)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    sget-object p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;->TAG:Ljava/lang/String;

    .line 98
    .line 99
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    .line 105
    .line 106
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    const/4 v0, 0x0

    .line 111
    invoke-static {p0, p1, v0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDatausageDump;->addDumpSysLog(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 112
    .line 113
    .line 114
    return-void
.end method

.method private resetActiveAndConnectedList()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;->mActiveClientMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;->mConnectedClientMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;->mSortedListOfConnClients:Ljava/util/List;

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 14
    .line 15
    .line 16
    const-wide/16 v0, 0x0

    .line 17
    .line 18
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;->mSumOfDataUsageOfConnectedList:J

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method getClientListJsonHandler()Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbHistory$ClientListJsonHandler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;->mClientListJsonHandler:Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbHistory$ClientListJsonHandler;

    .line 2
    .line 3
    return-object p0
.end method

.method getConnectedClientCount()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;->mConnectedClientMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method getDeepCopyClientDetailsObject(Ljava/lang/String;)Lcom/samsung/android/wifi/SemWifiApClientDetails;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;->mConnectedClientMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    sget-object v1, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->DEFAULT_CONNECTED_IP:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->getClientIpAddress()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    const-string v1, ""

    .line 24
    .line 25
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-nez v2, :cond_0

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController;->setIpAddress(Ljava/lang/String;)Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController;

    .line 32
    .line 33
    .line 34
    :cond_0
    if-eqz v0, :cond_1

    .line 35
    .line 36
    new-instance p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;

    .line 37
    .line 38
    invoke-direct {p0, v0}, Lcom/samsung/android/wifi/SemWifiApClientDetails;-><init>(Lcom/samsung/android/wifi/SemWifiApClientDetails;)V

    .line 39
    .line 40
    .line 41
    return-object p0

    .line 42
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;->mDisconnectedClientMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 43
    .line 44
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    check-cast p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController;

    .line 49
    .line 50
    if-eqz p0, :cond_2

    .line 51
    .line 52
    new-instance p1, Lcom/samsung/android/wifi/SemWifiApClientDetails;

    .line 53
    .line 54
    invoke-direct {p1, p0}, Lcom/samsung/android/wifi/SemWifiApClientDetails;-><init>(Lcom/samsung/android/wifi/SemWifiApClientDetails;)V

    .line 55
    .line 56
    .line 57
    return-object p1

    .line 58
    :cond_2
    const/4 p0, 0x0

    .line 59
    return-object p0
.end method

.method getTopHotspotClientsToday(IILjava/lang/Object;)I
    .locals 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(IITT;)I"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    move-object/from16 v3, p3

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    if-le v1, v2, :cond_0

    .line 11
    .line 12
    sget-object v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;->TAG:Ljava/lang/String;

    .line 13
    .line 14
    const-string v1, "getTopHotspotClientsToday() : Wrong parameters"

    .line 15
    .line 16
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    return v4

    .line 20
    :cond_0
    if-nez v3, :cond_1

    .line 21
    .line 22
    sget-object v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;->TAG:Ljava/lang/String;

    .line 23
    .line 24
    const-string v1, "getTopHotspotClientsToday() : addTo is null"

    .line 25
    .line 26
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    return v4

    .line 30
    :cond_1
    instance-of v5, v3, Ljava/lang/StringBuffer;

    .line 31
    .line 32
    if-nez v5, :cond_2

    .line 33
    .line 34
    instance-of v6, v3, Ljava/util/List;

    .line 35
    .line 36
    if-nez v6, :cond_2

    .line 37
    .line 38
    sget-object v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;->TAG:Ljava/lang/String;

    .line 39
    .line 40
    const-string v1, "getTopHotspotClientsToday() : addTo object type is wrong"

    .line 41
    .line 42
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    return v4

    .line 46
    :cond_2
    iget-wide v6, v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;->mSumOfDataUsageOfConnectedList:J

    .line 47
    .line 48
    iget-wide v8, v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;->mSumOfDataUsageOfDisConnectedList:J

    .line 49
    .line 50
    iget-object v10, v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;->mSortedListOfConnClients:Ljava/util/List;

    .line 51
    .line 52
    invoke-interface {v10}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    .line 53
    .line 54
    .line 55
    move-result-object v10

    .line 56
    iget-object v11, v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;->mSortedListOfDisconnectedClients:Ljava/util/List;

    .line 57
    .line 58
    invoke-interface {v11}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    .line 59
    .line 60
    .line 61
    move-result-object v11

    .line 62
    invoke-interface {v10}, Ljava/util/ListIterator;->hasNext()Z

    .line 63
    .line 64
    .line 65
    move-result v12

    .line 66
    const/4 v13, 0x0

    .line 67
    if-eqz v12, :cond_3

    .line 68
    .line 69
    invoke-interface {v10}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v12

    .line 73
    check-cast v12, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController;

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_3
    move-object v12, v13

    .line 77
    :goto_0
    invoke-interface {v11}, Ljava/util/ListIterator;->hasNext()Z

    .line 78
    .line 79
    .line 80
    move-result v14

    .line 81
    if-eqz v14, :cond_4

    .line 82
    .line 83
    invoke-interface {v11}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v14

    .line 87
    check-cast v14, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController;

    .line 88
    .line 89
    goto :goto_1

    .line 90
    :cond_4
    move-object v14, v13

    .line 91
    :goto_1
    if-eqz v12, :cond_8

    .line 92
    .line 93
    if-eqz v14, :cond_8

    .line 94
    .line 95
    if-ge v4, v1, :cond_8

    .line 96
    .line 97
    invoke-virtual {v12}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->getClientTodayTotalMobileDataUsage()J

    .line 98
    .line 99
    .line 100
    move-result-wide v15

    .line 101
    invoke-virtual {v14}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->getClientTodayTotalMobileDataUsage()J

    .line 102
    .line 103
    .line 104
    move-result-wide v17

    .line 105
    cmp-long v15, v15, v17

    .line 106
    .line 107
    if-ltz v15, :cond_6

    .line 108
    .line 109
    invoke-direct {v0, v3, v12}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;->addClientDetail(Ljava/lang/Object;Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v12}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->getClientTodayTotalMobileDataUsage()J

    .line 113
    .line 114
    .line 115
    move-result-wide v15

    .line 116
    sub-long/2addr v6, v15

    .line 117
    invoke-interface {v10}, Ljava/util/ListIterator;->hasNext()Z

    .line 118
    .line 119
    .line 120
    move-result v12

    .line 121
    if-eqz v12, :cond_5

    .line 122
    .line 123
    invoke-interface {v10}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v12

    .line 127
    check-cast v12, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController;

    .line 128
    .line 129
    goto :goto_2

    .line 130
    :cond_5
    move-object v12, v13

    .line 131
    goto :goto_2

    .line 132
    :cond_6
    invoke-direct {v0, v3, v14}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;->addClientDetail(Ljava/lang/Object;Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v14}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->getClientTodayTotalMobileDataUsage()J

    .line 136
    .line 137
    .line 138
    move-result-wide v14

    .line 139
    sub-long/2addr v8, v14

    .line 140
    invoke-interface {v11}, Ljava/util/ListIterator;->hasNext()Z

    .line 141
    .line 142
    .line 143
    move-result v14

    .line 144
    if-eqz v14, :cond_7

    .line 145
    .line 146
    invoke-interface {v11}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object v14

    .line 150
    check-cast v14, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController;

    .line 151
    .line 152
    goto :goto_2

    .line 153
    :cond_7
    move-object v14, v13

    .line 154
    :goto_2
    add-int/lit8 v4, v4, 0x1

    .line 155
    .line 156
    goto :goto_1

    .line 157
    :cond_8
    :goto_3
    if-ge v4, v1, :cond_a

    .line 158
    .line 159
    if-eqz v14, :cond_a

    .line 160
    .line 161
    invoke-direct {v0, v3, v14}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;->addClientDetail(Ljava/lang/Object;Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController;)V

    .line 162
    .line 163
    .line 164
    add-int/lit8 v4, v4, 0x1

    .line 165
    .line 166
    invoke-virtual {v14}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->getClientTodayTotalMobileDataUsage()J

    .line 167
    .line 168
    .line 169
    move-result-wide v14

    .line 170
    sub-long/2addr v8, v14

    .line 171
    invoke-interface {v11}, Ljava/util/ListIterator;->hasNext()Z

    .line 172
    .line 173
    .line 174
    move-result v14

    .line 175
    if-eqz v14, :cond_9

    .line 176
    .line 177
    invoke-interface {v11}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    move-result-object v14

    .line 181
    check-cast v14, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController;

    .line 182
    .line 183
    goto :goto_3

    .line 184
    :cond_9
    move-object v14, v13

    .line 185
    goto :goto_3

    .line 186
    :cond_a
    :goto_4
    if-ge v4, v2, :cond_c

    .line 187
    .line 188
    if-eqz v12, :cond_c

    .line 189
    .line 190
    invoke-direct {v0, v3, v12}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;->addClientDetail(Ljava/lang/Object;Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController;)V

    .line 191
    .line 192
    .line 193
    add-int/lit8 v4, v4, 0x1

    .line 194
    .line 195
    invoke-virtual {v12}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->getClientTodayTotalMobileDataUsage()J

    .line 196
    .line 197
    .line 198
    move-result-wide v11

    .line 199
    sub-long/2addr v6, v11

    .line 200
    invoke-interface {v10}, Ljava/util/ListIterator;->hasNext()Z

    .line 201
    .line 202
    .line 203
    move-result v1

    .line 204
    if-eqz v1, :cond_b

    .line 205
    .line 206
    invoke-interface {v10}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    .line 207
    .line 208
    .line 209
    move-result-object v1

    .line 210
    move-object v12, v1

    .line 211
    check-cast v12, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController;

    .line 212
    .line 213
    goto :goto_4

    .line 214
    :cond_b
    move-object v12, v13

    .line 215
    goto :goto_4

    .line 216
    :cond_c
    if-nez v12, :cond_e

    .line 217
    .line 218
    if-eqz v14, :cond_d

    .line 219
    .line 220
    goto :goto_5

    .line 221
    :cond_d
    return v4

    .line 222
    :cond_e
    :goto_5
    instance-of v0, v3, Ljava/util/List;

    .line 223
    .line 224
    if-eqz v0, :cond_f

    .line 225
    .line 226
    new-instance v10, Lcom/samsung/android/wifi/SemWifiApClientDetails;

    .line 227
    .line 228
    add-long v21, v6, v8

    .line 229
    .line 230
    const-string v29, "unknown"

    .line 231
    .line 232
    const-string v30, "unknown"

    .line 233
    .line 234
    const-string v11, ""

    .line 235
    .line 236
    const-string v12, ""

    .line 237
    .line 238
    const-string v13, ""

    .line 239
    .line 240
    const-string v14, ""

    .line 241
    .line 242
    const-string v15, ""

    .line 243
    .line 244
    const/16 v16, 0x0

    .line 245
    .line 246
    const-wide/16 v17, 0x0

    .line 247
    .line 248
    const-wide/16 v19, 0x0

    .line 249
    .line 250
    const-wide/16 v23, 0x0

    .line 251
    .line 252
    const/16 v25, 0x0

    .line 253
    .line 254
    const/16 v26, 0x0

    .line 255
    .line 256
    const/16 v27, 0x0

    .line 257
    .line 258
    const-string v28, "unknown"

    .line 259
    .line 260
    invoke-direct/range {v10 .. v30}, Lcom/samsung/android/wifi/SemWifiApClientDetails;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJJJJZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    .line 262
    .line 263
    move-object v0, v3

    .line 264
    check-cast v0, Ljava/util/List;

    .line 265
    .line 266
    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 267
    .line 268
    .line 269
    goto :goto_6

    .line 270
    :cond_f
    if-eqz v5, :cond_10

    .line 271
    .line 272
    move-object v0, v3

    .line 273
    check-cast v0, Ljava/lang/StringBuffer;

    .line 274
    .line 275
    new-instance v1, Ljava/lang/StringBuilder;

    .line 276
    .line 277
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 278
    .line 279
    .line 280
    add-long/2addr v6, v8

    .line 281
    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 282
    .line 283
    .line 284
    const-string v2, " Others\n"

    .line 285
    .line 286
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    .line 288
    .line 289
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 290
    .line 291
    .line 292
    move-result-object v1

    .line 293
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 294
    .line 295
    .line 296
    :cond_10
    :goto_6
    add-int/lit8 v4, v4, 0x1

    .line 297
    .line 298
    return v4
.end method

.method handleClientConnected(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 14

    .line 1
    move-object/from16 v0, p2

    .line 2
    .line 3
    move-object/from16 v2, p3

    .line 4
    .line 5
    move/from16 v9, p4

    .line 6
    .line 7
    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageUtils;->isValidMac(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    sget-object p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;->TAG:Ljava/lang/String;

    .line 14
    .line 15
    const-string p1, "handleClientConnected() : Invalid Mac Address "

    .line 16
    .line 17
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    if-eqz v0, :cond_e

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-nez v1, :cond_e

    .line 28
    .line 29
    if-nez v2, :cond_1

    .line 30
    .line 31
    goto/16 :goto_6

    .line 32
    .line 33
    :cond_1
    const-string v1, "\n"

    .line 34
    .line 35
    const-string v3, " "

    .line 36
    .line 37
    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    new-instance v0, Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbSetting$ClientSettingSetter;

    .line 42
    .line 43
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;->mDbSetting:Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbSetting;

    .line 44
    .line 45
    invoke-direct {v0, v1, p1}, Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbSetting$ClientSettingSetter;-><init>(Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbSetting;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v3}, Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbSetting$ClientSettingSetter;->setName(Ljava/lang/String;)Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbSetting$ClientSettingSetter;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbSetting$ClientSettingSetter;->save()Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbSetting$ClientSettingSetter;

    .line 53
    .line 54
    .line 55
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;->mConnectedClientMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 56
    .line 57
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    const-string v10, "#tag_wifi_ap_lab_client_event#"

    .line 62
    .line 63
    const-string v11, ",, Ip type ="

    .line 64
    .line 65
    const-string v12, ",, Ip ="

    .line 66
    .line 67
    const-string v13, ",, Name type ="

    .line 68
    .line 69
    if-eqz v0, :cond_6

    .line 70
    .line 71
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;->mConnectedClientMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 72
    .line 73
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    check-cast p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController;

    .line 78
    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 82
    .line 83
    .line 84
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    if-nez v1, :cond_2

    .line 89
    .line 90
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController;->getDhcpDeviceName()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result v1

    .line 98
    if-nez v1, :cond_2

    .line 99
    .line 100
    const-string v1, ",, DHCP name ="

    .line 101
    .line 102
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController;->getNsdDeviceName()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 113
    .line 114
    .line 115
    move-result v1

    .line 116
    if-eqz v1, :cond_2

    .line 117
    .line 118
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController;->getEditedDeviceName()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 123
    .line 124
    .line 125
    move-result v1

    .line 126
    if-eqz v1, :cond_2

    .line 127
    .line 128
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    sget-object v1, Lcom/samsung/android/wifi/SemWifiApClientDetails$DeviceNameType;->DHCP:Lcom/samsung/android/wifi/SemWifiApClientDetails$DeviceNameType;

    .line 132
    .line 133
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    :cond_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 137
    .line 138
    .line 139
    move-result v1

    .line 140
    if-nez v1, :cond_4

    .line 141
    .line 142
    invoke-virtual {p0}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->getClientIpAddress()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 147
    .line 148
    .line 149
    move-result v1

    .line 150
    if-nez v1, :cond_4

    .line 151
    .line 152
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageUtils;->isValidIp(Ljava/lang/String;)Z

    .line 159
    .line 160
    .line 161
    move-result v1

    .line 162
    if-eqz v1, :cond_3

    .line 163
    .line 164
    sget-object v1, Lcom/samsung/android/wifi/SemWifiApClientDetails$DeviceIpType;->DYNAMIC:Lcom/samsung/android/wifi/SemWifiApClientDetails$DeviceIpType;

    .line 165
    .line 166
    invoke-virtual {p0, v1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController;->setIpType(Lcom/samsung/android/wifi/SemWifiApClientDetails$DeviceIpType;)Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController;

    .line 167
    .line 168
    .line 169
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    goto :goto_0

    .line 176
    :cond_3
    sget-object v1, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;->TAG:Ljava/lang/String;

    .line 177
    .line 178
    const-string v4, "not a valid ip address="

    .line 179
    .line 180
    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v4

    .line 184
    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    .line 186
    .line 187
    :cond_4
    :goto_0
    invoke-virtual {p0, v3}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController;->setDeviceName(Ljava/lang/String;)Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController;

    .line 188
    .line 189
    .line 190
    move-result-object v1

    .line 191
    invoke-virtual {v1, v2}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController;->setIpAddress(Ljava/lang/String;)Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController;

    .line 192
    .line 193
    .line 194
    sget-object v1, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;->TAG:Ljava/lang/String;

    .line 195
    .line 196
    new-instance v4, Ljava/lang/StringBuilder;

    .line 197
    .line 198
    const-string v5, "Client already connected but got callback again, therefore update the name and ip only, Mac = "

    .line 199
    .line 200
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {p0}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->getClientMacAddress()Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object p0

    .line 207
    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageUtils;->getTruncatedMAC(Ljava/lang/String;)Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object p0

    .line 211
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    .line 214
    const-string p0, ", Name = "

    .line 215
    .line 216
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    .line 218
    .line 219
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    .line 221
    .line 222
    const-string p0, ", IP = "

    .line 223
    .line 224
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    .line 229
    .line 230
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object p0

    .line 234
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    .line 236
    .line 237
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->isEmpty()Z

    .line 238
    .line 239
    .line 240
    move-result p0

    .line 241
    if-nez p0, :cond_5

    .line 242
    .line 243
    new-instance p0, Ljava/lang/StringBuilder;

    .line 244
    .line 245
    const-string v1, "Event =Client setting changed,, Mac ="

    .line 246
    .line 247
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 248
    .line 249
    .line 250
    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApUtils;->hideFirstHalfString(Ljava/lang/String;)Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object p1

    .line 254
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    .line 256
    .line 257
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object p1

    .line 261
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    .line 263
    .line 264
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 265
    .line 266
    .line 267
    move-result-object p0

    .line 268
    invoke-static {v10, p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApLoggerHelper;->i(Ljava/lang/String;Ljava/lang/String;)Z

    .line 269
    .line 270
    .line 271
    :cond_5
    return-void

    .line 272
    :cond_6
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;->mDisconnectedClientMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 273
    .line 274
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    .line 276
    .line 277
    move-result-object v0

    .line 278
    check-cast v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController;

    .line 279
    .line 280
    if-eqz v0, :cond_7

    .line 281
    .line 282
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;->mDisconnectedClientMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 283
    .line 284
    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    .line 286
    .line 287
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;->mSortedListOfDisconnectedClients:Ljava/util/List;

    .line 288
    .line 289
    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 290
    .line 291
    .line 292
    iget-wide v4, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;->mSumOfDataUsageOfDisConnectedList:J

    .line 293
    .line 294
    invoke-virtual {v0}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->getClientTodayTotalMobileDataUsage()J

    .line 295
    .line 296
    .line 297
    move-result-wide v6

    .line 298
    sub-long/2addr v4, v6

    .line 299
    iput-wide v4, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;->mSumOfDataUsageOfDisConnectedList:J

    .line 300
    .line 301
    invoke-virtual {v0, v3, v2, v9}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController;->handleClientConnectedEvent(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 302
    .line 303
    .line 304
    sget-object v1, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;->TAG:Ljava/lang/String;

    .line 305
    .line 306
    const-string v2, "Client connect : From DisconnectedList"

    .line 307
    .line 308
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    .line 310
    .line 311
    :goto_1
    move-object v2, v0

    .line 312
    goto :goto_4

    .line 313
    :cond_7
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;->mActiveClientMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 314
    .line 315
    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 316
    .line 317
    .line 318
    move-result v1

    .line 319
    if-eqz v1, :cond_8

    .line 320
    .line 321
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;->mActiveClientMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 322
    .line 323
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    .line 325
    .line 326
    move-result-object v0

    .line 327
    check-cast v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController;

    .line 328
    .line 329
    :cond_8
    if-eqz v0, :cond_9

    .line 330
    .line 331
    invoke-virtual {v0, v3, v2, v9}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController;->handleClientConnectedEvent(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 332
    .line 333
    .line 334
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;->addClientDetailInJsonHandler(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController;)V

    .line 335
    .line 336
    .line 337
    sget-object v1, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;->TAG:Ljava/lang/String;

    .line 338
    .line 339
    const-string v2, "Client connect : From active list"

    .line 340
    .line 341
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    .line 343
    .line 344
    goto :goto_1

    .line 345
    :cond_9
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;->mDbHistory:Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbHistory;

    .line 346
    .line 347
    if-eqz v0, :cond_a

    .line 348
    .line 349
    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbHistory;->getTodayTImeUsageOfGivenClient(Ljava/lang/String;)J

    .line 350
    .line 351
    .line 352
    move-result-wide v0

    .line 353
    :goto_2
    move-wide v6, v0

    .line 354
    goto :goto_3

    .line 355
    :cond_a
    const-wide/16 v0, 0x0

    .line 356
    .line 357
    goto :goto_2

    .line 358
    :goto_3
    const-wide/16 v4, 0x0

    .line 359
    .line 360
    const/4 v8, 0x1

    .line 361
    move-object v0, p0

    .line 362
    move-object v1, p1

    .line 363
    invoke-direct/range {v0 .. v9}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;->createNewClient(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJZZ)Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController;

    .line 364
    .line 365
    .line 366
    move-result-object v2

    .line 367
    invoke-direct {p0, v2}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;->addClientDetailInJsonHandler(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController;)V

    .line 368
    .line 369
    .line 370
    sget-object v3, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;->TAG:Ljava/lang/String;

    .line 371
    .line 372
    const-string v4, "Client connect : new object"

    .line 373
    .line 374
    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    .line 376
    .line 377
    :goto_4
    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;->mConnectedClientMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 378
    .line 379
    invoke-virtual {v3, p1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    .line 381
    .line 382
    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;->mSortedListOfConnClients:Ljava/util/List;

    .line 383
    .line 384
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 385
    .line 386
    .line 387
    iget-wide v3, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;->mSumOfDataUsageOfConnectedList:J

    .line 388
    .line 389
    invoke-virtual {v2}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->getClientTodayTotalMobileDataUsage()J

    .line 390
    .line 391
    .line 392
    move-result-wide v5

    .line 393
    add-long/2addr v5, v3

    .line 394
    iput-wide v5, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;->mSumOfDataUsageOfConnectedList:J

    .line 395
    .line 396
    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;->mSortedListOfConnClients:Ljava/util/List;

    .line 397
    .line 398
    invoke-static {}, Ljava/util/Collections;->reverseOrder()Ljava/util/Comparator;

    .line 399
    .line 400
    .line 401
    move-result-object v4

    .line 402
    invoke-static {v3, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 403
    .line 404
    .line 405
    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;->mActiveClientMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 406
    .line 407
    invoke-virtual {v3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 408
    .line 409
    .line 410
    move-result v3

    .line 411
    if-nez v3, :cond_b

    .line 412
    .line 413
    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;->mActiveClientMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 414
    .line 415
    invoke-virtual {v3, p1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 416
    .line 417
    .line 418
    :cond_b
    invoke-virtual {v2}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->isDeviceAutoHotspotClient()Z

    .line 419
    .line 420
    .line 421
    move-result v3

    .line 422
    if-eqz v3, :cond_c

    .line 423
    .line 424
    const-string v3, "Auto Hotspot"

    .line 425
    .line 426
    goto :goto_5

    .line 427
    :cond_c
    invoke-virtual {v2}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->isDeviceGuestClient()Z

    .line 428
    .line 429
    .line 430
    move-result v3

    .line 431
    if-eqz v3, :cond_d

    .line 432
    .line 433
    const-string v3, "Otp"

    .line 434
    .line 435
    goto :goto_5

    .line 436
    :cond_d
    const-string v3, "Normal"

    .line 437
    .line 438
    :goto_5
    const-string v4, "handleClientConnected()"

    .line 439
    .line 440
    invoke-direct {p0, v4}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;->printListLog(Ljava/lang/String;)V

    .line 441
    .line 442
    .line 443
    new-instance p0, Ljava/lang/StringBuilder;

    .line 444
    .line 445
    const-string v0, "Event =Client connected,, Mac ="

    .line 446
    .line 447
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 448
    .line 449
    .line 450
    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApUtils;->hideFirstHalfString(Ljava/lang/String;)Ljava/lang/String;

    .line 451
    .line 452
    .line 453
    move-result-object p1

    .line 454
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 455
    .line 456
    .line 457
    const-string p1, ",, Name ="

    .line 458
    .line 459
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 460
    .line 461
    .line 462
    invoke-virtual {v2}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->getClientDeviceName()Ljava/lang/String;

    .line 463
    .line 464
    .line 465
    move-result-object p1

    .line 466
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 467
    .line 468
    .line 469
    invoke-virtual {p0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 470
    .line 471
    .line 472
    invoke-virtual {v2}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->getClientDeviceNameType()Lcom/samsung/android/wifi/SemWifiApClientDetails$DeviceNameType;

    .line 473
    .line 474
    .line 475
    move-result-object p1

    .line 476
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 477
    .line 478
    .line 479
    const-string p1, ",, Connection type ="

    .line 480
    .line 481
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 482
    .line 483
    .line 484
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 485
    .line 486
    .line 487
    invoke-virtual {p0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 488
    .line 489
    .line 490
    invoke-virtual {v2}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->getClientIpAddress()Ljava/lang/String;

    .line 491
    .line 492
    .line 493
    move-result-object p1

    .line 494
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 495
    .line 496
    .line 497
    invoke-virtual {p0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 498
    .line 499
    .line 500
    sget-object p1, Lcom/samsung/android/wifi/SemWifiApClientDetails$DeviceIpType;->UNKNOWN:Lcom/samsung/android/wifi/SemWifiApClientDetails$DeviceIpType;

    .line 501
    .line 502
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 503
    .line 504
    .line 505
    const-string p1, ",, Device type ="

    .line 506
    .line 507
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 508
    .line 509
    .line 510
    invoke-virtual {v2}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->getDeviceType()I

    .line 511
    .line 512
    .line 513
    move-result p1

    .line 514
    invoke-static {p1}, Lcom/samsung/android/wifi/SemWifiApClientDetails$DeviceType;->getDeviceTypeAsString(I)Ljava/lang/String;

    .line 515
    .line 516
    .line 517
    move-result-object p1

    .line 518
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 519
    .line 520
    .line 521
    const-string p1, ",, Freq ="

    .line 522
    .line 523
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 524
    .line 525
    .line 526
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 527
    .line 528
    .line 529
    move-result-object p1

    .line 530
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getSoftApManager()Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    .line 531
    .line 532
    .line 533
    move-result-object p1

    .line 534
    invoke-virtual {v2}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->getClientMacAddress()Ljava/lang/String;

    .line 535
    .line 536
    .line 537
    move-result-object v0

    .line 538
    invoke-virtual {p1, v0}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->getStaConnectedFreq(Ljava/lang/String;)I

    .line 539
    .line 540
    .line 541
    move-result p1

    .line 542
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 543
    .line 544
    .line 545
    const-string p1, ",, iface ="

    .line 546
    .line 547
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 548
    .line 549
    .line 550
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 551
    .line 552
    .line 553
    move-result-object p1

    .line 554
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getSoftApManager()Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    .line 555
    .line 556
    .line 557
    move-result-object p1

    .line 558
    invoke-virtual {v2}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->getClientMacAddress()Ljava/lang/String;

    .line 559
    .line 560
    .line 561
    move-result-object v0

    .line 562
    invoke-virtual {p1, v0}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->getStaConnectedIface(Ljava/lang/String;)Ljava/lang/String;

    .line 563
    .line 564
    .line 565
    move-result-object p1

    .line 566
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 567
    .line 568
    .line 569
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 570
    .line 571
    .line 572
    move-result-object p0

    .line 573
    invoke-static {v10, p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApLoggerHelper;->i(Ljava/lang/String;Ljava/lang/String;)Z

    .line 574
    .line 575
    .line 576
    return-void

    .line 577
    :cond_e
    :goto_6
    sget-object p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;->TAG:Ljava/lang/String;

    .line 578
    .line 579
    const-string p1, "handleClientConnected() : null client name or null ip address "

    .line 580
    .line 581
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    .line 583
    .line 584
    return-void
.end method

.method handleClientDhcpFingerprintUpdate(Lcom/samsung/android/server/wifi/ap/dhcpfingerprint/SemWifiApDhcpFingerprintManager$SemWifiApClientDhcpDetail;)Z
    .locals 1

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/ap/dhcpfingerprint/SemWifiApDhcpFingerprintManager$SemWifiApClientDhcpDetail;->getClientMac()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageUtils;->isValidMac(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;->mConnectedClientMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/ap/dhcpfingerprint/SemWifiApDhcpFingerprintManager$SemWifiApClientDhcpDetail;->getClientMac()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {p0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    check-cast p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController;

    .line 24
    .line 25
    if-eqz p0, :cond_0

    .line 26
    .line 27
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/ap/dhcpfingerprint/SemWifiApDhcpFingerprintManager$SemWifiApClientDhcpDetail;->getOsType()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController;->setOsTypeFromDhcpFingerprint(Ljava/lang/String;)Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/ap/dhcpfingerprint/SemWifiApDhcpFingerprintManager$SemWifiApClientDhcpDetail;->getDeviceType()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController;->setDeviceTypeFromDhcpFingerprint(Ljava/lang/String;)Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/ap/dhcpfingerprint/SemWifiApDhcpFingerprintManager$SemWifiApClientDhcpDetail;->getManufacture()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController;->setManufactureFromDhcpFingerprint(Ljava/lang/String;)Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController;

    .line 48
    .line 49
    .line 50
    const/4 p0, 0x1

    .line 51
    return p0

    .line 52
    :cond_0
    sget-object p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;->TAG:Ljava/lang/String;

    .line 53
    .line 54
    const-string p1, "client is not present in connected list"

    .line 55
    .line 56
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_1
    sget-object p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;->TAG:Ljava/lang/String;

    .line 61
    .line 62
    const-string p1, "wrong dhcp details"

    .line 63
    .line 64
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    .line 66
    .line 67
    :goto_0
    const/4 p0, 0x0

    .line 68
    return p0
.end method

.method handleClientDisconnected(Ljava/lang/String;)V
    .locals 5

    .line 1
    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageUtils;->isValidMac(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    sget-object p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;->TAG:Ljava/lang/String;

    .line 8
    .line 9
    const-string p1, "handleClientDisconnected() : Invalid Mac Address "

    .line 10
    .line 11
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;->mConnectedClientMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 16
    .line 17
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController;

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->isClientConnected()Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_1

    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController;->handleClientDisconnectedEvent()V

    .line 32
    .line 33
    .line 34
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;->mConnectedClientMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 35
    .line 36
    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;->mSortedListOfConnClients:Ljava/util/List;

    .line 40
    .line 41
    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    iget-wide v1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;->mSumOfDataUsageOfConnectedList:J

    .line 45
    .line 46
    invoke-virtual {v0}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->getClientTodayTotalMobileDataUsage()J

    .line 47
    .line 48
    .line 49
    move-result-wide v3

    .line 50
    sub-long/2addr v1, v3

    .line 51
    iput-wide v1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;->mSumOfDataUsageOfConnectedList:J

    .line 52
    .line 53
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;->mDisconnectedClientMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 54
    .line 55
    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;->addClientInSortedDisconnectedList(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController;)V

    .line 59
    .line 60
    .line 61
    iget-wide v1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;->mSumOfDataUsageOfDisConnectedList:J

    .line 62
    .line 63
    invoke-virtual {v0}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->getClientTodayTotalMobileDataUsage()J

    .line 64
    .line 65
    .line 66
    move-result-wide v3

    .line 67
    add-long/2addr v3, v1

    .line 68
    iput-wide v3, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;->mSumOfDataUsageOfDisConnectedList:J

    .line 69
    .line 70
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;->addClientDetailInJsonHandler(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController;)V

    .line 71
    .line 72
    .line 73
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;->logClientInfoInSALogging(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController;)V

    .line 74
    .line 75
    .line 76
    sget-object p1, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;->TAG:Ljava/lang/String;

    .line 77
    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    .line 79
    .line 80
    const-string v1, "wifiApClientDisconnected(): mSumOfDataUsageOfDisConnectedList is updated = "

    .line 81
    .line 82
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    iget-wide v1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;->mSumOfDataUsageOfDisConnectedList:J

    .line 86
    .line 87
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_1
    sget-object p1, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;->TAG:Ljava/lang/String;

    .line 99
    .line 100
    const-string v0, "wifiApClientDisconnected():exception : Something went wrong device is already disconnected"

    .line 101
    .line 102
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    .line 104
    .line 105
    :goto_0
    const-string p1, "handleClientDisconnected()"

    .line 106
    .line 107
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;->printListLog(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    return-void
.end method

.method handleClientSettingRestoreEvent(Lorg/json/JSONObject;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;->mSortedListOfConnClients:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController;

    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->getClientMacAddress()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-nez v2, :cond_0

    .line 28
    .line 29
    :try_start_0
    invoke-virtual {v1}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->getClientMacAddress()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-direct {p0, v2, v1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;->applyClientSetting(Lorg/json/JSONObject;Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :catch_0
    move-exception v1

    .line 42
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;->mSortedListOfDisconnectedClients:Ljava/util/List;

    .line 47
    .line 48
    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    if-eqz v1, :cond_3

    .line 57
    .line 58
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    check-cast v1, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController;

    .line 63
    .line 64
    invoke-virtual {v1}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->getClientMacAddress()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    if-nez v2, :cond_2

    .line 73
    .line 74
    :try_start_1
    invoke-virtual {v1}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->getClientMacAddress()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    invoke-direct {p0, v2, v1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;->applyClientSetting(Lorg/json/JSONObject;Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 83
    .line 84
    .line 85
    goto :goto_1

    .line 86
    :catch_1
    move-exception v1

    .line 87
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 88
    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_3
    return-void
.end method

.method handleClientStreamChanged(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;->mSortedListOfConnClients:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController;

    .line 18
    .line 19
    invoke-virtual {v1, p1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController;->handleStreamChangedEvent(Z)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;->mSortedListOfDisconnectedClients:Ljava/util/List;

    .line 24
    .line 25
    invoke-interface {p0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    :goto_1
    invoke-interface {p0}, Ljava/util/ListIterator;->hasNext()Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    invoke-interface {p0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    check-cast v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController;

    .line 40
    .line 41
    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController;->handleStreamChangedEvent(Z)V

    .line 42
    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_1
    return-void
.end method

.method handleDateOrSimChangedEvent(IIILjava/lang/String;)V
    .locals 7

    .line 1
    invoke-static {p4}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageUtils;->isValidSimSerialNumber(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v1, Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbHistory$ClientListJsonHandler;

    .line 8
    .line 9
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;->mDbHistory:Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbHistory;

    .line 10
    .line 11
    move v3, p1

    .line 12
    move v4, p2

    .line 13
    move v5, p3

    .line 14
    move-object v6, p4

    .line 15
    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbHistory$ClientListJsonHandler;-><init>(Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbHistory;IIILjava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iput-object v1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;->mClientListJsonHandler:Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbHistory$ClientListJsonHandler;

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move-object v6, p4

    .line 22
    new-instance p1, Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbHistory$ClientListJsonHandler;

    .line 23
    .line 24
    invoke-direct {p1}, Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbHistory$ClientListJsonHandler;-><init>()V

    .line 25
    .line 26
    .line 27
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;->mClientListJsonHandler:Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbHistory$ClientListJsonHandler;

    .line 28
    .line 29
    sget-object p1, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;->TAG:Ljava/lang/String;

    .line 30
    .line 31
    const-string p2, "invalid sim number = "

    .line 32
    .line 33
    invoke-static {p2, v6, p1}, Lcom/samsung/android/server/wifi/SemClientModeManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;->handleDateOrSimChangeForActiveClientList()V

    .line 37
    .line 38
    .line 39
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;->handleDateOrSimChangedForDisconnectedClientList()V

    .line 40
    .line 41
    .line 42
    const-string p1, "handleDateOrSimChangedEvent()"

    .line 43
    .line 44
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;->printListLog(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method handleGuestClientConnection(Ljava/lang/String;)Z
    .locals 3

    .line 1
    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageUtils;->isValidMac(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    sget-object p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;->TAG:Ljava/lang/String;

    .line 9
    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string v2, "handleGuestClientConnection : Invalid Mac "

    .line 13
    .line 14
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageUtils;->getTruncatedMAC(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    return v1

    .line 32
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;->mConnectedClientMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 33
    .line 34
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    check-cast p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController;

    .line 39
    .line 40
    if-eqz p0, :cond_1

    .line 41
    .line 42
    const/4 v0, 0x1

    .line 43
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController;->setIsGuestClient(Z)Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController;

    .line 44
    .line 45
    .line 46
    new-instance p0, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    const-string v1, "Guest Client connected MAC : "

    .line 49
    .line 50
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageUtils;->getTruncatedMAC(Ljava/lang/String;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    sget-object p1, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;->TAG:Ljava/lang/String;

    .line 65
    .line 66
    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    .line 68
    .line 69
    invoke-static {p1, p0, v0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDatausageDump;->addDumpSysLog(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 70
    .line 71
    .line 72
    return v0

    .line 73
    :cond_1
    sget-object p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;->TAG:Ljava/lang/String;

    .line 74
    .line 75
    const-string p1, "Client info is null"

    .line 76
    .line 77
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    .line 79
    .line 80
    return v1
.end method

.method handleSetConnectedClientDataLimit(Ljava/lang/String;JLcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicInteger;)Z
    .locals 7

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v2, p2, v0

    .line 4
    .line 5
    if-gez v2, :cond_0

    .line 6
    .line 7
    move-wide p2, v0

    .line 8
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;->mConnectedClientMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 9
    .line 10
    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    check-cast v2, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController;

    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    if-eqz v2, :cond_4

    .line 18
    .line 19
    invoke-virtual {v2}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->getClientDataLimit()J

    .line 20
    .line 21
    .line 22
    move-result-wide v4

    .line 23
    cmp-long v4, v4, p2

    .line 24
    .line 25
    const-string v5, "MAC : "

    .line 26
    .line 27
    const/4 v6, 0x1

    .line 28
    if-nez v4, :cond_1

    .line 29
    .line 30
    new-instance p0, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    invoke-direct {p0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageUtils;->getTruncatedMAC(Ljava/lang/String;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string p1, ", data limit set by user is same as previous = "

    .line 43
    .line 44
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    sget-object p1, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;->TAG:Ljava/lang/String;

    .line 55
    .line 56
    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    invoke-static {p1, p0, v6}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDatausageDump;->addDumpSysLog(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 60
    .line 61
    .line 62
    return v3

    .line 63
    :cond_1
    cmp-long v0, p2, v0

    .line 64
    .line 65
    if-lez v0, :cond_2

    .line 66
    .line 67
    invoke-virtual {p4, p5, p6}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;->handleDataUsageStatsUpdate(Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicInteger;)Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf$DataUsageStats;

    .line 68
    .line 69
    .line 70
    move-result-object p4

    .line 71
    iget-object p4, p4, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf$DataUsageStats;->clientDataUsageStats:Ljava/util/concurrent/ConcurrentHashMap;

    .line 72
    .line 73
    invoke-virtual {p0, p4}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;->handleUpdateDataUsageOfConnClients(Ljava/util/concurrent/ConcurrentHashMap;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v2}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->getClientTodayTotalMobileDataUsage()J

    .line 77
    .line 78
    .line 79
    move-result-wide p4

    .line 80
    cmp-long p4, p4, p2

    .line 81
    .line 82
    if-ltz p4, :cond_2

    .line 83
    .line 84
    new-instance p4, Ljava/lang/StringBuilder;

    .line 85
    .line 86
    invoke-direct {p4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageUtils;->getTruncatedMAC(Ljava/lang/String;)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    const-string p1, ", data limit set by user is less than data usage (data usage="

    .line 97
    .line 98
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v2}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->getClientTodayTotalMobileDataUsage()J

    .line 102
    .line 103
    .line 104
    move-result-wide p5

    .line 105
    invoke-virtual {p4, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    const-string p1, " , limit set byt user = "

    .line 109
    .line 110
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    const-string p1, ")"

    .line 114
    .line 115
    invoke-static {p2, p3, p1, p4}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(JLjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    sget-object p2, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;->TAG:Ljava/lang/String;

    .line 120
    .line 121
    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    .line 123
    .line 124
    invoke-static {p2, p1, v6}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDatausageDump;->addDumpSysLog(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 125
    .line 126
    .line 127
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;->mContext:Landroid/content/Context;

    .line 128
    .line 129
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    const p2, 0x10410fb

    .line 134
    .line 135
    .line 136
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;->mContext:Landroid/content/Context;

    .line 141
    .line 142
    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageUtils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    return v3

    .line 146
    :cond_2
    new-instance p4, Ljava/lang/StringBuilder;

    .line 147
    .line 148
    const-string p5, "Event =Client setting changed,, Mac ="

    .line 149
    .line 150
    invoke-direct {p4, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApUtils;->hideFirstHalfString(Ljava/lang/String;)Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object p5

    .line 157
    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    if-nez v0, :cond_3

    .line 161
    .line 162
    const-string p5, ",, DataLimitInBytes =[Limit Removed]"

    .line 163
    .line 164
    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    goto :goto_0

    .line 168
    :cond_3
    const-string p5, ",, DataLimitInBytes ="

    .line 169
    .line 170
    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    invoke-virtual {p4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    :goto_0
    const-string p5, "#tag_wifi_ap_lab_client_event#"

    .line 177
    .line 178
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object p4

    .line 182
    invoke-static {p5, p4}, Lcom/samsung/android/server/wifi/ap/SemWifiApLoggerHelper;->i(Ljava/lang/String;Ljava/lang/String;)Z

    .line 183
    .line 184
    .line 185
    invoke-virtual {v2, p2, p3}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController;->setClientDataLimit(J)Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController;

    .line 186
    .line 187
    .line 188
    new-instance p4, Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbSetting$ClientSettingSetter;

    .line 189
    .line 190
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;->mDbSetting:Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbSetting;

    .line 191
    .line 192
    invoke-direct {p4, p0, p1}, Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbSetting$ClientSettingSetter;-><init>(Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbSetting;Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {p4, p2, p3}, Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbSetting$ClientSettingSetter;->setDataLimitInBytes(J)Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbSetting$ClientSettingSetter;

    .line 196
    .line 197
    .line 198
    move-result-object p0

    .line 199
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbSetting$ClientSettingSetter;->save()Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbSetting$ClientSettingSetter;

    .line 200
    .line 201
    .line 202
    new-instance p0, Ljava/lang/StringBuilder;

    .line 203
    .line 204
    invoke-direct {p0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageUtils;->getTruncatedMAC(Ljava/lang/String;)Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object p1

    .line 211
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    .line 214
    const-string p1, ", data limit set by user = "

    .line 215
    .line 216
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    .line 218
    .line 219
    invoke-virtual {p0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 220
    .line 221
    .line 222
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object p0

    .line 226
    sget-object p1, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;->TAG:Ljava/lang/String;

    .line 227
    .line 228
    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    .line 230
    .line 231
    invoke-static {p1, p0, v6}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDatausageDump;->addDumpSysLog(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 232
    .line 233
    .line 234
    return v6

    .line 235
    :cond_4
    sget-object p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;->TAG:Ljava/lang/String;

    .line 236
    .line 237
    const-string p1, "client disconnected , can\'t set data limit"

    .line 238
    .line 239
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    .line 241
    .line 242
    return v3
.end method

.method handleSetConnectedClientDeviceTypeAndDeviceName(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;ZZ)Z
    .locals 5

    .line 1
    invoke-static {p2}, Lcom/samsung/android/wifi/SemWifiApClientDetails$DeviceType;->isValidDeviceType(I)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    sget-object p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;->TAG:Ljava/lang/String;

    .line 9
    .line 10
    const-string p3, "trying to set wrong device type = "

    .line 11
    .line 12
    const-string p4, ", for mac = "

    .line 13
    .line 14
    invoke-static {p3, p2, p4}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageUtils;->getTruncatedMAC(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    return v1

    .line 33
    :cond_0
    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageUtils;->isValidMac(Ljava/lang/String;)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-nez v0, :cond_1

    .line 38
    .line 39
    sget-object p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;->TAG:Ljava/lang/String;

    .line 40
    .line 41
    const-string p2, "handleSetConnectedClientDeviceType : Invalid Mac="

    .line 42
    .line 43
    invoke-static {p2, p1, p0}, Lcom/samsung/android/server/wifi/SemClientModeManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    return v1

    .line 47
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;->mConnectedClientMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 48
    .line 49
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    check-cast v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController;

    .line 54
    .line 55
    if-nez v0, :cond_2

    .line 56
    .line 57
    sget-object p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;->TAG:Ljava/lang/String;

    .line 58
    .line 59
    new-instance p2, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    const-string p3, "Client is not connected ="

    .line 62
    .line 63
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageUtils;->getTruncatedMAC(Ljava/lang/String;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string p1, " failed to add device type and nsd name"

    .line 74
    .line 75
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    .line 84
    .line 85
    return v1

    .line 86
    :cond_2
    new-instance v1, Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbSetting$ClientSettingSetter;

    .line 87
    .line 88
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;->mDbSetting:Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbSetting;

    .line 89
    .line 90
    invoke-direct {v1, p0, p1}, Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbSetting$ClientSettingSetter;-><init>(Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbSetting;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0, p7}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController;->setIsAutoHotspotClient(Z)Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController;

    .line 94
    .line 95
    .line 96
    new-instance p0, Ljava/lang/StringBuilder;

    .line 97
    .line 98
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->getDeviceType()I

    .line 102
    .line 103
    .line 104
    move-result v2

    .line 105
    if-eq v2, p2, :cond_3

    .line 106
    .line 107
    const-string v2, ",, Device type ="

    .line 108
    .line 109
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-static {p2}, Lcom/samsung/android/wifi/SemWifiApClientDetails$DeviceType;->getDeviceTypeAsString(I)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v2

    .line 116
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v0, p2}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController;->setDeviceType(I)Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController;

    .line 120
    .line 121
    .line 122
    :cond_3
    const/4 v2, 0x1

    .line 123
    if-ne p4, v2, :cond_4

    .line 124
    .line 125
    sget-object p5, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->DEFAULT_CONNECTED_IP:Ljava/lang/String;

    .line 126
    .line 127
    invoke-virtual {v0, p5}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController;->setIpAddress(Ljava/lang/String;)Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController;

    .line 128
    .line 129
    .line 130
    goto :goto_0

    .line 131
    :cond_4
    invoke-static {p5}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageUtils;->isValidIp(Ljava/lang/String;)Z

    .line 132
    .line 133
    .line 134
    move-result v3

    .line 135
    if-eqz v3, :cond_6

    .line 136
    .line 137
    invoke-virtual {v0}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->getClientIpAddress()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v3

    .line 141
    if-eqz v3, :cond_5

    .line 142
    .line 143
    invoke-virtual {v0}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->getClientIpAddress()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v3

    .line 147
    invoke-virtual {v3, p5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 148
    .line 149
    .line 150
    move-result v3

    .line 151
    if-nez v3, :cond_6

    .line 152
    .line 153
    :cond_5
    sget-object v3, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;->TAG:Ljava/lang/String;

    .line 154
    .line 155
    const-string v4, " updating ip address:"

    .line 156
    .line 157
    invoke-static {v4, p5, v3}, Lcom/samsung/android/server/wifi/SemClientModeManager$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v0, p5}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController;->setIpAddress(Ljava/lang/String;)Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController;

    .line 161
    .line 162
    .line 163
    :cond_6
    :goto_0
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController;->getIpType()Lcom/samsung/android/wifi/SemWifiApClientDetails$DeviceIpType;

    .line 164
    .line 165
    .line 166
    move-result-object p5

    .line 167
    invoke-static {p5}, Lcom/samsung/android/wifi/SemWifiApClientDetails$DeviceIpType;->getIpTypeInt(Lcom/samsung/android/wifi/SemWifiApClientDetails$DeviceIpType;)I

    .line 168
    .line 169
    .line 170
    move-result p5

    .line 171
    if-eq p5, p4, :cond_7

    .line 172
    .line 173
    invoke-static {p4}, Lcom/samsung/android/wifi/SemWifiApClientDetails$DeviceIpType;->getIpTypeFromInt(I)Lcom/samsung/android/wifi/SemWifiApClientDetails$DeviceIpType;

    .line 174
    .line 175
    .line 176
    move-result-object p5

    .line 177
    invoke-virtual {v0, p5}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController;->setIpType(Lcom/samsung/android/wifi/SemWifiApClientDetails$DeviceIpType;)Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController;

    .line 178
    .line 179
    .line 180
    const-string p5, ",, Ip type ="

    .line 181
    .line 182
    invoke-virtual {p0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    invoke-static {p4}, Lcom/samsung/android/wifi/SemWifiApClientDetails$DeviceIpType;->getIpTypeFromInt(I)Lcom/samsung/android/wifi/SemWifiApClientDetails$DeviceIpType;

    .line 186
    .line 187
    .line 188
    move-result-object p5

    .line 189
    invoke-virtual {p0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    :cond_7
    invoke-virtual {v1, p2}, Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbSetting$ClientSettingSetter;->setDeviceType(I)Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbSetting$ClientSettingSetter;

    .line 193
    .line 194
    .line 195
    sget-object p5, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;->TAG:Ljava/lang/String;

    .line 196
    .line 197
    new-instance v3, Ljava/lang/StringBuilder;

    .line 198
    .line 199
    const-string v4, "if client is disabled DHCP hostname, then dont use Nsd name:"

    .line 200
    .line 201
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {v3, p6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    .line 207
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object p6

    .line 211
    invoke-static {p5, p6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    .line 213
    .line 214
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 215
    .line 216
    .line 217
    move-result p6

    .line 218
    if-nez p6, :cond_9

    .line 219
    .line 220
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController;->getNsdDeviceName()Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object p6

    .line 224
    invoke-virtual {p6, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 225
    .line 226
    .line 227
    move-result p6

    .line 228
    if-nez p6, :cond_9

    .line 229
    .line 230
    const-string p6, "\n"

    .line 231
    .line 232
    const-string v3, " "

    .line 233
    .line 234
    invoke-virtual {p3, p6, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object p3

    .line 238
    const-string p6, ",, NSD name ="

    .line 239
    .line 240
    invoke-virtual {p0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    .line 242
    .line 243
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    .line 245
    .line 246
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController;->getEditedDeviceName()Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object p6

    .line 250
    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 251
    .line 252
    .line 253
    move-result p6

    .line 254
    if-eqz p6, :cond_8

    .line 255
    .line 256
    const-string p6, ",, Name type ="

    .line 257
    .line 258
    invoke-virtual {p0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    .line 260
    .line 261
    sget-object p6, Lcom/samsung/android/wifi/SemWifiApClientDetails$DeviceNameType;->NSD:Lcom/samsung/android/wifi/SemWifiApClientDetails$DeviceNameType;

    .line 262
    .line 263
    invoke-virtual {p0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 264
    .line 265
    .line 266
    :cond_8
    invoke-virtual {v0, p3}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController;->setNsdDeviceName(Ljava/lang/String;)Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController;

    .line 267
    .line 268
    .line 269
    invoke-virtual {v1, p3}, Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbSetting$ClientSettingSetter;->setNsdName(Ljava/lang/String;)Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbSetting$ClientSettingSetter;

    .line 270
    .line 271
    .line 272
    :cond_9
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbSetting$ClientSettingSetter;->save()Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbSetting$ClientSettingSetter;

    .line 273
    .line 274
    .line 275
    if-eqz p7, :cond_a

    .line 276
    .line 277
    const-string p6, ",, Connection type =Auto Hotspot"

    .line 278
    .line 279
    invoke-virtual {p0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    .line 281
    .line 282
    :cond_a
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->isEmpty()Z

    .line 283
    .line 284
    .line 285
    move-result p6

    .line 286
    if-nez p6, :cond_b

    .line 287
    .line 288
    new-instance p6, Ljava/lang/StringBuilder;

    .line 289
    .line 290
    const-string p7, "Event =Client setting changed,, Mac ="

    .line 291
    .line 292
    invoke-direct {p6, p7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 293
    .line 294
    .line 295
    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApUtils;->hideFirstHalfString(Ljava/lang/String;)Ljava/lang/String;

    .line 296
    .line 297
    .line 298
    move-result-object p7

    .line 299
    invoke-virtual {p6, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    .line 301
    .line 302
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 303
    .line 304
    .line 305
    move-result-object p0

    .line 306
    invoke-virtual {p6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    .line 308
    .line 309
    const-string p0, "#tag_wifi_ap_lab_client_event#"

    .line 310
    .line 311
    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 312
    .line 313
    .line 314
    move-result-object p6

    .line 315
    invoke-static {p0, p6}, Lcom/samsung/android/server/wifi/ap/SemWifiApLoggerHelper;->i(Ljava/lang/String;Ljava/lang/String;)Z

    .line 316
    .line 317
    .line 318
    :cond_b
    new-instance p0, Ljava/lang/StringBuilder;

    .line 319
    .line 320
    const-string p6, "MAC : "

    .line 321
    .line 322
    invoke-direct {p0, p6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 323
    .line 324
    .line 325
    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageUtils;->getTruncatedMAC(Ljava/lang/String;)Ljava/lang/String;

    .line 326
    .line 327
    .line 328
    move-result-object p1

    .line 329
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    .line 331
    .line 332
    const-string p1, ", name: "

    .line 333
    .line 334
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    .line 336
    .line 337
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    .line 339
    .line 340
    const-string p1, ", device type set = "

    .line 341
    .line 342
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 343
    .line 344
    .line 345
    invoke-static {p2}, Lcom/samsung/android/wifi/SemWifiApClientDetails$DeviceType;->getDeviceTypeAsString(I)Ljava/lang/String;

    .line 346
    .line 347
    .line 348
    move-result-object p1

    .line 349
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 350
    .line 351
    .line 352
    const-string p1, ",isStaticip:"

    .line 353
    .line 354
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    .line 356
    .line 357
    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 358
    .line 359
    .line 360
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 361
    .line 362
    .line 363
    move-result-object p0

    .line 364
    invoke-static {p5, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    .line 366
    .line 367
    invoke-static {p5, p0, v2}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDatausageDump;->addDumpSysLog(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 368
    .line 369
    .line 370
    return v2
.end method

.method handleSetConnectedClientEditedName(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p2, :cond_2

    .line 3
    .line 4
    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageUtils;->isValidMac(Ljava/lang/String;)Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    goto/16 :goto_0

    .line 11
    .line 12
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;->mConnectedClientMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 13
    .line 14
    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController;

    .line 19
    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    const-string v0, "\n"

    .line 23
    .line 24
    const-string v2, " "

    .line 25
    .line 26
    invoke-virtual {p2, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    invoke-virtual {v1, p2}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController;->setEditedDeviceName(Ljava/lang/String;)Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController;

    .line 31
    .line 32
    .line 33
    new-instance v0, Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbSetting$ClientSettingSetter;

    .line 34
    .line 35
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;->mDbSetting:Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbSetting;

    .line 36
    .line 37
    invoke-direct {v0, p0, p1}, Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbSetting$ClientSettingSetter;-><init>(Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbSetting;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, p2}, Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbSetting$ClientSettingSetter;->setEditedName(Ljava/lang/String;)Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbSetting$ClientSettingSetter;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbSetting$ClientSettingSetter;->save()Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbSetting$ClientSettingSetter;

    .line 45
    .line 46
    .line 47
    new-instance p0, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    const-string v0, "MAC : "

    .line 50
    .line 51
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageUtils;->getTruncatedMAC(Ljava/lang/String;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    const-string v0, ", edited name = "

    .line 62
    .line 63
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->getTruncatedEditedNameForLog()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    .line 78
    .line 79
    const-string v1, "Event =Client setting changed,, Mac ="

    .line 80
    .line 81
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApUtils;->hideFirstHalfString(Ljava/lang/String;)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    const-string p1, ",, Name ="

    .line 92
    .line 93
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    const-string p1, ",, Name type ="

    .line 100
    .line 101
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    sget-object p1, Lcom/samsung/android/wifi/SemWifiApClientDetails$DeviceNameType;->EDITED:Lcom/samsung/android/wifi/SemWifiApClientDetails$DeviceNameType;

    .line 105
    .line 106
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    const-string p1, "#tag_wifi_ap_lab_client_event#"

    .line 110
    .line 111
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object p2

    .line 115
    invoke-static {p1, p2}, Lcom/samsung/android/server/wifi/ap/SemWifiApLoggerHelper;->i(Ljava/lang/String;Ljava/lang/String;)Z

    .line 116
    .line 117
    .line 118
    sget-object p1, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;->TAG:Ljava/lang/String;

    .line 119
    .line 120
    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    .line 122
    .line 123
    const/4 p2, 0x1

    .line 124
    invoke-static {p1, p0, p2}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDatausageDump;->addDumpSysLog(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 125
    .line 126
    .line 127
    return p2

    .line 128
    :cond_1
    sget-object p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;->TAG:Ljava/lang/String;

    .line 129
    .line 130
    const-string p1, "Client info is null"

    .line 131
    .line 132
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    .line 134
    .line 135
    return v0

    .line 136
    :cond_2
    :goto_0
    sget-object p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;->TAG:Ljava/lang/String;

    .line 137
    .line 138
    new-instance v1, Ljava/lang/StringBuilder;

    .line 139
    .line 140
    const-string v2, "handleSetConnectedClientEditedName : Invalid Mac/editedName "

    .line 141
    .line 142
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageUtils;->getTruncatedMAC(Ljava/lang/String;)Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object p1

    .line 149
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    const-string p1, ", "

    .line 153
    .line 154
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object p1

    .line 164
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    .line 166
    .line 167
    return v0
.end method

.method handleSetConnectedClientPauseSharing(Ljava/lang/String;Z)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;->mConnectedClientMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->isClientDataPausedByUser()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eq v1, p2, :cond_0

    .line 16
    .line 17
    new-instance v1, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    const-string v2, "Event =Client setting changed,, Mac ="

    .line 20
    .line 21
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApUtils;->hideFirstHalfString(Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v2, ",, PauseSharing ="

    .line 32
    .line 33
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string v2, "#tag_wifi_ap_lab_client_event#"

    .line 40
    .line 41
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-static {v2, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApLoggerHelper;->i(Ljava/lang/String;Ljava/lang/String;)Z

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, p2}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController;->setClientDataPausedByUser(Z)Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController;

    .line 49
    .line 50
    .line 51
    new-instance v0, Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbSetting$ClientSettingSetter;

    .line 52
    .line 53
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;->mDbSetting:Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbSetting;

    .line 54
    .line 55
    invoke-direct {v0, p0, p1}, Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbSetting$ClientSettingSetter;-><init>(Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbSetting;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, p2}, Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbSetting$ClientSettingSetter;->setPausedSharing(Z)Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbSetting$ClientSettingSetter;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbSetting$ClientSettingSetter;->save()Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbSetting$ClientSettingSetter;

    .line 63
    .line 64
    .line 65
    new-instance p0, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    const-string v0, "MAC : "

    .line 68
    .line 69
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageUtils;->getTruncatedMAC(Ljava/lang/String;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    const-string p1, ", Data Paused by User val = :"

    .line 80
    .line 81
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    sget-object p1, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;->TAG:Ljava/lang/String;

    .line 92
    .line 93
    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    .line 95
    .line 96
    const/4 p2, 0x1

    .line 97
    invoke-static {p1, p0, p2}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDatausageDump;->addDumpSysLog(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 98
    .line 99
    .line 100
    return p2

    .line 101
    :cond_0
    const/4 p0, 0x0

    .line 102
    return p0
.end method

.method handleSetConnectedClientTimeLimit(Ljava/lang/String;J)Z
    .locals 5

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v2, p2, v0

    .line 4
    .line 5
    if-gez v2, :cond_0

    .line 6
    .line 7
    move-wide p2, v0

    .line 8
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;->mConnectedClientMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 9
    .line 10
    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    check-cast v2, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController;

    .line 15
    .line 16
    if-eqz v2, :cond_2

    .line 17
    .line 18
    invoke-virtual {v2}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->getClientTimeLimit()J

    .line 19
    .line 20
    .line 21
    move-result-wide v3

    .line 22
    cmp-long v3, v3, p2

    .line 23
    .line 24
    if-eqz v3, :cond_2

    .line 25
    .line 26
    invoke-virtual {v2}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->getClientTodayTotalTime()J

    .line 27
    .line 28
    .line 29
    move-result-wide v3

    .line 30
    cmp-long v3, v3, p2

    .line 31
    .line 32
    if-ltz v3, :cond_1

    .line 33
    .line 34
    cmp-long v0, p2, v0

    .line 35
    .line 36
    if-nez v0, :cond_2

    .line 37
    .line 38
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    const-string v1, "Event =Client setting changed,, Mac ="

    .line 41
    .line 42
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApUtils;->hideFirstHalfString(Ljava/lang/String;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const-string v1, ",, TimeLimitInMillis ="

    .line 53
    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string v1, "#tag_wifi_ap_lab_client_event#"

    .line 61
    .line 62
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-static {v1, v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApLoggerHelper;->i(Ljava/lang/String;Ljava/lang/String;)Z

    .line 67
    .line 68
    .line 69
    invoke-virtual {v2, p2, p3}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController;->setClientTimeLimit(J)Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController;

    .line 70
    .line 71
    .line 72
    new-instance v0, Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbSetting$ClientSettingSetter;

    .line 73
    .line 74
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;->mDbSetting:Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbSetting;

    .line 75
    .line 76
    invoke-direct {v0, p0, p1}, Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbSetting$ClientSettingSetter;-><init>(Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbSetting;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0, p2, p3}, Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbSetting$ClientSettingSetter;->setTimeLimitInMilliSeconds(J)Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbSetting$ClientSettingSetter;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbSetting$ClientSettingSetter;->save()Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbSetting$ClientSettingSetter;

    .line 84
    .line 85
    .line 86
    new-instance p0, Ljava/lang/StringBuilder;

    .line 87
    .line 88
    const-string v0, "MAC : "

    .line 89
    .line 90
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageUtils;->getTruncatedMAC(Ljava/lang/String;)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    const-string p1, ", Time limit set by user = "

    .line 101
    .line 102
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {p0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object p0

    .line 112
    sget-object p1, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;->TAG:Ljava/lang/String;

    .line 113
    .line 114
    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    .line 116
    .line 117
    const/4 p2, 0x1

    .line 118
    invoke-static {p1, p0, p2}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDatausageDump;->addDumpSysLog(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 119
    .line 120
    .line 121
    return p2

    .line 122
    :cond_2
    const/4 p0, 0x0

    .line 123
    return p0
.end method

.method handleUpdateDataUsageOfConnClients(Ljava/util/concurrent/ConcurrentHashMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf$ClientDataUsageStats;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;->mSumOfDataUsageOfConnectedList:J

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Ljava/util/Map$Entry;

    .line 24
    .line 25
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Ljava/lang/String;

    .line 30
    .line 31
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    check-cast v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf$ClientDataUsageStats;

    .line 36
    .line 37
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;->mConnectedClientMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 38
    .line 39
    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    if-eqz v2, :cond_0

    .line 44
    .line 45
    iget-boolean v2, v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf$ClientDataUsageStats;->alive:Z

    .line 46
    .line 47
    if-eqz v2, :cond_0

    .line 48
    .line 49
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;->mConnectedClientMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 50
    .line 51
    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    check-cast v1, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController;

    .line 56
    .line 57
    if-eqz v1, :cond_0

    .line 58
    .line 59
    iget-wide v2, v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf$ClientDataUsageStats;->mTotalDataBytes:J

    .line 60
    .line 61
    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController;->setClientDataUsage(J)Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController;

    .line 62
    .line 63
    .line 64
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;->addClientDetailInJsonHandler(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController;)V

    .line 65
    .line 66
    .line 67
    iget-wide v2, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;->mSumOfDataUsageOfConnectedList:J

    .line 68
    .line 69
    invoke-virtual {v1}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->getClientTodayTotalMobileDataUsage()J

    .line 70
    .line 71
    .line 72
    move-result-wide v0

    .line 73
    add-long/2addr v0, v2

    .line 74
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;->mSumOfDataUsageOfConnectedList:J

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;->mSortedListOfConnClients:Ljava/util/List;

    .line 78
    .line 79
    invoke-static {}, Ljava/util/Collections;->reverseOrder()Ljava/util/Comparator;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    invoke-static {p0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 84
    .line 85
    .line 86
    return-void
.end method

.method handleWifiApStarted()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;->resetActiveAndConnectedList()V

    .line 2
    .line 3
    .line 4
    const-string v0, "handleWifiApStarted()"

    .line 5
    .line 6
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;->printListLog(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method handleWifiApStopped()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;->mActiveClientMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    new-instance v1, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager$$ExternalSyntheticLambda1;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;->mSortedListOfConnClients:Ljava/util/List;

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-lez v0, :cond_1

    .line 18
    .line 19
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;->mSortedListOfConnClients:Ljava/util/List;

    .line 20
    .line 21
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_0

    .line 30
    .line 31
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    check-cast v1, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController;

    .line 36
    .line 37
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;->logClientInfoInSALogging(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController;)V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;->mSumOfDataUsageOfDisConnectedList:J

    .line 42
    .line 43
    iget-wide v2, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;->mSumOfDataUsageOfConnectedList:J

    .line 44
    .line 45
    add-long/2addr v0, v2

    .line 46
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;->mSumOfDataUsageOfDisConnectedList:J

    .line 47
    .line 48
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;->mSortedListOfDisconnectedClients:Ljava/util/List;

    .line 49
    .line 50
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;->mSortedListOfConnClients:Ljava/util/List;

    .line 51
    .line 52
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 53
    .line 54
    .line 55
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;->mDisconnectedClientMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 56
    .line 57
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;->mConnectedClientMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 58
    .line 59
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->putAll(Ljava/util/Map;)V

    .line 60
    .line 61
    .line 62
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;->mSortedListOfDisconnectedClients:Ljava/util/List;

    .line 63
    .line 64
    invoke-static {}, Ljava/util/Collections;->reverseOrder()Ljava/util/Comparator;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 69
    .line 70
    .line 71
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;->resetActiveAndConnectedList()V

    .line 72
    .line 73
    .line 74
    const-string v0, "handleWifiApStopped()"

    .line 75
    .line 76
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;->printListLog(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    return-void
.end method
