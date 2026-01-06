.class Lcom/samsung/android/mcf/McfBleAdapterImpl;
.super Lcom/samsung/android/mcf/AbstractClient;
.source "McfBleAdapterImpl.java"

# interfaces
.implements Lcom/samsung/android/mcf/McfBleAdapter;


# static fields
.field private static final BASE_UUID:Landroid/os/ParcelUuid;

.field private static final FLAGS_FIELD_BYTES:I = 0x3

.field private static final MANUFACTURER_SPECIFIC_DATA_LENGTH:I = 0x2

.field private static final MAX_ADVERTISE_COUNT:I = 0x5

.field private static final MAX_LEGACY_ADVERTISING_DATA_BYTES:I = 0x1f

.field private static final OVERHEAD_BYTES_PER_FIELD:I = 0x2

.field private static final UUID_BYTES_128_BIT:I = 0x10

.field private static final UUID_BYTES_16_BIT:I = 0x2

.field private static final UUID_BYTES_32_BIT:I = 0x4


# instance fields
.field private final mAdvertiseCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lcom/samsung/android/mcf/ble/BleAdvertiseCallback;",
            "Lcom/samsung/android/mcf/ble/wrapper/BleAdvertiseCallbackWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private final mBleAdvertiser:Lcom/samsung/android/mcf/ble/BleAdvertiser;

.field private final mBleScanner:Lcom/samsung/android/mcf/ble/BleScanner;

.field private final mCallback:Lcom/samsung/android/mcf/ble/wrapper/BleAdapterCallbackWrapper;

