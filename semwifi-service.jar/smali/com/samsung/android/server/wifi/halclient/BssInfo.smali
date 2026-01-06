.class public Lcom/samsung/android/server/wifi/halclient/BssInfo;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# instance fields
.field public final bssid:Ljava/lang/String;

.field public final frequency:I

.field public final ieData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field private final mLog:Lcom/samsung/android/server/wifi/util/LogUtils;


# direct methods
.method public constructor <init>(Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/BssParam;)V
    .locals 6

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iget-object v0, p1, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/BssParam;->bssid:[B

    invoke-static {v0}, Lcom/samsung/android/server/wifi/util/SemNativeUtil;->macAddressFromByteArray([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/wifi/halclient/BssInfo;->bssid:Ljava/lang/String;

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/halclient/BssInfo;->ieData:Ljava/util/ArrayList;

    .line 9
    iget-object v0, p1, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/BssParam;->ieData:[B

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-byte v3, v0, v2

    .line 10
    iget-object v4, p0, Lcom/samsung/android/server/wifi/halclient/BssInfo;->ieData:Ljava/util/ArrayList;

    const/4 v5, 0x1

    .line 11
    invoke-static {v3, v4, v2, v5}, Lcom/samsung/android/server/wifi/halclient/BssInfo$$ExternalSyntheticOutline0;->m(BLjava/util/ArrayList;II)I

    move-result v2

    goto :goto_0

    .line 12
    :cond_0
    iget p1, p1, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/BssParam;->freq:I

    iput p1, p0, Lcom/samsung/android/server/wifi/halclient/BssInfo;->frequency:I

    .line 13
    new-instance p1, Lcom/samsung/android/server/wifi/util/LogUtils;

    invoke-direct {p1}, Lcom/samsung/android/server/wifi/util/LogUtils;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/halclient/BssInfo;->mLog:Lcom/samsung/android/server/wifi/util/LogUtils;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicantStaNetwork$BssParam;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object v0, p1, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicantStaNetwork$BssParam;->bssid:[B

    invoke-static {v0}, Lcom/samsung/android/server/wifi/util/SemNativeUtil;->macAddressFromByteArray([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/wifi/halclient/BssInfo;->bssid:Ljava/lang/String;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicantStaNetwork$BssParam;->ieData:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/halclient/BssInfo;->ieData:Ljava/util/ArrayList;

    .line 4
    iget p1, p1, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicantStaNetwork$BssParam;->freq:I

    iput p1, p0, Lcom/samsung/android/server/wifi/halclient/BssInfo;->frequency:I

    .line 5
    new-instance p1, Lcom/samsung/android/server/wifi/util/LogUtils;

    invoke-direct {p1}, Lcom/samsung/android/server/wifi/util/LogUtils;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/halclient/BssInfo;->mLog:Lcom/samsung/android/server/wifi/util/LogUtils;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/BssInfo;->mLog:Lcom/samsung/android/server/wifi/util/LogUtils;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v2, "BssInfo bssid:"

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/BssInfo;->bssid:Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v2, ", frequency:"

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    iget p0, p0, Lcom/samsung/android/server/wifi/halclient/BssInfo;->frequency:I

    .line 21
    .line 22
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    invoke-virtual {v0, p0}, Lcom/samsung/android/server/wifi/util/LogUtils;->getPrintableLog(Ljava/lang/String;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    return-object p0
.end method
