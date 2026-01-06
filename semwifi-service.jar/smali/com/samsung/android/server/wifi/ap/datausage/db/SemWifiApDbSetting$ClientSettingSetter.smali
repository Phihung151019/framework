.class public Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbSetting$ClientSettingSetter;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ClientSettingSetter"
.end annotation


# instance fields
.field mSettingDb:Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbSetting;

.field mValues:Landroid/content/ContentValues;


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
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbSetting$ClientSettingSetter;->mValues:Landroid/content/ContentValues;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbSetting$ClientSettingSetter;->mSettingDb:Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbSetting;

    .line 13
    .line 14
    if-nez p1, :cond_0

    .line 15
    .line 16
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbSetting;->-$$Nest$sfgetTAG()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    const-string p1, "ClientSettingSetter: settingDb is null"

    .line 21
    .line 22
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-nez v0, :cond_1

    .line 31
    .line 32
    invoke-static {p2}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageUtils;->isValidMac(Ljava/lang/String;)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-nez v0, :cond_1

    .line 37
    .line 38
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbSetting;->-$$Nest$sfgetTAG()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    const-string p1, "ClientSettingSetter: mac is null or invalid"

    .line 43
    .line 44
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :cond_1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbSetting$ClientSettingSetter;->mSettingDb:Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbSetting;

    .line 49
    .line 50
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbSetting$ClientSettingSetter;->mValues:Landroid/content/ContentValues;

    .line 51
    .line 52
    const-string p1, "device_mac"

    .line 53
    .line 54
    invoke-virtual {p0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    return-void
.end method


# virtual methods
.method public save()Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbSetting$ClientSettingSetter;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbSetting$ClientSettingSetter;->mValues:Landroid/content/ContentValues;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/ContentValues;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x2

    .line 8
    if-ge v0, v1, :cond_0

    .line 9
    .line 10
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbSetting;->-$$Nest$sfgetTAG()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const-string v1, "no info to save"

    .line 15
    .line 16
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    return-object p0

    .line 20
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbSetting$ClientSettingSetter;->mSettingDb:Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbSetting;

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbSetting$ClientSettingSetter;->mValues:Landroid/content/ContentValues;

    .line 25
    .line 26
    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbSetting;->-$$Nest$msaveClientSettingDetails(Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbSetting;Landroid/content/ContentValues;)V

    .line 27
    .line 28
    .line 29
    return-object p0

    .line 30
    :cond_1
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbSetting;->-$$Nest$sfgetTAG()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    const-string v1, "can\'t save, setting db is null"

    .line 35
    .line 36
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    return-object p0
.end method

.method public setDataLimitInBytes(J)Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbSetting$ClientSettingSetter;
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v0, p1, v0

    .line 4
    .line 5
    if-gez v0, :cond_0

    .line 6
    .line 7
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbSetting;->-$$Nest$sfgetTAG()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    const-string p2, "setDataLimitInBytes: Invalid Data Limit"

    .line 12
    .line 13
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    return-object p0

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbSetting$ClientSettingSetter;->mValues:Landroid/content/ContentValues;

    .line 18
    .line 19
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    const-string p2, "device_data_limit"

    .line 24
    .line 25
    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 26
    .line 27
    .line 28
    return-object p0
.end method

.method public setDeviceType(I)Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbSetting$ClientSettingSetter;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbSetting$ClientSettingSetter;->mValues:Landroid/content/ContentValues;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const-string v1, "device_type"

    .line 8
    .line 9
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public setEditedName(Ljava/lang/String;)Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbSetting$ClientSettingSetter;
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbSetting;->-$$Nest$sfgetTAG()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const-string v0, "setEditedName: Name cannot be null"

    .line 8
    .line 9
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    return-object p0

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbSetting$ClientSettingSetter;->mValues:Landroid/content/ContentValues;

    .line 14
    .line 15
    const-string v1, "edit_device_name"

    .line 16
    .line 17
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbSetting$ClientSettingSetter;
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbSetting;->-$$Nest$sfgetTAG()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    const-string v0, "setName: Name cannot be null or empty"

    .line 12
    .line 13
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    return-object p0

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbSetting$ClientSettingSetter;->mValues:Landroid/content/ContentValues;

    .line 18
    .line 19
    const-string v1, "device_name"

    .line 20
    .line 21
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    return-object p0
.end method

.method public setNsdName(Ljava/lang/String;)Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbSetting$ClientSettingSetter;
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbSetting;->-$$Nest$sfgetTAG()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const-string v0, "setNsdName: Name cannot be null"

    .line 8
    .line 9
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    return-object p0

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbSetting$ClientSettingSetter;->mValues:Landroid/content/ContentValues;

    .line 14
    .line 15
    const-string v1, "nsd_client_name"

    .line 16
    .line 17
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    return-object p0
.end method

.method public setPausedSharing(Z)Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbSetting$ClientSettingSetter;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbSetting$ClientSettingSetter;->mValues:Landroid/content/ContentValues;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const-string v1, "device_is_sharing_pause_by_user"

    .line 8
    .line 9
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public setTimeLimitInMilliSeconds(J)Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbSetting$ClientSettingSetter;
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v0, p1, v0

    .line 4
    .line 5
    if-gez v0, :cond_0

    .line 6
    .line 7
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbSetting;->-$$Nest$sfgetTAG()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    const-string p2, "setTimeLimitInMilliSeconds: "

    .line 12
    .line 13
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    return-object p0

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbSetting$ClientSettingSetter;->mValues:Landroid/content/ContentValues;

    .line 18
    .line 19
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    const-string p2, "device_time_limit"

    .line 24
    .line 25
    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 26
    .line 27
    .line 28
    return-object p0
.end method
