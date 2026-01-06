.class Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$WifiChipInfo;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WifiChipInfo"
.end annotation


# instance fields
.field public availableModes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/server/wifi/halclient/SemWifiChip$ChipMode;",
            ">;"
        }
    .end annotation
.end field

.field public chipCapabilities:J

.field public chipId:I

.field public currentModeId:I

.field public currentModeIdValid:Z

.field public ifaces:[[Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$WifiIfaceInfo;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$WifiChipInfo;->chipId:I

    const/4 v1, 0x0

    .line 4
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$WifiChipInfo;->currentModeIdValid:Z

    .line 5
    iput v0, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$WifiChipInfo;->currentModeId:I

    .line 6
    invoke-static {}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->-$$Nest$sfgetCREATE_TYPES_BY_PRIORITY()[I

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [[Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$WifiIfaceInfo;

    iput-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$WifiChipInfo;->ifaces:[[Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$WifiIfaceInfo;

    return-void
.end method

.method synthetic constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$WifiChipInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "{chipId="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$WifiChipInfo;->chipId:I

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", availableModes="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$WifiChipInfo;->availableModes:Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", currentModeIdValid="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$WifiChipInfo;->currentModeIdValid:Z

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", currentModeId="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget v1, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$WifiChipInfo;->currentModeId:I

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, ", chipCapabilities="

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget-wide v1, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$WifiChipInfo;->chipCapabilities:J

    .line 49
    .line 50
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-static {}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->-$$Nest$sfgetIFACE_TYPES_BY_PRIORITY()[I

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    array-length v2, v1

    .line 58
    const/4 v3, 0x0

    .line 59
    :goto_0
    if-ge v3, v2, :cond_1

    .line 60
    .line 61
    aget v4, v1, v3

    .line 62
    .line 63
    iget-object v5, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$WifiChipInfo;->ifaces:[[Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$WifiIfaceInfo;

    .line 64
    .line 65
    if-eqz v5, :cond_0

    .line 66
    .line 67
    aget-object v5, v5, v4

    .line 68
    .line 69
    if-eqz v5, :cond_0

    .line 70
    .line 71
    new-instance v5, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    const-string v6, ", ifaces["

    .line 74
    .line 75
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    const-string v6, "].length="

    .line 82
    .line 83
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v5

    .line 90
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    iget-object v5, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$WifiChipInfo;->ifaces:[[Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$WifiIfaceInfo;

    .line 94
    .line 95
    aget-object v4, v5, v4

    .line 96
    .line 97
    array-length v4, v4

    .line 98
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    goto :goto_1

    .line 102
    :cond_0
    const-string v4, ", ifaces=null"

    .line 103
    .line 104
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 108
    .line 109
    goto :goto_0

    .line 110
    :cond_1
    const-string p0, "}"

    .line 111
    .line 112
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object p0

    .line 119
    return-object p0
.end method
