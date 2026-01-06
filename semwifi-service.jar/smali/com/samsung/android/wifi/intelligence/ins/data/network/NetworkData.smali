.class public final Lcom/samsung/android/wifi/intelligence/ins/data/network/NetworkData;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# instance fields
.field private RSSI:Ljava/lang/Integer;

.field private RxLinkSpeed:Ljava/lang/Integer;

.field private TxLinkSpeed:Ljava/lang/Integer;

.field private WIFI:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 5
    .line 6
    iput-object v0, p0, Lcom/samsung/android/wifi/intelligence/ins/data/network/NetworkData;->WIFI:Ljava/lang/Boolean;

    .line 7
    .line 8
    const/4 v0, -0x1

    .line 9
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/samsung/android/wifi/intelligence/ins/data/network/NetworkData;->RSSI:Ljava/lang/Integer;

    .line 14
    .line 15
    iput-object v0, p0, Lcom/samsung/android/wifi/intelligence/ins/data/network/NetworkData;->TxLinkSpeed:Ljava/lang/Integer;

    .line 16
    .line 17
    iput-object v0, p0, Lcom/samsung/android/wifi/intelligence/ins/data/network/NetworkData;->RxLinkSpeed:Ljava/lang/Integer;

    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public final getRSSI()Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/wifi/intelligence/ins/data/network/NetworkData;->RSSI:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getRxLinkSpeed()Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/wifi/intelligence/ins/data/network/NetworkData;->RxLinkSpeed:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getTxLinkSpeed()Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/wifi/intelligence/ins/data/network/NetworkData;->TxLinkSpeed:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getWIFI()Ljava/lang/Boolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/wifi/intelligence/ins/data/network/NetworkData;->WIFI:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object p0
.end method

.method public final setRSSI(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/wifi/intelligence/ins/data/network/NetworkData;->RSSI:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method

.method public final setRxLinkSpeed(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/wifi/intelligence/ins/data/network/NetworkData;->RxLinkSpeed:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method

.method public final setTxLinkSpeed(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/wifi/intelligence/ins/data/network/NetworkData;->TxLinkSpeed:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method

.method public final setWIFI(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/wifi/intelligence/ins/data/network/NetworkData;->WIFI:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-void
.end method
