.class final enum Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Type;
.super Ljava/lang/Enum;
.source "qb/104190634 8f28b0c0f0c31eb03af3bb61eb930c39e4f7c5f0b56428f61295e887e863ee7f"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Type;

.field public static final enum FLOAT:Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Type;

.field public static final enum INT:Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Type;

.field public static final enum INTARRAY:Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Type;

.field public static final enum LONG:Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Type;

.field public static final enum LONGARRAY:Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Type;

.field public static final enum NONE:Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Type;

.field public static final enum STRING:Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Type;

.field public static final enum STRINGARRAY:Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Type;

.field public static final enum ULONGARRAY:Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Type;


# instance fields
.field private val:I


# direct methods
.method private static synthetic $values()[Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Type;
    .locals 9

    .line 1
    sget-object v0, Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Type;->NONE:Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Type;

    .line 2
    .line 3
    sget-object v1, Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Type;->INT:Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Type;

    .line 4
    .line 5
    sget-object v2, Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Type;->LONG:Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Type;

    .line 6
    .line 7
    sget-object v3, Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Type;->FLOAT:Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Type;

    .line 8
    .line 9
    sget-object v4, Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Type;->STRING:Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Type;

    .line 10
    .line 11
    sget-object v5, Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Type;->INTARRAY:Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Type;

    .line 12
    .line 13
    sget-object v6, Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Type;->LONGARRAY:Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Type;

    .line 14
    .line 15
    sget-object v7, Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Type;->ULONGARRAY:Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Type;

    .line 16
    .line 17
    sget-object v8, Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Type;->STRINGARRAY:Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Type;

    .line 18
    .line 19
    filled-new-array/range {v0 .. v8}, [Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Type;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Type;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "none"

    .line 5
    .line 6
    const-string v3, "NONE"

    .line 7
    .line 8
    invoke-direct {v0, v3, v1, v2}, Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Type;->NONE:Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Type;

    .line 12
    .line 13
    new-instance v0, Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Type;

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    const-string v2, "vint"

    .line 17
    .line 18
    const-string v3, "INT"

    .line 19
    .line 20
    invoke-direct {v0, v3, v1, v2}, Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 21
    .line 22
    .line 23
    sput-object v0, Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Type;->INT:Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Type;

    .line 24
    .line 25
    new-instance v0, Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Type;

    .line 26
    .line 27
    const/4 v1, 0x2

    .line 28
    const-string v2, "vlng"

    .line 29
    .line 30
    const-string v3, "LONG"

    .line 31
    .line 32
    invoke-direct {v0, v3, v1, v2}, Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 33
    .line 34
    .line 35
    sput-object v0, Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Type;->LONG:Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Type;

    .line 36
    .line 37
    new-instance v0, Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Type;

    .line 38
    .line 39
    const/4 v1, 0x3

    .line 40
    const-string v2, "vflt"

    .line 41
    .line 42
    const-string v3, "FLOAT"

    .line 43
    .line 44
    invoke-direct {v0, v3, v1, v2}, Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 45
    .line 46
    .line 47
    sput-object v0, Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Type;->FLOAT:Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Type;

    .line 48
    .line 49
    new-instance v0, Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Type;

    .line 50
    .line 51
    const/4 v1, 0x4

    .line 52
    const-string v2, "vstr"

    .line 53
    .line 54
    const-string v3, "STRING"

    .line 55
    .line 56
    invoke-direct {v0, v3, v1, v2}, Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 57
    .line 58
    .line 59
    sput-object v0, Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Type;->STRING:Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Type;

    .line 60
    .line 61
    new-instance v0, Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Type;

    .line 62
    .line 63
    const/4 v1, 0x5

    .line 64
    const-string v2, "aint"

    .line 65
    .line 66
    const-string v3, "INTARRAY"

    .line 67
    .line 68
    invoke-direct {v0, v3, v1, v2}, Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 69
    .line 70
    .line 71
    sput-object v0, Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Type;->INTARRAY:Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Type;

    .line 72
    .line 73
    new-instance v0, Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Type;

    .line 74
    .line 75
    const/4 v1, 0x6

    .line 76
    const-string v2, "alng"

    .line 77
    .line 78
    const-string v3, "LONGARRAY"

    .line 79
    .line 80
    invoke-direct {v0, v3, v1, v2}, Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 81
    .line 82
    .line 83
    sput-object v0, Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Type;->LONGARRAY:Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Type;

    .line 84
    .line 85
    new-instance v0, Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Type;

    .line 86
    .line 87
    const/4 v1, 0x7

    .line 88
    const-string v2, "auln"

    .line 89
    .line 90
    const-string v3, "ULONGARRAY"

    .line 91
    .line 92
    invoke-direct {v0, v3, v1, v2}, Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 93
    .line 94
    .line 95
    sput-object v0, Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Type;->ULONGARRAY:Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Type;

    .line 96
    .line 97
    new-instance v0, Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Type;

    .line 98
    .line 99
    const/16 v1, 0x8

    .line 100
    .line 101
    const-string v2, "astr"

    .line 102
    .line 103
    const-string v3, "STRINGARRAY"

    .line 104
    .line 105
    invoke-direct {v0, v3, v1, v2}, Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 106
    .line 107
    .line 108
    sput-object v0, Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Type;->STRINGARRAY:Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Type;

    .line 109
    .line 110
    invoke-static {}, Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Type;->$values()[Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Type;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    sput-object v0, Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Type;->$VALUES:[Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Type;

    .line 115
    .line 116
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
    invoke-static {p3}, Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData;->-$$Nest$smgetFourCCNumber(Ljava/lang/String;)I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    iput p1, p0, Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Type;->val:I

    .line 9
    .line 10
    return-void
.end method

.method static valueOf(I)Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Type;
    .locals 5

    .line 2
    invoke-static {}, Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Type;->values()[Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Type;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 3
    iget v4, v3, Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Type;->val:I

    if-ne p0, v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4
    :cond_1
    sget-object p0, Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Type;->NONE:Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Type;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Type;
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
    const-class v0, Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Type;

    return-object p0
.end method

.method public static values()[Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Type;
    .locals 1

    .line 1
    sget-object v0, Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Type;->$VALUES:[Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Type;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Type;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Type;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 0

    .line 1
    iget p0, p0, Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Type;->val:I

    .line 2
    .line 3
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method
