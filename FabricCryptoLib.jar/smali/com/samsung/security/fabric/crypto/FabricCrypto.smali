.class public Lcom/samsung/security/fabric/crypto/FabricCrypto;
.super Ljava/lang/Object;
.source "FabricCrypto.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/security/fabric/crypto/FabricCrypto$CheckedRemoteRequest;
    }
.end annotation


# static fields
.field public static final DEFAULT_CHUNK_SIZE_MAX:I = 0x40000

.field private static final FABRIC_CRYPTO_SERVICE_NAME:Ljava/lang/String; = "com.samsung.security.fabric.cryptod.IFabricCryptoService/default"

.field public static final INCOMPATIBLE_ALGORITHM:I = -0x3

.field public static final INVALID_ARGUMENT:I = -0x2

.field public static final KEY_ALREADY_EXISTS:I = -0x6

.field public static final KEY_NOT_FOUND:I = -0x7

.field public static final NO_ERROR:I = 0x0

.field private static final RECOVERY_GRACE_PERIOD_MS:I = 0x32

.field public static final SYSTEM_ERROR:I = -0x4

.field private static final TAG:Ljava/lang/String; = "FabricCrypto"

.field public static final UNKNOWN_ERROR:I = -0x3e8

.field public static final VALUE_CORRUPTED:I = -0x1


# instance fields
.field private mBinder:Lcom/samsung/security/fabric/cryptod/IFabricCryptoService;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/security/fabric/crypto/FabricCrypto;->mBinder:Lcom/samsung/security/fabric/cryptod/IFabricCryptoService;

    .line 74
    return-void
.end method

.method static getFabricCryptoException(ILjava/lang/String;)Lcom/samsung/security/fabric/crypto/FabricCryptoException;
    .locals 3
    .param p0, "errorCode"    # I
    .param p1, "serviceErrorMessage"    # Ljava/lang/String;

    .line 516
    packed-switch p0, :pswitch_data_0

    .line 536
    :pswitch_0
    new-instance v0, Lcom/samsung/security/fabric/crypto/FabricCryptoException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 537
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/security/fabric/crypto/FabricCryptoException;-><init>(ILjava/lang/String;)V

    .line 536
    return-object v0

    .line 518
    :pswitch_1
    new-instance v0, Lcom/samsung/security/fabric/crypto/FabricCryptoException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Key blob corrupted. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/security/fabric/crypto/FabricCryptoException;-><init>(ILjava/lang/String;)V

    return-object v0

    .line 521
    :pswitch_2
    new-instance v0, Lcom/samsung/security/fabric/crypto/FabricCryptoException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid Argument. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/security/fabric/crypto/FabricCryptoException;-><init>(ILjava/lang/String;)V

    return-object v0

    .line 524
    :pswitch_3
    new-instance v0, Lcom/samsung/security/fabric/crypto/FabricCryptoException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Incompatible algorithm : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/security/fabric/crypto/FabricCryptoException;-><init>(ILjava/lang/String;)V

    return-object v0

    .line 527
    :pswitch_4
    new-instance v0, Lcom/samsung/security/fabric/crypto/FabricCryptoException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "System error. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/security/fabric/crypto/FabricCryptoException;-><init>(ILjava/lang/String;)V

    return-object v0

    .line 530
    :pswitch_5
    new-instance v0, Lcom/samsung/security/fabric/crypto/FabricCryptoException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Key already exists. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/security/fabric/crypto/FabricCryptoException;-><init>(ILjava/lang/String;)V

    return-object v0

    .line 533
    :pswitch_6
    new-instance v0, Lcom/samsung/security/fabric/crypto/FabricCryptoException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Key not found. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/security/fabric/crypto/FabricCryptoException;-><init>(ILjava/lang/String;)V

    return-object v0

    :pswitch_data_0
    .packed-switch -0x7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static getInstance()Lcom/samsung/security/fabric/crypto/FabricCrypto;
    .locals 1

    .line 77
    new-instance v0, Lcom/samsung/security/fabric/crypto/FabricCrypto;

    invoke-direct {v0}, Lcom/samsung/security/fabric/crypto/FabricCrypto;-><init>()V

    return-object v0
.end method

.method private declared-synchronized getService(Z)Lcom/samsung/security/fabric/cryptod/IFabricCryptoService;
    .locals 1
    .param p1, "retryLookup"    # Z

    monitor-enter p0

    .line 82
    :try_start_0
    iget-object v0, p0, Lcom/samsung/security/fabric/crypto/FabricCrypto;->mBinder:Lcom/samsung/security/fabric/cryptod/IFabricCryptoService;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    .line 83
    :cond_0
    const-string v0, "com.samsung.security.fabric.cryptod.IFabricCryptoService/default"

    .line 84
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 83
    invoke-static {v0}, Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/security/fabric/cryptod/IFabricCryptoService;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/security/fabric/crypto/FabricCrypto;->mBinder:Lcom/samsung/security/fabric/cryptod/IFabricCryptoService;

    .line 87
    :cond_1
    iget-object v0, p0, Lcom/samsung/security/fabric/crypto/FabricCrypto;->mBinder:Lcom/samsung/security/fabric/cryptod/IFabricCryptoService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 81
    .end local p0    # "this":Lcom/samsung/security/fabric/crypto/FabricCrypto;
    .end local p1    # "retryLookup":Z
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private handleRemoteExceptionWithRetry(Lcom/samsung/security/fabric/crypto/FabricCrypto$CheckedRemoteRequest;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/samsung/security/fabric/crypto/FabricCrypto$CheckedRemoteRequest<",
            "TR;>;)TR;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/security/fabric/crypto/FabricCryptoException;
        }
    .end annotation

    .line 118
    .local p1, "request":Lcom/samsung/security/fabric/crypto/FabricCrypto$CheckedRemoteRequest;, "Lcom/samsung/security/fabric/crypto/FabricCrypto$CheckedRemoteRequest<TR;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/security/fabric/crypto/FabricCrypto;->getService(Z)Lcom/samsung/security/fabric/cryptod/IFabricCryptoService;

    move-result-object v0

    .line 119
    .local v0, "service":Lcom/samsung/security/fabric/cryptod/IFabricCryptoService;
    const/4 v1, 0x1

    .line 122
    .local v1, "firstTry":Z
    :goto_0
    :try_start_0
    invoke-interface {p1, v0}, Lcom/samsung/security/fabric/crypto/FabricCrypto$CheckedRemoteRequest;->execute(Lcom/samsung/security/fabric/cryptod/IFabricCryptoService;)Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 125
    :catch_0
    move-exception v2

    .line 126
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "FabricCrypto"

    if-eqz v1, :cond_0

    .line 127
    const-string v4, "Looks like we may have lost connection to the fabric_cryto daemon"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    const-string v4, "Retrying after giving fabric_crypto 50ms to recover."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    const-wide/16 v3, 0x32

    invoke-static {v3, v4}, Lcom/samsung/security/fabric/crypto/FabricCrypto;->interruptedPreservingSleep(J)V

    .line 131
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/samsung/security/fabric/crypto/FabricCrypto;->getService(Z)Lcom/samsung/security/fabric/cryptod/IFabricCryptoService;

    move-result-object v0

    .line 132
    const/4 v1, 0x0

    .line 137
    .end local v2    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 134
    .restart local v2    # "e":Landroid/os/RemoteException;
    :cond_0
    const-string v4, "Cannot connect to fabric_cryto daemon."

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 135
    new-instance v3, Lcom/samsung/security/fabric/crypto/FabricCryptoException;

    const/4 v4, -0x4

    invoke-virtual {v2}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/samsung/security/fabric/crypto/FabricCryptoException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 123
    .end local v2    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    .line 124
    .local v2, "e":Landroid/os/ServiceSpecificException;
    iget v3, v2, Landroid/os/ServiceSpecificException;->errorCode:I

    invoke-virtual {v2}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/security/fabric/crypto/FabricCrypto;->getFabricCryptoException(ILjava/lang/String;)Lcom/samsung/security/fabric/crypto/FabricCryptoException;

    move-result-object v3

    throw v3
.end method

.method protected static interruptedPreservingSleep(J)V
    .locals 6
    .param p0, "millis"    # J

    .line 96
    const/4 v0, 0x0

    .line 97
    .local v0, "wasInterrupted":Z
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 98
    .local v1, "calendar":Ljava/util/Calendar;
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    add-long/2addr v2, p0

    .line 101
    .local v2, "target":J
    :goto_0
    :try_start_0
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    sub-long v4, v2, v4

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    goto :goto_1

    .line 105
    :catch_0
    move-exception v4

    .line 108
    .local v4, "e":Ljava/lang/IllegalArgumentException;
    nop

    .line 111
    .end local v4    # "e":Ljava/lang/IllegalArgumentException;
    :goto_1
    if-eqz v0, :cond_0

    .line 112
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->interrupt()V

    .line 114
    :cond_0
    return-void

    .line 103
    :catch_1
    move-exception v4

    .line 104
    .local v4, "e":Ljava/lang/InterruptedException;
    const/4 v0, 0x1

    .line 109
    .end local v4    # "e":Ljava/lang/InterruptedException;
    goto :goto_0
.end method

