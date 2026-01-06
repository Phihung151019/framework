.class public Lcom/samsung/android/mcf/external/BluetoothCallHelper;
.super Ljava/lang/Object;
.source "BluetoothCallHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/mcf/external/BluetoothCallHelper$DataReadyCallback;,
        Lcom/samsung/android/mcf/external/BluetoothCallHelper$BluetoothCallDevice;,
        Lcom/samsung/android/mcf/external/BluetoothCallHelper$MfData;
    }
.end annotation


# static fields
.field public static Manufacture:I = 0x0

.field public static final PAIRED_AND_SYNCED_DEVICES:I = 0x1

.field public static final PAIRED_DEVICES_ONLY:I = 0x0

.field private static final TAG:Ljava/lang/String; = "BluetoothCallHelper"

.field public static final scanMask:[B

.field public static final scanfilter:[B


# instance fields
.field private mBondedCallDevice:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/mcf/external/BluetoothCallHelper$BluetoothCallDevice;",
            ">;"
        }
    .end annotation
.end field

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mIsReceiverRegistered:Z

.field private mSyncedCallDevice:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/mcf/external/BluetoothCallHelper$BluetoothCallDevice;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 47
    const/16 v0, 0xa

    new-array v1, v0, [B

    fill-array-data v1, :array_0

    sput-object v1, Lcom/samsung/android/mcf/external/BluetoothCallHelper;->scanfilter:[B

    .line 54
    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/samsung/android/mcf/external/BluetoothCallHelper;->scanMask:[B

    .line 61
    const/16 v0, 0x75

    sput v0, Lcom/samsung/android/mcf/external/BluetoothCallHelper;->Manufacture:I

    return-void

    nop

    :array_0
    .array-data 1
        0x42t
        0x9t
        -0x7ft
        0x2t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x48t
    .end array-data

    nop

    :array_1
    .array-data 1
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x48t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/samsung/android/mcf/external/BluetoothCallHelper$DataReadyCallback;)V
    .locals 5
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "type"    # I
    .param p3, "callback"    # Lcom/samsung/android/mcf/external/BluetoothCallHelper$DataReadyCallback;

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 324
    new-instance v0, Lcom/samsung/android/mcf/external/BluetoothCallHelper$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/mcf/external/BluetoothCallHelper$1;-><init>(Lcom/samsung/android/mcf/external/BluetoothCallHelper;)V

    iput-object v0, p0, Lcom/samsung/android/mcf/external/BluetoothCallHelper;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 346
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/mcf/external/BluetoothCallHelper;->mIsReceiverRegistered:Z

    .line 92
    iput-object p1, p0, Lcom/samsung/android/mcf/external/BluetoothCallHelper;->mContext:Landroid/content/Context;

    .line 93
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/mcf/external/BluetoothCallHelper;->mBondedCallDevice:Ljava/util/HashMap;

    .line 94
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/mcf/external/BluetoothCallHelper;->mSyncedCallDevice:Ljava/util/HashMap;

    .line 96
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 97
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-nez v0, :cond_0

    .line 98
    const-string v1, "checkBondedDeviceList"

    const-string v2, "Fail : can\'t access bluetooth Adapter"

    const-string v3, "BluetoothCallHelper"

    invoke-static {v3, v1, v2}, Lcom/samsung/android/mcf/common/DLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    return-void

    .line 102
    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/samsung/android/mcf/external/BluetoothCallHelper;->updateDeviceList(ILcom/samsung/android/mcf/external/BluetoothCallHelper$DataReadyCallback;)V

    .line 104
    iget-boolean v1, p0, Lcom/samsung/android/mcf/external/BluetoothCallHelper;->mIsReceiverRegistered:Z

    if-nez v1, :cond_1

    .line 105
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/mcf/external/BluetoothCallHelper;->mIsReceiverRegistered:Z

    .line 106
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 107
    .local v1, "filter":Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/samsung/android/mcf/external/BluetoothCallHelper;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/mcf/external/BluetoothCallHelper;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 109
    .end local v1    # "filter":Landroid/content/IntentFilter;
    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/mcf/external/BluetoothCallHelper;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/mcf/external/BluetoothCallHelper;

    .line 40
    invoke-direct {p0}, Lcom/samsung/android/mcf/external/BluetoothCallHelper;->updateBondedDeviceList()V

    return-void
.end method

.method private static getBleMacAddrFromBt(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "btMac"    # Ljava/lang/String;

    .line 299
    const-string v0, ""

    const-string v1, ":"

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 300
    .local v0, "tmp":Ljava/lang/String;
    invoke-static {v0}, Lcom/samsung/android/mcf/common/Utils;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v2

    .line 301
    .local v2, "btMacByte":[B
    array-length v3, v2

    if-nez v3, :cond_0

    .line 302
    const-string v1, "BT_MAC_BYTE_IS_NULL"

    return-object v1

    .line 305
    :cond_0
    const/4 v3, 0x6

    new-array v4, v3, [B

    .line 306
    .local v4, "bleMacByte":[B
    const/4 v5, 0x1

    .local v5, "i":I
    :goto_0
    array-length v6, v4

    if-ge v5, v6, :cond_1

    .line 307
    aget-byte v6, v2, v5

    and-int/lit8 v6, v6, 0x7f

    shl-int/lit8 v6, v6, 0x1

    aget-byte v7, v2, v5

    and-int/lit16 v7, v7, 0x80

    shr-int/lit8 v7, v7, 0x7

    or-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 306
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 309
    .end local v5    # "i":I
    :cond_1
    const/4 v5, 0x0

    aget-byte v6, v2, v5

    or-int/lit8 v6, v6, -0x40

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 312
    invoke-static {v4}, Lcom/samsung/android/mcf/common/Utils;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object v6

    .line 313
    .local v6, "tmpBleMac":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v8, 0x2

    invoke-virtual {v6, v5, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v7, 0x4

    invoke-virtual {v6, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v6, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 314
    const/16 v7, 0x8

    invoke-virtual {v6, v3, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v5, 0xa

    invoke-virtual {v6, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 315
    const/16 v3, 0xc

    invoke-virtual {v6, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 317
    .local v1, "bleMac":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/samsung/android/mcf/common/DLog;->secureMac(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " //"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Lcom/samsung/android/mcf/common/DLog;->secureMac(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "BluetoothCallHelper"

    const-string v7, "getBleMacAddrFromBt :"

    invoke-static {v5, v7, v3}, Lcom/samsung/android/mcf/common/DLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private static isCallSupportDevice([B)Z
    .locals 9
    .param p0, "mfdata"    # [B

    .line 259
    const/4 v0, 0x0

    if-eqz p0, :cond_5

    array-length v1, p0

    const/16 v2, 0x9

    if-ge v1, v2, :cond_0

    goto/16 :goto_0

    .line 263
    :cond_0
    new-instance v1, Lcom/samsung/android/mcf/external/BluetoothCallHelper$MfData;

    invoke-direct {v1, p0}, Lcom/samsung/android/mcf/external/BluetoothCallHelper$MfData;-><init>([B)V

    .line 264
    .local v1, "mData":Lcom/samsung/android/mcf/external/BluetoothCallHelper$MfData;
    invoke-virtual {v1}, Lcom/samsung/android/mcf/external/BluetoothCallHelper$MfData;->getManufacturerRawData()[B

    move-result-object v2

    .line 265
    .local v2, "manufacture":[B
    invoke-virtual {v1}, Lcom/samsung/android/mcf/external/BluetoothCallHelper$MfData;->getDeviceId()[B

    move-result-object v3

    .line 266
    .local v3, "deviceID":[B
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "manu: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Lcom/samsung/android/mcf/common/Utils;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , deviceID:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 267
    invoke-static {v3}, Lcom/samsung/android/mcf/common/Utils;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 266
    const-string v5, "BluetoothCallHelper"

    const-string v6, "isCallSupportDevice"

    invoke-static {v5, v6, v4}, Lcom/samsung/android/mcf/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    aget-byte v4, v3, v0

    if-nez v4, :cond_1

    .line 270
    return v0

    .line 273
    :cond_1
    aget-byte v4, v3, v0

    const/4 v7, 0x1

    if-ne v4, v7, :cond_4

    aget-byte v4, v3, v7

    if-le v4, v7, :cond_4

    .line 275
    aget-byte v4, v3, v0

    if-ne v4, v7, :cond_2

    aget-byte v4, v3, v7

    const/16 v8, 0x16

    if-lt v4, v8, :cond_2

    aget-byte v4, v3, v7

    const/16 v8, 0x18

    if-gt v4, v8, :cond_2

    .line 276
    const-string v0, "Beans"

    invoke-static {v5, v6, v0}, Lcom/samsung/android/mcf/common/DLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    return v7

    .line 280
    :cond_2
    aget-byte v0, v3, v0

    if-ne v0, v7, :cond_3

    aget-byte v0, v3, v7

    const/4 v4, 0x2

    if-lt v0, v4, :cond_3

    aget-byte v0, v3, v7

    const/16 v4, 0xa

    if-gt v0, v4, :cond_3

    .line 281
    const-string v0, "buds+"

    invoke-static {v5, v6, v0}, Lcom/samsung/android/mcf/common/DLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    return v7

    .line 284
    :cond_3
    return v7

    .line 287
    :cond_4
    return v0

    .line 260
    .end local v1    # "mData":Lcom/samsung/android/mcf/external/BluetoothCallHelper$MfData;
    .end local v2    # "manufacture":[B
    .end local v3    # "deviceID":[B
    :cond_5
    :goto_0
    return v0
.end method

.method private updateBondedDeviceList()V
    .locals 7

    .line 218
    iget-object v0, p0, Lcom/samsung/android/mcf/external/BluetoothCallHelper;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/mcf/external/BluetoothBackupDB;->retrieveBackupDataFromDB(Landroid/content/Context;Z)Ljava/util/ArrayList;

    move-result-object v0

    .line 219
    .local v0, "propertyList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/mcf/external/BluetoothBackupDB$DeviceProperty;>;"
    iget-object v1, p0, Lcom/samsung/android/mcf/external/BluetoothCallHelper;->mBondedCallDevice:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 220
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 221
    return-void

    .line 224
    :cond_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    .line 225
    .local v1, "adapter":Landroid/bluetooth/BluetoothAdapter;
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/mcf/external/BluetoothBackupDB$DeviceProperty;

    .line 226
    .local v3, "property":Lcom/samsung/android/mcf/external/BluetoothBackupDB$DeviceProperty;
    if-eqz v3, :cond_1

    iget-object v4, v3, Lcom/samsung/android/mcf/external/BluetoothBackupDB$DeviceProperty;->mManufacturerData:Ljava/lang/String;

    if-eqz v4, :cond_1

    iget-object v4, v3, Lcom/samsung/android/mcf/external/BluetoothBackupDB$DeviceProperty;->mManufacturerData:Ljava/lang/String;

    .line 227
    invoke-static {v4}, Lcom/samsung/android/mcf/common/Utils;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v4

    .line 226
    invoke-static {v4}, Lcom/samsung/android/mcf/external/BluetoothCallHelper;->isCallSupportDevice([B)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 228
    iget-object v4, v3, Lcom/samsung/android/mcf/external/BluetoothBackupDB$DeviceProperty;->mAddress:Ljava/lang/String;

    invoke-static {v4}, Lcom/samsung/android/mcf/external/BluetoothCallHelper;->getBleMacAddrFromBt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 229
    .local v4, "bleMac":Ljava/lang/String;
    new-instance v5, Lcom/samsung/android/mcf/external/BluetoothCallHelper$BluetoothCallDevice;

    iget-object v6, v3, Lcom/samsung/android/mcf/external/BluetoothBackupDB$DeviceProperty;->mAddress:Ljava/lang/String;

    invoke-virtual {v1, v6}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v6

    invoke-direct {v5, v4, v6}, Lcom/samsung/android/mcf/external/BluetoothCallHelper$BluetoothCallDevice;-><init>(Ljava/lang/String;Landroid/bluetooth/BluetoothDevice;)V

    .line 230
    .local v5, "device":Lcom/samsung/android/mcf/external/BluetoothCallHelper$BluetoothCallDevice;
    iget-object v6, p0, Lcom/samsung/android/mcf/external/BluetoothCallHelper;->mBondedCallDevice:Ljava/util/HashMap;

    invoke-virtual {v6, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    .end local v3    # "property":Lcom/samsung/android/mcf/external/BluetoothBackupDB$DeviceProperty;
    .end local v4    # "bleMac":Ljava/lang/String;
    .end local v5    # "device":Lcom/samsung/android/mcf/external/BluetoothCallHelper$BluetoothCallDevice;
    :cond_1
    goto :goto_0

    .line 234
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">> calldevice "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/mcf/external/BluetoothCallHelper;->mBondedCallDevice:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BluetoothCallHelper"

    const-string v4, "updateBondedDeviceList :"

    invoke-static {v3, v4, v2}, Lcom/samsung/android/mcf/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    return-void
.end method

.method private updateDeviceList(ILcom/samsung/android/mcf/external/BluetoothCallHelper$DataReadyCallback;)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "callback"    # Lcom/samsung/android/mcf/external/BluetoothCallHelper$DataReadyCallback;

    .line 112
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/samsung/android/mcf/external/BluetoothCallHelper$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/android/mcf/external/BluetoothCallHelper$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/mcf/external/BluetoothCallHelper;ILcom/samsung/android/mcf/external/BluetoothCallHelper$DataReadyCallback;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 126
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 127
    return-void
.end method

.method private updateSyncedDeviceList()V
    .locals 7

    .line 238
    iget-object v0, p0, Lcom/samsung/android/mcf/external/BluetoothCallHelper;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/mcf/external/BluetoothBackupDB;->retrieveBackupDataFromDB(Landroid/content/Context;Z)Ljava/util/ArrayList;

    move-result-object v0

    .line 239
    .local v0, "propertyList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/mcf/external/BluetoothBackupDB$DeviceProperty;>;"
    iget-object v1, p0, Lcom/samsung/android/mcf/external/BluetoothCallHelper;->mSyncedCallDevice:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 240
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 241
    return-void

    .line 244
    :cond_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    .line 245
    .local v1, "adapter":Landroid/bluetooth/BluetoothAdapter;
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/mcf/external/BluetoothBackupDB$DeviceProperty;

    .line 246
    .local v3, "property":Lcom/samsung/android/mcf/external/BluetoothBackupDB$DeviceProperty;
    if-eqz v3, :cond_1

    iget-object v4, v3, Lcom/samsung/android/mcf/external/BluetoothBackupDB$DeviceProperty;->mManufacturerData:Ljava/lang/String;

    if-eqz v4, :cond_1

    iget-object v4, v3, Lcom/samsung/android/mcf/external/BluetoothBackupDB$DeviceProperty;->mManufacturerData:Ljava/lang/String;

    .line 247
    invoke-static {v4}, Lcom/samsung/android/mcf/common/Utils;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v4

    .line 246
    invoke-static {v4}, Lcom/samsung/android/mcf/external/BluetoothCallHelper;->isCallSupportDevice([B)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 248
    iget-object v4, v3, Lcom/samsung/android/mcf/external/BluetoothBackupDB$DeviceProperty;->mAddress:Ljava/lang/String;

    invoke-static {v4}, Lcom/samsung/android/mcf/external/BluetoothCallHelper;->getBleMacAddrFromBt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 249
    .local v4, "bleMac":Ljava/lang/String;
    new-instance v5, Lcom/samsung/android/mcf/external/BluetoothCallHelper$BluetoothCallDevice;

    iget-object v6, v3, Lcom/samsung/android/mcf/external/BluetoothBackupDB$DeviceProperty;->mAddress:Ljava/lang/String;

    invoke-virtual {v1, v6}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v6

    invoke-direct {v5, v4, v6}, Lcom/samsung/android/mcf/external/BluetoothCallHelper$BluetoothCallDevice;-><init>(Ljava/lang/String;Landroid/bluetooth/BluetoothDevice;)V

    .line 250
    .local v5, "device":Lcom/samsung/android/mcf/external/BluetoothCallHelper$BluetoothCallDevice;
    iget-object v6, p0, Lcom/samsung/android/mcf/external/BluetoothCallHelper;->mSyncedCallDevice:Ljava/util/HashMap;

    invoke-virtual {v6, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    .end local v3    # "property":Lcom/samsung/android/mcf/external/BluetoothBackupDB$DeviceProperty;
    .end local v4    # "bleMac":Ljava/lang/String;
    .end local v5    # "device":Lcom/samsung/android/mcf/external/BluetoothCallHelper$BluetoothCallDevice;
    :cond_1
    goto :goto_0

    .line 254
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">> calldevice "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/mcf/external/BluetoothCallHelper;->mSyncedCallDevice:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BluetoothCallHelper"

    const-string v4, "updateSyncedDeviceList :"

    invoke-static {v3, v4, v2}, Lcom/samsung/android/mcf/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    return-void
.end method


# virtual methods
.method public getBluetoothDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;
    .locals 3
    .param p1, "bleAddress"    # Ljava/lang/String;

    .line 198
    iget-object v0, p0, Lcom/samsung/android/mcf/external/BluetoothCallHelper;->mBondedCallDevice:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "getBluetoothDevice"

    const-string v2, "BluetoothCallHelper"

    if-eqz v0, :cond_0

    .line 199
    const-string v0, "found in bonded Calldevice list "

    invoke-static {v2, v1, v0}, Lcom/samsung/android/mcf/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    iget-object v0, p0, Lcom/samsung/android/mcf/external/BluetoothCallHelper;->mBondedCallDevice:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/mcf/external/BluetoothCallHelper$BluetoothCallDevice;

    invoke-virtual {v0}, Lcom/samsung/android/mcf/external/BluetoothCallHelper$BluetoothCallDevice;->getBluetoothDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    return-object v0

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/mcf/external/BluetoothCallHelper;->mSyncedCallDevice:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 203
    const-string v0, "found in Synced CallDevice list "

    invoke-static {v2, v1, v0}, Lcom/samsung/android/mcf/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    iget-object v0, p0, Lcom/samsung/android/mcf/external/BluetoothCallHelper;->mSyncedCallDevice:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/mcf/external/BluetoothCallHelper$BluetoothCallDevice;

    invoke-virtual {v0}, Lcom/samsung/android/mcf/external/BluetoothCallHelper$BluetoothCallDevice;->getBluetoothDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    return-object v0

    .line 207
    :cond_1
    const-string v0, "can not found bluetooth Device"

    invoke-static {v2, v1, v0}, Lcom/samsung/android/mcf/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBondedCallDevices()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/mcf/external/BluetoothCallHelper$BluetoothCallDevice;",
            ">;"
        }
    .end annotation

    .line 172
    const-string v0, "getBondedCallDevices"

    const-string v1, "-"

    const-string v2, "BluetoothCallHelper"

    invoke-static {v2, v0, v1}, Lcom/samsung/android/mcf/common/DLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/android/mcf/external/BluetoothCallHelper;->mBondedCallDevice:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getSyncedCallDevices()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/mcf/external/BluetoothCallHelper$BluetoothCallDevice;",
            ">;"
        }
    .end annotation

    .line 184
    const-string v0, "getSyncedCallDevices"

    const-string v1, "-"

    const-string v2, "BluetoothCallHelper"

    invoke-static {v2, v0, v1}, Lcom/samsung/android/mcf/common/DLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/android/mcf/external/BluetoothCallHelper;->mSyncedCallDevice:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public hasBondedCallDevice()Z
    .locals 3

    .line 149
    const-string v0, "hasBondedCallDevice"

    const-string v1, "-"

    const-string v2, "BluetoothCallHelper"

    invoke-static {v2, v0, v1}, Lcom/samsung/android/mcf/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    iget-object v0, p0, Lcom/samsung/android/mcf/external/BluetoothCallHelper;->mBondedCallDevice:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public hasSyncedCallDevice()Z
    .locals 3

    .line 161
    const-string v0, "hasSyncedCallDevice"

    const-string v1, "-"

    const-string v2, "BluetoothCallHelper"

    invoke-static {v2, v0, v1}, Lcom/samsung/android/mcf/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    iget-object v0, p0, Lcom/samsung/android/mcf/external/BluetoothCallHelper;->mSyncedCallDevice:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method synthetic lambda$updateDeviceList$0$com-samsung-android-mcf-external-BluetoothCallHelper(ILcom/samsung/android/mcf/external/BluetoothCallHelper$DataReadyCallback;)V
    .locals 3
    .param p1, "type"    # I
    .param p2, "callback"    # Lcom/samsung/android/mcf/external/BluetoothCallHelper$DataReadyCallback;

    .line 114
    invoke-direct {p0}, Lcom/samsung/android/mcf/external/BluetoothCallHelper;->updateBondedDeviceList()V

    .line 117
    const/4 v0, 0x1

    if-ne v0, p1, :cond_1

    .line 118
    iget-object v0, p0, Lcom/samsung/android/mcf/external/BluetoothCallHelper;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH_PRIVILEGED"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    const-string v1, "updateDeviceList"

    const-string v2, "BluetoothCallHelper"

    if-nez v0, :cond_0

    .line 119
    const-string v0, "BLUETOOTH_PRIVILEGED permission Granted "

    invoke-static {v2, v1, v0}, Lcom/samsung/android/mcf/common/DLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    invoke-direct {p0}, Lcom/samsung/android/mcf/external/BluetoothCallHelper;->updateSyncedDeviceList()V

    goto :goto_0

    .line 122
    :cond_0
    const-string v0, "To get synced device list , need BLUETOOTH_PRIVILEGED permission"

    invoke-static {v2, v1, v0}, Lcom/samsung/android/mcf/common/DLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    :cond_1
    :goto_0
    invoke-interface {p2}, Lcom/samsung/android/mcf/external/BluetoothCallHelper$DataReadyCallback;->onDataReady()V

    .line 126
    return-void
.end method

.method public release()V
    .locals 2

    .line 134
    iget-boolean v0, p0, Lcom/samsung/android/mcf/external/BluetoothCallHelper;->mIsReceiverRegistered:Z

    if-eqz v0, :cond_0

    .line 135
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/mcf/external/BluetoothCallHelper;->mIsReceiverRegistered:Z

    .line 136
    iget-object v0, p0, Lcom/samsung/android/mcf/external/BluetoothCallHelper;->mBondedCallDevice:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 137
    iget-object v0, p0, Lcom/samsung/android/mcf/external/BluetoothCallHelper;->mSyncedCallDevice:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 138
    iget-object v0, p0, Lcom/samsung/android/mcf/external/BluetoothCallHelper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/mcf/external/BluetoothCallHelper;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 140
    :cond_0
    return-void
.end method
