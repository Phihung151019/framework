.class public Lcom/android/server/blockchain/BlockchainTZService;
.super Landroid/blockchain/IBlockchainManager$Stub;
.source "BlockchainTZService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/blockchain/BlockchainTZService$FrameworkClient;
    }
.end annotation


# static fields
.field public static final BLOCKCHAIN_SERVICE_VERSION:I = 0x1

.field public static final DEBUG:Z

.field private static final SPAY_TA_TYPE_TEE_TUI:I = 0x101

.field public static final TAG:Ljava/lang/String; = "BlockchainTZService"

.field static final TIMA_MSR_FILE_NAME:Ljava/lang/String; = "/system/tima_measurement_info"

.field private static mContext:Landroid/content/Context;


# instance fields
.field private mRegisteredFWKClientMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/blockchain/BlockchainTZService$FrameworkClient;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetmRegisteredFWKClientMap(Lcom/android/server/blockchain/BlockchainTZService;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/android/server/blockchain/BlockchainTZService;->mRegisteredFWKClientMap:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$sfgetmContext()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/android/server/blockchain/BlockchainTZService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 35
    const-string v0, "ro.product_ship"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    xor-int/2addr v0, v1

    sput-boolean v0, Lcom/android/server/blockchain/BlockchainTZService;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 61
    invoke-direct {p0}, Landroid/blockchain/IBlockchainManager$Stub;-><init>()V

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/blockchain/BlockchainTZService;->mRegisteredFWKClientMap:Ljava/util/Map;

    .line 62
    sget-boolean v0, Lcom/android/server/blockchain/BlockchainTZService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "BlockchainTZService"

    const-string v1, "BlockchainTZService() called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    :cond_0
    sput-object p1, Lcom/android/server/blockchain/BlockchainTZService;->mContext:Landroid/content/Context;

    .line 64
    return-void
.end method

.method public static checkCallerPermissionFor(Ljava/lang/String;)I
    .locals 5
    .param p0, "methodName"    # Ljava/lang/String;

    .line 46
    const-string v0, "BlockchainTZService"

    .line 48
    .local v0, "serviceName":Ljava/lang/String;
    sget-object v1, Lcom/android/server/blockchain/BlockchainTZService;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {v1, v2, v3, v0, p0}, Lcom/android/server/ServiceKeeper;->isAuthorized(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;)I

    move-result v1

    const-string v2, "BlockchainTZService"

    if-nez v1, :cond_0

    .line 54
    const-string v1, "BlockchainTZService() - Valid Caller"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    const/4 v1, 0x0

    return v1

    .line 49
    :cond_0
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Security Exception Occurred while pid["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] with uid["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] trying to access methodName ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] in ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] service"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 51
    .local v1, "e":Ljava/lang/SecurityException;
    const-string v3, "BlockchainTZService() - Invalid Caller"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    throw v1
.end method

.method private getPackageNameFromPid(II)Ljava/lang/String;
    .locals 6
    .param p1, "uid"    # I
    .param p2, "pid"    # I

    .line 224
    const/4 v0, 0x0

    .line 225
    .local v0, "currentProcName":Ljava/lang/String;
    sget-object v1, Lcom/android/server/blockchain/BlockchainTZService;->mContext:Landroid/content/Context;

    const-string v2, "activity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 226
    .local v1, "am":Landroid/app/ActivityManager;
    invoke-virtual {v1}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v2

    const-string v3, "BlockchainTZService"

    if-eqz v2, :cond_2

    .line 227
    invoke-virtual {v1}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 228
    .local v4, "processInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v5, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v5, p2, :cond_0

    .line 229
    iget-object v0, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 230
    goto :goto_1

    .line 232
    .end local v4    # "processInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_0
    goto :goto_0

    :cond_1
    :goto_1
    goto :goto_2

    .line 234
    :cond_2
    const-string v2, "Error: am.getRunningAppProcesses() is null"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    :goto_2
    if-nez v0, :cond_3

    .line 238
    const-string v2, "Error: can\'t find processname for PID"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 241
    :cond_3
    return-object v0
.end method


