.class public Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbSetting$ClientSettingGetter;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ClientSettingGetter"
.end annotation


# instance fields
.field private mValues:Landroid/content/ContentValues;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbSetting;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/content/ContentValues;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbSetting$ClientSettingGetter;->mValues:Landroid/content/ContentValues;

    .line 10
    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbSetting;->-$$Nest$sfgetTAG()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    const-string p1, "ClientSettingGetter: setting DB is null"

    .line 18
    .line 19
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-nez v0, :cond_1

    .line 28
    .line 29
    invoke-static {p2}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageUtils;->isValidMac(Ljava/lang/String;)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-nez v0, :cond_1

    .line 34
    .line 35
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbSetting;->-$$Nest$sfgetTAG()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    const-string p1, "ClientSettingGetter: Invalid Mac Address"

    .line 40
    .line 41
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :cond_1
    invoke-static {p1, p2}, Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbSetting;->-$$Nest$mgetClientSettingDetails(Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbSetting;Ljava/lang/String;)Landroid/content/ContentValues;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbSetting$ClientSettingGetter;->mValues:Landroid/content/ContentValues;

    .line 50
    .line 51
    return-void
.end method


# virtual methods
.method public getDataLimitInBytes()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbSetting$ClientSettingGetter;->mValues:Landroid/content/ContentValues;

    .line 2
    .line 3
    const-string v1, "device_data_limit"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbSetting$ClientSettingGetter;->mValues:Landroid/content/ContentValues;

    .line 12
    .line 13
    invoke-virtual {p0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    .line 18
    .line 19
    .line 20
    move-result-wide v0

    .line 21
    return-wide v0

    .line 22
    :cond_0
    const-wide/16 v0, 0x0

    .line 23
    .line 24
    return-wide v0
.end method

.method public getDeviceType()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbSetting$ClientSettingGetter;->mValues:Landroid/content/ContentValues;

    .line 2
    .line 3
    const-string v1, "device_type"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbSetting$ClientSettingGetter;->mValues:Landroid/content/ContentValues;

    .line 12
    .line 13
    invoke-virtual {p0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    return p0

    .line 22
    :cond_0
    const/4 p0, 0x0

    .line 23
    return p0
.end method

.method public getEditedName()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbSetting$ClientSettingGetter;->mValues:Landroid/content/ContentValues;

    .line 2
    .line 3
    const-string v1, "edit_device_name"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbSetting$ClientSettingGetter;->mValues:Landroid/content/ContentValues;

    .line 12
    .line 13
    invoke-virtual {p0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0

    .line 18
    :cond_0
    const-string p0, ""

    .line 19
    .line 20
    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbSetting$ClientSettingGetter;->mValues:Landroid/content/ContentValues;

    .line 2
    .line 3
    const-string v1, "device_name"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbSetting$ClientSettingGetter;->mValues:Landroid/content/ContentValues;

    .line 12
    .line 13
    invoke-virtual {p0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0

    .line 18
    :cond_0
    const/4 p0, 0x0

    .line 19
    return-object p0
.end method

.method public getNsdName()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbSetting$ClientSettingGetter;->mValues:Landroid/content/ContentValues;

    .line 2
    .line 3
    const-string v1, "nsd_client_name"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbSetting$ClientSettingGetter;->mValues:Landroid/content/ContentValues;

    .line 12
    .line 13
    invoke-virtual {p0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0

    .line 18
    :cond_0
    const-string p0, ""

    .line 19
    .line 20
    return-object p0
.end method

.method public getPausedSharing()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbSetting$ClientSettingGetter;->mValues:Landroid/content/ContentValues;

    .line 2
    .line 3
    const-string v1, "device_is_sharing_pause_by_user"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v2, 0x0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbSetting$ClientSettingGetter;->mValues:Landroid/content/ContentValues;

    .line 13
    .line 14
    invoke-virtual {p0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    const/4 v0, 0x1

    .line 23
    if-ne p0, v0, :cond_0

    .line 24
    .line 25
    return v0

    .line 26
    :cond_0
    return v2
.end method

.method public getTimeLimitInMilliSeconds()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbSetting$ClientSettingGetter;->mValues:Landroid/content/ContentValues;

    .line 2
    .line 3
    const-string v1, "device_time_limit"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbSetting$ClientSettingGetter;->mValues:Landroid/content/ContentValues;

    .line 12
    .line 13
    invoke-virtual {p0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    .line 18
    .line 19
    .line 20
    move-result-wide v0

    .line 21
    return-wide v0

    .line 22
    :cond_0
    const-wide/16 v0, 0x0

    .line 23
    .line 24
    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbSetting$ClientSettingGetter;->mValues:Landroid/content/ContentValues;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/content/ContentValues;->toString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method
