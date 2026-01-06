.class public Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbHistory$ClientListJsonHandler;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbHistory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ClientListJsonHandler"
.end annotation


# instance fields
.field mClientListJsonObject:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbHistory$ClientListJsonHandler;->mClientListJsonObject:Lorg/json/JSONObject;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbHistory;IIILjava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    .line 2
    invoke-static {p5}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageUtils;->isValidSimSerialNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    if-lt p2, v0, :cond_1

    const/16 v0, 0x1f

    if-gt p2, v0, :cond_1

    if-ltz p3, :cond_1

    const/16 v0, 0xb

    if-le p3, v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {p1, p2, p3, p4, p5}, Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbHistory;->-$$Nest$mgetClientListJsonObjectOfGivenDateAndSim(Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbHistory;IIILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbHistory$ClientListJsonHandler;->mClientListJsonObject:Lorg/json/JSONObject;

    .line 4
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbHistory;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "client list = "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbHistory$ClientListJsonHandler;->mClientListJsonObject:Lorg/json/JSONObject;

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApUtils;->hideMacAddressInStringIfAny(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 5
    :cond_1
    :goto_0
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbHistory;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Invalid arguments, creating empty json list"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbHistory$ClientListJsonHandler;->mClientListJsonObject:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public getClientDataUsageInBytes(Ljava/lang/String;)J
    .locals 2

    .line 1
    const-string v0, "data_usage"

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbHistory$ClientListJsonHandler;->isClientMacPresent(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbHistory$ClientListJsonHandler;->mClientListJsonObject:Lorg/json/JSONObject;

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    if-nez p1, :cond_0

    .line 20
    .line 21
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    .line 22
    .line 23
    .line 24
    move-result-wide p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    return-wide p0

    .line 26
    :catch_0
    move-exception p0

    .line 27
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    .line 28
    .line 29
    .line 30
    :cond_0
    const-wide/16 p0, 0x0

    .line 31
    .line 32
    return-wide p0
.end method

.method getClientListJsonObject()Lorg/json/JSONObject;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbHistory$ClientListJsonHandler;->mClientListJsonObject:Lorg/json/JSONObject;

    .line 2
    .line 3
    return-object p0
.end method

.method public getClientMacIterator()Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbHistory$ClientListJsonHandler;->mClientListJsonObject:Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public getClientName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, "name"

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbHistory$ClientListJsonHandler;->isClientMacPresent(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbHistory$ClientListJsonHandler;->mClientListJsonObject:Lorg/json/JSONObject;

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    if-nez p1, :cond_0

    .line 20
    .line 21
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    return-object p0

    .line 26
    :catch_0
    move-exception p0

    .line 27
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    .line 28
    .line 29
    .line 30
    :cond_0
    const-string p0, "Connected Device"

    .line 31
    .line 32
    return-object p0
.end method

.method public getClientTimeUsageInMilliSec(Ljava/lang/String;)J
    .locals 2

    .line 1
    const-string v0, "time"

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbHistory$ClientListJsonHandler;->isClientMacPresent(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbHistory$ClientListJsonHandler;->mClientListJsonObject:Lorg/json/JSONObject;

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    if-nez p1, :cond_0

    .line 20
    .line 21
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    .line 22
    .line 23
    .line 24
    move-result-wide p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    return-wide p0

    .line 26
    :catch_0
    move-exception p0

    .line 27
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    .line 28
    .line 29
    .line 30
    :cond_0
    const-wide/16 p0, 0x0

    .line 31
    .line 32
    return-wide p0
.end method

.method public isClientMacPresent(Ljava/lang/String;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbHistory$ClientListJsonHandler;->mClientListJsonObject:Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    xor-int/lit8 p0, p0, 0x1

    .line 8
    .line 9
    return p0
.end method

.method public setDeviceDetails(Ljava/lang/String;Ljava/lang/String;JJ)V
    .locals 2

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    const-string v1, "name"

    .line 7
    .line 8
    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 9
    .line 10
    .line 11
    const-string p2, "data_usage"

    .line 12
    .line 13
    invoke-virtual {v0, p2, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 14
    .line 15
    .line 16
    const-string p2, "time"

    .line 17
    .line 18
    invoke-virtual {v0, p2, p5, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 19
    .line 20
    .line 21
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbHistory$ClientListJsonHandler;->mClientListJsonObject:Lorg/json/JSONObject;

    .line 22
    .line 23
    invoke-virtual {p0, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :catch_0
    move-exception p0

    .line 28
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    .line 29
    .line 30
    .line 31
    return-void
.end method