# virtual methods
.method public getCredential(I)[B
    .locals 2
    .param p1, "type"    # I

    .line 191
    sget-boolean v0, Lcom/android/server/blockchain/BlockchainTZService;->DEBUG:Z

    const-string v1, "getCredential"

    if-eqz v0, :cond_0

    const-string v0, "BlockchainTZService"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    :cond_0
    invoke-static {v1}, Lcom/android/server/blockchain/BlockchainTZService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 193
    invoke-virtual {p0, p1}, Lcom/android/server/blockchain/BlockchainTZService;->nativeGetCredential(I)[B

    move-result-object v0

    return-object v0
.end method

.method public getMeasurementFile()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 185
    const-string v0, "getMeasurementFile"

    invoke-static {v0}, Lcom/android/server/blockchain/BlockchainTZService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 186
    const-string v0, "/system/tima_measurement_info"

    invoke-static {v0}, Lcom/android/server/blockchain/Utils;->readFile(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public native nativeGetCredential(I)[B
.end method

.method public native nativePutCredential(I[B)Z
.end method

.method public native nativeSspExit()I
.end method

.method public native nativeSspInit()I
.end method

.method public putCredential(I[B)Z
    .locals 2
    .param p1, "type"    # I
    .param p2, "cred"    # [B

    .line 198
    sget-boolean v0, Lcom/android/server/blockchain/BlockchainTZService;->DEBUG:Z

    const-string v1, "putCredential"

    if-eqz v0, :cond_0

    const-string v0, "BlockchainTZService"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    :cond_0
    invoke-static {v1}, Lcom/android/server/blockchain/BlockchainTZService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 200
    invoke-virtual {p0, p1, p2}, Lcom/android/server/blockchain/BlockchainTZService;->nativePutCredential(I[B)Z

    move-result v0

    return v0
.end method

.method public registerBlockchainFW(Landroid/blockchain/BlockchainTZServiceConfig;)Landroid/blockchain/BlockchainTZServiceCommnInfo;
    .locals 11
    .param p1, "config"    # Landroid/blockchain/BlockchainTZServiceConfig;

    .line 141
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 142
    .local v4, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    .line 143
    .local v5, "pid":I
    invoke-direct {p0, v4, v5}, Lcom/android/server/blockchain/BlockchainTZService;->getPackageNameFromPid(II)Ljava/lang/String;

    move-result-object v6

    .line 144
    .local v6, "callingApp":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Inside registerBlockchainFW, uid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", package: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v7, "BlockchainTZService"

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    iget-object v0, p0, Lcom/android/server/blockchain/BlockchainTZService;->mRegisteredFWKClientMap:Ljava/util/Map;

    invoke-interface {v0, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 146
    iget-object v0, p0, Lcom/android/server/blockchain/BlockchainTZService;->mRegisteredFWKClientMap:Ljava/util/Map;

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/blockchain/BlockchainTZService$FrameworkClient;

    .line 147
    .local v0, "matchedClient":Lcom/android/server/blockchain/BlockchainTZService$FrameworkClient;
    iget v1, v0, Lcom/android/server/blockchain/BlockchainTZService$FrameworkClient;->mPid:I

    if-eq v5, v1, :cond_0

    .line 149
    const-string v1, "Registered Client Died. Need to Rebind"

    invoke-static {v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iget-object v1, v0, Lcom/android/server/blockchain/BlockchainTZService$FrameworkClient;->mBinderDeathReceiver:Lcom/android/server/blockchain/BlockchainTZService$FrameworkClient$ClientBinderDeathReceiver;

    invoke-static {v1}, Lcom/android/server/blockchain/BlockchainTZService$FrameworkClient$ClientBinderDeathReceiver;->-$$Nest$mdeleteClient(Lcom/android/server/blockchain/BlockchainTZService$FrameworkClient$ClientBinderDeathReceiver;)V

    goto :goto_0

    .line 152
    :cond_0
    const-string v1, "Error: Framework App is already registered. Re-Registration not allowed"

    invoke-static {v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    const/4 v1, 0x0

    return-object v1

    .line 157
    .end local v0    # "matchedClient":Lcom/android/server/blockchain/BlockchainTZService$FrameworkClient;
    :cond_1
    :goto_0
    const-string v0, "registerBlockchainFW"

    invoke-static {v0}, Lcom/android/server/blockchain/BlockchainTZService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 158
    new-instance v3, Landroid/blockchain/BlockchainTZServiceCommnInfo;

    invoke-direct {v3}, Landroid/blockchain/BlockchainTZServiceCommnInfo;-><init>()V

    .line 159
    .local v3, "tzSvcInfo":Landroid/blockchain/BlockchainTZServiceCommnInfo;
    const/4 v0, 0x1

    iput v0, v3, Landroid/blockchain/BlockchainTZServiceCommnInfo;->mServiceVersion:I

    .line 161
    iget-object v0, p1, Landroid/blockchain/BlockchainTZServiceConfig;->mTAConfigs:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 162
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/blockchain/BlockchainTZServiceConfig$TAConfig;>;"
    new-instance v2, Lcom/android/server/blockchain/TAController;

    sget-object v8, Lcom/android/server/blockchain/BlockchainTZService;->mContext:Landroid/content/Context;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/blockchain/BlockchainTZServiceConfig$TAConfig;

    invoke-direct {v2, v8, v9, v10}, Lcom/android/server/blockchain/TAController;-><init>(Landroid/content/Context;ILandroid/blockchain/BlockchainTZServiceConfig$TAConfig;)V

    .line 163
    .local v2, "taController":Landroid/os/IBinder;
    iget-object v8, v3, Landroid/blockchain/BlockchainTZServiceCommnInfo;->mTAs:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-interface {v8, v9, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/blockchain/BlockchainTZServiceConfig$TAConfig;>;"
    .end local v2    # "taController":Landroid/os/IBinder;
    goto :goto_1

    .line 166
    :cond_2
    new-instance v0, Lcom/android/server/blockchain/BlockchainTZService$FrameworkClient;

    move-object v1, p0

    move-object v2, p1

    .end local p1    # "config":Landroid/blockchain/BlockchainTZServiceConfig;
    .local v2, "config":Landroid/blockchain/BlockchainTZServiceConfig;
    invoke-direct/range {v0 .. v6}, Lcom/android/server/blockchain/BlockchainTZService$FrameworkClient;-><init>(Lcom/android/server/blockchain/BlockchainTZService;Landroid/blockchain/BlockchainTZServiceConfig;Landroid/blockchain/BlockchainTZServiceCommnInfo;IILjava/lang/String;)V

    .line 167
    .local v0, "registeredFWKClient":Lcom/android/server/blockchain/BlockchainTZService$FrameworkClient;
    iget-object p1, v1, Lcom/android/server/blockchain/BlockchainTZService;->mRegisteredFWKClientMap:Ljava/util/Map;

    invoke-interface {p1, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "callingApp: "

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v8, " is registered, current size: "

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v8, v1, Lcom/android/server/blockchain/BlockchainTZService;->mRegisteredFWKClientMap:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->size()I

    move-result v8

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v7, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    return-object v3
.end method

.method public sspExit()I
    .locals 2

    .line 212
    sget-boolean v0, Lcom/android/server/blockchain/BlockchainTZService;->DEBUG:Z

    const-string v1, "sspExit"

    if-eqz v0, :cond_0

    const-string v0, "BlockchainTZService"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    :cond_0
    invoke-static {v1}, Lcom/android/server/blockchain/BlockchainTZService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 214
    invoke-virtual {p0}, Lcom/android/server/blockchain/BlockchainTZService;->nativeSspExit()I

    move-result v0

    return v0
.end method

.method public sspInit()I
    .locals 2

    .line 205
    sget-boolean v0, Lcom/android/server/blockchain/BlockchainTZService;->DEBUG:Z

    const-string v1, "sspInit"

    if-eqz v0, :cond_0

    const-string v0, "BlockchainTZService"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    :cond_0
    invoke-static {v1}, Lcom/android/server/blockchain/BlockchainTZService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 207
    invoke-virtual {p0}, Lcom/android/server/blockchain/BlockchainTZService;->nativeSspInit()I

    move-result v0

    return v0
.end method
