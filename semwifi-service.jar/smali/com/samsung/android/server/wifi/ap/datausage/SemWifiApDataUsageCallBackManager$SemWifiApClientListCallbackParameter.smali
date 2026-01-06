.class Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageCallBackManager$SemWifiApClientListCallbackParameter;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageCallBackManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SemWifiApClientListCallbackParameter"
.end annotation


# instance fields
.field private mMaxListLength:I

.field private mTopConnectedAndDisconnected:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageCallBackManager$SemWifiApClientListCallbackParameter;->mTopConnectedAndDisconnected:I

    .line 5
    .line 6
    iput p2, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageCallBackManager$SemWifiApClientListCallbackParameter;->mMaxListLength:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x0

    .line 6
    if-eqz p1, :cond_2

    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    if-eq v2, v3, :cond_1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    check-cast p1, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageCallBackManager$SemWifiApClientListCallbackParameter;

    .line 20
    .line 21
    iget v2, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageCallBackManager$SemWifiApClientListCallbackParameter;->mTopConnectedAndDisconnected:I

    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageCallBackManager$SemWifiApClientListCallbackParameter;->getTopConnectedAndDisconnectedParam()I

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    if-ne v2, v3, :cond_2

    .line 28
    .line 29
    iget p0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageCallBackManager$SemWifiApClientListCallbackParameter;->mMaxListLength:I

    .line 30
    .line 31
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageCallBackManager$SemWifiApClientListCallbackParameter;->getMaxListLengthParam()I

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    if-ne p0, p1, :cond_2

    .line 36
    .line 37
    return v0

    .line 38
    :cond_2
    :goto_0
    return v1
.end method

.method public getMaxListLengthParam()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageCallBackManager$SemWifiApClientListCallbackParameter;->mMaxListLength:I

    .line 2
    .line 3
    return p0
.end method

.method public getTopConnectedAndDisconnectedParam()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageCallBackManager$SemWifiApClientListCallbackParameter;->mTopConnectedAndDisconnected:I

    .line 2
    .line 3
    return p0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageCallBackManager$SemWifiApClientListCallbackParameter;->mTopConnectedAndDisconnected:I

    .line 2
    .line 3
    mul-int/lit8 v0, v0, 0x64

    .line 4
    .line 5
    iget p0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageCallBackManager$SemWifiApClientListCallbackParameter;->mMaxListLength:I

    .line 6
    .line 7
    add-int/2addr v0, p0

    .line 8
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "[topConnectedAndDisconnected="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageCallBackManager$SemWifiApClientListCallbackParameter;->mTopConnectedAndDisconnected:I

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", maxListLength="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget p0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageCallBackManager$SemWifiApClientListCallbackParameter;->mMaxListLength:I

    .line 19
    .line 20
    const-string v1, "]"

    .line 21
    .line 22
    invoke-static {v1, p0, v0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/StringBuilder;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    return-object p0
.end method
