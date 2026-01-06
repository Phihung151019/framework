.class public Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter$ContinuityServiceBindResult;
    }
.end annotation


# static fields
.field public static final ACTION_SHARE_PROFILE:Ljava/lang/String; = "com.samsung.android.server.wifi.share.WIFI_PROFILE"

.field private static final APP_ID:I = 0x21

.field public static final KEY_ACTION:Ljava/lang/String; = "ACTION"

.field public static final KEY_APP_ID:Ljava/lang/String; = "APP_ID"

.field public static final KEY_EXTRA:Ljava/lang/String; = "EXTRA"

.field public static final KEY_PACKAGE:Ljava/lang/String; = "PACKAGE"

.field public static final KEY_TYPE:Ljava/lang/String; = "TYPE"

.field private static final TAG:Ljava/lang/String; = "SemWifi.Continuity"


# instance fields
.field private adapter:Lcom/samsung/android/mcf/continuity/api/ContinuityAdapter;

.field private bindResultCallback:Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter$ContinuityServiceBindResult;

.field private final context:Landroid/content/Context;

.field private isBound:Z

.field private final serviceConnection:Lcom/samsung/android/mcf/continuity/api/ContinuityAdapter$ServiceStateListener;


# direct methods
.method static bridge synthetic -$$Nest$fgetadapter(Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter;)Lcom/samsung/android/mcf/continuity/api/ContinuityAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter;->adapter:Lcom/samsung/android/mcf/continuity/api/ContinuityAdapter;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetbindResultCallback(Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter;)Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter$ContinuityServiceBindResult;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter;->bindResultCallback:Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter$ContinuityServiceBindResult;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcontext(Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter;->context:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputisBound(Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter;->isBound:Z

    .line 2
    .line 3
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter$1;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter$1;-><init>(Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter;->serviceConnection:Lcom/samsung/android/mcf/continuity/api/ContinuityAdapter$ServiceStateListener;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter;->context:Landroid/content/Context;

    .line 12
    .line 13
    return-void
.end method

.method private getJsonBytes(Ljava/util/List;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/server/wifi/share/continuity/WifiAutoShareData;",
            ">;)[B"
        }
    .end annotation

    .line 1
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lcom/samsung/android/server/wifi/share/continuity/WifiAutoShareData;

    .line 21
    .line 22
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/share/continuity/WifiAutoShareData;->getJsonObject()Lorg/json/JSONObject;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    if-eqz v1, :cond_0

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-eqz v0, :cond_2

    .line 41
    .line 42
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-nez v0, :cond_2

    .line 47
    .line 48
    new-instance v0, Lorg/json/JSONObject;

    .line 49
    .line 50
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 51
    .line 52
    .line 53
    const-string v1, "TYPE"

    .line 54
    .line 55
    const/4 v2, 0x2

    .line 56
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 57
    .line 58
    .line 59
    const-string v1, "APP_ID"

    .line 60
    .line 61
    const/16 v2, 0x21

    .line 62
    .line 63
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 64
    .line 65
    .line 66
    const-string v1, "PACKAGE"

    .line 67
    .line 68
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter;->context:Landroid/content/Context;

    .line 69
    .line 70
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 75
    .line 76
    .line 77
    const-string p0, "ACTION"

    .line 78
    .line 79
    const-string v1, "com.samsung.android.server.wifi.share.WIFI_PROFILE"

    .line 80
    .line 81
    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 82
    .line 83
    .line 84
    const-string p0, "EXTRA"

    .line 85
    .line 86
    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p0

    .line 93
    sget-object p1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 94
    .line 95
    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 96
    .line 97
    .line 98
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    return-object p0

    .line 100
    :catch_0
    const-string p0, "SemWifi.Continuity"

    .line 101
    .line 102
    const-string p1, "failed to generate shared data"

    .line 103
    .line 104
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    .line 106
    .line 107
    :cond_2
    const/4 p0, 0x0

    .line 108
    new-array p0, p0, [B

    .line 109
    .line 110
    return-object p0
.end method

.method public static parseJson(Landroid/content/Intent;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/server/wifi/share/continuity/WifiAutoShareData;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "EXTRA"

    .line 7
    .line 8
    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    const-string v2, "SemWifi.Continuity"

    .line 17
    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    const-string p0, "there is no extra data"

    .line 21
    .line 22
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    return-object v0

    .line 26
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    .line 27
    .line 28
    invoke-direct {v1, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const/4 p0, 0x0

    .line 32
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    if-ge p0, v3, :cond_1

    .line 37
    .line 38
    invoke-virtual {v1, p0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    check-cast v3, Lorg/json/JSONObject;

    .line 43
    .line 44
    invoke-static {v3}, Lcom/samsung/android/server/wifi/share/continuity/WifiAutoShareData$Factory;->create(Lorg/json/JSONObject;)Lcom/samsung/android/server/wifi/share/continuity/WifiAutoShareData;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    .line 50
    .line 51
    add-int/lit8 p0, p0, 0x1

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :catch_0
    move-exception p0

    .line 55
    const-string v1, "failed to parse json data"

    .line 56
    .line 57
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 61
    .line 62
    .line 63
    :cond_1
    return-object v0
.end method


# virtual methods
.method public bind(Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter$ContinuityServiceBindResult;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter;->adapter:Lcom/samsung/android/mcf/continuity/api/ContinuityAdapter;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/samsung/android/mcf/continuity/impl/mydevice/ContinuityAdapterImpl;->getInstance()Lcom/samsung/android/mcf/continuity/impl/mydevice/ContinuityAdapterImpl;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter;->adapter:Lcom/samsung/android/mcf/continuity/api/ContinuityAdapter;

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter;->adapter:Lcom/samsung/android/mcf/continuity/api/ContinuityAdapter;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter;->context:Landroid/content/Context;

    .line 14
    .line 15
    const/16 v2, 0x21

    .line 16
    .line 17
    check-cast v0, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAbstractAdapterImpl;

    .line 18
    .line 19
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAbstractAdapterImpl;->initialize(Landroid/content/Context;I)I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    const/16 v1, 0x384

    .line 24
    .line 25
    if-ne v0, v1, :cond_1

    .line 26
    .line 27
    iput-object p1, p0, Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter;->bindResultCallback:Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter$ContinuityServiceBindResult;

    .line 28
    .line 29
    iget-object p1, p0, Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter;->adapter:Lcom/samsung/android/mcf/continuity/api/ContinuityAdapter;

    .line 30
    .line 31
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter;->context:Landroid/content/Context;

    .line 32
    .line 33
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter;->serviceConnection:Lcom/samsung/android/mcf/continuity/api/ContinuityAdapter$ServiceStateListener;

    .line 34
    .line 35
    check-cast p1, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAbstractAdapterImpl;

    .line 36
    .line 37
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    new-instance v1, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAbstractAdapterImpl$$ExternalSyntheticLambda3;

    .line 41
    .line 42
    invoke-direct {v1, v0, p0, p1}, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAbstractAdapterImpl$$ExternalSyntheticLambda3;-><init>(Landroid/content/Context;Lcom/samsung/android/mcf/continuity/api/ContinuityAbstractAdapter$ServiceStateListener;Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAbstractAdapterImpl;)V

    .line 43
    .line 44
    .line 45
    invoke-static {v1}, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->executeOnMain(Ljava/lang/Runnable;)Z

    .line 46
    .line 47
    .line 48
    const/4 p0, 0x1

    .line 49
    return p0

    .line 50
    :cond_1
    invoke-interface {p1}, Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter$ContinuityServiceBindResult;->onFailed()V

    .line 51
    .line 52
    .line 53
    const/4 p0, 0x0

    .line 54
    return p0
.end method

.method public isOwnDevice(Ljava/util/Set;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 1
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/4 v0, 0x0

    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getAddress()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-nez v1, :cond_0

    .line 17
    .line 18
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 19
    .line 20
    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-interface {p1, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    if-eqz p0, :cond_0

    .line 29
    .line 30
    const/4 p0, 0x1

    .line 31
    return p0

    .line 32
    :cond_0
    return v0
.end method

.method public startDiscovery(Ljava/util/List;Landroid/os/Handler;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/server/wifi/share/continuity/WifiAutoShareData;",
            ">;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter;->isBound:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter;->adapter:Lcom/samsung/android/mcf/continuity/api/ContinuityAdapter;

    .line 7
    .line 8
    check-cast v0, Lcom/samsung/android/mcf/continuity/impl/mydevice/ContinuityAdapterImpl;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/samsung/android/mcf/continuity/impl/mydevice/ContinuityAdapterImpl;->getContinuityDiscoveryManager()Lcom/samsung/android/mcf/continuity/api/ContinuityDiscoveryManager;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    const-string v0, "SemWifi.Continuity"

    .line 15
    .line 16
    if-nez v3, :cond_1

    .line 17
    .line 18
    const-string p0, "couldn\'t get discovery manager"

    .line 19
    .line 20
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter;->getJsonBytes(Ljava/util/List;)[B

    .line 25
    .line 26
    .line 27
    move-result-object v7

    .line 28
    array-length v1, v7

    .line 29
    if-nez v1, :cond_2

    .line 30
    .line 31
    const-string p0, "shared data is empty"

    .line 32
    .line 33
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :cond_2
    new-instance v4, Ljava/util/HashSet;

    .line 38
    .line 39
    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 40
    .line 41
    .line 42
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-eqz v0, :cond_3

    .line 51
    .line 52
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    check-cast v0, Lcom/samsung/android/server/wifi/share/continuity/WifiAutoShareData;

    .line 57
    .line 58
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/share/continuity/WifiAutoShareData;->getTargetDevices()Ljava/util/Set;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-interface {v4, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_3
    invoke-interface {v3}, Lcom/samsung/android/mcf/continuity/api/ContinuityMyDeviceDiscoveryManager;->getContinuitySimpleMessageManager()Lcom/samsung/android/mcf/continuity/impl/common/ContinuitySimpleMessageManagerImpl;

    .line 67
    .line 68
    .line 69
    move-result-object v6

    .line 70
    new-instance v1, Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter$2;

    .line 71
    .line 72
    move-object v2, p0

    .line 73
    move-object v5, p2

    .line 74
    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter$2;-><init>(Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter;Lcom/samsung/android/mcf/continuity/api/ContinuityDiscoveryManager;Ljava/util/Set;Landroid/os/Handler;Lcom/samsung/android/mcf/continuity/api/ContinuitySimpleMessageManager;[B)V

    .line 75
    .line 76
    .line 77
    invoke-interface {v3, v1}, Lcom/samsung/android/mcf/continuity/api/ContinuityMyDeviceDiscoveryManager;->startDiscovery(Lcom/samsung/android/mcf/continuity/api/ContinuityDiscoveryManager$DiscoveryListener;)Z

    .line 78
    .line 79
    .line 80
    return-void
.end method

.method public stopDiscovery()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter;->isBound:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter;->adapter:Lcom/samsung/android/mcf/continuity/api/ContinuityAdapter;

    .line 7
    .line 8
    check-cast p0, Lcom/samsung/android/mcf/continuity/impl/mydevice/ContinuityAdapterImpl;

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/samsung/android/mcf/continuity/impl/mydevice/ContinuityAdapterImpl;->getContinuityDiscoveryManager()Lcom/samsung/android/mcf/continuity/api/ContinuityDiscoveryManager;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    if-nez p0, :cond_1

    .line 15
    .line 16
    const-string p0, "SemWifi.Continuity"

    .line 17
    .line 18
    const-string v0, "couldn\'t get discovery manager"

    .line 19
    .line 20
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_1
    invoke-interface {p0}, Lcom/samsung/android/mcf/continuity/api/ContinuityMyDeviceDiscoveryManager;->stopDiscovery()Z

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public unbind()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter;->adapter:Lcom/samsung/android/mcf/continuity/api/ContinuityAdapter;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter;->context:Landroid/content/Context;

    .line 6
    .line 7
    check-cast v0, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAbstractAdapterImpl;

    .line 8
    .line 9
    new-instance v2, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAbstractAdapterImpl$$ExternalSyntheticLambda1;

    .line 10
    .line 11
    const/4 v3, 0x1

    .line 12
    invoke-direct {v2, v0, v1, v3}, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAbstractAdapterImpl$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 13
    .line 14
    .line 15
    invoke-static {v2}, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->executeOnMain(Ljava/lang/Runnable;)Z

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter;->adapter:Lcom/samsung/android/mcf/continuity/api/ContinuityAdapter;

    .line 19
    .line 20
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter;->context:Landroid/content/Context;

    .line 21
    .line 22
    check-cast v0, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAbstractAdapterImpl;

    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    new-instance v1, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAbstractAdapterImpl$$ExternalSyntheticLambda1;

    .line 28
    .line 29
    const/4 v2, 0x0

    .line 30
    invoke-direct {v1, v0, p0, v2}, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAbstractAdapterImpl$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 31
    .line 32
    .line 33
    invoke-static {v1}, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->executeOnMain(Ljava/lang/Runnable;)Z

    .line 34
    .line 35
    .line 36
    :cond_0
    return-void
.end method
