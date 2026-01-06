.class public final Lcom/samsung/android/mcf/continuity/impl/common/ContinuityCommandManager;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# instance fields
.field private final mIContinuitySdkCallback:Lcom/samsung/android/mcf/continuity/interfaces/IContinuitySdkCallback;

.field private volatile mIContinuitySdkCommand:Lcom/samsung/android/mcf/continuity/interfaces/IContinuitySdkCommand;


# direct methods
.method public constructor <init>(Lcom/samsung/android/mcf/continuity/interfaces/IContinuitySdkCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityCommandManager;->mIContinuitySdkCallback:Lcom/samsung/android/mcf/continuity/interfaces/IContinuitySdkCallback;

    .line 5
    .line 6
    return-void
.end method

.method private internalCommand(Landroid/os/Message;)Z
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityCommandManager;->mIContinuitySdkCommand:Lcom/samsung/android/mcf/continuity/interfaces/IContinuitySdkCommand;

    .line 2
    .line 3
    const-string v0, "internalCommand"

    .line 4
    .line 5
    const-string v1, "ContinuityCommandManager"

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez p0, :cond_0

    .line 9
    .line 10
    const-string p0, "null iContinuitySdkCommand"

    .line 11
    .line 12
    invoke-static {v1, v0, p0}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return v2

    .line 16
    :cond_0
    :try_start_0
    invoke-interface {p0, p1}, Lcom/samsung/android/mcf/continuity/interfaces/IContinuitySdkCommand;->internalCommand(Landroid/os/Message;)I

    .line 17
    .line 18
    .line 19
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    if-nez p0, :cond_1

    .line 21
    .line 22
    const/4 p0, 0x1

    .line 23
    return p0

    .line 24
    :cond_1
    return v2

    .line 25
    :catch_0
    move-exception p0

    .line 26
    new-instance p1, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    const-string v3, "RemoteException : "

    .line 29
    .line 30
    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    invoke-static {v1, v0, p0}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    return v2
.end method


# virtual methods
.method public final destroy()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityCommandManager;->mIContinuitySdkCommand:Lcom/samsung/android/mcf/continuity/interfaces/IContinuitySdkCommand;

    .line 3
    .line 4
    return-void
.end method

.method public final getNearbyMyDevices()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/mcf/continuity/api/ContinuityNearbyMyDevice;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAppIdHolder$SingletonHolder;->access$000()Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAppIdHolder;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAppIdHolder;->getAppId()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 14
    .line 15
    const/16 v0, 0xbb8

    .line 16
    .line 17
    iput v0, v1, Landroid/os/Message;->what:I

    .line 18
    .line 19
    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityCommandManager;->mIContinuitySdkCommand:Lcom/samsung/android/mcf/continuity/interfaces/IContinuitySdkCommand;

    .line 20
    .line 21
    const/4 v0, 0x0

    .line 22
    const-string v2, "getInternalBundle"

    .line 23
    .line 24
    const-string v3, "ContinuityCommandManager"

    .line 25
    .line 26
    if-nez p0, :cond_0

    .line 27
    .line 28
    const-string p0, "null iContinuitySdkCommand"

    .line 29
    .line 30
    invoke-static {v3, v2, p0}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    :goto_0
    move-object v4, v0

    .line 34
    goto :goto_1

    .line 35
    :cond_0
    sget v4, Lcom/samsung/android/mcf/continuity/common/Utils;->$r8$clinit:I

    .line 36
    .line 37
    new-instance v4, Landroid/os/Bundle;

    .line 38
    .line 39
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 40
    .line 41
    .line 42
    :try_start_0
    invoke-interface {p0, v1, v4}, Lcom/samsung/android/mcf/continuity/interfaces/IContinuitySdkCommand;->internalCommandWithReturnValue(Landroid/os/Message;Landroid/os/Bundle;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    .line 44
    .line 45
    goto :goto_1

    .line 46
    :catch_0
    move-exception p0

    .line 47
    new-instance v1, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    const-string v4, "RemoteException : "

    .line 50
    .line 51
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    invoke-static {v3, v2, p0}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :goto_1
    if-eqz v4, :cond_1

    .line 70
    .line 71
    const-string p0, "KEY_CONTINUITY_NEARBY_DEVICE_BUNDLE_ARRAY_LIST"

    .line 72
    .line 73
    invoke-virtual {v4, p0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    :cond_1
    if-nez v0, :cond_2

    .line 78
    .line 79
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 80
    .line 81
    goto :goto_3

    .line 82
    :cond_2
    new-instance p0, Ljava/util/ArrayList;

    .line 83
    .line 84
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    invoke-direct {p0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 92
    .line 93
    .line 94
    move-result v1

    .line 95
    const/4 v2, 0x0

    .line 96
    :cond_3
    :goto_2
    if-ge v2, v1, :cond_4

    .line 97
    .line 98
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v3

    .line 102
    add-int/lit8 v2, v2, 0x1

    .line 103
    .line 104
    check-cast v3, Landroid/os/Parcelable;

    .line 105
    .line 106
    instance-of v4, v3, Landroid/os/Bundle;

    .line 107
    .line 108
    if-eqz v4, :cond_3

    .line 109
    .line 110
    check-cast v3, Landroid/os/Bundle;

    .line 111
    .line 112
    invoke-static {v3}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityBundleFactory;->continuityDeviceWrapperFromBundle(Landroid/os/Bundle;)Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceWrapper;

    .line 113
    .line 114
    .line 115
    move-result-object v3

    .line 116
    if-eqz v3, :cond_3

    .line 117
    .line 118
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    .line 120
    .line 121
    goto :goto_2

    .line 122
    :cond_4
    :goto_3
    return-object p0
.end method

.method public final registerCallback(ILcom/samsung/android/mcf/continuity/interfaces/IContinuitySdkCommand;)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityCommandManager;->mIContinuitySdkCallback:Lcom/samsung/android/mcf/continuity/interfaces/IContinuitySdkCallback;

    .line 3
    .line 4
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    iput p1, v1, Landroid/os/Message;->arg1:I

    .line 9
    .line 10
    const/16 p1, 0x7d0

    .line 11
    .line 12
    iput p1, v1, Landroid/os/Message;->what:I

    .line 13
    .line 14
    sget p1, Lcom/samsung/android/mcf/continuity/common/Utils;->$r8$clinit:I

    .line 15
    .line 16
    new-instance p1, Landroid/os/Bundle;

    .line 17
    .line 18
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast p0, Lcom/samsung/android/mcf/continuity/interfaces/IContinuitySdkCallback$Stub;

    .line 24
    .line 25
    const-string v2, "KEY_CALLBACK"

    .line 26
    .line 27
    invoke-virtual {p1, v2, p0}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 28
    .line 29
    .line 30
    invoke-interface {p2, v1}, Lcom/samsung/android/mcf/continuity/interfaces/IContinuitySdkCommand;->internalCommand(Landroid/os/Message;)I

    .line 31
    .line 32
    .line 33
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    if-nez p0, :cond_0

    .line 35
    .line 36
    const/4 p0, 0x1

    .line 37
    return p0

    .line 38
    :cond_0
    return v0

    .line 39
    :catch_0
    move-exception p0

    .line 40
    new-instance p1, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    const-string p2, "RemoteException "

    .line 43
    .line 44
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    const-string p1, "ContinuityCommandManager"

    .line 59
    .line 60
    const-string p2, "registerCallback"

    .line 61
    .line 62
    invoke-static {p1, p2, p0}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    return v0
.end method

.method final sendRegisterSimpleMessageListenerCommand()Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAppIdHolder$SingletonHolder;->access$000()Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAppIdHolder;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAppIdHolder;->getAppId()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 14
    .line 15
    const/16 v0, 0x7d8

    .line 16
    .line 17
    iput v0, v1, Landroid/os/Message;->what:I

    .line 18
    .line 19
    invoke-direct {p0, v1}, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityCommandManager;->internalCommand(Landroid/os/Message;)Z

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    return p0
.end method

.method final sendSimpleMessageCommand(Ljava/lang/String;[B)Z
    .locals 3

    .line 1
    invoke-static {}, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAppIdHolder$SingletonHolder;->access$000()Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAppIdHolder;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAppIdHolder;->getAppId()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 14
    .line 15
    const/16 v0, 0x7d7

    .line 16
    .line 17
    iput v0, v1, Landroid/os/Message;->what:I

    .line 18
    .line 19
    sget v0, Lcom/samsung/android/mcf/continuity/common/Utils;->$r8$clinit:I

    .line 20
    .line 21
    new-instance v0, Landroid/os/Bundle;

    .line 22
    .line 23
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 27
    .line 28
    const-string v2, "KEY_BT_MAC"

    .line 29
    .line 30
    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    const-string p1, "KEY_MESSAGE_DATA"

    .line 34
    .line 35
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 36
    .line 37
    .line 38
    const-string p1, "KEY_MESSAGE_ID"

    .line 39
    .line 40
    const/4 p2, 0x0

    .line 41
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    .line 42
    .line 43
    .line 44
    invoke-direct {p0, v1}, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityCommandManager;->internalCommand(Landroid/os/Message;)Z

    .line 45
    .line 46
    .line 47
    move-result p0

    .line 48
    return p0
.end method

.method public final sendStartAdvertisementCommand()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAppIdHolder$SingletonHolder;->access$000()Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAppIdHolder;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAppIdHolder;->getAppId()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/16 v1, 0x1f

    .line 10
    .line 11
    if-gt v0, v1, :cond_0

    .line 12
    .line 13
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 18
    .line 19
    const/16 v0, 0x7d4

    .line 20
    .line 21
    iput v0, v1, Landroid/os/Message;->what:I

    .line 22
    .line 23
    invoke-direct {p0, v1}, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityCommandManager;->internalCommand(Landroid/os/Message;)Z

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void
.end method

.method public final sendStartDiscoveryCommand()Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAppIdHolder$SingletonHolder;->access$000()Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAppIdHolder;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAppIdHolder;->getAppId()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 14
    .line 15
    const/16 v0, 0x7d2

    .line 16
    .line 17
    iput v0, v1, Landroid/os/Message;->what:I

    .line 18
    .line 19
    invoke-direct {p0, v1}, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityCommandManager;->internalCommand(Landroid/os/Message;)Z

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    return p0
.end method

.method public final sendStopAdvertisementCommand()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAppIdHolder$SingletonHolder;->access$000()Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAppIdHolder;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAppIdHolder;->getAppId()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/16 v1, 0x1f

    .line 10
    .line 11
    if-gt v0, v1, :cond_0

    .line 12
    .line 13
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 18
    .line 19
    const/16 v0, 0x7d6

    .line 20
    .line 21
    iput v0, v1, Landroid/os/Message;->what:I

    .line 22
    .line 23
    invoke-direct {p0, v1}, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityCommandManager;->internalCommand(Landroid/os/Message;)Z

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void
.end method

.method public final sendStopDiscoveryCommand()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAppIdHolder$SingletonHolder;->access$000()Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAppIdHolder;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAppIdHolder;->getAppId()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 14
    .line 15
    const/16 v0, 0x7d3

    .line 16
    .line 17
    iput v0, v1, Landroid/os/Message;->what:I

    .line 18
    .line 19
    invoke-direct {p0, v1}, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityCommandManager;->internalCommand(Landroid/os/Message;)Z

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final sendUnregisterCallbackCommand()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAppIdHolder$SingletonHolder;->access$000()Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAppIdHolder;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAppIdHolder;->getAppId()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 14
    .line 15
    const/16 v0, 0x7d1

    .line 16
    .line 17
    iput v0, v1, Landroid/os/Message;->what:I

    .line 18
    .line 19
    sget v0, Lcom/samsung/android/mcf/continuity/common/Utils;->$r8$clinit:I

    .line 20
    .line 21
    new-instance v0, Landroid/os/Bundle;

    .line 22
    .line 23
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 27
    .line 28
    iget-object v2, p0, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityCommandManager;->mIContinuitySdkCallback:Lcom/samsung/android/mcf/continuity/interfaces/IContinuitySdkCallback;

    .line 29
    .line 30
    check-cast v2, Lcom/samsung/android/mcf/continuity/interfaces/IContinuitySdkCallback$Stub;

    .line 31
    .line 32
    const-string v3, "KEY_CALLBACK"

    .line 33
    .line 34
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 35
    .line 36
    .line 37
    invoke-direct {p0, v1}, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityCommandManager;->internalCommand(Landroid/os/Message;)Z

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method final sendUnregisterSimpleMessageListenerCommand()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAppIdHolder$SingletonHolder;->access$000()Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAppIdHolder;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAppIdHolder;->getAppId()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 14
    .line 15
    const/16 v0, 0x7d9

    .line 16
    .line 17
    iput v0, v1, Landroid/os/Message;->what:I

    .line 18
    .line 19
    invoke-direct {p0, v1}, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityCommandManager;->internalCommand(Landroid/os/Message;)Z

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final setIContinuitySdkCommand(Lcom/samsung/android/mcf/continuity/interfaces/IContinuitySdkCommand;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityCommandManager;->mIContinuitySdkCommand:Lcom/samsung/android/mcf/continuity/interfaces/IContinuitySdkCommand;

    .line 2
    .line 3
    return-void
.end method
