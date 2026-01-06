.class Lcom/samsung/android/server/wifi/stdp/StandardPlusServiceImpl$BleHelper$1;
.super Landroid/bluetooth/le/ScanCallback;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/stdp/StandardPlusServiceImpl$BleHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/server/wifi/stdp/StandardPlusServiceImpl$BleHelper;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/stdp/StandardPlusServiceImpl$BleHelper;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/stdp/StandardPlusServiceImpl$BleHelper$1;->this$1:Lcom/samsung/android/server/wifi/stdp/StandardPlusServiceImpl$BleHelper;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/bluetooth/le/ScanCallback;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onScanFailed(I)V
    .locals 2

    .line 1
    const-string v0, "onScanFailed - LE scan failed : "

    .line 2
    .line 3
    const-string v1, "StandardPlusServiceImpl"

    .line 4
    .line 5
    invoke-static {v0, p1, v1}, Lcom/samsung/android/server/wifi/SemClientModeManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-super {p0, p1}, Landroid/bluetooth/le/ScanCallback;->onScanFailed(I)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public onScanResult(ILandroid/bluetooth/le/ScanResult;)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Landroid/bluetooth/le/ScanCallback;->onScanResult(ILandroid/bluetooth/le/ScanResult;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Landroid/bluetooth/le/ScanResult;->getScanRecord()Landroid/bluetooth/le/ScanRecord;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-virtual {p1}, Landroid/bluetooth/le/ScanRecord;->getManufacturerSpecificData()Landroid/util/SparseArray;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    if-eqz p1, :cond_2

    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    .line 15
    .line 16
    .line 17
    move-result p2

    .line 18
    if-nez p2, :cond_0

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_0
    const/16 p2, 0x75

    .line 22
    .line 23
    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    check-cast p1, [B

    .line 28
    .line 29
    if-nez p1, :cond_1

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_1
    const/4 p2, 0x2

    .line 33
    aget-byte p1, p1, p2

    .line 34
    .line 35
    and-int/lit16 p1, p1, 0xff

    .line 36
    .line 37
    iget-object p2, p0, Lcom/samsung/android/server/wifi/stdp/StandardPlusServiceImpl$BleHelper$1;->this$1:Lcom/samsung/android/server/wifi/stdp/StandardPlusServiceImpl$BleHelper;

    .line 38
    .line 39
    iget-object p2, p2, Lcom/samsung/android/server/wifi/stdp/StandardPlusServiceImpl$BleHelper;->this$0:Lcom/samsung/android/server/wifi/stdp/StandardPlusServiceImpl;

    .line 40
    .line 41
    invoke-static {p2}, Lcom/samsung/android/server/wifi/stdp/StandardPlusServiceImpl;->-$$Nest$fgetmEventCallbacks(Lcom/samsung/android/server/wifi/stdp/StandardPlusServiceImpl;)Ljava/util/HashMap;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    invoke-virtual {p2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 46
    .line 47
    .line 48
    move-result-object p2

    .line 49
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 50
    .line 51
    .line 52
    move-result-object p2

    .line 53
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-eqz v0, :cond_2

    .line 58
    .line 59
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    check-cast v0, Ljava/lang/Integer;

    .line 64
    .line 65
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 66
    .line 67
    .line 68
    iget-object v1, p0, Lcom/samsung/android/server/wifi/stdp/StandardPlusServiceImpl$BleHelper$1;->this$1:Lcom/samsung/android/server/wifi/stdp/StandardPlusServiceImpl$BleHelper;

    .line 69
    .line 70
    iget-object v1, v1, Lcom/samsung/android/server/wifi/stdp/StandardPlusServiceImpl$BleHelper;->this$0:Lcom/samsung/android/server/wifi/stdp/StandardPlusServiceImpl;

    .line 71
    .line 72
    invoke-static {v1}, Lcom/samsung/android/server/wifi/stdp/StandardPlusServiceImpl;->-$$Nest$fgetmEventCallbacks(Lcom/samsung/android/server/wifi/stdp/StandardPlusServiceImpl;)Ljava/util/HashMap;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    check-cast v1, Lcom/samsung/android/wifi/stdp/IStandardPlusCallback;

    .line 81
    .line 82
    :try_start_0
    invoke-interface {v1, p1}, Lcom/samsung/android/wifi/stdp/IStandardPlusCallback;->onEvent(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    .line 84
    .line 85
    goto :goto_0

    .line 86
    :catch_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/stdp/StandardPlusServiceImpl$BleHelper$1;->this$1:Lcom/samsung/android/server/wifi/stdp/StandardPlusServiceImpl$BleHelper;

    .line 87
    .line 88
    iget-object v1, v1, Lcom/samsung/android/server/wifi/stdp/StandardPlusServiceImpl$BleHelper;->this$0:Lcom/samsung/android/server/wifi/stdp/StandardPlusServiceImpl;

    .line 89
    .line 90
    invoke-static {v1}, Lcom/samsung/android/server/wifi/stdp/StandardPlusServiceImpl;->-$$Nest$fgetmEventCallbacks(Lcom/samsung/android/server/wifi/stdp/StandardPlusServiceImpl;)Ljava/util/HashMap;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_2
    :goto_1
    return-void
.end method
