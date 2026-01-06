.class public Lcom/samsung/android/server/wifi/connection/ConnectionConfigManager;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# static fields
.field static final CONNECTION_PERSONALIZATION_DISABLE_BTM_ADD:I = 0x1

.field static final CONNECTION_PERSONALIZATION_DISABLE_BTM_DEL:I = 0x2

.field static final CONNECTION_PERSONALIZATION_DISABLE_BTM_SET:I = 0x0

.field private static final TAG:Ljava/lang/String; = "Conn.ConnectionConfigManager"


# instance fields
.field private mBootCompleteHandled:Z

.field private final mLogger:Lcom/samsung/android/server/wifi/connection/Logger;

.field private mPrimaryInterfaceName:Ljava/lang/String;

.field private final mSemWifiConfigManager:Lcom/samsung/android/server/wifi/SemWifiConfigManager;

.field private final mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/SemWifiConfigManager;Lcom/samsung/android/server/wifi/connection/Logger;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/connection/ConnectionConfigManager;->mBootCompleteHandled:Z

    .line 6
    .line 7
    const-string v0, ""

    .line 8
    .line 9
    iput-object v0, p0, Lcom/samsung/android/server/wifi/connection/ConnectionConfigManager;->mPrimaryInterfaceName:Ljava/lang/String;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/samsung/android/server/wifi/connection/ConnectionConfigManager;->mSemWifiConfigManager:Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    .line 12
    .line 13
    const/4 p1, 0x0

    .line 14
    :try_start_0
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 15
    .line 16
    .line 17
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    goto :goto_0

    .line 19
    :catch_0
    const-string v0, "Conn.ConnectionConfigManager"

    .line 20
    .line 21
    const-string v1, "Failed to get SemWifiInjector instance."

    .line 22
    .line 23
    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/connection/Clog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    move-object v0, p1

    .line 27
    :goto_0
    if-eqz v0, :cond_0

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiNative()Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    iput-object p1, p0, Lcom/samsung/android/server/wifi/connection/ConnectionConfigManager;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/server/wifi/connection/ConnectionConfigManager;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 37
    .line 38
    :goto_1
    iput-object p2, p0, Lcom/samsung/android/server/wifi/connection/ConnectionConfigManager;->mLogger:Lcom/samsung/android/server/wifi/connection/Logger;

    .line 39
    .line 40
    return-void
.end method


