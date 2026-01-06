.class public final enum Lcom/samsung/android/server/wifi/driver/WifiChipVendor;
.super Ljava/lang/Enum;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/server/wifi/driver/WifiChipVendor;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/server/wifi/driver/WifiChipVendor;

.field public static final enum Broadcom:Lcom/samsung/android/server/wifi/driver/WifiChipVendor;

.field public static final enum MTK:Lcom/samsung/android/server/wifi/driver/WifiChipVendor;

.field public static final enum Marvell:Lcom/samsung/android/server/wifi/driver/WifiChipVendor;

.field public static final enum QCA:Lcom/samsung/android/server/wifi/driver/WifiChipVendor;

.field public static final enum Qualcomm:Lcom/samsung/android/server/wifi/driver/WifiChipVendor;

.field public static final enum S_LSI:Lcom/samsung/android/server/wifi/driver/WifiChipVendor;

.field public static final enum Spreadtrum:Lcom/samsung/android/server/wifi/driver/WifiChipVendor;

.field public static final enum UNKNOWN:Lcom/samsung/android/server/wifi/driver/WifiChipVendor;


# instance fields
.field private factoryModeName:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lcom/samsung/android/server/wifi/driver/WifiChipVendor;
    .locals 8

    .line 1
    sget-object v0, Lcom/samsung/android/server/wifi/driver/WifiChipVendor;->UNKNOWN:Lcom/samsung/android/server/wifi/driver/WifiChipVendor;

    .line 2
    .line 3
    sget-object v1, Lcom/samsung/android/server/wifi/driver/WifiChipVendor;->Broadcom:Lcom/samsung/android/server/wifi/driver/WifiChipVendor;

    .line 4
    .line 5
    sget-object v2, Lcom/samsung/android/server/wifi/driver/WifiChipVendor;->Qualcomm:Lcom/samsung/android/server/wifi/driver/WifiChipVendor;

    .line 6
    .line 7
    sget-object v3, Lcom/samsung/android/server/wifi/driver/WifiChipVendor;->QCA:Lcom/samsung/android/server/wifi/driver/WifiChipVendor;

    .line 8
    .line 9
    sget-object v4, Lcom/samsung/android/server/wifi/driver/WifiChipVendor;->Marvell:Lcom/samsung/android/server/wifi/driver/WifiChipVendor;

    .line 10
    .line 11
    sget-object v5, Lcom/samsung/android/server/wifi/driver/WifiChipVendor;->Spreadtrum:Lcom/samsung/android/server/wifi/driver/WifiChipVendor;

    .line 12
    .line 13
    sget-object v6, Lcom/samsung/android/server/wifi/driver/WifiChipVendor;->S_LSI:Lcom/samsung/android/server/wifi/driver/WifiChipVendor;

    .line 14
    .line 15
    sget-object v7, Lcom/samsung/android/server/wifi/driver/WifiChipVendor;->MTK:Lcom/samsung/android/server/wifi/driver/WifiChipVendor;

    .line 16
    .line 17
    filled-new-array/range {v0 .. v7}, [Lcom/samsung/android/server/wifi/driver/WifiChipVendor;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/samsung/android/server/wifi/driver/WifiChipVendor;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "NA"

    .line 5
    .line 6
    const-string v3, "UNKNOWN"

    .line 7
    .line 8
    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/server/wifi/driver/WifiChipVendor;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lcom/samsung/android/server/wifi/driver/WifiChipVendor;->UNKNOWN:Lcom/samsung/android/server/wifi/driver/WifiChipVendor;

    .line 12
    .line 13
    new-instance v0, Lcom/samsung/android/server/wifi/driver/WifiChipVendor;

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    const-string v2, "BR"

    .line 17
    .line 18
    const-string v3, "Broadcom"

    .line 19
    .line 20
    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/server/wifi/driver/WifiChipVendor;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 21
    .line 22
    .line 23
    sput-object v0, Lcom/samsung/android/server/wifi/driver/WifiChipVendor;->Broadcom:Lcom/samsung/android/server/wifi/driver/WifiChipVendor;

    .line 24
    .line 25
    new-instance v0, Lcom/samsung/android/server/wifi/driver/WifiChipVendor;

    .line 26
    .line 27
    const-string v1, "Qualcomm"

    .line 28
    .line 29
    const/4 v2, 0x2

    .line 30
    const-string v3, "QC"

    .line 31
    .line 32
    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/server/wifi/driver/WifiChipVendor;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 33
    .line 34
    .line 35
    sput-object v0, Lcom/samsung/android/server/wifi/driver/WifiChipVendor;->Qualcomm:Lcom/samsung/android/server/wifi/driver/WifiChipVendor;

    .line 36
    .line 37
    new-instance v0, Lcom/samsung/android/server/wifi/driver/WifiChipVendor;

    .line 38
    .line 39
    const-string v1, "QCA"

    .line 40
    .line 41
    const/4 v2, 0x3

    .line 42
    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/server/wifi/driver/WifiChipVendor;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 43
    .line 44
    .line 45
    sput-object v0, Lcom/samsung/android/server/wifi/driver/WifiChipVendor;->QCA:Lcom/samsung/android/server/wifi/driver/WifiChipVendor;

    .line 46
    .line 47
    new-instance v0, Lcom/samsung/android/server/wifi/driver/WifiChipVendor;

    .line 48
    .line 49
    const/4 v1, 0x4

    .line 50
    const-string v2, "MV"

    .line 51
    .line 52
    const-string v3, "Marvell"

    .line 53
    .line 54
    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/server/wifi/driver/WifiChipVendor;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 55
    .line 56
    .line 57
    sput-object v0, Lcom/samsung/android/server/wifi/driver/WifiChipVendor;->Marvell:Lcom/samsung/android/server/wifi/driver/WifiChipVendor;

    .line 58
    .line 59
    new-instance v0, Lcom/samsung/android/server/wifi/driver/WifiChipVendor;

    .line 60
    .line 61
    const/4 v1, 0x5

    .line 62
    const-string v2, "SP"

    .line 63
    .line 64
    const-string v3, "Spreadtrum"

    .line 65
    .line 66
    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/server/wifi/driver/WifiChipVendor;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 67
    .line 68
    .line 69
    sput-object v0, Lcom/samsung/android/server/wifi/driver/WifiChipVendor;->Spreadtrum:Lcom/samsung/android/server/wifi/driver/WifiChipVendor;

    .line 70
    .line 71
    new-instance v0, Lcom/samsung/android/server/wifi/driver/WifiChipVendor;

    .line 72
    .line 73
    const/4 v1, 0x6

    .line 74
    const-string v2, "LS"

    .line 75
    .line 76
    const-string v3, "S_LSI"

    .line 77
    .line 78
    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/server/wifi/driver/WifiChipVendor;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 79
    .line 80
    .line 81
    sput-object v0, Lcom/samsung/android/server/wifi/driver/WifiChipVendor;->S_LSI:Lcom/samsung/android/server/wifi/driver/WifiChipVendor;

    .line 82
    .line 83
    new-instance v0, Lcom/samsung/android/server/wifi/driver/WifiChipVendor;

    .line 84
    .line 85
    const/4 v1, 0x7

    .line 86
    const-string v2, "MT"

    .line 87
    .line 88
    const-string v3, "MTK"

    .line 89
    .line 90
    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/server/wifi/driver/WifiChipVendor;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 91
    .line 92
    .line 93
    sput-object v0, Lcom/samsung/android/server/wifi/driver/WifiChipVendor;->MTK:Lcom/samsung/android/server/wifi/driver/WifiChipVendor;

    .line 94
    .line 95
    invoke-static {}, Lcom/samsung/android/server/wifi/driver/WifiChipVendor;->$values()[Lcom/samsung/android/server/wifi/driver/WifiChipVendor;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    sput-object v0, Lcom/samsung/android/server/wifi/driver/WifiChipVendor;->$VALUES:[Lcom/samsung/android/server/wifi/driver/WifiChipVendor;

    .line 100
    .line 101
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lcom/samsung/android/server/wifi/driver/WifiChipVendor;->factoryModeName:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/server/wifi/driver/WifiChipVendor;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 1
    const-class v0, Lcom/samsung/android/server/wifi/driver/WifiChipVendor;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/samsung/android/server/wifi/driver/WifiChipVendor;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/samsung/android/server/wifi/driver/WifiChipVendor;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/server/wifi/driver/WifiChipVendor;->$VALUES:[Lcom/samsung/android/server/wifi/driver/WifiChipVendor;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/samsung/android/server/wifi/driver/WifiChipVendor;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/samsung/android/server/wifi/driver/WifiChipVendor;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public getFactoryModeName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/driver/WifiChipVendor;->factoryModeName:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method
