.class Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager$SimInfo;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SimInfo"
.end annotation


# instance fields
.field public final carrierIdFromSimMccMnc:I

.field public final imsi:Ljava/lang/String;

.field public final mccMnc:Ljava/lang/String;

.field public final simCarrierId:I


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager$SimInfo;->imsi:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager$SimInfo;->mccMnc:Ljava/lang/String;

    .line 7
    .line 8
    iput p3, p0, Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager$SimInfo;->carrierIdFromSimMccMnc:I

    .line 9
    .line 10
    iput p4, p0, Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager$SimInfo;->simCarrierId:I

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public getCarrierType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager$SimInfo;->carrierIdFromSimMccMnc:I

    .line 2
    .line 3
    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager$SimInfo;->simCarrierId:I

    .line 4
    .line 5
    if-ne v0, p0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return p0

    .line 9
    :cond_0
    const/4 p0, 0x1

    .line 10
    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "SimInfo[ IMSI="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager$SimInfo;->imsi:Ljava/lang/String;

    .line 9
    .line 10
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;->-$$Nest$smgivePrintableImsi(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v1, ", MCCMNC="

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager$SimInfo;->mccMnc:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v1, ", carrierIdFromSimMccMnc="

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    iget v1, p0, Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager$SimInfo;->carrierIdFromSimMccMnc:I

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v1, ", simCarrierId="

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    iget v1, p0, Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager$SimInfo;->simCarrierId:I

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string v1, ", carrierType="

    .line 48
    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager$SimInfo;->getCarrierType()I

    .line 53
    .line 54
    .line 55
    move-result p0

    .line 56
    const-string v1, " ]"

    .line 57
    .line 58
    invoke-static {v1, p0, v0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/StringBuilder;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    return-object p0
.end method