# virtual methods
.method public applyPersonalizationConnOption(Ljava/lang/String;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/connection/ConnectionConfigManager;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1}, Lcom/samsung/android/server/wifi/connection/Util;->getSsidAndWifiConfigurationFromConfigkey(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object p1

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    iget-object p1, p0, Lcom/samsung/android/server/wifi/connection/ConnectionConfigManager;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/connection/ConnectionConfigManager;->mPrimaryInterfaceName:Ljava/lang/String;

    invoke-virtual {p1, p0, p2, v0}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->updateConnectionPersonalization(Ljava/lang/String;ILjava/util/ArrayList;)Z

    :cond_0
    return-void
.end method

.method public applyPersonalizationConnOption(Ljava/util/ArrayList;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 6
    iget-object v0, p0, Lcom/samsung/android/server/wifi/connection/ConnectionConfigManager;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    if-eqz v0, :cond_1

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 8
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Ljava/lang/String;

    .line 9
    invoke-static {v3}, Lcom/samsung/android/server/wifi/connection/Util;->getSsidAndWifiConfigurationFromConfigkey(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v3

    .line 10
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 11
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/server/wifi/connection/ConnectionConfigManager;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/connection/ConnectionConfigManager;->mPrimaryInterfaceName:Ljava/lang/String;

    invoke-virtual {p1, p0, p2, v0}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->updateConnectionPersonalization(Ljava/lang/String;ILjava/util/ArrayList;)Z

    :cond_1
    return-void
.end method

.method getSpecificConnOption(Lcom/samsung/android/wifi/SemWifiConfiguration;I)I
    .locals 0

    .line 1
    iget p0, p1, Lcom/samsung/android/wifi/SemWifiConfiguration;->personalizedConnectionOption:I

    .line 2
    .line 3
    shr-int/2addr p0, p2

    .line 4
    and-int/lit8 p0, p0, 0xf

    .line 5
    .line 6
    return p0
.end method

.method handleLazyBootCompleted()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/connection/ConnectionConfigManager;->loadConfigsAndSetConnOption()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/connection/ConnectionConfigManager;->mBootCompleteHandled:Z

    .line 6
    .line 7
    return-void
.end method

.method isBtmOptionDefault(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/connection/ConnectionConfigManager;->mSemWifiConfigManager:Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->getManagedNetwork(Ljava/lang/String;)Lcom/samsung/android/wifi/SemWifiConfiguration;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const/4 v0, 0x0

    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/server/wifi/connection/ConnectionConfigManager;->isDefaultConnOption(Lcom/samsung/android/wifi/SemWifiConfiguration;I)Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    if-eqz p0, :cond_0

    .line 15
    .line 16
    const/4 p0, 0x1

    .line 17
    return p0

    .line 18
    :cond_0
    return v0
.end method

.method isDefaultConnOption(Lcom/samsung/android/wifi/SemWifiConfiguration;I)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/connection/ConnectionConfigManager;->getSpecificConnOption(Lcom/samsung/android/wifi/SemWifiConfiguration;I)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x1

    .line 8
    return p0

    .line 9
    :cond_0
    const/4 p0, 0x0

    .line 10
    return p0
.end method

.method isDetectedBigdataConnOption(Lcom/samsung/android/wifi/SemWifiConfiguration;I)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/connection/ConnectionConfigManager;->getSpecificConnOption(Lcom/samsung/android/wifi/SemWifiConfiguration;I)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    const/4 p1, 0x1

    .line 6
    if-ne p0, p1, :cond_0

    .line 7
    .line 8
    return p1

    .line 9
    :cond_0
    const/4 p0, 0x0

    .line 10
    return p0
.end method

.method isEnabledBigdataConnOption(Lcom/samsung/android/wifi/SemWifiConfiguration;I)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/connection/ConnectionConfigManager;->getSpecificConnOption(Lcom/samsung/android/wifi/SemWifiConfiguration;I)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    const/4 p1, 0x2

    .line 6
    if-ne p0, p1, :cond_0

    .line 7
    .line 8
    const/4 p0, 0x1

    .line 9
    return p0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    return p0
.end method

.method isEnabledConnOption(Lcom/samsung/android/wifi/SemWifiConfiguration;I)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/connection/ConnectionConfigManager;->getSpecificConnOption(Lcom/samsung/android/wifi/SemWifiConfiguration;I)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    const/4 p1, 0x3

    .line 6
    if-ne p0, p1, :cond_0

    .line 7
    .line 8
    const/4 p0, 0x1

    .line 9
    return p0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    return p0
.end method

.method isUserDisabledConnOption(Lcom/samsung/android/wifi/SemWifiConfiguration;I)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/connection/ConnectionConfigManager;->getSpecificConnOption(Lcom/samsung/android/wifi/SemWifiConfiguration;I)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    const/4 p1, 0x4

    .line 6
    if-ne p0, p1, :cond_0

    .line 7
    .line 8
    const/4 p0, 0x1

    .line 9
    return p0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    return p0
.end method

.method loadConfigsAndSetConnOption()V
    .locals 7

    .line 1
    const-string v0, "loadConfigsAndSetPersonalizedConnOption is called"

    .line 2
    .line 3
    const-string v1, "Conn.ConnectionConfigManager"

    .line 4
    .line 5
    invoke-static {v1, v0}, Lcom/samsung/android/server/wifi/connection/Clog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/samsung/android/server/wifi/connection/ConnectionConfigManager;->mSemWifiConfigManager:Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->getManagedNetworks()Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    goto/16 :goto_1

    .line 21
    .line 22
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 25
    .line 26
    .line 27
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    const/4 v4, 0x0

    .line 36
    if-eqz v3, :cond_5

    .line 37
    .line 38
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    check-cast v3, Lcom/samsung/android/wifi/SemWifiConfiguration;

    .line 43
    .line 44
    invoke-virtual {p0, v3, v4}, Lcom/samsung/android/server/wifi/connection/ConnectionConfigManager;->isEnabledConnOption(Lcom/samsung/android/wifi/SemWifiConfiguration;I)Z

    .line 45
    .line 46
    .line 47
    move-result v5

    .line 48
    if-eqz v5, :cond_2

    .line 49
    .line 50
    new-instance v4, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    const-string v5, "Enabled BTM resolution when Wi-Fi on, configKey: "

    .line 53
    .line 54
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    iget-object v5, v3, Lcom/samsung/android/wifi/SemWifiConfiguration;->configKey:Ljava/lang/String;

    .line 58
    .line 59
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    invoke-static {v1, v4}, Lcom/samsung/android/server/wifi/connection/Clog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    iget-object v3, v3, Lcom/samsung/android/wifi/SemWifiConfiguration;->configKey:Ljava/lang/String;

    .line 70
    .line 71
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_2
    iget-boolean v5, p0, Lcom/samsung/android/server/wifi/connection/ConnectionConfigManager;->mBootCompleteHandled:Z

    .line 76
    .line 77
    if-eqz v5, :cond_3

    .line 78
    .line 79
    invoke-virtual {p0, v3, v4}, Lcom/samsung/android/server/wifi/connection/ConnectionConfigManager;->isEnabledBigdataConnOption(Lcom/samsung/android/wifi/SemWifiConfiguration;I)Z

    .line 80
    .line 81
    .line 82
    move-result v4

    .line 83
    if-eqz v4, :cond_1

    .line 84
    .line 85
    iget-object v3, v3, Lcom/samsung/android/wifi/SemWifiConfiguration;->configKey:Ljava/lang/String;

    .line 86
    .line 87
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_3
    invoke-virtual {p0, v3, v4}, Lcom/samsung/android/server/wifi/connection/ConnectionConfigManager;->isEnabledBigdataConnOption(Lcom/samsung/android/wifi/SemWifiConfiguration;I)Z

    .line 92
    .line 93
    .line 94
    move-result v5

    .line 95
    if-nez v5, :cond_4

    .line 96
    .line 97
    invoke-virtual {p0, v3, v4}, Lcom/samsung/android/server/wifi/connection/ConnectionConfigManager;->isDetectedBigdataConnOption(Lcom/samsung/android/wifi/SemWifiConfiguration;I)Z

    .line 98
    .line 99
    .line 100
    move-result v5

    .line 101
    if-eqz v5, :cond_1

    .line 102
    .line 103
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    .line 104
    .line 105
    const-string v6, "Restore to default BTM option, configKey: "

    .line 106
    .line 107
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    iget-object v6, v3, Lcom/samsung/android/wifi/SemWifiConfiguration;->configKey:Ljava/lang/String;

    .line 111
    .line 112
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v5

    .line 119
    invoke-static {v1, v5}, Lcom/samsung/android/server/wifi/connection/Clog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {p0, v3, v4, v4}, Lcom/samsung/android/server/wifi/connection/ConnectionConfigManager;->setSpecificConnOption(Lcom/samsung/android/wifi/SemWifiConfiguration;II)V

    .line 123
    .line 124
    .line 125
    iget-object v4, p0, Lcom/samsung/android/server/wifi/connection/ConnectionConfigManager;->mSemWifiConfigManager:Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    .line 126
    .line 127
    const/16 v5, 0x3e8

    .line 128
    .line 129
    invoke-virtual {v4, v3, v5}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->addOrUpdateNetwork(Lcom/samsung/android/wifi/SemWifiConfiguration;I)Lcom/samsung/android/wifi/SemWifiConfiguration;

    .line 130
    .line 131
    .line 132
    goto :goto_0

    .line 133
    :cond_5
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 134
    .line 135
    .line 136
    move-result v0

    .line 137
    if-nez v0, :cond_6

    .line 138
    .line 139
    invoke-virtual {p0, v2, v4}, Lcom/samsung/android/server/wifi/connection/ConnectionConfigManager;->applyPersonalizationConnOption(Ljava/util/ArrayList;I)V

    .line 140
    .line 141
    .line 142
    :cond_6
    :goto_1
    return-void
.end method

.method setBtmOptionDetectedBigdata(Ljava/lang/String;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/connection/ConnectionConfigManager;->mSemWifiConfigManager:Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->getManagedNetwork(Ljava/lang/String;)Lcom/samsung/android/wifi/SemWifiConfiguration;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "Cannot set BTM option detected bigdata, configKey: "

    .line 8
    .line 9
    const-string v2, "Conn.ConnectionConfigManager"

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    invoke-virtual {p0, v0, v3}, Lcom/samsung/android/server/wifi/connection/ConnectionConfigManager;->isDefaultConnOption(Lcom/samsung/android/wifi/SemWifiConfiguration;I)Z

    .line 15
    .line 16
    .line 17
    move-result v4

    .line 18
    if-eqz v4, :cond_0

    .line 19
    .line 20
    new-instance v1, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    const-string v4, "Set BTM option detected bigdata, configKey: "

    .line 23
    .line 24
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-static {v2, p1}, Lcom/samsung/android/server/wifi/connection/Clog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    const/4 p1, 0x1

    .line 38
    invoke-virtual {p0, v0, v3, p1}, Lcom/samsung/android/server/wifi/connection/ConnectionConfigManager;->setSpecificConnOption(Lcom/samsung/android/wifi/SemWifiConfiguration;II)V

    .line 39
    .line 40
    .line 41
    iget-object p0, p0, Lcom/samsung/android/server/wifi/connection/ConnectionConfigManager;->mSemWifiConfigManager:Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    .line 42
    .line 43
    const/16 p1, 0x3e8

    .line 44
    .line 45
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->addOrUpdateNetwork(Lcom/samsung/android/wifi/SemWifiConfiguration;I)Lcom/samsung/android/wifi/SemWifiConfiguration;

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :cond_0
    const-string v4, ", value: "

    .line 50
    .line 51
    invoke-static {v1, p1, v4}, Lcom/samsung/android/server/wifi/SemClientModeImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-virtual {p0, v0, v3}, Lcom/samsung/android/server/wifi/connection/ConnectionConfigManager;->getSpecificConnOption(Lcom/samsung/android/wifi/SemWifiConfiguration;I)I

    .line 56
    .line 57
    .line 58
    move-result p0

    .line 59
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    invoke-static {v2, p0}, Lcom/samsung/android/server/wifi/connection/Clog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    return-void

    .line 70
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    const-string p1, ", semWifiConfig is null"

    .line 79
    .line 80
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    invoke-static {v2, p0}, Lcom/samsung/android/server/wifi/connection/Clog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    return-void
.end method

.method setBtmOptionEnabled(Ljava/lang/String;Z)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/connection/ConnectionConfigManager;->mSemWifiConfigManager:Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->getManagedNetwork(Ljava/lang/String;)Lcom/samsung/android/wifi/SemWifiConfiguration;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "Cannot set BTM option enabled, configKey: "

    .line 8
    .line 9
    const-string v2, "Conn.ConnectionConfigManager"

    .line 10
    .line 11
    if-eqz v0, :cond_2

    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    invoke-virtual {p0, v0, v3}, Lcom/samsung/android/server/wifi/connection/ConnectionConfigManager;->isEnabledBigdataConnOption(Lcom/samsung/android/wifi/SemWifiConfiguration;I)Z

    .line 15
    .line 16
    .line 17
    move-result v4

    .line 18
    if-nez v4, :cond_1

    .line 19
    .line 20
    if-eqz p2, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const-string p2, ", value: "

    .line 24
    .line 25
    invoke-static {v1, p1, p2}, Lcom/samsung/android/server/wifi/SemClientModeImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {p0, v0, v3}, Lcom/samsung/android/server/wifi/connection/ConnectionConfigManager;->getSpecificConnOption(Lcom/samsung/android/wifi/SemWifiConfiguration;I)I

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    invoke-static {v2, p0}, Lcom/samsung/android/server/wifi/connection/Clog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :cond_1
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    const-string v4, "Set BTM option enabled, configKey: "

    .line 47
    .line 48
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string v4, ", forcibly: "

    .line 55
    .line 56
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p2

    .line 66
    invoke-static {v2, p2}, Lcom/samsung/android/server/wifi/connection/Clog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    const/4 p2, 0x3

    .line 70
    invoke-virtual {p0, v0, v3, p2}, Lcom/samsung/android/server/wifi/connection/ConnectionConfigManager;->setSpecificConnOption(Lcom/samsung/android/wifi/SemWifiConfiguration;II)V

    .line 71
    .line 72
    .line 73
    iget-object p2, p0, Lcom/samsung/android/server/wifi/connection/ConnectionConfigManager;->mSemWifiConfigManager:Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    .line 74
    .line 75
    const/16 v1, 0x3e8

    .line 76
    .line 77
    invoke-virtual {p2, v0, v1}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->addOrUpdateNetwork(Lcom/samsung/android/wifi/SemWifiConfiguration;I)Lcom/samsung/android/wifi/SemWifiConfiguration;

    .line 78
    .line 79
    .line 80
    const/4 p2, 0x1

    .line 81
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/connection/ConnectionConfigManager;->applyPersonalizationConnOption(Ljava/lang/String;I)V

    .line 82
    .line 83
    .line 84
    return-void

    .line 85
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    .line 86
    .line 87
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    const-string p1, ", semWifiConfig is null"

    .line 94
    .line 95
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p0

    .line 102
    invoke-static {v2, p0}, Lcom/samsung/android/server/wifi/connection/Clog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    return-void
.end method

.method setBtmOptionEnabledBigdata(Ljava/lang/String;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/connection/ConnectionConfigManager;->mSemWifiConfigManager:Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->getManagedNetwork(Ljava/lang/String;)Lcom/samsung/android/wifi/SemWifiConfiguration;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "Cannot set BTM option enabled bigdata, configKey: "

    .line 8
    .line 9
    const-string v2, "Conn.ConnectionConfigManager"

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    invoke-virtual {p0, v0, v3}, Lcom/samsung/android/server/wifi/connection/ConnectionConfigManager;->isDetectedBigdataConnOption(Lcom/samsung/android/wifi/SemWifiConfiguration;I)Z

    .line 15
    .line 16
    .line 17
    move-result v4

    .line 18
    if-eqz v4, :cond_0

    .line 19
    .line 20
    new-instance v1, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    const-string v4, "Set BTM option enabled bigdata, configKey: "

    .line 23
    .line 24
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-static {v2, v1}, Lcom/samsung/android/server/wifi/connection/Clog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    const/4 v1, 0x2

    .line 38
    invoke-virtual {p0, v0, v3, v1}, Lcom/samsung/android/server/wifi/connection/ConnectionConfigManager;->setSpecificConnOption(Lcom/samsung/android/wifi/SemWifiConfiguration;II)V

    .line 39
    .line 40
    .line 41
    iget-object v1, p0, Lcom/samsung/android/server/wifi/connection/ConnectionConfigManager;->mSemWifiConfigManager:Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    .line 42
    .line 43
    const/16 v2, 0x3e8

    .line 44
    .line 45
    invoke-virtual {v1, v0, v2}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->addOrUpdateNetwork(Lcom/samsung/android/wifi/SemWifiConfiguration;I)Lcom/samsung/android/wifi/SemWifiConfiguration;

    .line 46
    .line 47
    .line 48
    const/4 v0, 0x1

    .line 49
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/server/wifi/connection/ConnectionConfigManager;->applyPersonalizationConnOption(Ljava/lang/String;I)V

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :cond_0
    const-string v4, ", value: "

    .line 54
    .line 55
    invoke-static {v1, p1, v4}, Lcom/samsung/android/server/wifi/SemClientModeImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-virtual {p0, v0, v3}, Lcom/samsung/android/server/wifi/connection/ConnectionConfigManager;->getSpecificConnOption(Lcom/samsung/android/wifi/SemWifiConfiguration;I)I

    .line 60
    .line 61
    .line 62
    move-result p0

    .line 63
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    invoke-static {v2, p0}, Lcom/samsung/android/server/wifi/connection/Clog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    return-void

    .line 74
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 75
    .line 76
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    const-string p1, ", semWifiConfig is null"

    .line 83
    .line 84
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    invoke-static {v2, p0}, Lcom/samsung/android/server/wifi/connection/Clog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    return-void
.end method

.method setBtmOptionUserDisabled(Ljava/lang/String;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/connection/ConnectionConfigManager;->mSemWifiConfigManager:Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->getManagedNetwork(Ljava/lang/String;)Lcom/samsung/android/wifi/SemWifiConfiguration;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "Cannot set BTM option user disabled, configKey: "

    .line 8
    .line 9
    const-string v2, "Conn.ConnectionConfigManager"

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    invoke-virtual {p0, v0, v3}, Lcom/samsung/android/server/wifi/connection/ConnectionConfigManager;->isEnabledConnOption(Lcom/samsung/android/wifi/SemWifiConfiguration;I)Z

    .line 15
    .line 16
    .line 17
    move-result v4

    .line 18
    if-eqz v4, :cond_0

    .line 19
    .line 20
    new-instance v1, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    const-string v4, "Set BTM option user disabled, configKey: "

    .line 23
    .line 24
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-static {v2, v1}, Lcom/samsung/android/server/wifi/connection/Clog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    const/4 v1, 0x4

    .line 38
    invoke-virtual {p0, v0, v3, v1}, Lcom/samsung/android/server/wifi/connection/ConnectionConfigManager;->setSpecificConnOption(Lcom/samsung/android/wifi/SemWifiConfiguration;II)V

    .line 39
    .line 40
    .line 41
    iget-object v1, p0, Lcom/samsung/android/server/wifi/connection/ConnectionConfigManager;->mSemWifiConfigManager:Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    .line 42
    .line 43
    const/16 v2, 0x3e8

    .line 44
    .line 45
    invoke-virtual {v1, v0, v2}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->addOrUpdateNetwork(Lcom/samsung/android/wifi/SemWifiConfiguration;I)Lcom/samsung/android/wifi/SemWifiConfiguration;

    .line 46
    .line 47
    .line 48
    const/4 v0, 0x2

    .line 49
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/server/wifi/connection/ConnectionConfigManager;->applyPersonalizationConnOption(Ljava/lang/String;I)V

    .line 50
    .line 51
    .line 52
    iget-object p0, p0, Lcom/samsung/android/server/wifi/connection/ConnectionConfigManager;->mLogger:Lcom/samsung/android/server/wifi/connection/Logger;

    .line 53
    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/connection/Logger;->record(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    return-void

    .line 70
    :cond_0
    const-string v4, ", value: "

    .line 71
    .line 72
    invoke-static {v1, p1, v4}, Lcom/samsung/android/server/wifi/SemClientModeImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    invoke-virtual {p0, v0, v3}, Lcom/samsung/android/server/wifi/connection/ConnectionConfigManager;->getSpecificConnOption(Lcom/samsung/android/wifi/SemWifiConfiguration;I)I

    .line 77
    .line 78
    .line 79
    move-result p0

    .line 80
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    invoke-static {v2, p0}, Lcom/samsung/android/server/wifi/connection/Clog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    return-void

    .line 91
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 92
    .line 93
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    const-string p1, ", config is null"

    .line 100
    .line 101
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object p0

    .line 108
    invoke-static {v2, p0}, Lcom/samsung/android/server/wifi/connection/Clog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    return-void
.end method

.method setBtmOptionUserEnabled(Ljava/lang/String;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/connection/ConnectionConfigManager;->mSemWifiConfigManager:Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->getManagedNetwork(Ljava/lang/String;)Lcom/samsung/android/wifi/SemWifiConfiguration;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "Cannot set BTM option user enabled, configKey: "

    .line 8
    .line 9
    const-string v2, "Conn.ConnectionConfigManager"

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    invoke-virtual {p0, v0, v3}, Lcom/samsung/android/server/wifi/connection/ConnectionConfigManager;->isUserDisabledConnOption(Lcom/samsung/android/wifi/SemWifiConfiguration;I)Z

    .line 15
    .line 16
    .line 17
    move-result v4

    .line 18
    if-eqz v4, :cond_0

    .line 19
    .line 20
    new-instance v1, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    const-string v4, "Set BTM option user enabled, configKey: "

    .line 23
    .line 24
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-static {v2, v1}, Lcom/samsung/android/server/wifi/connection/Clog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    const/4 v1, 0x3

    .line 38
    invoke-virtual {p0, v0, v3, v1}, Lcom/samsung/android/server/wifi/connection/ConnectionConfigManager;->setSpecificConnOption(Lcom/samsung/android/wifi/SemWifiConfiguration;II)V

    .line 39
    .line 40
    .line 41
    iget-object v1, p0, Lcom/samsung/android/server/wifi/connection/ConnectionConfigManager;->mSemWifiConfigManager:Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    .line 42
    .line 43
    const/16 v2, 0x3e8

    .line 44
    .line 45
    invoke-virtual {v1, v0, v2}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->addOrUpdateNetwork(Lcom/samsung/android/wifi/SemWifiConfiguration;I)Lcom/samsung/android/wifi/SemWifiConfiguration;

    .line 46
    .line 47
    .line 48
    const/4 v0, 0x1

    .line 49
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/server/wifi/connection/ConnectionConfigManager;->applyPersonalizationConnOption(Ljava/lang/String;I)V

    .line 50
    .line 51
    .line 52
    iget-object p0, p0, Lcom/samsung/android/server/wifi/connection/ConnectionConfigManager;->mLogger:Lcom/samsung/android/server/wifi/connection/Logger;

    .line 53
    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/connection/Logger;->record(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    return-void

    .line 70
    :cond_0
    const-string v4, ", value: "

    .line 71
    .line 72
    invoke-static {v1, p1, v4}, Lcom/samsung/android/server/wifi/SemClientModeImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    invoke-virtual {p0, v0, v3}, Lcom/samsung/android/server/wifi/connection/ConnectionConfigManager;->getSpecificConnOption(Lcom/samsung/android/wifi/SemWifiConfiguration;I)I

    .line 77
    .line 78
    .line 79
    move-result p0

    .line 80
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    invoke-static {v2, p0}, Lcom/samsung/android/server/wifi/connection/Clog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    return-void

    .line 91
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 92
    .line 93
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    const-string p1, ", config is null"

    .line 100
    .line 101
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object p0

    .line 108
    invoke-static {v2, p0}, Lcom/samsung/android/server/wifi/connection/Clog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    return-void
.end method

.method public setPrimaryInterfaceName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/connection/ConnectionConfigManager;->mPrimaryInterfaceName:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method setSpecificConnOption(Lcom/samsung/android/wifi/SemWifiConfiguration;II)V
    .locals 1

    .line 1
    iget p0, p1, Lcom/samsung/android/wifi/SemWifiConfiguration;->personalizedConnectionOption:I

    .line 2
    .line 3
    const/16 v0, 0xf

    .line 4
    .line 5
    shl-int/2addr v0, p2

    .line 6
    not-int v0, v0

    .line 7
    and-int/2addr p0, v0

    .line 8
    shl-int p2, p3, p2

    .line 9
    .line 10
    or-int/2addr p0, p2

    .line 11
    iput p0, p1, Lcom/samsung/android/wifi/SemWifiConfiguration;->personalizedConnectionOption:I

    .line 12
    .line 13
    return-void
.end method
