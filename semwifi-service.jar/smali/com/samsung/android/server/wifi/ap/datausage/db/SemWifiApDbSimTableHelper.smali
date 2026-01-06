.class public Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbSimTableHelper;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# static fields
.field private static final KEY_RECENT_ACTIVE_TIME:Ljava/lang/String; = "key_recent_active_time"

.field private static final KEY_SIM_SERIAL_NUMBER:Ljava/lang/String; = "key_sim_serial_number"

.field private static final MAX_SIM_DETAILS_CAN_BE_SAVE:I = 0xa

.field private static final SIM_DETAIL_DATE_FORMAT:Ljava/lang/String; = "yyyy-MM-dd HH:mm:ss"

.field private static final TABLE_NAME_SIM_DETAILS:Ljava/lang/String; = "wifi_ap_sim_details_table"

.field private static final TAG:Ljava/lang/String; = "SemWifiApDbSimTableHelper"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static createTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .line 1
    const-string v0, "CREATE TABLE wifi_ap_sim_details_table(key_sim_serial_number VARCHAR NOT NULL, key_recent_active_time DATE NOT NULL, PRIMARY KEY(key_sim_serial_number))"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object p0, Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbSimTableHelper;->TAG:Ljava/lang/String;

    .line 7
    .line 8
    const-string v0, "Table is created = wifi_ap_sim_details_table"

    .line 9
    .line 10
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method static deleteGivenSim(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "key_sim_serial_number=?"

    .line 2
    .line 3
    filled-new-array {p1}, [Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const-string v1, "wifi_ap_sim_details_table"

    .line 8
    .line 9
    invoke-virtual {p0, v1, v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method private static deleteOldestSimIfMaxTableSizeReached(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/String;
    .locals 8

    .line 1
    const-string v0, "Failed to delete the oldest SIM serial number + row deleted = "

    .line 2
    .line 3
    const-string v1, "Event : SIM Detail Table Size reached Max Size. Action : deleting oldest SIM info: before Size = "

    .line 4
    .line 5
    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbSimTableHelper;->getSimDetailCountInTable(Landroid/database/sqlite/SQLiteDatabase;)I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    const/16 v3, 0xa

    .line 10
    .line 11
    const/4 v4, 0x0

    .line 12
    if-le v2, v3, :cond_6

    .line 13
    .line 14
    :try_start_0
    const-string v3, "SELECT key_sim_serial_number FROM wifi_ap_sim_details_table ORDER BY key_recent_active_time ASC LIMIT 1"

    .line 15
    .line 16
    invoke-virtual {p0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 17
    .line 18
    .line 19
    move-result-object v3
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 20
    if-eqz v3, :cond_1

    .line 21
    .line 22
    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->isClosed()Z

    .line 23
    .line 24
    .line 25
    move-result v5

    .line 26
    if-nez v5, :cond_1

    .line 27
    .line 28
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 29
    .line 30
    .line 31
    move-result v5

    .line 32
    if-eqz v5, :cond_0

    .line 33
    .line 34
    const-string v5, "key_sim_serial_number"

    .line 35
    .line 36
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    move-result v5

    .line 40
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    goto :goto_0

    .line 45
    :catchall_0
    move-exception p0

    .line 46
    move-object v4, v3

    .line 47
    goto/16 :goto_3

    .line 48
    .line 49
    :catch_0
    move-exception p0

    .line 50
    move-object v0, v4

    .line 51
    move-object v4, v3

    .line 52
    goto :goto_2

    .line 53
    :cond_0
    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 54
    .line 55
    .line 56
    :cond_1
    if-eqz v4, :cond_3

    .line 57
    .line 58
    const-string v5, "wifi_ap_sim_details_table"

    .line 59
    .line 60
    const-string v6, "key_sim_serial_number=?"

    .line 61
    .line 62
    filled-new-array {v4}, [Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v7

    .line 66
    invoke-virtual {p0, v5, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 67
    .line 68
    .line 69
    move-result p0

    .line 70
    if-lez p0, :cond_2

    .line 71
    .line 72
    sget-object v0, Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbSimTableHelper;->TAG:Ljava/lang/String;

    .line 73
    .line 74
    new-instance v5, Ljava/lang/StringBuilder;

    .line 75
    .line 76
    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    const-string v1, " , row deleted = "

    .line 83
    .line 84
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p0

    .line 94
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    .line 96
    .line 97
    goto :goto_1

    .line 98
    :cond_2
    sget-object v1, Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbSimTableHelper;->TAG:Ljava/lang/String;

    .line 99
    .line 100
    new-instance v2, Ljava/lang/StringBuilder;

    .line 101
    .line 102
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    const-string p0, ", sim serial number to be deleted = "

    .line 109
    .line 110
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object p0

    .line 120
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    .line 122
    .line 123
    goto :goto_1

    .line 124
    :cond_3
    sget-object p0, Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbSimTableHelper;->TAG:Ljava/lang/String;

    .line 125
    .line 126
    const-string v0, "something went wrong table reached max size but not able to get sim serial number"

    .line 127
    .line 128
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 129
    .line 130
    .line 131
    :goto_1
    move-object p0, v4

    .line 132
    move-object v4, v3

    .line 133
    goto :goto_4

    .line 134
    :catchall_1
    move-exception p0

    .line 135
    goto :goto_3

    .line 136
    :catch_1
    move-exception p0

    .line 137
    move-object v0, v4

    .line 138
    :goto_2
    :try_start_2
    invoke-virtual {p0}, Landroid/database/SQLException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 139
    .line 140
    .line 141
    if-eqz v4, :cond_4

    .line 142
    .line 143
    invoke-interface {v4}, Landroid/database/Cursor;->isClosed()Z

    .line 144
    .line 145
    .line 146
    move-result p0

    .line 147
    if-nez p0, :cond_4

    .line 148
    .line 149
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 150
    .line 151
    .line 152
    :cond_4
    return-object v0

    .line 153
    :goto_3
    if-eqz v4, :cond_5

    .line 154
    .line 155
    invoke-interface {v4}, Landroid/database/Cursor;->isClosed()Z

    .line 156
    .line 157
    .line 158
    move-result v0

    .line 159
    if-nez v0, :cond_5

    .line 160
    .line 161
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 162
    .line 163
    .line 164
    :cond_5
    throw p0

    .line 165
    :cond_6
    move-object p0, v4

    .line 166
    :goto_4
    if-eqz v4, :cond_7

    .line 167
    .line 168
    invoke-interface {v4}, Landroid/database/Cursor;->isClosed()Z

    .line 169
    .line 170
    .line 171
    move-result v0

    .line 172
    if-nez v0, :cond_7

    .line 173
    .line 174
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 175
    .line 176
    .line 177
    :cond_7
    return-object p0
.end method

.method static deleteSimDetailWhoseLastActiveIsGivenMonthBefore(Landroid/database/sqlite/SQLiteDatabase;I)Z
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    if-lt p1, v1, :cond_3

    .line 4
    .line 5
    const/16 v2, 0xc

    .line 6
    .line 7
    if-le p1, v2, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    const/4 v3, 0x2

    .line 15
    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    add-int/2addr v3, v1

    .line 20
    sub-int/2addr v3, p1

    .line 21
    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    if-gez v3, :cond_1

    .line 26
    .line 27
    add-int/lit8 v3, v3, 0xc

    .line 28
    .line 29
    add-int/lit8 p1, p1, -0x1

    .line 30
    .line 31
    :cond_1
    const-string v2, "yyyy-MM-dd HH:mm:ss"

    .line 32
    .line 33
    invoke-static {v2, v1, v3, p1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageUtils;->getDateInGivenFormat(Ljava/lang/String;III)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    const-string v2, "key_recent_active_time<?"

    .line 38
    .line 39
    filled-new-array {p1}, [Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    const-string v4, "wifi_ap_sim_details_table"

    .line 44
    .line 45
    invoke-virtual {p0, v4, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    move-result p0

    .line 49
    if-lez p0, :cond_2

    .line 50
    .line 51
    sget-object v0, Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbSimTableHelper;->TAG:Ljava/lang/String;

    .line 52
    .line 53
    const-string v2, "deleteSimDetailWhoseLastActiveISGivenMonthBefore() : delete data before date="

    .line 54
    .line 55
    const-string v3, ", no. of sim deleted = "

    .line 56
    .line 57
    invoke-static {p0, v2, p1, v3}, Lcom/samsung/android/server/wifi/SemSwitchBoardService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    .line 63
    .line 64
    return v1

    .line 65
    :cond_2
    return v0

    .line 66
    :cond_3
    :goto_0
    sget-object p0, Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbSimTableHelper;->TAG:Ljava/lang/String;

    .line 67
    .line 68
    new-instance v1, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    const-string v2, "delete from months = "

    .line 71
    .line 72
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    const-string p1, " does not support"

    .line 79
    .line 80
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    .line 89
    .line 90
    return v0
.end method

.method private static dropDailyTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .line 1
    const-string v0, "DROP TABLE IF EXISTS wifi_ap_sim_details_table"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private static getSimDetailCountInTable(Landroid/database/sqlite/SQLiteDatabase;)I
    .locals 2

    .line 1
    const-string v0, "SELECT * FROM wifi_ap_sim_details_table"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    if-eqz p0, :cond_0

    .line 9
    .line 10
    invoke-interface {p0}, Landroid/database/Cursor;->isClosed()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 21
    .line 22
    .line 23
    return v0

    .line 24
    :cond_0
    const/4 p0, 0x0

    .line 25
    return p0
.end method

.method private static insert(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)Z
    .locals 2

    .line 1
    :try_start_0
    const-string v0, "wifi_ap_sim_details_table"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v0, v1, p1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 5
    .line 6
    .line 7
    move-result-wide p0
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    const-wide/16 v0, -0x1

    .line 9
    .line 10
    cmp-long p0, p0, v0

    .line 11
    .line 12
    if-eqz p0, :cond_0

    .line 13
    .line 14
    const/4 p0, 0x1

    .line 15
    return p0

    .line 16
    :catch_0
    sget-object p0, Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbSimTableHelper;->TAG:Ljava/lang/String;

    .line 17
    .line 18
    const-string p1, "SQLException"

    .line 19
    .line 20
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    :cond_0
    const/4 p0, 0x0

    .line 24
    return p0
.end method

.method private static isEntryIsPresent(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z
    .locals 11

    .line 1
    const-string v0, "key_sim_serial_number"

    .line 2
    .line 3
    filled-new-array {v0}, [Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v3

    .line 7
    const/4 v9, 0x0

    .line 8
    const/4 v10, 0x0

    .line 9
    :try_start_0
    const-string v2, "wifi_ap_sim_details_table"

    .line 10
    .line 11
    const-string v4, "key_sim_serial_number=?"

    .line 12
    .line 13
    filled-new-array {p1}, [Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v5

    .line 17
    const/4 v7, 0x0

    .line 18
    const/4 v8, 0x0

    .line 19
    const/4 v6, 0x0

    .line 20
    move-object v1, p0

    .line 21
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 22
    .line 23
    .line 24
    move-result-object v10

    .line 25
    if-eqz v10, :cond_0

    .line 26
    .line 27
    invoke-interface {v10}, Landroid/database/Cursor;->isClosed()Z

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    if-nez p0, :cond_0

    .line 32
    .line 33
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    .line 34
    .line 35
    .line 36
    move-result p0
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    :try_start_1
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :catchall_0
    move-exception v0

    .line 42
    move-object p0, v0

    .line 43
    goto :goto_4

    .line 44
    :catch_0
    move-exception v0

    .line 45
    move-object p1, v0

    .line 46
    goto :goto_2

    .line 47
    :catch_1
    move-exception v0

    .line 48
    move-object p1, v0

    .line 49
    move p0, v9

    .line 50
    goto :goto_2

    .line 51
    :cond_0
    move p0, v9

    .line 52
    :goto_0
    if-eqz v10, :cond_1

    .line 53
    .line 54
    invoke-interface {v10}, Landroid/database/Cursor;->isClosed()Z

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    if-nez p1, :cond_1

    .line 59
    .line 60
    :goto_1
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 61
    .line 62
    .line 63
    goto :goto_3

    .line 64
    :goto_2
    :try_start_2
    invoke-virtual {p1}, Landroid/database/SQLException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 65
    .line 66
    .line 67
    if-eqz v10, :cond_1

    .line 68
    .line 69
    invoke-interface {v10}, Landroid/database/Cursor;->isClosed()Z

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    if-nez p1, :cond_1

    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_1
    :goto_3
    if-lez p0, :cond_2

    .line 77
    .line 78
    const/4 v9, 0x1

    .line 79
    :cond_2
    return v9

    .line 80
    :goto_4
    if-eqz v10, :cond_3

    .line 81
    .line 82
    invoke-interface {v10}, Landroid/database/Cursor;->isClosed()Z

    .line 83
    .line 84
    .line 85
    move-result p1

    .line 86
    if-nez p1, :cond_3

    .line 87
    .line 88
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 89
    .line 90
    .line 91
    :cond_3
    throw p0
.end method

.method static resetTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbSimTableHelper;->dropDailyTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2
    .line 3
    .line 4
    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbSimTableHelper;->createTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 5
    .line 6
    .line 7
    sget-object p0, Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbSimTableHelper;->TAG:Ljava/lang/String;

    .line 8
    .line 9
    const-string v0, "Sim Detail Table is reset"

    .line 10
    .line 11
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method static saveGivenSimDetailAndReturnDeletedSimIdIfAny(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    sget-object p0, Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbSimTableHelper;->TAG:Ljava/lang/String;

    .line 5
    .line 6
    const-string p1, "db object is null"

    .line 7
    .line 8
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageUtils;->isValidSimSerialNumber(Ljava/lang/String;)Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-nez v1, :cond_1

    .line 17
    .line 18
    sget-object p0, Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbSimTableHelper;->TAG:Ljava/lang/String;

    .line 19
    .line 20
    const-string v1, "sim serail number is not valid = "

    .line 21
    .line 22
    invoke-static {v1, p1, p0}, Lcom/samsung/android/server/wifi/SemClientModeManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    return-object v0

    .line 26
    :cond_1
    new-instance v1, Landroid/content/ContentValues;

    .line 27
    .line 28
    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 29
    .line 30
    .line 31
    const-string v2, "key_sim_serial_number"

    .line 32
    .line 33
    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    const-string v2, "yyyy-MM-dd HH:mm:ss"

    .line 37
    .line 38
    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageUtils;->getCurrentDateInGivenFormat(Ljava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    const-string v3, "key_recent_active_time"

    .line 43
    .line 44
    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbSimTableHelper;->isEntryIsPresent(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    if-nez v2, :cond_2

    .line 52
    .line 53
    invoke-static {p0, v1}, Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbSimTableHelper;->insert(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)Z

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    if-eqz v1, :cond_3

    .line 58
    .line 59
    sget-object v0, Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbSimTableHelper;->TAG:Ljava/lang/String;

    .line 60
    .line 61
    new-instance v1, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    const-string v2, "Inserted for SIM : "

    .line 64
    .line 65
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageUtils;->hideString(Ljava/lang/String;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    .line 81
    .line 82
    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbSimTableHelper;->deleteOldestSimIfMaxTableSizeReached(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    return-object p0

    .line 87
    :cond_2
    invoke-static {p0, p1, v1}, Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbSimTableHelper;->update(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;)Z

    .line 88
    .line 89
    .line 90
    move-result p0

    .line 91
    if-eqz p0, :cond_3

    .line 92
    .line 93
    sget-object p0, Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbSimTableHelper;->TAG:Ljava/lang/String;

    .line 94
    .line 95
    new-instance v1, Ljava/lang/StringBuilder;

    .line 96
    .line 97
    const-string v2, "updated for SIM : "

    .line 98
    .line 99
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageUtils;->hideString(Ljava/lang/String;)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    .line 115
    .line 116
    :cond_3
    return-object v0
.end method

.method private static update(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;)Z
    .locals 2

    .line 1
    :try_start_0
    const-string v0, "wifi_ap_sim_details_table"

    .line 2
    .line 3
    const-string v1, "key_sim_serial_number =?"

    .line 4
    .line 5
    filled-new-array {p1}, [Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p0, v0, p2, v1, p1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    move-result p0
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    if-lez p0, :cond_0

    .line 14
    .line 15
    const/4 p0, 0x1

    .line 16
    return p0

    .line 17
    :catch_0
    sget-object p0, Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbSimTableHelper;->TAG:Ljava/lang/String;

    .line 18
    .line 19
    const-string p1, "SQLException"

    .line 20
    .line 21
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    :cond_0
    const/4 p0, 0x0

    .line 25
    return p0
.end method