.method static synthetic lambda$checkImportedBlobWithPassword$20([B[B[BLcom/samsung/security/fabric/cryptod/IFabricCryptoService;)Ljava/lang/Integer;
    .locals 1
    .param p0, "wrappedKey"    # [B
    .param p1, "password"    # [B
    .param p2, "aad"    # [B
    .param p3, "service"    # Lcom/samsung/security/fabric/cryptod/IFabricCryptoService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 329
    invoke-interface {p3, p0, p1, p2}, Lcom/samsung/security/fabric/cryptod/IFabricCryptoService;->checkImportedBlobWithPassword([B[B[B)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$decryptBegin$11(Ljava/lang/String;[BLjava/util/Collection;Lcom/samsung/security/fabric/cryptod/IFabricCryptoService;)Ljava/lang/Integer;
    .locals 1
    .param p0, "alias"    # Ljava/lang/String;
    .param p1, "iv"    # [B
    .param p2, "args"    # Ljava/util/Collection;
    .param p3, "service"    # Lcom/samsung/security/fabric/cryptod/IFabricCryptoService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 244
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Lcom/samsung/security/fabric/cryptod/KeyParameter;

    invoke-interface {p2, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/security/fabric/cryptod/KeyParameter;

    invoke-interface {p3, p0, p1, v0}, Lcom/samsung/security/fabric/cryptod/IFabricCryptoService;->decryptBegin(Ljava/lang/String;[B[Lcom/samsung/security/fabric/cryptod/KeyParameter;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$decryptFinish$14([BILcom/samsung/security/fabric/cryptod/IFabricCryptoService;)[B
    .locals 1
    .param p0, "input"    # [B
    .param p1, "opHandle"    # I
    .param p2, "service"    # Lcom/samsung/security/fabric/cryptod/IFabricCryptoService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 271
    invoke-interface {p2, p0, p1}, Lcom/samsung/security/fabric/cryptod/IFabricCryptoService;->decryptFinish([BI)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$decryptSalt$33(Ljava/lang/String;[BLcom/samsung/security/fabric/cryptod/IFabricCryptoService;)[B
    .locals 1
    .param p0, "alias"    # Ljava/lang/String;
    .param p1, "eSalt"    # [B
    .param p2, "service"    # Lcom/samsung/security/fabric/cryptod/IFabricCryptoService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 478
    invoke-interface {p2, p0, p1}, Lcom/samsung/security/fabric/cryptod/IFabricCryptoService;->decryptSalt(Ljava/lang/String;[B)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$decryptUpdate$12([BILcom/samsung/security/fabric/cryptod/IFabricCryptoService;)[B
    .locals 1
    .param p0, "input"    # [B
    .param p1, "opHandle"    # I
    .param p2, "service"    # Lcom/samsung/security/fabric/cryptod/IFabricCryptoService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 253
    invoke-interface {p2, p0, p1}, Lcom/samsung/security/fabric/cryptod/IFabricCryptoService;->decryptUpdate([BI)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$decryptUpdateAad$13([BILcom/samsung/security/fabric/cryptod/IFabricCryptoService;)Ljava/lang/Integer;
    .locals 1
    .param p0, "aad"    # [B
    .param p1, "opHandle"    # I
    .param p2, "service"    # Lcom/samsung/security/fabric/cryptod/IFabricCryptoService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 262
    invoke-interface {p2, p0, p1}, Lcom/samsung/security/fabric/cryptod/IFabricCryptoService;->decryptUpdateAad([BI)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$deleteKey$2(Ljava/lang/String;Lcom/samsung/security/fabric/cryptod/IFabricCryptoService;)Ljava/lang/Integer;
    .locals 1
    .param p0, "alias"    # Ljava/lang/String;
    .param p1, "service"    # Lcom/samsung/security/fabric/cryptod/IFabricCryptoService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 164
    invoke-interface {p1, p0}, Lcom/samsung/security/fabric/cryptod/IFabricCryptoService;->deleteKey(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$encryptBegin$7(Ljava/lang/String;Ljava/util/Collection;Lcom/samsung/security/fabric/cryptod/IFabricCryptoService;)Lcom/samsung/security/fabric/cryptod/OperationResult;
    .locals 1
    .param p0, "alias"    # Ljava/lang/String;
    .param p1, "args"    # Ljava/util/Collection;
    .param p2, "service"    # Lcom/samsung/security/fabric/cryptod/IFabricCryptoService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 207
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Lcom/samsung/security/fabric/cryptod/KeyParameter;

    invoke-interface {p1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/security/fabric/cryptod/KeyParameter;

    invoke-interface {p2, p0, v0}, Lcom/samsung/security/fabric/cryptod/IFabricCryptoService;->encryptBegin(Ljava/lang/String;[Lcom/samsung/security/fabric/cryptod/KeyParameter;)Lcom/samsung/security/fabric/cryptod/OperationResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$encryptFinish$10([BILcom/samsung/security/fabric/cryptod/IFabricCryptoService;)[B
    .locals 1
    .param p0, "input"    # [B
    .param p1, "opHandle"    # I
    .param p2, "service"    # Lcom/samsung/security/fabric/cryptod/IFabricCryptoService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 234
    invoke-interface {p2, p0, p1}, Lcom/samsung/security/fabric/cryptod/IFabricCryptoService;->encryptFinish([BI)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$encryptUpdate$8([BILcom/samsung/security/fabric/cryptod/IFabricCryptoService;)[B
    .locals 1
    .param p0, "input"    # [B
    .param p1, "opHandle"    # I
    .param p2, "service"    # Lcom/samsung/security/fabric/cryptod/IFabricCryptoService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 216
    invoke-interface {p2, p0, p1}, Lcom/samsung/security/fabric/cryptod/IFabricCryptoService;->encryptUpdate([BI)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$encryptUpdateAad$9([BILcom/samsung/security/fabric/cryptod/IFabricCryptoService;)Ljava/lang/Integer;
    .locals 1
    .param p0, "aad"    # [B
    .param p1, "opHandle"    # I
    .param p2, "service"    # Lcom/samsung/security/fabric/cryptod/IFabricCryptoService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 225
    invoke-interface {p2, p0, p1}, Lcom/samsung/security/fabric/cryptod/IFabricCryptoService;->encryptUpdateAad([BI)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$existKey$5(Ljava/lang/String;Lcom/samsung/security/fabric/cryptod/IFabricCryptoService;)Ljava/lang/Integer;
    .locals 1
    .param p0, "alias"    # Ljava/lang/String;
    .param p1, "service"    # Lcom/samsung/security/fabric/cryptod/IFabricCryptoService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 191
    invoke-interface {p1, p0}, Lcom/samsung/security/fabric/cryptod/IFabricCryptoService;->existKey(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$exportKey$21(Ljava/lang/String;Ljava/lang/String;[BLcom/samsung/security/fabric/cryptod/IFabricCryptoService;)[B
    .locals 1
    .param p0, "exportedKeyAlias"    # Ljava/lang/String;
    .param p1, "wrappingKeyAlias"    # Ljava/lang/String;
    .param p2, "aad"    # [B
    .param p3, "service"    # Lcom/samsung/security/fabric/cryptod/IFabricCryptoService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 339
    invoke-interface {p3, p0, p1, p2}, Lcom/samsung/security/fabric/cryptod/IFabricCryptoService;->exportKey(Ljava/lang/String;Ljava/lang/String;[B)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$exportKeyWithPassword$22(Ljava/lang/String;[B[BLcom/samsung/security/fabric/cryptod/IFabricCryptoService;)[B
    .locals 1
    .param p0, "exportedKeyAlias"    # Ljava/lang/String;
    .param p1, "password"    # [B
    .param p2, "aad"    # [B
    .param p3, "service"    # Lcom/samsung/security/fabric/cryptod/IFabricCryptoService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 349
    invoke-interface {p3, p0, p1, p2}, Lcom/samsung/security/fabric/cryptod/IFabricCryptoService;->exportKeyWithPassword(Ljava/lang/String;[B[B)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$exportKeyWithSecureImport$23(Ljava/lang/String;[BLcom/samsung/security/fabric/cryptod/IFabricCryptoService;)[B
    .locals 1
    .param p0, "wrappedKeyAlias"    # Ljava/lang/String;
    .param p1, "publicKey"    # [B
    .param p2, "service"    # Lcom/samsung/security/fabric/cryptod/IFabricCryptoService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 359
    invoke-interface {p2, p0, p1}, Lcom/samsung/security/fabric/cryptod/IFabricCryptoService;->exportKeyWithSecureImport(Ljava/lang/String;[B)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$exportKeyWithSecureImportSHA1$24(Ljava/lang/String;[BLcom/samsung/security/fabric/cryptod/IFabricCryptoService;)[B
    .locals 1
    .param p0, "wrappedKeyAlias"    # Ljava/lang/String;
    .param p1, "publicKey"    # [B
    .param p2, "service"    # Lcom/samsung/security/fabric/cryptod/IFabricCryptoService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 369
    invoke-interface {p2, p0, p1}, Lcom/samsung/security/fabric/cryptod/IFabricCryptoService;->exportKeyWithSecureImportSHA1(Ljava/lang/String;[B)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$exportPrivkeyData$35(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/security/fabric/cryptod/IFabricCryptoService;)[B
    .locals 1
    .param p0, "dataAlias"    # Ljava/lang/String;
    .param p1, "sokeyAlias"    # Ljava/lang/String;
    .param p2, "service"    # Lcom/samsung/security/fabric/cryptod/IFabricCryptoService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 499
    invoke-interface {p2, p0, p1}, Lcom/samsung/security/fabric/cryptod/IFabricCryptoService;->exportPrivkeyData(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$exportPubkeyData$34(Ljava/lang/String;[BLjava/util/Collection;Lcom/samsung/security/fabric/cryptod/IFabricCryptoService;)[B
    .locals 1
    .param p0, "dataAlias"    # Ljava/lang/String;
    .param p1, "publicKey"    # [B
    .param p2, "args"    # Ljava/util/Collection;
    .param p3, "service"    # Lcom/samsung/security/fabric/cryptod/IFabricCryptoService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 488
    nop

    .line 489
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Lcom/samsung/security/fabric/cryptod/KeyParameter;

    invoke-interface {p2, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/security/fabric/cryptod/KeyParameter;

    .line 488
    invoke-interface {p3, p0, p1, v0}, Lcom/samsung/security/fabric/cryptod/IFabricCryptoService;->exportPubkeyData(Ljava/lang/String;[B[Lcom/samsung/security/fabric/cryptod/KeyParameter;)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$generateKey$3(Ljava/lang/String;Ljava/util/Collection;Lcom/samsung/security/fabric/cryptod/IFabricCryptoService;)Ljava/lang/Integer;
    .locals 1
    .param p0, "alias"    # Ljava/lang/String;
    .param p1, "args"    # Ljava/util/Collection;
    .param p2, "service"    # Lcom/samsung/security/fabric/cryptod/IFabricCryptoService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 173
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Lcom/samsung/security/fabric/cryptod/KeyParameter;

    invoke-interface {p1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/security/fabric/cryptod/KeyParameter;

    invoke-interface {p2, p0, v0}, Lcom/samsung/security/fabric/cryptod/IFabricCryptoService;->generateKey(Ljava/lang/String;[Lcom/samsung/security/fabric/cryptod/KeyParameter;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$generateKeyPQ$4(Ljava/lang/String;Ljava/util/Collection;Lcom/samsung/security/fabric/cryptod/IFabricCryptoService;)Ljava/lang/Integer;
    .locals 1
    .param p0, "alias"    # Ljava/lang/String;
    .param p1, "args"    # Ljava/util/Collection;
    .param p2, "service"    # Lcom/samsung/security/fabric/cryptod/IFabricCryptoService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 182
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Lcom/samsung/security/fabric/cryptod/KeyParameter;

    invoke-interface {p1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/security/fabric/cryptod/KeyParameter;

    invoke-interface {p2, p0, v0}, Lcom/samsung/security/fabric/cryptod/IFabricCryptoService;->generateKeyPQ(Ljava/lang/String;[Lcom/samsung/security/fabric/cryptod/KeyParameter;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$getPQEncapKey$1(Ljava/lang/String;Lcom/samsung/security/fabric/cryptod/IFabricCryptoService;)[B
    .locals 1
    .param p0, "alias"    # Ljava/lang/String;
    .param p1, "service"    # Lcom/samsung/security/fabric/cryptod/IFabricCryptoService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 155
    invoke-interface {p1, p0}, Lcom/samsung/security/fabric/cryptod/IFabricCryptoService;->getPQEncapKey(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$getPublicKey$0(Ljava/lang/String;Lcom/samsung/security/fabric/cryptod/IFabricCryptoService;)[B
    .locals 1
    .param p0, "alias"    # Ljava/lang/String;
    .param p1, "service"    # Lcom/samsung/security/fabric/cryptod/IFabricCryptoService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 146
    invoke-interface {p1, p0}, Lcom/samsung/security/fabric/cryptod/IFabricCryptoService;->getPublicKey(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$importData$36(Ljava/lang/String;[BLjava/lang/String;Ljava/util/Collection;[BLcom/samsung/security/fabric/cryptod/IFabricCryptoService;)Ljava/lang/Integer;
    .locals 7
    .param p0, "wrappedDataAlias"    # Ljava/lang/String;
    .param p1, "wrappedData"    # [B
    .param p2, "wrappingKeyAlias"    # Ljava/lang/String;
    .param p3, "args"    # Ljava/util/Collection;
    .param p4, "aad"    # [B
    .param p5, "service"    # Lcom/samsung/security/fabric/cryptod/IFabricCryptoService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 509
    nop

    .line 510
    invoke-interface {p3}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Lcom/samsung/security/fabric/cryptod/KeyParameter;

    invoke-interface {p3, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, [Lcom/samsung/security/fabric/cryptod/KeyParameter;

    .line 509
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v6, p4

    move-object v1, p5

    .end local p0    # "wrappedDataAlias":Ljava/lang/String;
    .end local p1    # "wrappedData":[B
    .end local p2    # "wrappingKeyAlias":Ljava/lang/String;
    .end local p4    # "aad":[B
    .end local p5    # "service":Lcom/samsung/security/fabric/cryptod/IFabricCryptoService;
    .local v1, "service":Lcom/samsung/security/fabric/cryptod/IFabricCryptoService;
    .local v2, "wrappedDataAlias":Ljava/lang/String;
    .local v3, "wrappedData":[B
    .local v4, "wrappingKeyAlias":Ljava/lang/String;
    .local v6, "aad":[B
    invoke-interface/range {v1 .. v6}, Lcom/samsung/security/fabric/cryptod/IFabricCryptoService;->importData(Ljava/lang/String;[BLjava/lang/String;[Lcom/samsung/security/fabric/cryptod/KeyParameter;[B)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$importKey$18(Ljava/lang/String;[BLjava/lang/String;[BLcom/samsung/security/fabric/cryptod/IFabricCryptoService;)Ljava/lang/Integer;
    .locals 1
    .param p0, "wrappedKeyAlias"    # Ljava/lang/String;
    .param p1, "wrappedKey"    # [B
    .param p2, "wrappingKeyAlias"    # Ljava/lang/String;
    .param p3, "aad"    # [B
    .param p4, "service"    # Lcom/samsung/security/fabric/cryptod/IFabricCryptoService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 309
    invoke-interface {p4, p0, p1, p2, p3}, Lcom/samsung/security/fabric/cryptod/IFabricCryptoService;->importKey(Ljava/lang/String;[BLjava/lang/String;[B)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$importKeyWithPassword$19(Ljava/lang/String;[B[B[BLcom/samsung/security/fabric/cryptod/IFabricCryptoService;)Ljava/lang/Integer;
    .locals 1
    .param p0, "wrappedKeyAlias"    # Ljava/lang/String;
    .param p1, "wrappedKey"    # [B
    .param p2, "password"    # [B
    .param p3, "aad"    # [B
    .param p4, "service"    # Lcom/samsung/security/fabric/cryptod/IFabricCryptoService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 319
    invoke-interface {p4, p0, p1, p2, p3}, Lcom/samsung/security/fabric/cryptod/IFabricCryptoService;->importKeyWithPassword(Ljava/lang/String;[B[B[B)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$keyAgreement$25(Ljava/lang/String;[BLjava/lang/String;[B[BLjava/util/Collection;Lcom/samsung/security/fabric/cryptod/IFabricCryptoService;)Ljava/lang/Integer;
    .locals 8
    .param p0, "privateKeyAlias"    # Ljava/lang/String;
    .param p1, "publicKey"    # [B
    .param p2, "secretKeyAlias"    # Ljava/lang/String;
    .param p3, "label"    # [B
    .param p4, "context"    # [B
    .param p5, "args"    # Ljava/util/Collection;
    .param p6, "service"    # Lcom/samsung/security/fabric/cryptod/IFabricCryptoService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 380
    nop

    .line 381
    invoke-interface {p5}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Lcom/samsung/security/fabric/cryptod/KeyParameter;

    invoke-interface {p5, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, [Lcom/samsung/security/fabric/cryptod/KeyParameter;

    .line 380
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v1, p6

    .end local p0    # "privateKeyAlias":Ljava/lang/String;
    .end local p1    # "publicKey":[B
    .end local p2    # "secretKeyAlias":Ljava/lang/String;
    .end local p3    # "label":[B
    .end local p4    # "context":[B
    .end local p6    # "service":Lcom/samsung/security/fabric/cryptod/IFabricCryptoService;
    .local v1, "service":Lcom/samsung/security/fabric/cryptod/IFabricCryptoService;
    .local v2, "privateKeyAlias":Ljava/lang/String;
    .local v3, "publicKey":[B
    .local v4, "secretKeyAlias":Ljava/lang/String;
    .local v5, "label":[B
    .local v6, "context":[B
    invoke-interface/range {v1 .. v7}, Lcom/samsung/security/fabric/cryptod/IFabricCryptoService;->keyAgreement(Ljava/lang/String;[BLjava/lang/String;[B[B[Lcom/samsung/security/fabric/cryptod/KeyParameter;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$keyAgreementPQdecap$27(Ljava/lang/String;[BLjava/lang/String;[BLjava/lang/String;[B[BLjava/util/Collection;Lcom/samsung/security/fabric/cryptod/IFabricCryptoService;)Ljava/lang/Integer;
    .locals 11
    .param p0, "decapKeyAlias"    # Ljava/lang/String;
    .param p1, "cipherText"    # [B
    .param p2, "privateKeyAlias"    # Ljava/lang/String;
    .param p3, "publicKey"    # [B
    .param p4, "secretKeyAlias"    # Ljava/lang/String;
    .param p5, "label"    # [B
    .param p6, "context"    # [B
    .param p7, "args"    # Ljava/util/Collection;
    .param p8, "service"    # Lcom/samsung/security/fabric/cryptod/IFabricCryptoService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 407
    nop

    .line 409
    invoke-interface/range {p7 .. p7}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Lcom/samsung/security/fabric/cryptod/KeyParameter;

    move-object/from16 v1, p7

    invoke-interface {v1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, [Lcom/samsung/security/fabric/cryptod/KeyParameter;

    .line 407
    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v2, p8

    invoke-interface/range {v2 .. v10}, Lcom/samsung/security/fabric/cryptod/IFabricCryptoService;->keyAgreementPQdecap(Ljava/lang/String;[BLjava/lang/String;[BLjava/lang/String;[B[B[Lcom/samsung/security/fabric/cryptod/KeyParameter;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$keyAgreementPQencap$26([BLjava/lang/String;[BLjava/lang/String;[B[BLjava/util/Collection;Lcom/samsung/security/fabric/cryptod/IFabricCryptoService;)[B
    .locals 10
    .param p0, "encapKey"    # [B
    .param p1, "privateKeyAlias"    # Ljava/lang/String;
    .param p2, "publicKey"    # [B
    .param p3, "secretKeyAlias"    # Ljava/lang/String;
    .param p4, "label"    # [B
    .param p5, "context"    # [B
    .param p6, "args"    # Ljava/util/Collection;
    .param p7, "service"    # Lcom/samsung/security/fabric/cryptod/IFabricCryptoService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 393
    nop

    .line 395
    invoke-interface/range {p6 .. p6}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Lcom/samsung/security/fabric/cryptod/KeyParameter;

    move-object/from16 v1, p6

    invoke-interface {v1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, [Lcom/samsung/security/fabric/cryptod/KeyParameter;

    .line 393
    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    move-object/from16 v2, p7

    invoke-interface/range {v2 .. v9}, Lcom/samsung/security/fabric/cryptod/IFabricCryptoService;->keyAgreementPQencap([BLjava/lang/String;[BLjava/lang/String;[B[B[Lcom/samsung/security/fabric/cryptod/KeyParameter;)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$keyDerivation$30([BILcom/samsung/security/fabric/cryptod/IFabricCryptoService;)[B
    .locals 1
    .param p0, "input"    # [B
    .param p1, "type"    # I
    .param p2, "service"    # Lcom/samsung/security/fabric/cryptod/IFabricCryptoService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 448
    invoke-interface {p2, p0, p1}, Lcom/samsung/security/fabric/cryptod/IFabricCryptoService;->keyDerivation([BI)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$keyDerivationAlias$28([BLjava/lang/String;Ljava/lang/String;Ljava/util/Collection;Lcom/samsung/security/fabric/cryptod/IFabricCryptoService;)Ljava/lang/Integer;
    .locals 8
    .param p0, "label"    # [B
    .param p1, "inputAlias"    # Ljava/lang/String;
    .param p2, "outputAlias"    # Ljava/lang/String;
    .param p3, "args"    # Ljava/util/Collection;
    .param p4, "service"    # Lcom/samsung/security/fabric/cryptod/IFabricCryptoService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 422
    const-string v0, "context"

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    .line 424
    invoke-interface {p3}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Lcom/samsung/security/fabric/cryptod/KeyParameter;

    invoke-interface {p3, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, [Lcom/samsung/security/fabric/cryptod/KeyParameter;

    .line 422
    move-object v3, p0

    move-object v5, p1

    move-object v6, p2

    move-object v2, p4

    .end local p0    # "label":[B
    .end local p1    # "inputAlias":Ljava/lang/String;
    .end local p2    # "outputAlias":Ljava/lang/String;
    .end local p4    # "service":Lcom/samsung/security/fabric/cryptod/IFabricCryptoService;
    .local v2, "service":Lcom/samsung/security/fabric/cryptod/IFabricCryptoService;
    .local v3, "label":[B
    .local v5, "inputAlias":Ljava/lang/String;
    .local v6, "outputAlias":Ljava/lang/String;
    invoke-interface/range {v2 .. v7}, Lcom/samsung/security/fabric/cryptod/IFabricCryptoService;->keyDerivationAlias([B[BLjava/lang/String;Ljava/lang/String;[Lcom/samsung/security/fabric/cryptod/KeyParameter;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$keyDerivationAlias$29([B[BLjava/lang/String;Ljava/lang/String;Ljava/util/Collection;Lcom/samsung/security/fabric/cryptod/IFabricCryptoService;)Ljava/lang/Integer;
    .locals 7
    .param p0, "label"    # [B
    .param p1, "context"    # [B
    .param p2, "inputAlias"    # Ljava/lang/String;
    .param p3, "outputAlias"    # Ljava/lang/String;
    .param p4, "args"    # Ljava/util/Collection;
    .param p5, "service"    # Lcom/samsung/security/fabric/cryptod/IFabricCryptoService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 437
    nop

    .line 439
    invoke-interface {p4}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Lcom/samsung/security/fabric/cryptod/KeyParameter;

    invoke-interface {p4, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, [Lcom/samsung/security/fabric/cryptod/KeyParameter;

    .line 437
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v1, p5

    .end local p0    # "label":[B
    .end local p1    # "context":[B
    .end local p2    # "inputAlias":Ljava/lang/String;
    .end local p3    # "outputAlias":Ljava/lang/String;
    .end local p5    # "service":Lcom/samsung/security/fabric/cryptod/IFabricCryptoService;
    .local v1, "service":Lcom/samsung/security/fabric/cryptod/IFabricCryptoService;
    .local v2, "label":[B
    .local v3, "context":[B
    .local v4, "inputAlias":Ljava/lang/String;
    .local v5, "outputAlias":Ljava/lang/String;
    invoke-interface/range {v1 .. v6}, Lcom/samsung/security/fabric/cryptod/IFabricCryptoService;->keyDerivationAlias([B[BLjava/lang/String;Ljava/lang/String;[Lcom/samsung/security/fabric/cryptod/KeyParameter;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$keyRecovery$32(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[BLcom/samsung/security/fabric/cryptod/IFabricCryptoService;)Ljava/lang/Integer;
    .locals 2
    .param p0, "rkAlias"    # Ljava/lang/String;
    .param p1, "cekAlias"    # Ljava/lang/String;
    .param p2, "sTAAlias"    # Ljava/lang/String;
    .param p3, "wk"    # [B
    .param p4, "eCeRk"    # [B
    .param p5, "service"    # Lcom/samsung/security/fabric/cryptod/IFabricCryptoService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 468
    move-object v1, p1

    move-object p1, p0

    move-object p0, p5

    move-object p5, p4

    move-object p4, p3

    move-object p3, p2

    move-object p2, v1

    .local p0, "service":Lcom/samsung/security/fabric/cryptod/IFabricCryptoService;
    .local p1, "rkAlias":Ljava/lang/String;
    .local p2, "cekAlias":Ljava/lang/String;
    .local p3, "sTAAlias":Ljava/lang/String;
    .local p4, "wk":[B
    .local p5, "eCeRk":[B
    invoke-interface/range {p0 .. p5}, Lcom/samsung/security/fabric/cryptod/IFabricCryptoService;->keyRecovery(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$keyRegister$31(Ljava/lang/String;Ljava/lang/String;[B[BLcom/samsung/security/fabric/cryptod/IFabricCryptoService;)[B
    .locals 1
    .param p0, "rkAlias"    # Ljava/lang/String;
    .param p1, "cekAlias"    # Ljava/lang/String;
    .param p2, "wk"    # [B
    .param p3, "HSMpkey"    # [B
    .param p4, "service"    # Lcom/samsung/security/fabric/cryptod/IFabricCryptoService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 458
    invoke-interface {p4, p0, p1, p2, p3}, Lcom/samsung/security/fabric/cryptod/IFabricCryptoService;->keyRegister(Ljava/lang/String;Ljava/lang/String;[B[B)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$list$6(Lcom/samsung/security/fabric/cryptod/IFabricCryptoService;)[Ljava/lang/String;
    .locals 1
    .param p0, "service"    # Lcom/samsung/security/fabric/cryptod/IFabricCryptoService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 197
    invoke-interface {p0}, Lcom/samsung/security/fabric/cryptod/IFabricCryptoService;->list()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$signBegin$15(Ljava/lang/String;Ljava/util/Collection;Lcom/samsung/security/fabric/cryptod/IFabricCryptoService;)Ljava/lang/Integer;
    .locals 1
    .param p0, "alias"    # Ljava/lang/String;
    .param p1, "args"    # Ljava/util/Collection;
    .param p2, "service"    # Lcom/samsung/security/fabric/cryptod/IFabricCryptoService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 281
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Lcom/samsung/security/fabric/cryptod/KeyParameter;

    invoke-interface {p1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/security/fabric/cryptod/KeyParameter;

    invoke-interface {p2, p0, v0}, Lcom/samsung/security/fabric/cryptod/IFabricCryptoService;->signBegin(Ljava/lang/String;[Lcom/samsung/security/fabric/cryptod/KeyParameter;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$signFinish$17([BILcom/samsung/security/fabric/cryptod/IFabricCryptoService;)[B
    .locals 1
    .param p0, "input"    # [B
    .param p1, "opHandle"    # I
    .param p2, "service"    # Lcom/samsung/security/fabric/cryptod/IFabricCryptoService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 299
    invoke-interface {p2, p0, p1}, Lcom/samsung/security/fabric/cryptod/IFabricCryptoService;->signFinish([BI)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$signUpdate$16([BILcom/samsung/security/fabric/cryptod/IFabricCryptoService;)Ljava/lang/Integer;
    .locals 1
    .param p0, "input"    # [B
    .param p1, "opHandle"    # I
    .param p2, "service"    # Lcom/samsung/security/fabric/cryptod/IFabricCryptoService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 290
    invoke-interface {p2, p0, p1}, Lcom/samsung/security/fabric/cryptod/IFabricCryptoService;->signUpdate([BI)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public checkImportedBlobWithPassword([B[B[B)I
    .locals 1
    .param p1, "wrappedKey"    # [B
    .param p2, "password"    # [B
    .param p3, "aad"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/security/fabric/crypto/FabricCryptoException;
        }
    .end annotation

    .line 328
    new-instance v0, Lcom/samsung/security/fabric/crypto/FabricCrypto$$ExternalSyntheticLambda20;

    invoke-direct {v0, p1, p2, p3}, Lcom/samsung/security/fabric/crypto/FabricCrypto$$ExternalSyntheticLambda20;-><init>([B[B[B)V

    invoke-direct {p0, v0}, Lcom/samsung/security/fabric/crypto/FabricCrypto;->handleRemoteExceptionWithRetry(Lcom/samsung/security/fabric/crypto/FabricCrypto$CheckedRemoteRequest;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public decryptBegin(Ljava/lang/String;[BLjava/util/Collection;)I
    .locals 1
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "iv"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B",
            "Ljava/util/Collection<",
            "Lcom/samsung/security/fabric/cryptod/KeyParameter;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/security/fabric/crypto/FabricCryptoException;
        }
    .end annotation

    .line 243
    .local p3, "args":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/samsung/security/fabric/cryptod/KeyParameter;>;"
    new-instance v0, Lcom/samsung/security/fabric/crypto/FabricCrypto$$ExternalSyntheticLambda25;

    invoke-direct {v0, p1, p2, p3}, Lcom/samsung/security/fabric/crypto/FabricCrypto$$ExternalSyntheticLambda25;-><init>(Ljava/lang/String;[BLjava/util/Collection;)V

    invoke-direct {p0, v0}, Lcom/samsung/security/fabric/crypto/FabricCrypto;->handleRemoteExceptionWithRetry(Lcom/samsung/security/fabric/crypto/FabricCrypto$CheckedRemoteRequest;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public decryptFinish([BI)[B
    .locals 1
    .param p1, "input"    # [B
    .param p2, "opHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/security/fabric/crypto/FabricCryptoException;
        }
    .end annotation

    .line 270
    new-instance v0, Lcom/samsung/security/fabric/crypto/FabricCrypto$$ExternalSyntheticLambda10;

    invoke-direct {v0, p1, p2}, Lcom/samsung/security/fabric/crypto/FabricCrypto$$ExternalSyntheticLambda10;-><init>([BI)V

    invoke-direct {p0, v0}, Lcom/samsung/security/fabric/crypto/FabricCrypto;->handleRemoteExceptionWithRetry(Lcom/samsung/security/fabric/crypto/FabricCrypto$CheckedRemoteRequest;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public decryptSalt(Ljava/lang/String;[B)[B
    .locals 1
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "eSalt"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/security/fabric/crypto/FabricCryptoException;
        }
    .end annotation

    .line 477
    new-instance v0, Lcom/samsung/security/fabric/crypto/FabricCrypto$$ExternalSyntheticLambda24;

    invoke-direct {v0, p1, p2}, Lcom/samsung/security/fabric/crypto/FabricCrypto$$ExternalSyntheticLambda24;-><init>(Ljava/lang/String;[B)V

    invoke-direct {p0, v0}, Lcom/samsung/security/fabric/crypto/FabricCrypto;->handleRemoteExceptionWithRetry(Lcom/samsung/security/fabric/crypto/FabricCrypto$CheckedRemoteRequest;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public decryptUpdate([BI)[B
    .locals 1
    .param p1, "input"    # [B
    .param p2, "opHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/security/fabric/crypto/FabricCryptoException;
        }
    .end annotation

    .line 252
    new-instance v0, Lcom/samsung/security/fabric/crypto/FabricCrypto$$ExternalSyntheticLambda23;

    invoke-direct {v0, p1, p2}, Lcom/samsung/security/fabric/crypto/FabricCrypto$$ExternalSyntheticLambda23;-><init>([BI)V

    invoke-direct {p0, v0}, Lcom/samsung/security/fabric/crypto/FabricCrypto;->handleRemoteExceptionWithRetry(Lcom/samsung/security/fabric/crypto/FabricCrypto$CheckedRemoteRequest;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public decryptUpdateAad([BI)I
    .locals 1
    .param p1, "aad"    # [B
    .param p2, "opHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/security/fabric/crypto/FabricCryptoException;
        }
    .end annotation

    .line 261
    new-instance v0, Lcom/samsung/security/fabric/crypto/FabricCrypto$$ExternalSyntheticLambda27;

    invoke-direct {v0, p1, p2}, Lcom/samsung/security/fabric/crypto/FabricCrypto$$ExternalSyntheticLambda27;-><init>([BI)V

    invoke-direct {p0, v0}, Lcom/samsung/security/fabric/crypto/FabricCrypto;->handleRemoteExceptionWithRetry(Lcom/samsung/security/fabric/crypto/FabricCrypto$CheckedRemoteRequest;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public deleteKey(Ljava/lang/String;)I
    .locals 1
    .param p1, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/security/fabric/crypto/FabricCryptoException;
        }
    .end annotation

    .line 163
    new-instance v0, Lcom/samsung/security/fabric/crypto/FabricCrypto$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/samsung/security/fabric/crypto/FabricCrypto$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/samsung/security/fabric/crypto/FabricCrypto;->handleRemoteExceptionWithRetry(Lcom/samsung/security/fabric/crypto/FabricCrypto$CheckedRemoteRequest;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public encryptBegin(Ljava/lang/String;Ljava/util/Collection;)Lcom/samsung/security/fabric/cryptod/OperationResult;
    .locals 1
    .param p1, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Lcom/samsung/security/fabric/cryptod/KeyParameter;",
            ">;)",
            "Lcom/samsung/security/fabric/cryptod/OperationResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/security/fabric/crypto/FabricCryptoException;
        }
    .end annotation

    .line 206
    .local p2, "args":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/samsung/security/fabric/cryptod/KeyParameter;>;"
    new-instance v0, Lcom/samsung/security/fabric/crypto/FabricCrypto$$ExternalSyntheticLambda5;

    invoke-direct {v0, p1, p2}, Lcom/samsung/security/fabric/crypto/FabricCrypto$$ExternalSyntheticLambda5;-><init>(Ljava/lang/String;Ljava/util/Collection;)V

    invoke-direct {p0, v0}, Lcom/samsung/security/fabric/crypto/FabricCrypto;->handleRemoteExceptionWithRetry(Lcom/samsung/security/fabric/crypto/FabricCrypto$CheckedRemoteRequest;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/security/fabric/cryptod/OperationResult;

    return-object v0
.end method

.method public encryptFinish([BI)[B
    .locals 1
    .param p1, "input"    # [B
    .param p2, "opHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/security/fabric/crypto/FabricCryptoException;
        }
    .end annotation

    .line 233
    new-instance v0, Lcom/samsung/security/fabric/crypto/FabricCrypto$$ExternalSyntheticLambda16;

    invoke-direct {v0, p1, p2}, Lcom/samsung/security/fabric/crypto/FabricCrypto$$ExternalSyntheticLambda16;-><init>([BI)V

    invoke-direct {p0, v0}, Lcom/samsung/security/fabric/crypto/FabricCrypto;->handleRemoteExceptionWithRetry(Lcom/samsung/security/fabric/crypto/FabricCrypto$CheckedRemoteRequest;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public encryptUpdate([BI)[B
    .locals 1
    .param p1, "input"    # [B
    .param p2, "opHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/security/fabric/crypto/FabricCryptoException;
        }
    .end annotation

    .line 215
    new-instance v0, Lcom/samsung/security/fabric/crypto/FabricCrypto$$ExternalSyntheticLambda8;

    invoke-direct {v0, p1, p2}, Lcom/samsung/security/fabric/crypto/FabricCrypto$$ExternalSyntheticLambda8;-><init>([BI)V

    invoke-direct {p0, v0}, Lcom/samsung/security/fabric/crypto/FabricCrypto;->handleRemoteExceptionWithRetry(Lcom/samsung/security/fabric/crypto/FabricCrypto$CheckedRemoteRequest;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public encryptUpdateAad([BI)I
    .locals 1
    .param p1, "aad"    # [B
    .param p2, "opHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/security/fabric/crypto/FabricCryptoException;
        }
    .end annotation

    .line 224
    new-instance v0, Lcom/samsung/security/fabric/crypto/FabricCrypto$$ExternalSyntheticLambda26;

    invoke-direct {v0, p1, p2}, Lcom/samsung/security/fabric/crypto/FabricCrypto$$ExternalSyntheticLambda26;-><init>([BI)V

    invoke-direct {p0, v0}, Lcom/samsung/security/fabric/crypto/FabricCrypto;->handleRemoteExceptionWithRetry(Lcom/samsung/security/fabric/crypto/FabricCrypto$CheckedRemoteRequest;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public existKey(Ljava/lang/String;)I
    .locals 1
    .param p1, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/security/fabric/crypto/FabricCryptoException;
        }
    .end annotation

    .line 190
    new-instance v0, Lcom/samsung/security/fabric/crypto/FabricCrypto$$ExternalSyntheticLambda22;

    invoke-direct {v0, p1}, Lcom/samsung/security/fabric/crypto/FabricCrypto$$ExternalSyntheticLambda22;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/samsung/security/fabric/crypto/FabricCrypto;->handleRemoteExceptionWithRetry(Lcom/samsung/security/fabric/crypto/FabricCrypto$CheckedRemoteRequest;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public exportKey(Ljava/lang/String;Ljava/lang/String;[B)[B
    .locals 1
    .param p1, "exportedKeyAlias"    # Ljava/lang/String;
    .param p2, "wrappingKeyAlias"    # Ljava/lang/String;
    .param p3, "aad"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/security/fabric/crypto/FabricCryptoException;
        }
    .end annotation

    .line 338
    new-instance v0, Lcom/samsung/security/fabric/crypto/FabricCrypto$$ExternalSyntheticLambda35;

    invoke-direct {v0, p1, p2, p3}, Lcom/samsung/security/fabric/crypto/FabricCrypto$$ExternalSyntheticLambda35;-><init>(Ljava/lang/String;Ljava/lang/String;[B)V

    invoke-direct {p0, v0}, Lcom/samsung/security/fabric/crypto/FabricCrypto;->handleRemoteExceptionWithRetry(Lcom/samsung/security/fabric/crypto/FabricCrypto$CheckedRemoteRequest;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public exportKeyWithPassword(Ljava/lang/String;[B[B)[B
    .locals 1
    .param p1, "exportedKeyAlias"    # Ljava/lang/String;
    .param p2, "password"    # [B
    .param p3, "aad"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/security/fabric/crypto/FabricCryptoException;
        }
    .end annotation

    .line 348
    new-instance v0, Lcom/samsung/security/fabric/crypto/FabricCrypto$$ExternalSyntheticLambda32;

    invoke-direct {v0, p1, p2, p3}, Lcom/samsung/security/fabric/crypto/FabricCrypto$$ExternalSyntheticLambda32;-><init>(Ljava/lang/String;[B[B)V

    invoke-direct {p0, v0}, Lcom/samsung/security/fabric/crypto/FabricCrypto;->handleRemoteExceptionWithRetry(Lcom/samsung/security/fabric/crypto/FabricCrypto$CheckedRemoteRequest;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public exportKeyWithSecureImport(Ljava/lang/String;[B)[B
    .locals 1
    .param p1, "wrappedKeyAlias"    # Ljava/lang/String;
    .param p2, "publicKey"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/security/fabric/crypto/FabricCryptoException;
        }
    .end annotation

    .line 358
    new-instance v0, Lcom/samsung/security/fabric/crypto/FabricCrypto$$ExternalSyntheticLambda30;

    invoke-direct {v0, p1, p2}, Lcom/samsung/security/fabric/crypto/FabricCrypto$$ExternalSyntheticLambda30;-><init>(Ljava/lang/String;[B)V

    invoke-direct {p0, v0}, Lcom/samsung/security/fabric/crypto/FabricCrypto;->handleRemoteExceptionWithRetry(Lcom/samsung/security/fabric/crypto/FabricCrypto$CheckedRemoteRequest;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public exportKeyWithSecureImportSHA1(Ljava/lang/String;[B)[B
    .locals 1
    .param p1, "wrappedKeyAlias"    # Ljava/lang/String;
    .param p2, "publicKey"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/security/fabric/crypto/FabricCryptoException;
        }
    .end annotation

    .line 368
    new-instance v0, Lcom/samsung/security/fabric/crypto/FabricCrypto$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1, p2}, Lcom/samsung/security/fabric/crypto/FabricCrypto$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;[B)V

    invoke-direct {p0, v0}, Lcom/samsung/security/fabric/crypto/FabricCrypto;->handleRemoteExceptionWithRetry(Lcom/samsung/security/fabric/crypto/FabricCrypto$CheckedRemoteRequest;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public exportPrivkeyData(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 1
    .param p1, "dataAlias"    # Ljava/lang/String;
    .param p2, "sokeyAlias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/security/fabric/crypto/FabricCryptoException;
        }
    .end annotation

    .line 498
    new-instance v0, Lcom/samsung/security/fabric/crypto/FabricCrypto$$ExternalSyntheticLambda7;

    invoke-direct {v0, p1, p2}, Lcom/samsung/security/fabric/crypto/FabricCrypto$$ExternalSyntheticLambda7;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/samsung/security/fabric/crypto/FabricCrypto;->handleRemoteExceptionWithRetry(Lcom/samsung/security/fabric/crypto/FabricCrypto$CheckedRemoteRequest;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public exportPubkeyData(Ljava/lang/String;[BLjava/util/Collection;)[B
    .locals 1
    .param p1, "dataAlias"    # Ljava/lang/String;
    .param p2, "publicKey"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B",
            "Ljava/util/Collection<",
            "Lcom/samsung/security/fabric/cryptod/KeyParameter;",
            ">;)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/security/fabric/crypto/FabricCryptoException;
        }
    .end annotation

    .line 487
    .local p3, "args":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/samsung/security/fabric/cryptod/KeyParameter;>;"
    new-instance v0, Lcom/samsung/security/fabric/crypto/FabricCrypto$$ExternalSyntheticLambda15;

    invoke-direct {v0, p1, p2, p3}, Lcom/samsung/security/fabric/crypto/FabricCrypto$$ExternalSyntheticLambda15;-><init>(Ljava/lang/String;[BLjava/util/Collection;)V

    invoke-direct {p0, v0}, Lcom/samsung/security/fabric/crypto/FabricCrypto;->handleRemoteExceptionWithRetry(Lcom/samsung/security/fabric/crypto/FabricCrypto$CheckedRemoteRequest;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public generateKey(Ljava/lang/String;Ljava/util/Collection;)I
    .locals 1
    .param p1, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Lcom/samsung/security/fabric/cryptod/KeyParameter;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/security/fabric/crypto/FabricCryptoException;
        }
    .end annotation

    .line 172
    .local p2, "args":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/samsung/security/fabric/cryptod/KeyParameter;>;"
    new-instance v0, Lcom/samsung/security/fabric/crypto/FabricCrypto$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1, p2}, Lcom/samsung/security/fabric/crypto/FabricCrypto$$ExternalSyntheticLambda3;-><init>(Ljava/lang/String;Ljava/util/Collection;)V

    invoke-direct {p0, v0}, Lcom/samsung/security/fabric/crypto/FabricCrypto;->handleRemoteExceptionWithRetry(Lcom/samsung/security/fabric/crypto/FabricCrypto$CheckedRemoteRequest;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public generateKeyPQ(Ljava/lang/String;Ljava/util/Collection;)I
    .locals 1
    .param p1, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Lcom/samsung/security/fabric/cryptod/KeyParameter;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/security/fabric/crypto/FabricCryptoException;
        }
    .end annotation

    .line 181
    .local p2, "args":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/samsung/security/fabric/cryptod/KeyParameter;>;"
    new-instance v0, Lcom/samsung/security/fabric/crypto/FabricCrypto$$ExternalSyntheticLambda33;

    invoke-direct {v0, p1, p2}, Lcom/samsung/security/fabric/crypto/FabricCrypto$$ExternalSyntheticLambda33;-><init>(Ljava/lang/String;Ljava/util/Collection;)V

    invoke-direct {p0, v0}, Lcom/samsung/security/fabric/crypto/FabricCrypto;->handleRemoteExceptionWithRetry(Lcom/samsung/security/fabric/crypto/FabricCrypto$CheckedRemoteRequest;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getPQEncapKey(Ljava/lang/String;)[B
    .locals 1
    .param p1, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/security/fabric/crypto/FabricCryptoException;
        }
    .end annotation

    .line 154
    new-instance v0, Lcom/samsung/security/fabric/crypto/FabricCrypto$$ExternalSyntheticLambda29;

    invoke-direct {v0, p1}, Lcom/samsung/security/fabric/crypto/FabricCrypto$$ExternalSyntheticLambda29;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/samsung/security/fabric/crypto/FabricCrypto;->handleRemoteExceptionWithRetry(Lcom/samsung/security/fabric/crypto/FabricCrypto$CheckedRemoteRequest;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public getPublicKey(Ljava/lang/String;)[B
    .locals 1
    .param p1, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/security/fabric/crypto/FabricCryptoException;
        }
    .end annotation

    .line 145
    new-instance v0, Lcom/samsung/security/fabric/crypto/FabricCrypto$$ExternalSyntheticLambda34;

    invoke-direct {v0, p1}, Lcom/samsung/security/fabric/crypto/FabricCrypto$$ExternalSyntheticLambda34;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/samsung/security/fabric/crypto/FabricCrypto;->handleRemoteExceptionWithRetry(Lcom/samsung/security/fabric/crypto/FabricCrypto$CheckedRemoteRequest;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public importData(Ljava/lang/String;[BLjava/lang/String;Ljava/util/Collection;[B)I
    .locals 6
    .param p1, "wrappedDataAlias"    # Ljava/lang/String;
    .param p2, "wrappedData"    # [B
    .param p3, "wrappingKeyAlias"    # Ljava/lang/String;
    .param p5, "aad"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Lcom/samsung/security/fabric/cryptod/KeyParameter;",
            ">;[B)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/security/fabric/crypto/FabricCryptoException;
        }
    .end annotation

    .line 508
    .local p4, "args":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/samsung/security/fabric/cryptod/KeyParameter;>;"
    new-instance v0, Lcom/samsung/security/fabric/crypto/FabricCrypto$$ExternalSyntheticLambda17;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .end local p1    # "wrappedDataAlias":Ljava/lang/String;
    .end local p2    # "wrappedData":[B
    .end local p3    # "wrappingKeyAlias":Ljava/lang/String;
    .end local p4    # "args":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/samsung/security/fabric/cryptod/KeyParameter;>;"
    .end local p5    # "aad":[B
    .local v1, "wrappedDataAlias":Ljava/lang/String;
    .local v2, "wrappedData":[B
    .local v3, "wrappingKeyAlias":Ljava/lang/String;
    .local v4, "args":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/samsung/security/fabric/cryptod/KeyParameter;>;"
    .local v5, "aad":[B
    invoke-direct/range {v0 .. v5}, Lcom/samsung/security/fabric/crypto/FabricCrypto$$ExternalSyntheticLambda17;-><init>(Ljava/lang/String;[BLjava/lang/String;Ljava/util/Collection;[B)V

    invoke-direct {p0, v0}, Lcom/samsung/security/fabric/crypto/FabricCrypto;->handleRemoteExceptionWithRetry(Lcom/samsung/security/fabric/crypto/FabricCrypto$CheckedRemoteRequest;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public importKey(Ljava/lang/String;[BLjava/lang/String;[B)I
    .locals 1
    .param p1, "wrappedKeyAlias"    # Ljava/lang/String;
    .param p2, "wrappedKey"    # [B
    .param p3, "wrappingKeyAlias"    # Ljava/lang/String;
    .param p4, "aad"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/security/fabric/crypto/FabricCryptoException;
        }
    .end annotation

    .line 308
    new-instance v0, Lcom/samsung/security/fabric/crypto/FabricCrypto$$ExternalSyntheticLambda21;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/samsung/security/fabric/crypto/FabricCrypto$$ExternalSyntheticLambda21;-><init>(Ljava/lang/String;[BLjava/lang/String;[B)V

    invoke-direct {p0, v0}, Lcom/samsung/security/fabric/crypto/FabricCrypto;->handleRemoteExceptionWithRetry(Lcom/samsung/security/fabric/crypto/FabricCrypto$CheckedRemoteRequest;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public importKeyWithPassword(Ljava/lang/String;[B[B[B)I
    .locals 1
    .param p1, "wrappedKeyAlias"    # Ljava/lang/String;
    .param p2, "wrappedKey"    # [B
    .param p3, "password"    # [B
    .param p4, "aad"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/security/fabric/crypto/FabricCryptoException;
        }
    .end annotation

    .line 318
    new-instance v0, Lcom/samsung/security/fabric/crypto/FabricCrypto$$ExternalSyntheticLambda12;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/samsung/security/fabric/crypto/FabricCrypto$$ExternalSyntheticLambda12;-><init>(Ljava/lang/String;[B[B[B)V

    invoke-direct {p0, v0}, Lcom/samsung/security/fabric/crypto/FabricCrypto;->handleRemoteExceptionWithRetry(Lcom/samsung/security/fabric/crypto/FabricCrypto$CheckedRemoteRequest;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public keyAgreement(Ljava/lang/String;[BLjava/lang/String;[B[BLjava/util/Collection;)I
    .locals 7
    .param p1, "privateKeyAlias"    # Ljava/lang/String;
    .param p2, "publicKey"    # [B
    .param p3, "secretKeyAlias"    # Ljava/lang/String;
    .param p4, "label"    # [B
    .param p5, "context"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B",
            "Ljava/lang/String;",
            "[B[B",
            "Ljava/util/Collection<",
            "Lcom/samsung/security/fabric/cryptod/KeyParameter;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/security/fabric/crypto/FabricCryptoException;
        }
    .end annotation

    .line 379
    .local p6, "args":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/samsung/security/fabric/cryptod/KeyParameter;>;"
    new-instance v0, Lcom/samsung/security/fabric/crypto/FabricCrypto$$ExternalSyntheticLambda6;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .end local p1    # "privateKeyAlias":Ljava/lang/String;
    .end local p2    # "publicKey":[B
    .end local p3    # "secretKeyAlias":Ljava/lang/String;
    .end local p4    # "label":[B
    .end local p5    # "context":[B
    .end local p6    # "args":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/samsung/security/fabric/cryptod/KeyParameter;>;"
    .local v1, "privateKeyAlias":Ljava/lang/String;
    .local v2, "publicKey":[B
    .local v3, "secretKeyAlias":Ljava/lang/String;
    .local v4, "label":[B
    .local v5, "context":[B
    .local v6, "args":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/samsung/security/fabric/cryptod/KeyParameter;>;"
    invoke-direct/range {v0 .. v6}, Lcom/samsung/security/fabric/crypto/FabricCrypto$$ExternalSyntheticLambda6;-><init>(Ljava/lang/String;[BLjava/lang/String;[B[BLjava/util/Collection;)V

    invoke-direct {p0, v0}, Lcom/samsung/security/fabric/crypto/FabricCrypto;->handleRemoteExceptionWithRetry(Lcom/samsung/security/fabric/crypto/FabricCrypto$CheckedRemoteRequest;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public keyAgreementPQdecap(Ljava/lang/String;[BLjava/lang/String;[BLjava/lang/String;[B[BLjava/util/Collection;)I
    .locals 9
    .param p1, "decapKeyAlias"    # Ljava/lang/String;
    .param p2, "cipherText"    # [B
    .param p3, "privateKeyAlias"    # Ljava/lang/String;
    .param p4, "publicKey"    # [B
    .param p5, "secretKeyAlias"    # Ljava/lang/String;
    .param p6, "label"    # [B
    .param p7, "context"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B",
            "Ljava/lang/String;",
            "[B",
            "Ljava/lang/String;",
            "[B[B",
            "Ljava/util/Collection<",
            "Lcom/samsung/security/fabric/cryptod/KeyParameter;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/security/fabric/crypto/FabricCryptoException;
        }
    .end annotation

    .line 406
    .local p8, "args":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/samsung/security/fabric/cryptod/KeyParameter;>;"
    new-instance v0, Lcom/samsung/security/fabric/crypto/FabricCrypto$$ExternalSyntheticLambda11;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lcom/samsung/security/fabric/crypto/FabricCrypto$$ExternalSyntheticLambda11;-><init>(Ljava/lang/String;[BLjava/lang/String;[BLjava/lang/String;[B[BLjava/util/Collection;)V

    invoke-direct {p0, v0}, Lcom/samsung/security/fabric/crypto/FabricCrypto;->handleRemoteExceptionWithRetry(Lcom/samsung/security/fabric/crypto/FabricCrypto$CheckedRemoteRequest;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public keyAgreementPQencap([BLjava/lang/String;[BLjava/lang/String;[B[BLjava/util/Collection;)[B
    .locals 8
    .param p1, "encapKey"    # [B
    .param p2, "privateKeyAlias"    # Ljava/lang/String;
    .param p3, "publicKey"    # [B
    .param p4, "secretKeyAlias"    # Ljava/lang/String;
    .param p5, "label"    # [B
    .param p6, "context"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/lang/String;",
            "[B",
            "Ljava/lang/String;",
            "[B[B",
            "Ljava/util/Collection<",
            "Lcom/samsung/security/fabric/cryptod/KeyParameter;",
            ">;)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/security/fabric/crypto/FabricCryptoException;
        }
    .end annotation

    .line 392
    .local p7, "args":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/samsung/security/fabric/cryptod/KeyParameter;>;"
    new-instance v0, Lcom/samsung/security/fabric/crypto/FabricCrypto$$ExternalSyntheticLambda13;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    .end local p1    # "encapKey":[B
    .end local p2    # "privateKeyAlias":Ljava/lang/String;
    .end local p3    # "publicKey":[B
    .end local p4    # "secretKeyAlias":Ljava/lang/String;
    .end local p5    # "label":[B
    .end local p6    # "context":[B
    .end local p7    # "args":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/samsung/security/fabric/cryptod/KeyParameter;>;"
    .local v1, "encapKey":[B
    .local v2, "privateKeyAlias":Ljava/lang/String;
    .local v3, "publicKey":[B
    .local v4, "secretKeyAlias":Ljava/lang/String;
    .local v5, "label":[B
    .local v6, "context":[B
    .local v7, "args":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/samsung/security/fabric/cryptod/KeyParameter;>;"
    invoke-direct/range {v0 .. v7}, Lcom/samsung/security/fabric/crypto/FabricCrypto$$ExternalSyntheticLambda13;-><init>([BLjava/lang/String;[BLjava/lang/String;[B[BLjava/util/Collection;)V

    invoke-direct {p0, v0}, Lcom/samsung/security/fabric/crypto/FabricCrypto;->handleRemoteExceptionWithRetry(Lcom/samsung/security/fabric/crypto/FabricCrypto$CheckedRemoteRequest;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    return-object p1
.end method

.method public keyDerivation([BI)[B
    .locals 1
    .param p1, "input"    # [B
    .param p2, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/security/fabric/crypto/FabricCryptoException;
        }
    .end annotation

    .line 447
    new-instance v0, Lcom/samsung/security/fabric/crypto/FabricCrypto$$ExternalSyntheticLambda36;

    invoke-direct {v0, p1, p2}, Lcom/samsung/security/fabric/crypto/FabricCrypto$$ExternalSyntheticLambda36;-><init>([BI)V

    invoke-direct {p0, v0}, Lcom/samsung/security/fabric/crypto/FabricCrypto;->handleRemoteExceptionWithRetry(Lcom/samsung/security/fabric/crypto/FabricCrypto$CheckedRemoteRequest;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public keyDerivationAlias([BLjava/lang/String;Ljava/lang/String;Ljava/util/Collection;)I
    .locals 1
    .param p1, "label"    # [B
    .param p2, "inputAlias"    # Ljava/lang/String;
    .param p3, "outputAlias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Lcom/samsung/security/fabric/cryptod/KeyParameter;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/security/fabric/crypto/FabricCryptoException;
        }
    .end annotation

    .line 421
    .local p4, "args":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/samsung/security/fabric/cryptod/KeyParameter;>;"
    new-instance v0, Lcom/samsung/security/fabric/crypto/FabricCrypto$$ExternalSyntheticLambda18;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/samsung/security/fabric/crypto/FabricCrypto$$ExternalSyntheticLambda18;-><init>([BLjava/lang/String;Ljava/lang/String;Ljava/util/Collection;)V

    invoke-direct {p0, v0}, Lcom/samsung/security/fabric/crypto/FabricCrypto;->handleRemoteExceptionWithRetry(Lcom/samsung/security/fabric/crypto/FabricCrypto$CheckedRemoteRequest;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public keyDerivationAlias([B[BLjava/lang/String;Ljava/lang/String;Ljava/util/Collection;)I
    .locals 6
    .param p1, "label"    # [B
    .param p2, "context"    # [B
    .param p3, "inputAlias"    # Ljava/lang/String;
    .param p4, "outputAlias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[B",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Lcom/samsung/security/fabric/cryptod/KeyParameter;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/security/fabric/crypto/FabricCryptoException;
        }
    .end annotation

    .line 436
    .local p5, "args":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/samsung/security/fabric/cryptod/KeyParameter;>;"
    new-instance v0, Lcom/samsung/security/fabric/crypto/FabricCrypto$$ExternalSyntheticLambda1;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .end local p1    # "label":[B
    .end local p2    # "context":[B
    .end local p3    # "inputAlias":Ljava/lang/String;
    .end local p4    # "outputAlias":Ljava/lang/String;
    .end local p5    # "args":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/samsung/security/fabric/cryptod/KeyParameter;>;"
    .local v1, "label":[B
    .local v2, "context":[B
    .local v3, "inputAlias":Ljava/lang/String;
    .local v4, "outputAlias":Ljava/lang/String;
    .local v5, "args":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/samsung/security/fabric/cryptod/KeyParameter;>;"
    invoke-direct/range {v0 .. v5}, Lcom/samsung/security/fabric/crypto/FabricCrypto$$ExternalSyntheticLambda1;-><init>([B[BLjava/lang/String;Ljava/lang/String;Ljava/util/Collection;)V

    invoke-direct {p0, v0}, Lcom/samsung/security/fabric/crypto/FabricCrypto;->handleRemoteExceptionWithRetry(Lcom/samsung/security/fabric/crypto/FabricCrypto$CheckedRemoteRequest;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public keyRecovery(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B)I
    .locals 6
    .param p1, "rkAlias"    # Ljava/lang/String;
    .param p2, "cekAlias"    # Ljava/lang/String;
    .param p3, "sTAAlias"    # Ljava/lang/String;
    .param p4, "wk"    # [B
    .param p5, "eCeRk"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/security/fabric/crypto/FabricCryptoException;
        }
    .end annotation

    .line 467
    new-instance v0, Lcom/samsung/security/fabric/crypto/FabricCrypto$$ExternalSyntheticLambda31;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .end local p1    # "rkAlias":Ljava/lang/String;
    .end local p2    # "cekAlias":Ljava/lang/String;
    .end local p3    # "sTAAlias":Ljava/lang/String;
    .end local p4    # "wk":[B
    .end local p5    # "eCeRk":[B
    .local v1, "rkAlias":Ljava/lang/String;
    .local v2, "cekAlias":Ljava/lang/String;
    .local v3, "sTAAlias":Ljava/lang/String;
    .local v4, "wk":[B
    .local v5, "eCeRk":[B
    invoke-direct/range {v0 .. v5}, Lcom/samsung/security/fabric/crypto/FabricCrypto$$ExternalSyntheticLambda31;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B)V

    invoke-direct {p0, v0}, Lcom/samsung/security/fabric/crypto/FabricCrypto;->handleRemoteExceptionWithRetry(Lcom/samsung/security/fabric/crypto/FabricCrypto$CheckedRemoteRequest;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public keyRegister(Ljava/lang/String;Ljava/lang/String;[B[B)[B
    .locals 1
    .param p1, "rkAlias"    # Ljava/lang/String;
    .param p2, "cekAlias"    # Ljava/lang/String;
    .param p3, "wk"    # [B
    .param p4, "HSMpkey"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/security/fabric/crypto/FabricCryptoException;
        }
    .end annotation

    .line 457
    new-instance v0, Lcom/samsung/security/fabric/crypto/FabricCrypto$$ExternalSyntheticLambda28;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/samsung/security/fabric/crypto/FabricCrypto$$ExternalSyntheticLambda28;-><init>(Ljava/lang/String;Ljava/lang/String;[B[B)V

    invoke-direct {p0, v0}, Lcom/samsung/security/fabric/crypto/FabricCrypto;->handleRemoteExceptionWithRetry(Lcom/samsung/security/fabric/crypto/FabricCrypto$CheckedRemoteRequest;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public list()[Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/security/fabric/crypto/FabricCryptoException;
        }
    .end annotation

    .line 196
    new-instance v0, Lcom/samsung/security/fabric/crypto/FabricCrypto$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/samsung/security/fabric/crypto/FabricCrypto$$ExternalSyntheticLambda4;-><init>()V

    invoke-direct {p0, v0}, Lcom/samsung/security/fabric/crypto/FabricCrypto;->handleRemoteExceptionWithRetry(Lcom/samsung/security/fabric/crypto/FabricCrypto$CheckedRemoteRequest;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public signBegin(Ljava/lang/String;Ljava/util/Collection;)I
    .locals 1
    .param p1, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Lcom/samsung/security/fabric/cryptod/KeyParameter;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/security/fabric/crypto/FabricCryptoException;
        }
    .end annotation

    .line 280
    .local p2, "args":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/samsung/security/fabric/cryptod/KeyParameter;>;"
    new-instance v0, Lcom/samsung/security/fabric/crypto/FabricCrypto$$ExternalSyntheticLambda19;

    invoke-direct {v0, p1, p2}, Lcom/samsung/security/fabric/crypto/FabricCrypto$$ExternalSyntheticLambda19;-><init>(Ljava/lang/String;Ljava/util/Collection;)V

    invoke-direct {p0, v0}, Lcom/samsung/security/fabric/crypto/FabricCrypto;->handleRemoteExceptionWithRetry(Lcom/samsung/security/fabric/crypto/FabricCrypto$CheckedRemoteRequest;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public signFinish([BI)[B
    .locals 1
    .param p1, "input"    # [B
    .param p2, "opHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/security/fabric/crypto/FabricCryptoException;
        }
    .end annotation

    .line 298
    new-instance v0, Lcom/samsung/security/fabric/crypto/FabricCrypto$$ExternalSyntheticLambda14;

    invoke-direct {v0, p1, p2}, Lcom/samsung/security/fabric/crypto/FabricCrypto$$ExternalSyntheticLambda14;-><init>([BI)V

    invoke-direct {p0, v0}, Lcom/samsung/security/fabric/crypto/FabricCrypto;->handleRemoteExceptionWithRetry(Lcom/samsung/security/fabric/crypto/FabricCrypto$CheckedRemoteRequest;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public signUpdate([BI)I
    .locals 1
    .param p1, "input"    # [B
    .param p2, "opHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/security/fabric/crypto/FabricCryptoException;
        }
    .end annotation

    .line 289
    new-instance v0, Lcom/samsung/security/fabric/crypto/FabricCrypto$$ExternalSyntheticLambda9;

    invoke-direct {v0, p1, p2}, Lcom/samsung/security/fabric/crypto/FabricCrypto$$ExternalSyntheticLambda9;-><init>([BI)V

    invoke-direct {p0, v0}, Lcom/samsung/security/fabric/crypto/FabricCrypto;->handleRemoteExceptionWithRetry(Lcom/samsung/security/fabric/crypto/FabricCrypto$CheckedRemoteRequest;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method
