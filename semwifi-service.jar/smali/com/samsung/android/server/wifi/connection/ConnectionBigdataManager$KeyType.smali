.class public final enum Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager$KeyType;
.super Ljava/lang/Enum;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "KeyType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager$KeyType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager$KeyType;

.field public static final enum AP_MODEL_NAME:Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager$KeyType;

.field public static final enum COLLECTION_PERIOD_HOUR:Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager$KeyType;

.field public static final enum CONNECTION_TIME:Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager$KeyType;

.field public static final enum CONNECTION_TIME_AFTER_ENABLED:Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager$KeyType;

.field public static final enum CONNECTION_TIME_BEFORE_ENABLED:Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager$KeyType;

.field public static final enum DISCONNECTION_COUNT:Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager$KeyType;

.field public static final enum DISCONNECTION_COUNT_AFTER_ENABLED:Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager$KeyType;

.field public static final enum DISCONNECTION_COUNT_BEFORE_ENABLED:Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager$KeyType;

.field public static final enum ISSUE_ID:Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager$KeyType;

.field public static final enum ROAMING_COUNT:Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager$KeyType;

.field public static final enum ROAMING_COUNT_AFTER_ENABLED:Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager$KeyType;

.field public static final enum ROAMING_COUNT_BEFORE_ENABLED:Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager$KeyType;


