.class public La/j;
.super Ljava/lang/Object;
.source "TimeUtil.java"


# static fields
.field private static final a:Ljava/lang/String; = "j"

.field private static b:Ljava/text/SimpleDateFormat;

.field private static c:Ljava/text/SimpleDateFormat;

.field private static d:Ljava/text/SimpleDateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static a()I
    .locals 1

    .line 1
    invoke-static {}, La/j;->g()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    div-int/lit8 v0, v0, 0x18

    .line 6
    .line 7
    return v0
.end method

.method public static b()I
    .locals 2

    .line 1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x7

    .line 6
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    return v0
.end method

.method public static declared-synchronized c(I)I
    .locals 6

    .line 1
    const-class v0, La/j;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, La/j;->b:Ljava/text/SimpleDateFormat;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    new-instance v1, Ljava/text/SimpleDateFormat;

    .line 9
    .line 10
    const-string v2, "yyyyMMdd"

    .line 11
    .line 12
    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    sput-object v1, La/j;->b:Ljava/text/SimpleDateFormat;

    .line 16
    .line 17
    const-string v2, "UTC"

    .line 18
    .line 19
    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catchall_0
    move-exception p0

    .line 28
    goto :goto_1

    .line 29
    :cond_0
    :goto_0
    sget-object v1, La/j;->b:Ljava/text/SimpleDateFormat;

    .line 30
    .line 31
    int-to-long v2, p0

    .line 32
    const-wide/32 v4, 0xea60

    .line 33
    .line 34
    .line 35
    mul-long/2addr v2, v4

    .line 36
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    monitor-exit v0

    .line 49
    return p0

    .line 50
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 51
    throw p0
.end method

.method public static declared-synchronized d(I)Ljava/lang/String;
    .locals 6

    .line 1
    const-class v0, La/j;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, La/j;->c:Ljava/text/SimpleDateFormat;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    new-instance v1, Ljava/text/SimpleDateFormat;

    .line 9
    .line 10
    const-string v2, "yyyy-MM-dd HH:mm"

    .line 11
    .line 12
    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    sput-object v1, La/j;->c:Ljava/text/SimpleDateFormat;

    .line 16
    .line 17
    const-string v2, "UTC"

    .line 18
    .line 19
    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catchall_0
    move-exception p0

    .line 28
    goto :goto_1

    .line 29
    :cond_0
    :goto_0
    sget-object v1, La/j;->c:Ljava/text/SimpleDateFormat;

    .line 30
    .line 31
    int-to-long v2, p0

    .line 32
    const-wide/32 v4, 0xea60

    .line 33
    .line 34
    .line 35
    mul-long/2addr v2, v4

    .line 36
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    monitor-exit v0

    .line 45
    return-object p0

    .line 46
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 47
    throw p0
.end method