.field private final mScanCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lcom/samsung/android/mcf/ble/BleScanCallback;",
            "Lcom/samsung/android/mcf/ble/wrapper/BleScanCallbackWrapper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    const-string v0, "00000000-0000-1000-8000-00805F9B34FB"

    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/mcf/McfBleAdapterImpl;->BASE_UUID:Landroid/os/ParcelUuid;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;ILcom/samsung/android/mcf/ble/BleAdapterCallback;Lcom/samsung/android/mcf/IMcfService;Lcom/samsung/android/mcf/AbstractClient$StatusListener;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appId"    # I
    .param p3, "callback"    # Lcom/samsung/android/mcf/ble/BleAdapterCallback;
    .param p4, "service"    # Lcom/samsung/android/mcf/IMcfService;
    .param p5, "listener"    # Lcom/samsung/android/mcf/AbstractClient$StatusListener;

    .line 68
    const-string v3, "McfBleAdapterImpl"

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p4

    move-object v5, p5

    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "appId":I
    .end local p4    # "service":Lcom/samsung/android/mcf/IMcfService;
    .end local p5    # "listener":Lcom/samsung/android/mcf/AbstractClient$StatusListener;
    .local v1, "context":Landroid/content/Context;
    .local v2, "appId":I
    .local v4, "service":Lcom/samsung/android/mcf/IMcfService;
    .local v5, "listener":Lcom/samsung/android/mcf/AbstractClient$StatusListener;
    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/mcf/AbstractClient;-><init>(Landroid/content/Context;ILjava/lang/String;Lcom/samsung/android/mcf/IMcfService;Lcom/samsung/android/mcf/AbstractClient$StatusListener;)V

    .line 176
    new-instance p1, Lcom/samsung/android/mcf/McfBleAdapterImpl$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/mcf/McfBleAdapterImpl$1;-><init>(Lcom/samsung/android/mcf/McfBleAdapterImpl;)V

    iput-object p1, v0, Lcom/samsung/android/mcf/McfBleAdapterImpl;->mBleAdvertiser:Lcom/samsung/android/mcf/ble/BleAdvertiser;

    .line 243
    new-instance p1, Lcom/samsung/android/mcf/McfBleAdapterImpl$2;

    invoke-direct {p1, p0}, Lcom/samsung/android/mcf/McfBleAdapterImpl$2;-><init>(Lcom/samsung/android/mcf/McfBleAdapterImpl;)V

    iput-object p1, v0, Lcom/samsung/android/mcf/McfBleAdapterImpl;->mBleScanner:Lcom/samsung/android/mcf/ble/BleScanner;

    .line 69
    new-instance p1, Lcom/samsung/android/mcf/ble/wrapper/BleAdapterCallbackWrapper;

    iget-object p2, v0, Lcom/samsung/android/mcf/McfBleAdapterImpl;->mCallbackMonitor:Lcom/samsung/android/mcf/mcfwrapper/CallbackMonitor;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p4, Lcom/samsung/android/mcf/McfBleAdapterImpl$$ExternalSyntheticLambda0;

    invoke-direct {p4, p2}, Lcom/samsung/android/mcf/McfBleAdapterImpl$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/mcf/mcfwrapper/CallbackMonitor;)V

    invoke-direct {p1, p3, p4}, Lcom/samsung/android/mcf/ble/wrapper/BleAdapterCallbackWrapper;-><init>(Lcom/samsung/android/mcf/ble/BleAdapterCallback;Ljava/util/function/BiPredicate;)V

    iput-object p1, v0, Lcom/samsung/android/mcf/McfBleAdapterImpl;->mCallback:Lcom/samsung/android/mcf/ble/wrapper/BleAdapterCallbackWrapper;

    .line 70
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, v0, Lcom/samsung/android/mcf/McfBleAdapterImpl;->mScanCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 71
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 p2, 0x5

    invoke-direct {p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object p1, v0, Lcom/samsung/android/mcf/McfBleAdapterImpl;->mAdvertiseCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 72
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/mcf/McfBleAdapterImpl;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/mcf/McfBleAdapterImpl;

    .line 38
    iget-object v0, p0, Lcom/samsung/android/mcf/McfBleAdapterImpl;->mAdvertiseCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/mcf/McfBleAdapterImpl;Lcom/samsung/android/mcf/ble/BleAdvertiseData;Z)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/mcf/McfBleAdapterImpl;
    .param p1, "x1"    # Lcom/samsung/android/mcf/ble/BleAdvertiseData;
    .param p2, "x2"    # Z

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/mcf/McfBleAdapterImpl;->totalBytes(Lcom/samsung/android/mcf/ble/BleAdvertiseData;Z)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/samsung/android/mcf/McfBleAdapterImpl;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/mcf/McfBleAdapterImpl;

    .line 38
    iget-object v0, p0, Lcom/samsung/android/mcf/McfBleAdapterImpl;->mScanCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method private static byteLength([B)I
    .locals 1
    .param p0, "array"    # [B

    .line 433
    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    array-length v0, p0

    :goto_0
    return v0
.end method

.method private static getServiceIdentifierFromParcelUuid(Landroid/os/ParcelUuid;)I
    .locals 5
    .param p0, "parcelUuid"    # Landroid/os/ParcelUuid;

    .line 427
    invoke-virtual {p0}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v0

    .line 428
    .local v0, "uuid":Ljava/util/UUID;
    invoke-virtual {v0}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v1

    const-wide v3, -0x100000000L

    and-long/2addr v1, v3

    const/16 v3, 0x20

    ushr-long/2addr v1, v3

    .line 429
    .local v1, "value":J
    long-to-int v3, v1

    return v3
.end method

.method private static is16BitUuid(Landroid/os/ParcelUuid;)Z
    .locals 7
    .param p0, "parcelUuid"    # Landroid/os/ParcelUuid;

    .line 374
    invoke-virtual {p0}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v0

    .line 375
    .local v0, "uuid":Ljava/util/UUID;
    invoke-virtual {v0}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v1

    sget-object v3, Lcom/samsung/android/mcf/McfBleAdapterImpl;->BASE_UUID:Landroid/os/ParcelUuid;

    invoke-virtual {v3}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v3

    cmp-long v1, v1, v3

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 376
    return v2

    .line 378
    :cond_0
    invoke-virtual {v0}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v3

    const-wide v5, -0xffff00000001L

    and-long/2addr v3, v5

    const-wide/16 v5, 0x1000

    cmp-long v1, v3, v5

    if-nez v1, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method private static is32BitUuid(Landroid/os/ParcelUuid;)Z
    .locals 7
    .param p0, "parcelUuid"    # Landroid/os/ParcelUuid;

    .line 382
    invoke-virtual {p0}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v0

    .line 383
    .local v0, "uuid":Ljava/util/UUID;
    invoke-virtual {v0}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v1

    sget-object v3, Lcom/samsung/android/mcf/McfBleAdapterImpl;->BASE_UUID:Landroid/os/ParcelUuid;

    invoke-virtual {v3}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v3

    cmp-long v1, v1, v3

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 384
    return v2

    .line 386
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/mcf/McfBleAdapterImpl;->is16BitUuid(Landroid/os/ParcelUuid;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 387
    return v2

    .line 389
    :cond_1
    invoke-virtual {v0}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v3

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    const-wide/16 v5, 0x1000

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    const/4 v2, 0x1

    :cond_2
    return v2
.end method

.method private stopAllAdvertise()V
    .locals 4

    .line 322
    iget-object v0, p0, Lcom/samsung/android/mcf/McfBleAdapterImpl;->mAdvertiseCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 323
    .local v0, "callbacks":Ljava/util/Set;, "Ljava/util/Set<Lcom/samsung/android/mcf/ble/BleAdvertiseCallback;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/mcf/ble/BleAdvertiseCallback;

    .line 324
    .local v2, "callback":Lcom/samsung/android/mcf/ble/BleAdvertiseCallback;
    iget-object v3, p0, Lcom/samsung/android/mcf/McfBleAdapterImpl;->mBleAdvertiser:Lcom/samsung/android/mcf/ble/BleAdvertiser;

    invoke-interface {v3, v2}, Lcom/samsung/android/mcf/ble/BleAdvertiser;->stopAdvertise(Lcom/samsung/android/mcf/ble/BleAdvertiseCallback;)Z

    .line 325
    .end local v2    # "callback":Lcom/samsung/android/mcf/ble/BleAdvertiseCallback;
    goto :goto_0

    .line 326
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/mcf/McfBleAdapterImpl;->mAdvertiseCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 327
    return-void
.end method

.method private stopAllScan()V
    .locals 4

    .line 314
    iget-object v0, p0, Lcom/samsung/android/mcf/McfBleAdapterImpl;->mScanCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 315
    .local v0, "callbacks":Ljava/util/Set;, "Ljava/util/Set<Lcom/samsung/android/mcf/ble/BleScanCallback;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/mcf/ble/BleScanCallback;

    .line 316
    .local v2, "callback":Lcom/samsung/android/mcf/ble/BleScanCallback;
    iget-object v3, p0, Lcom/samsung/android/mcf/McfBleAdapterImpl;->mBleScanner:Lcom/samsung/android/mcf/ble/BleScanner;

    invoke-interface {v3, v2}, Lcom/samsung/android/mcf/ble/BleScanner;->stopScan(Lcom/samsung/android/mcf/ble/BleScanCallback;)Z

    .line 317
    .end local v2    # "callback":Lcom/samsung/android/mcf/ble/BleScanCallback;
    goto :goto_0

    .line 318
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/mcf/McfBleAdapterImpl;->mScanCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 319
    return-void
.end method

.method private totalBytes(Lcom/samsung/android/mcf/ble/BleAdvertiseData;Z)I
    .locals 5
    .param p1, "data"    # Lcom/samsung/android/mcf/ble/BleAdvertiseData;
    .param p2, "isFlagsIncluded"    # Z

    .line 331
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 332
    return v0

    .line 335
    :cond_0
    if-eqz p2, :cond_1

    const/4 v0, 0x3

    .line 336
    .local v0, "size":I
    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/mcf/ble/BleAdvertiseData;->getServiceUuid()Landroid/os/ParcelUuid;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 337
    const/4 v1, 0x0

    .line 338
    .local v1, "num16BitUuids":I
    const/4 v2, 0x0

    .line 339
    .local v2, "num32BitUuids":I
    const/4 v3, 0x0

    .line 340
    .local v3, "num128BitUuids":I
    invoke-virtual {p1}, Lcom/samsung/android/mcf/ble/BleAdvertiseData;->getServiceUuid()Landroid/os/ParcelUuid;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/mcf/McfBleAdapterImpl;->is16BitUuid(Landroid/os/ParcelUuid;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 341
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 342
    :cond_2
    invoke-virtual {p1}, Lcom/samsung/android/mcf/ble/BleAdvertiseData;->getServiceUuid()Landroid/os/ParcelUuid;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/mcf/McfBleAdapterImpl;->is32BitUuid(Landroid/os/ParcelUuid;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 343
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 345
    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 348
    :goto_0
    if-eqz v1, :cond_4

    .line 349
    mul-int/lit8 v4, v1, 0x2

    add-int/lit8 v4, v4, 0x2

    add-int/2addr v0, v4

    .line 352
    :cond_4
    if-eqz v2, :cond_5

    .line 353
    mul-int/lit8 v4, v2, 0x4

    add-int/lit8 v4, v4, 0x2

    add-int/2addr v0, v4

    .line 356
    :cond_5
    if-eqz v3, :cond_6

    .line 357
    mul-int/lit8 v4, v3, 0x10

    add-int/lit8 v4, v4, 0x2

    add-int/2addr v0, v4

    .line 360
    .end local v1    # "num16BitUuids":I
    .end local v2    # "num32BitUuids":I
    .end local v3    # "num128BitUuids":I
    :cond_6
    invoke-virtual {p1}, Lcom/samsung/android/mcf/ble/BleAdvertiseData;->getServiceDataUuid()Landroid/os/ParcelUuid;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 361
    invoke-virtual {p1}, Lcom/samsung/android/mcf/ble/BleAdvertiseData;->getServiceDataUuid()Landroid/os/ParcelUuid;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/mcf/McfBleAdapterImpl;->uuidToBytes(Landroid/os/ParcelUuid;)[B

    move-result-object v1

    array-length v1, v1

    .line 362
    .local v1, "uuidLen":I
    add-int/lit8 v2, v1, 0x2

    invoke-virtual {p1}, Lcom/samsung/android/mcf/ble/BleAdvertiseData;->getServiceData()[B

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/mcf/McfBleAdapterImpl;->byteLength([B)I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v0, v2

    .line 364
    .end local v1    # "uuidLen":I
    :cond_7
    invoke-virtual {p1}, Lcom/samsung/android/mcf/ble/BleAdvertiseData;->getManufacturerSpecificData()[B

    move-result-object v1

    if-eqz v1, :cond_8

    .line 365
    invoke-virtual {p1}, Lcom/samsung/android/mcf/ble/BleAdvertiseData;->getManufacturerSpecificData()[B

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/mcf/McfBleAdapterImpl;->byteLength([B)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    .line 367
    :cond_8
    invoke-virtual {p1}, Lcom/samsung/android/mcf/ble/BleAdvertiseData;->getIncludeDeviceName()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 368
    invoke-virtual {p0}, Lcom/samsung/android/mcf/McfBleAdapterImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/mcf/common/Utils;->getName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 370
    :cond_9
    return v0
.end method

.method private static uuidToBytes(Landroid/os/ParcelUuid;)[B
    .locals 9
    .param p0, "uuid"    # Landroid/os/ParcelUuid;

    .line 393
    if-eqz p0, :cond_2

    .line 397
    invoke-static {p0}, Lcom/samsung/android/mcf/McfBleAdapterImpl;->is16BitUuid(Landroid/os/ParcelUuid;)Z

    move-result v0

    const v1, 0xff00

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/16 v4, 0x8

    const/4 v5, 0x0

    if-eqz v0, :cond_0

    .line 398
    new-array v0, v3, [B

    .line 399
    .local v0, "uuidBytes":[B
    invoke-static {p0}, Lcom/samsung/android/mcf/McfBleAdapterImpl;->getServiceIdentifierFromParcelUuid(Landroid/os/ParcelUuid;)I

    move-result v3

    .line 400
    .local v3, "uuidVal":I
    and-int/lit16 v6, v3, 0xff

    int-to-byte v6, v6

    aput-byte v6, v0, v5

    .line 401
    and-int/2addr v1, v3

    shr-int/2addr v1, v4

    int-to-byte v1, v1

    aput-byte v1, v0, v2

    .line 402
    return-object v0

    .line 405
    .end local v0    # "uuidBytes":[B
    .end local v3    # "uuidVal":I
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/mcf/McfBleAdapterImpl;->is32BitUuid(Landroid/os/ParcelUuid;)Z

    move-result v0

    const/16 v6, 0x10

    if-eqz v0, :cond_1

    .line 406
    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 407
    .restart local v0    # "uuidBytes":[B
    invoke-static {p0}, Lcom/samsung/android/mcf/McfBleAdapterImpl;->getServiceIdentifierFromParcelUuid(Landroid/os/ParcelUuid;)I

    move-result v7

    .line 408
    .local v7, "uuidVal":I
    and-int/lit16 v8, v7, 0xff

    int-to-byte v8, v8

    aput-byte v8, v0, v5

    .line 409
    and-int/2addr v1, v7

    shr-int/2addr v1, v4

    int-to-byte v1, v1

    aput-byte v1, v0, v2

    .line 410
    const/high16 v1, 0xff0000

    and-int/2addr v1, v7

    shr-int/2addr v1, v6

    int-to-byte v1, v1

    aput-byte v1, v0, v3

    .line 411
    const/high16 v1, -0x1000000

    and-int/2addr v1, v7

    shr-int/lit8 v1, v1, 0x18

    int-to-byte v1, v1

    const/4 v2, 0x3

    aput-byte v1, v0, v2

    .line 412
    return-object v0

    .line 416
    .end local v0    # "uuidBytes":[B
    .end local v7    # "uuidVal":I
    :cond_1
    invoke-virtual {p0}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v0

    .line 417
    .local v0, "msb":J
    invoke-virtual {p0}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v2

    .line 419
    .local v2, "lsb":J
    new-array v6, v6, [B

    .line 420
    .local v6, "uuidBytes":[B
    invoke-static {v6}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v7

    sget-object v8, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v7, v8}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 421
    .local v7, "buf":Ljava/nio/ByteBuffer;
    invoke-virtual {v7, v4, v0, v1}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    .line 422
    invoke-virtual {v7, v5, v2, v3}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    .line 423
    return-object v6

    .line 394
    .end local v0    # "msb":J
    .end local v2    # "lsb":J
    .end local v6    # "uuidBytes":[B
    .end local v7    # "buf":Ljava/nio/ByteBuffer;
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "uuid cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public close()V
    .locals 0

    .line 99
    invoke-super {p0}, Lcom/samsung/android/mcf/AbstractClient;->close()V

    .line 100
    invoke-virtual {p0}, Lcom/samsung/android/mcf/McfBleAdapterImpl;->closeInternal()V

    .line 101
    return-void
.end method

.method public closeInternal()V
    .locals 4

    .line 108
    iget-object v0, p0, Lcom/samsung/android/mcf/McfBleAdapterImpl;->TAG:Ljava/lang/String;

    const-string v1, ""

    const-string v2, "closeInternal"

    invoke-static {v0, v2, v1}, Lcom/samsung/android/mcf/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    invoke-direct {p0}, Lcom/samsung/android/mcf/McfBleAdapterImpl;->stopAllScan()V

    .line 111
    invoke-direct {p0}, Lcom/samsung/android/mcf/McfBleAdapterImpl;->stopAllAdvertise()V

    .line 113
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 114
    .local v0, "bundle":Landroid/os/Bundle;
    iget-object v1, p0, Lcom/samsung/android/mcf/McfBleAdapterImpl;->mCallback:Lcom/samsung/android/mcf/ble/wrapper/BleAdapterCallbackWrapper;

    invoke-virtual {v1}, Lcom/samsung/android/mcf/ble/wrapper/BleAdapterCallbackWrapper;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const-string v3, "callback"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 115
    const/4 v1, 0x7

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/mcf/McfBleAdapterImpl;->sendMessage(ILandroid/os/Bundle;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 116
    iget-object v1, p0, Lcom/samsung/android/mcf/McfBleAdapterImpl;->TAG:Ljava/lang/String;

    const-string v3, "failed"

    invoke-static {v1, v2, v3}, Lcom/samsung/android/mcf/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/mcf/McfBleAdapterImpl;->invalidateService()V

    .line 119
    return-void
.end method

.method public getBleAdvertise()Lcom/samsung/android/mcf/ble/BleAdvertiser;
    .locals 4

    .line 154
    const-string v0, "getBleAdvertise"

    invoke-static {v0}, Lcom/samsung/android/mcf/common/Feature;->supportBleAdapter(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 155
    return-object v2

    .line 158
    :cond_0
    invoke-static {}, Lcom/samsung/android/mcf/common/VersionUtil;->getBuildSDKVersion()I

    move-result v1

    const/16 v3, 0x1e

    if-gt v1, v3, :cond_1

    .line 160
    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {p0, v1}, Lcom/samsung/android/mcf/McfBleAdapterImpl;->hasNoPermission(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 161
    iget-object v1, p0, Lcom/samsung/android/mcf/McfBleAdapterImpl;->TAG:Ljava/lang/String;

    const-string v3, "Need ACCESS_FINE_LOCATION permission"

    invoke-static {v1, v0, v3}, Lcom/samsung/android/mcf/common/DLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    return-object v2

    .line 166
    :cond_1
    const-string v1, "android.permission.BLUETOOTH_ADVERTISE"

    invoke-virtual {p0, v1}, Lcom/samsung/android/mcf/McfBleAdapterImpl;->hasNoPermission(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 167
    iget-object v0, p0, Lcom/samsung/android/mcf/McfBleAdapterImpl;->TAG:Ljava/lang/String;

    const-string v1, "getBleScanner"

    const-string v3, "Need BLUETOOTH_ADVERTISE permission"

    invoke-static {v0, v1, v3}, Lcom/samsung/android/mcf/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    return-object v2

    .line 172
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/mcf/McfBleAdapterImpl;->TAG:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v0, v2}, Lcom/samsung/android/mcf/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    iget-object v0, p0, Lcom/samsung/android/mcf/McfBleAdapterImpl;->mBleAdvertiser:Lcom/samsung/android/mcf/ble/BleAdvertiser;

    return-object v0
.end method

.method public getBleScanner()Lcom/samsung/android/mcf/ble/BleScanner;
    .locals 4

    .line 130
    const-string v0, "getBleScanner"

    invoke-static {v0}, Lcom/samsung/android/mcf/common/Feature;->supportBleAdapter(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 131
    return-object v2

    .line 134
    :cond_0
    invoke-static {}, Lcom/samsung/android/mcf/common/VersionUtil;->getBuildSDKVersion()I

    move-result v1

    const/16 v3, 0x1e

    if-gt v1, v3, :cond_1

    .line 136
    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {p0, v1}, Lcom/samsung/android/mcf/McfBleAdapterImpl;->hasNoPermission(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 137
    iget-object v1, p0, Lcom/samsung/android/mcf/McfBleAdapterImpl;->TAG:Ljava/lang/String;

    const-string v3, "Need ACCESS_FINE_LOCATION permission"

    invoke-static {v1, v0, v3}, Lcom/samsung/android/mcf/common/DLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    return-object v2

    .line 142
    :cond_1
    const-string v1, "android.permission.BLUETOOTH_SCAN"

    invoke-virtual {p0, v1}, Lcom/samsung/android/mcf/McfBleAdapterImpl;->hasNoPermission(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 143
    iget-object v1, p0, Lcom/samsung/android/mcf/McfBleAdapterImpl;->TAG:Ljava/lang/String;

    const-string v3, "Need BLUETOOTH_SCAN permission"

    invoke-static {v1, v0, v3}, Lcom/samsung/android/mcf/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    return-object v2

    .line 148
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/mcf/McfBleAdapterImpl;->TAG:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v0, v2}, Lcom/samsung/android/mcf/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    iget-object v0, p0, Lcom/samsung/android/mcf/McfBleAdapterImpl;->mBleScanner:Lcom/samsung/android/mcf/ble/BleScanner;

    return-object v0
.end method

.method isMine(ILcom/samsung/android/mcf/ble/BleAdapterCallback;)Z
    .locals 1
    .param p1, "appId"    # I
    .param p2, "callback"    # Lcom/samsung/android/mcf/ble/BleAdapterCallback;

    .line 75
    invoke-virtual {p0, p1}, Lcom/samsung/android/mcf/McfBleAdapterImpl;->isMyId(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 76
    const/4 v0, 0x0

    return v0

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/mcf/McfBleAdapterImpl;->mCallback:Lcom/samsung/android/mcf/ble/wrapper/BleAdapterCallbackWrapper;

    invoke-virtual {v0, p2}, Lcom/samsung/android/mcf/ble/wrapper/BleAdapterCallbackWrapper;->isMyCallback(Lcom/samsung/android/mcf/ble/BleAdapterCallback;)Z

    move-result v0

    return v0
.end method

.method public open()I
    .locals 3

    .line 88
    const-string v0, "open"

    invoke-static {v0}, Lcom/samsung/android/mcf/common/Feature;->supportBleAdapter(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 89
    const/4 v0, 0x1

    return v0

    .line 91
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/mcf/McfBleAdapterImpl;->TAG:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v0, v2}, Lcom/samsung/android/mcf/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 93
    .local v0, "bundle":Landroid/os/Bundle;
    iget-object v1, p0, Lcom/samsung/android/mcf/McfBleAdapterImpl;->mCallback:Lcom/samsung/android/mcf/ble/wrapper/BleAdapterCallbackWrapper;

    invoke-virtual {v1}, Lcom/samsung/android/mcf/ble/wrapper/BleAdapterCallbackWrapper;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const-string v2, "callback"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 94
    const/4 v1, 0x6

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/mcf/McfBleAdapterImpl;->sendMessage(ILandroid/os/Bundle;)I

    move-result v1

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/samsung/android/mcf/McfBleAdapterImpl;->mCallback:Lcom/samsung/android/mcf/ble/wrapper/BleAdapterCallbackWrapper;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/samsung/android/mcf/AbstractClient;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