# instance fields
.field public final text:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager$KeyType;
    .locals 12

    .line 1
    sget-object v0, Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager$KeyType;->ISSUE_ID:Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager$KeyType;

    .line 2
    .line 3
    sget-object v1, Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager$KeyType;->COLLECTION_PERIOD_HOUR:Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager$KeyType;

    .line 4
    .line 5
    sget-object v2, Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager$KeyType;->CONNECTION_TIME:Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager$KeyType;

    .line 6
    .line 7
    sget-object v3, Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager$KeyType;->DISCONNECTION_COUNT:Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager$KeyType;

    .line 8
    .line 9
    sget-object v4, Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager$KeyType;->ROAMING_COUNT:Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager$KeyType;

    .line 10
    .line 11
    sget-object v5, Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager$KeyType;->CONNECTION_TIME_BEFORE_ENABLED:Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager$KeyType;

    .line 12
    .line 13
    sget-object v6, Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager$KeyType;->DISCONNECTION_COUNT_BEFORE_ENABLED:Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager$KeyType;

    .line 14
    .line 15
    sget-object v7, Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager$KeyType;->ROAMING_COUNT_BEFORE_ENABLED:Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager$KeyType;

    .line 16
    .line 17
    sget-object v8, Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager$KeyType;->CONNECTION_TIME_AFTER_ENABLED:Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager$KeyType;

    .line 18
    .line 19
    sget-object v9, Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager$KeyType;->DISCONNECTION_COUNT_AFTER_ENABLED:Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager$KeyType;

    .line 20
    .line 21
    sget-object v10, Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager$KeyType;->ROAMING_COUNT_AFTER_ENABLED:Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager$KeyType;

    .line 22
    .line 23
    sget-object v11, Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager$KeyType;->AP_MODEL_NAME:Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager$KeyType;

    .line 24
    .line 25
    filled-new-array/range {v0 .. v11}, [Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager$KeyType;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager$KeyType;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "issue_id"

    .line 5
    .line 6
    const-string v3, "ISSUE_ID"

    .line 7
    .line 8
    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager$KeyType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager$KeyType;->ISSUE_ID:Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager$KeyType;

    .line 12
    .line 13
    new-instance v0, Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager$KeyType;

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    const-string v2, "collection_period_hour"

    .line 17
    .line 18
    const-string v3, "COLLECTION_PERIOD_HOUR"

    .line 19
    .line 20
    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager$KeyType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 21
    .line 22
    .line 23
    sput-object v0, Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager$KeyType;->COLLECTION_PERIOD_HOUR:Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager$KeyType;

    .line 24
    .line 25
    new-instance v0, Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager$KeyType;

    .line 26
    .line 27
    const/4 v1, 0x2

    .line 28
    const-string v2, "connection_time"

    .line 29
    .line 30
    const-string v3, "CONNECTION_TIME"

    .line 31
    .line 32
    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager$KeyType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 33
    .line 34
    .line 35
    sput-object v0, Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager$KeyType;->CONNECTION_TIME:Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager$KeyType;

    .line 36
    .line 37
    new-instance v0, Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager$KeyType;

    .line 38
    .line 39
    const/4 v1, 0x3

    .line 40
    const-string v2, "disconnection_count"

    .line 41
    .line 42
    const-string v3, "DISCONNECTION_COUNT"

    .line 43
    .line 44
    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager$KeyType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 45
    .line 46
    .line 47
    sput-object v0, Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager$KeyType;->DISCONNECTION_COUNT:Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager$KeyType;

    .line 48
    .line 49
    new-instance v0, Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager$KeyType;

    .line 50
    .line 51
    const/4 v1, 0x4

    .line 52
    const-string v2, "roaming_count"

    .line 53
    .line 54
    const-string v3, "ROAMING_COUNT"

    .line 55
    .line 56
    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager$KeyType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 57
    .line 58
    .line 59
    sput-object v0, Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager$KeyType;->ROAMING_COUNT:Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager$KeyType;

    .line 60
    .line 61
    new-instance v0, Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager$KeyType;

    .line 62
    .line 63
    const/4 v1, 0x5

    .line 64
    const-string v2, "connection_time_before_enabled"

    .line 65
    .line 66
    const-string v3, "CONNECTION_TIME_BEFORE_ENABLED"

    .line 67
    .line 68
    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager$KeyType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 69
    .line 70
    .line 71
    sput-object v0, Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager$KeyType;->CONNECTION_TIME_BEFORE_ENABLED:Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager$KeyType;

    .line 72
    .line 73
    new-instance v0, Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager$KeyType;

    .line 74
    .line 75
    const/4 v1, 0x6

    .line 76
    const-string v2, "disconnection_count_before_enabled"

    .line 77
    .line 78
    const-string v3, "DISCONNECTION_COUNT_BEFORE_ENABLED"

    .line 79
    .line 80
    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager$KeyType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 81
    .line 82
    .line 83
    sput-object v0, Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager$KeyType;->DISCONNECTION_COUNT_BEFORE_ENABLED:Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager$KeyType;

    .line 84
    .line 85
    new-instance v0, Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager$KeyType;

    .line 86
    .line 87
    const/4 v1, 0x7

    .line 88
    const-string v2, "roaming_count_before_enabled"

    .line 89
    .line 90
    const-string v3, "ROAMING_COUNT_BEFORE_ENABLED"

    .line 91
    .line 92
    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager$KeyType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 93
    .line 94
    .line 95
    sput-object v0, Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager$KeyType;->ROAMING_COUNT_BEFORE_ENABLED:Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager$KeyType;

    .line 96
    .line 97
    new-instance v0, Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager$KeyType;

    .line 98
    .line 99
    const/16 v1, 0x8

    .line 100
    .line 101
    const-string v2, "connection_time_after_enabled"

    .line 102
    .line 103
    const-string v3, "CONNECTION_TIME_AFTER_ENABLED"

    .line 104
    .line 105
    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager$KeyType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 106
    .line 107
    .line 108
    sput-object v0, Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager$KeyType;->CONNECTION_TIME_AFTER_ENABLED:Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager$KeyType;

    .line 109
    .line 110
    new-instance v0, Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager$KeyType;

    .line 111
    .line 112
    const/16 v1, 0x9

    .line 113
    .line 114
    const-string v2, "disconnection_count_after_enabled"

    .line 115
    .line 116
    const-string v3, "DISCONNECTION_COUNT_AFTER_ENABLED"

    .line 117
    .line 118
    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager$KeyType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 119
    .line 120
    .line 121
    sput-object v0, Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager$KeyType;->DISCONNECTION_COUNT_AFTER_ENABLED:Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager$KeyType;

    .line 122
    .line 123
    new-instance v0, Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager$KeyType;

    .line 124
    .line 125
    const/16 v1, 0xa

    .line 126
    .line 127
    const-string v2, "roaming_count_after_enabled"

    .line 128
    .line 129
    const-string v3, "ROAMING_COUNT_AFTER_ENABLED"

    .line 130
    .line 131
    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager$KeyType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 132
    .line 133
    .line 134
    sput-object v0, Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager$KeyType;->ROAMING_COUNT_AFTER_ENABLED:Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager$KeyType;

    .line 135
    .line 136
    new-instance v0, Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager$KeyType;

    .line 137
    .line 138
    const/16 v1, 0xb

    .line 139
    .line 140
    const-string v2, "ap_model_name"

    .line 141
    .line 142
    const-string v3, "AP_MODEL_NAME"

    .line 143
    .line 144
    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager$KeyType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 145
    .line 146
    .line 147
    sput-object v0, Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager$KeyType;->AP_MODEL_NAME:Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager$KeyType;

    .line 148
    .line 149
    invoke-static {}, Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager$KeyType;->$values()[Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager$KeyType;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    sput-object v0, Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager$KeyType;->$VALUES:[Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager$KeyType;

    .line 154
    .line 155
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager$KeyType;->text:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager$KeyType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 1
    const-class v0, Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager$KeyType;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager$KeyType;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager$KeyType;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager$KeyType;->$VALUES:[Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager$KeyType;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager$KeyType;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/samsung/android/server/wifi/connection/ConnectionBigdataManager$KeyType;

    .line 8
    .line 9
    return-object v0
.end method