.method public static e(Ljava/lang/String;)I
    .locals 8

    .line 1
    const/4 v0, 0x6

    .line 2
    const/4 v1, 0x5

    .line 3
    const/4 v2, 0x4

    .line 4
    const/4 v3, 0x3

    .line 5
    const/4 v4, 0x2

    .line 6
    const/4 v5, 0x1

    .line 7
    const/4 v6, -0x1

    .line 8
    if-nez p0, :cond_0

    .line 9
    .line 10
    return v6

    .line 11
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 19
    .line 20
    .line 21
    move-result v7

    .line 22
    sparse-switch v7, :sswitch_data_0

    .line 23
    .line 24
    .line 25
    :goto_0
    move p0, v6

    .line 26
    goto :goto_1

    .line 27
    :sswitch_0
    const-string v7, "wed"

    .line 28
    .line 29
    invoke-virtual {p0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    if-nez p0, :cond_1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    move p0, v0

    .line 37
    goto :goto_1

    .line 38
    :sswitch_1
    const-string v7, "tue"

    .line 39
    .line 40
    invoke-virtual {p0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result p0

    .line 44
    if-nez p0, :cond_2

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_2
    move p0, v1

    .line 48
    goto :goto_1

    .line 49
    :sswitch_2
    const-string v7, "thu"

    .line 50
    .line 51
    invoke-virtual {p0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result p0

    .line 55
    if-nez p0, :cond_3

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_3
    move p0, v2

    .line 59
    goto :goto_1

    .line 60
    :sswitch_3
    const-string v7, "sun"

    .line 61
    .line 62
    invoke-virtual {p0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result p0

    .line 66
    if-nez p0, :cond_4

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_4
    move p0, v3

    .line 70
    goto :goto_1

    .line 71
    :sswitch_4
    const-string v7, "sat"

    .line 72
    .line 73
    invoke-virtual {p0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result p0

    .line 77
    if-nez p0, :cond_5

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_5
    move p0, v4

    .line 81
    goto :goto_1

    .line 82
    :sswitch_5
    const-string v7, "mon"

    .line 83
    .line 84
    invoke-virtual {p0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result p0

    .line 88
    if-nez p0, :cond_6

    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_6
    move p0, v5

    .line 92
    goto :goto_1

    .line 93
    :sswitch_6
    const-string v7, "fri"

    .line 94
    .line 95
    invoke-virtual {p0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    move-result p0

    .line 99
    if-nez p0, :cond_7

    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_7
    const/4 p0, 0x0

    .line 103
    :goto_1
    packed-switch p0, :pswitch_data_0

    .line 104
    .line 105
    .line 106
    return v6

    .line 107
    :pswitch_0
    return v2

    .line 108
    :pswitch_1
    return v3

    .line 109
    :pswitch_2
    return v1

    .line 110
    :pswitch_3
    return v5

    .line 111
    :pswitch_4
    const/4 p0, 0x7

    .line 112
    return p0

    .line 113
    :pswitch_5
    return v4

    .line 114
    :pswitch_6
    return v0

    .line 115
    :sswitch_data_0
    .sparse-switch
        0x18d1d -> :sswitch_6
        0x1a70c -> :sswitch_5
        0x1bbe6 -> :sswitch_4
        0x1be4c -> :sswitch_3
        0x1c081 -> :sswitch_2
        0x1c204 -> :sswitch_1
        0x1cb56 -> :sswitch_0
    .end sparse-switch

    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static declared-synchronized f(I)Ljava/lang/String;
    .locals 6

    .line 1
    const-class v0, La/j;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, La/j;->d:Ljava/text/SimpleDateFormat;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    new-instance v1, Ljava/text/SimpleDateFormat;

    .line 9
    .line 10
    const-string v2, "EEE"

    .line 11
    .line 12
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 13
    .line 14
    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 15
    .line 16
    .line 17
    sput-object v1, La/j;->d:Ljava/text/SimpleDateFormat;

    .line 18
    .line 19
    const-string v2, "UTC"

    .line 20
    .line 21
    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :catchall_0
    move-exception p0

    .line 30
    goto :goto_1

    .line 31
    :cond_0
    :goto_0
    sget-object v1, La/j;->d:Ljava/text/SimpleDateFormat;

    .line 32
    .line 33
    int-to-long v2, p0

    .line 34
    const-wide/32 v4, 0xea60

    .line 35
    .line 36
    .line 37
    mul-long/2addr v2, v4

    .line 38
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    monitor-exit v0

    .line 47
    return-object p0

    .line 48
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    throw p0
.end method

.method public static g()I
    .locals 1

    .line 1
    invoke-static {}, La/j;->i()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    div-int/lit8 v0, v0, 0x3c

    .line 6
    .line 7
    return v0
.end method

.method public static h(I)I
    .locals 0

    .line 1
    div-int/lit8 p0, p0, 0x3c

    .line 2
    .line 3
    rem-int/lit8 p0, p0, 0x18

    .line 4
    .line 5
    return p0
.end method

.method public static i()I
    .locals 5

    .line 1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 9
    .line 10
    .line 11
    move-result-wide v1

    .line 12
    const-wide/32 v3, 0xea60

    .line 13
    .line 14
    .line 15
    div-long/2addr v1, v3

    .line 16
    long-to-int v1, v1

    .line 17
    invoke-static {v0}, La/j;->l(Ljava/util/Calendar;)I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    add-int/2addr v1, v0

    .line 22
    return v1
.end method

.method public static j(I)I
    .locals 0

    .line 1
    rem-int/lit16 p0, p0, 0x5a0

    .line 2
    .line 3
    return p0
.end method

.method public static k(I)I
    .locals 1

    .line 1
    div-int/lit8 v0, p0, 0x3c

    .line 2
    .line 3
    rem-int/2addr p0, v0

    .line 4
    return p0
.end method

.method public static l(Ljava/util/Calendar;)I
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/util/TimeZone;->getRawOffset()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-virtual {v0, p0}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    if-eqz p0, :cond_0

    .line 18
    .line 19
    const p0, 0x36ee80

    .line 20
    .line 21
    .line 22
    add-int/2addr v1, p0

    .line 23
    :cond_0
    div-int/lit8 v1, v1, 0x3c

    .line 24
    .line 25
    div-int/lit16 v1, v1, 0x3e8

    .line 26
    .line 27
    return v1
.end method

.method public static m()I
    .locals 1

    .line 1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Ljava/util/TimeZone;->getRawOffset()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    div-int/lit8 v0, v0, 0x3c

    .line 14
    .line 15
    div-int/lit16 v0, v0, 0x3e8

    .line 16
    .line 17
    div-int/lit8 v0, v0, 0x3c

    .line 18
    .line 19
    rem-int/lit8 v0, v0, 0x18

    .line 20
    .line 21
    return v0
.end method

.method public static n()I
    .locals 1

    .line 1
    invoke-static {}, La/j;->i()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    add-int/lit16 v0, v0, -0x5a0

    .line 6
    .line 7
    div-int/lit16 v0, v0, 0x5a0

    .line 8
    .line 9
    return v0
.end method
