.class Lcom/samsung/android/server/wifi/stdp/StandardPlusServiceImpl$BleHelper;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/stdp/StandardPlusServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BleHelper"
.end annotation


# static fields
.field static final ADV_DATA_LEN:I = 0x18

.field static final CMD_USD_OFF:I = 0x2

.field static final CMD_USD_ON:I = 0x1

.field static final IDX_CMD_ID:I = 0x2

.field static final IDX_SAMSUNG_BLE_VERSION:I = 0x0

.field static final IDX_SERVICE_ID:I = 0x1

.field static final MANUFACTURER_DATA_SAMSUNG_VERSION:I = 0x2

.field static final MANUFACTURER_DATA_SERVICE_ID:I = 0x24

.field static final SAMSUNG_COMPANY_ID:I = 0x75


# instance fields
.field private mAdvertiseCallback:Landroid/bluetooth/le/AdvertiseCallback;

.field mBaseAdvData:[B

.field private mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mScanCallback:Landroid/bluetooth/le/ScanCallback;

.field private mScanFilters:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Landroid/bluetooth/le/ScanFilter;",
            ">;"
        }
    .end annotation
.end field

.field private mScanSettings:Landroid/bluetooth/le/ScanSettings;

.field final synthetic this$0:Lcom/samsung/android/server/wifi/stdp/StandardPlusServiceImpl;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/stdp/StandardPlusServiceImpl;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/stdp/StandardPlusServiceImpl$BleHelper;->this$0:Lcom/samsung/android/server/wifi/stdp/StandardPlusServiceImpl;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const/16 v0, 0x18

    .line 7
    .line 8
    new-array v0, v0, [B

    .line 9
    .line 10
    iput-object v0, p0, Lcom/samsung/android/server/wifi/stdp/StandardPlusServiceImpl$BleHelper;->mBaseAdvData:[B

    .line 11
    .line 12
    new-instance v0, Lcom/samsung/android/server/wifi/stdp/StandardPlusServiceImpl$BleHelper$1;

    .line 13
    .line 14
    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/stdp/StandardPlusServiceImpl$BleHelper$1;-><init>(Lcom/samsung/android/server/wifi/stdp/StandardPlusServiceImpl$BleHelper;)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lcom/samsung/android/server/wifi/stdp/StandardPlusServiceImpl$BleHelper;->mScanCallback:Landroid/bluetooth/le/ScanCallback;

    .line 18
    .line 19
    new-instance v0, Lcom/samsung/android/server/wifi/stdp/StandardPlusServiceImpl$BleHelper$2;

    .line 20
    .line 21
    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/stdp/StandardPlusServiceImpl$BleHelper$2;-><init>(Lcom/samsung/android/server/wifi/stdp/StandardPlusServiceImpl$BleHelper;)V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lcom/samsung/android/server/wifi/stdp/StandardPlusServiceImpl$BleHelper;->mAdvertiseCallback:Landroid/bluetooth/le/AdvertiseCallback;

    .line 25
    .line 26
    invoke-static {p1}, Lcom/samsung/android/server/wifi/stdp/StandardPlusServiceImpl;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/stdp/StandardPlusServiceImpl;)Landroid/content/Context;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    const-string v0, "bluetooth"

    .line 31
    .line 32
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    check-cast p1, Landroid/bluetooth/BluetoothManager;

    .line 37
    .line 38
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    iput-object p1, p0, Lcom/samsung/android/server/wifi/stdp/StandardPlusServiceImpl$BleHelper;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 43
    .line 44
    new-instance p1, Ljava/util/Vector;

    .line 45
    .line 46
    invoke-direct {p1}, Ljava/util/Vector;-><init>()V

    .line 47
    .line 48
    .line 49
    iput-object p1, p0, Lcom/samsung/android/server/wifi/stdp/StandardPlusServiceImpl$BleHelper;->mScanFilters:Ljava/util/Vector;

    .line 50
    .line 51
    new-instance p1, Landroid/bluetooth/le/ScanSettings$Builder;

    .line 52
    .line 53
    invoke-direct {p1}, Landroid/bluetooth/le/ScanSettings$Builder;-><init>()V

    .line 54
    .line 55
    .line 56
    const/4 v0, 0x2

    .line 57
    invoke-virtual {p1, v0}, Landroid/bluetooth/le/ScanSettings$Builder;->setScanMode(I)Landroid/bluetooth/le/ScanSettings$Builder;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    const/4 v1, 0x0

    .line 62
    invoke-virtual {p1, v1}, Landroid/bluetooth/le/ScanSettings$Builder;->setLegacy(Z)Landroid/bluetooth/le/ScanSettings$Builder;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-virtual {p1}, Landroid/bluetooth/le/ScanSettings$Builder;->build()Landroid/bluetooth/le/ScanSettings;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    iput-object p1, p0, Lcom/samsung/android/server/wifi/stdp/StandardPlusServiceImpl$BleHelper;->mScanSettings:Landroid/bluetooth/le/ScanSettings;

    .line 71
    .line 72
    iget-object p1, p0, Lcom/samsung/android/server/wifi/stdp/StandardPlusServiceImpl$BleHelper;->mBaseAdvData:[B

    .line 73
    .line 74
    invoke-static {p1, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 75
    .line 76
    .line 77
    iget-object p1, p0, Lcom/samsung/android/server/wifi/stdp/StandardPlusServiceImpl$BleHelper;->mBaseAdvData:[B

    .line 78
    .line 79
    aput-byte v0, p1, v1

    .line 80
    .line 81
    const/4 v0, 0x1

    .line 82
    const/16 v1, 0x24

    .line 83
    .line 84
    aput-byte v1, p1, v0

    .line 85
    .line 86
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/stdp/StandardPlusServiceImpl$BleHelper;->prepareScanFilters()V

    .line 87
    .line 88
    .line 89
    return-void
.end method

.method private getAdvertiseData()[B
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/stdp/StandardPlusServiceImpl$BleHelper;->mBaseAdvData:[B

    .line 2
    .line 3
    const/16 v0, 0x18

    .line 4
    .line 5
    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method private prepareScanFilters()V
    .locals 4

    .line 1
    const/4 v0, 0x3

    .line 2
    new-array v1, v0, [B

    .line 3
    .line 4
    fill-array-data v1, :array_0

    .line 5
    .line 6
    .line 7
    new-array v0, v0, [B

    .line 8
    .line 9
    fill-array-data v0, :array_1

    .line 10
    .line 11
    .line 12
    new-instance v2, Landroid/bluetooth/le/ScanFilter$Builder;

    .line 13
    .line 14
    invoke-direct {v2}, Landroid/bluetooth/le/ScanFilter$Builder;-><init>()V

    .line 15
    .line 16
    .line 17
    const/16 v3, 0x75

    .line 18
    .line 19
    invoke-virtual {v2, v3, v1}, Landroid/bluetooth/le/ScanFilter$Builder;->setManufacturerData(I[B)Landroid/bluetooth/le/ScanFilter$Builder;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v1}, Landroid/bluetooth/le/ScanFilter$Builder;->build()Landroid/bluetooth/le/ScanFilter;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    new-instance v2, Landroid/bluetooth/le/ScanFilter$Builder;

    .line 28
    .line 29
    invoke-direct {v2}, Landroid/bluetooth/le/ScanFilter$Builder;-><init>()V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2, v3, v0}, Landroid/bluetooth/le/ScanFilter$Builder;->setManufacturerData(I[B)Landroid/bluetooth/le/ScanFilter$Builder;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {v0}, Landroid/bluetooth/le/ScanFilter$Builder;->build()Landroid/bluetooth/le/ScanFilter;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    iget-object v2, p0, Lcom/samsung/android/server/wifi/stdp/StandardPlusServiceImpl$BleHelper;->mScanFilters:Ljava/util/Vector;

    .line 41
    .line 42
    invoke-virtual {v2, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    iget-object p0, p0, Lcom/samsung/android/server/wifi/stdp/StandardPlusServiceImpl$BleHelper;->mScanFilters:Ljava/util/Vector;

    .line 46
    .line 47
    invoke-virtual {p0, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :array_0
    .array-data 1
        0x2t
        0x24t
        0x1t
    .end array-data

    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    :array_1
    .array-data 1
        0x2t
        0x24t
        0x2t
    .end array-data
.end method


# virtual methods
.method startAdvertising(II)V
    .locals 5

    .line 1
    new-instance v0, Landroid/bluetooth/le/AdvertiseSettings$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/bluetooth/le/AdvertiseSettings$Builder;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x2

    .line 7
    invoke-virtual {v0, v1}, Landroid/bluetooth/le/AdvertiseSettings$Builder;->setAdvertiseMode(I)Landroid/bluetooth/le/AdvertiseSettings$Builder;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-virtual {v0, v2}, Landroid/bluetooth/le/AdvertiseSettings$Builder;->setConnectable(Z)Landroid/bluetooth/le/AdvertiseSettings$Builder;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0, p2}, Landroid/bluetooth/le/AdvertiseSettings$Builder;->setTimeout(I)Landroid/bluetooth/le/AdvertiseSettings$Builder;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const/4 v3, 0x3

    .line 21
    invoke-virtual {v0, v3}, Landroid/bluetooth/le/AdvertiseSettings$Builder;->setTxPowerLevel(I)Landroid/bluetooth/le/AdvertiseSettings$Builder;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0}, Landroid/bluetooth/le/AdvertiseSettings$Builder;->build()Landroid/bluetooth/le/AdvertiseSettings;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    new-instance v3, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    const-string v4, "startAdvertising - cmd : "

    .line 32
    .line 33
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string v4, " , duration : "

    .line 40
    .line 41
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    const-string v3, "StandardPlusServiceImpl"

    .line 52
    .line 53
    invoke-static {v3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/stdp/StandardPlusServiceImpl$BleHelper;->getAdvertiseData()[B

    .line 57
    .line 58
    .line 59
    move-result-object p2

    .line 60
    int-to-byte p1, p1

    .line 61
    aput-byte p1, p2, v1

    .line 62
    .line 63
    new-instance p1, Landroid/bluetooth/le/AdvertiseData$Builder;

    .line 64
    .line 65
    invoke-direct {p1}, Landroid/bluetooth/le/AdvertiseData$Builder;-><init>()V

    .line 66
    .line 67
    .line 68
    iget-object v1, p0, Lcom/samsung/android/server/wifi/stdp/StandardPlusServiceImpl$BleHelper;->this$0:Lcom/samsung/android/server/wifi/stdp/StandardPlusServiceImpl;

    .line 69
    .line 70
    invoke-static {v1}, Lcom/samsung/android/server/wifi/stdp/StandardPlusServiceImpl;->-$$Nest$fgetmBleHelper(Lcom/samsung/android/server/wifi/stdp/StandardPlusServiceImpl;)V

    .line 71
    .line 72
    .line 73
    const/16 v1, 0x75

    .line 74
    .line 75
    invoke-virtual {p1, v1, p2}, Landroid/bluetooth/le/AdvertiseData$Builder;->addManufacturerData(I[B)Landroid/bluetooth/le/AdvertiseData$Builder;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    invoke-virtual {p1, v2}, Landroid/bluetooth/le/AdvertiseData$Builder;->setIncludeDeviceName(Z)Landroid/bluetooth/le/AdvertiseData$Builder;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    invoke-virtual {p1}, Landroid/bluetooth/le/AdvertiseData$Builder;->build()Landroid/bluetooth/le/AdvertiseData;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    iget-object p2, p0, Lcom/samsung/android/server/wifi/stdp/StandardPlusServiceImpl$BleHelper;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 88
    .line 89
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothLeAdvertiser()Landroid/bluetooth/le/BluetoothLeAdvertiser;

    .line 90
    .line 91
    .line 92
    move-result-object p2

    .line 93
    if-nez p2, :cond_0

    .line 94
    .line 95
    const-string p0, "startAdvertising - bleAdvertiser == null"

    .line 96
    .line 97
    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    .line 99
    .line 100
    return-void

    .line 101
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/stdp/StandardPlusServiceImpl$BleHelper;->mAdvertiseCallback:Landroid/bluetooth/le/AdvertiseCallback;

    .line 102
    .line 103
    invoke-virtual {p2, v0, p1, p0}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->startAdvertising(Landroid/bluetooth/le/AdvertiseSettings;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertiseCallback;)V

    .line 104
    .line 105
    .line 106
    return-void
.end method

.method startScan()V
    .locals 3

    .line 1
    const-string v0, "startScan"

    .line 2
    .line 3
    const-string v1, "StandardPlusServiceImpl"

    .line 4
    .line 5
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/samsung/android/server/wifi/stdp/StandardPlusServiceImpl$BleHelper;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothLeScanner()Landroid/bluetooth/le/BluetoothLeScanner;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    const-string p0, "startScan - bleScanner == null"

    .line 17
    .line 18
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/stdp/StandardPlusServiceImpl$BleHelper;->mScanFilters:Ljava/util/Vector;

    .line 23
    .line 24
    iget-object v2, p0, Lcom/samsung/android/server/wifi/stdp/StandardPlusServiceImpl$BleHelper;->mScanSettings:Landroid/bluetooth/le/ScanSettings;

    .line 25
    .line 26
    iget-object p0, p0, Lcom/samsung/android/server/wifi/stdp/StandardPlusServiceImpl$BleHelper;->mScanCallback:Landroid/bluetooth/le/ScanCallback;

    .line 27
    .line 28
    invoke-virtual {v0, v1, v2, p0}, Landroid/bluetooth/le/BluetoothLeScanner;->startScan(Ljava/util/List;Landroid/bluetooth/le/ScanSettings;Landroid/bluetooth/le/ScanCallback;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method stopAdvertising()V
    .locals 2

    .line 1
    const-string v0, "stopAdvertising"

    .line 2
    .line 3
    const-string v1, "StandardPlusServiceImpl"

    .line 4
    .line 5
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/samsung/android/server/wifi/stdp/StandardPlusServiceImpl$BleHelper;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothLeAdvertiser()Landroid/bluetooth/le/BluetoothLeAdvertiser;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    const-string p0, "stopAdvertising - bleAdvertiser == null"

    .line 17
    .line 18
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/stdp/StandardPlusServiceImpl$BleHelper;->mAdvertiseCallback:Landroid/bluetooth/le/AdvertiseCallback;

    .line 23
    .line 24
    invoke-virtual {v0, p0}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->stopAdvertising(Landroid/bluetooth/le/AdvertiseCallback;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method stopScan()V
    .locals 2

    .line 1
    const-string v0, "stopScan"

    .line 2
    .line 3
    const-string v1, "StandardPlusServiceImpl"

    .line 4
    .line 5
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/samsung/android/server/wifi/stdp/StandardPlusServiceImpl$BleHelper;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothLeScanner()Landroid/bluetooth/le/BluetoothLeScanner;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    const-string p0, "stopScan - bleScanner == null"

    .line 17
    .line 18
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/stdp/StandardPlusServiceImpl$BleHelper;->mScanCallback:Landroid/bluetooth/le/ScanCallback;

    .line 23
    .line 24
    invoke-virtual {v0, p0}, Landroid/bluetooth/le/BluetoothLeScanner;->stopScan(Landroid/bluetooth/le/ScanCallback;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method
