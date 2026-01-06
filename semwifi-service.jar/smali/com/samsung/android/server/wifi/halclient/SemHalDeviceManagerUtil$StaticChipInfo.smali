.class Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManagerUtil$StaticChipInfo;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManagerUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "StaticChipInfo"
.end annotation


# instance fields
.field private mAvailableModes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/server/wifi/halclient/SemWifiChip$ChipMode;",
            ">;"
        }
    .end annotation
.end field

.field private mChipCapabilities:J

.field private mChipId:I


# direct methods
.method constructor <init>(IJLjava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/server/wifi/halclient/SemWifiChip$ChipMode;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManagerUtil$StaticChipInfo;->mAvailableModes:Ljava/util/ArrayList;

    .line 10
    .line 11
    iput p1, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManagerUtil$StaticChipInfo;->mChipId:I

    .line 12
    .line 13
    iput-wide p2, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManagerUtil$StaticChipInfo;->mChipCapabilities:J

    .line 14
    .line 15
    if-eqz p4, :cond_0

    .line 16
    .line 17
    iput-object p4, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManagerUtil$StaticChipInfo;->mAvailableModes:Ljava/util/ArrayList;

    .line 18
    .line 19
    :cond_0
    return-void
.end method


# virtual methods
.method getAvailableModes()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/server/wifi/halclient/SemWifiChip$ChipMode;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManagerUtil$StaticChipInfo;->mAvailableModes:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-object p0
.end method

.method getChipCapabilities()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManagerUtil$StaticChipInfo;->mChipCapabilities:J

    .line 2
    .line 3
    return-wide v0
.end method

.method getChipId()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManagerUtil$StaticChipInfo;->mChipId:I

    .line 2
    .line 3
    return p0
.end method
