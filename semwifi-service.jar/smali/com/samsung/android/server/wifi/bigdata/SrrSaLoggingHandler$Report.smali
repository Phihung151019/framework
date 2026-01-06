.class public final enum Lcom/samsung/android/server/wifi/bigdata/SrrSaLoggingHandler$Report;
.super Ljava/lang/Enum;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/bigdata/SrrSaLoggingHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Report"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/server/wifi/bigdata/SrrSaLoggingHandler$Report;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/server/wifi/bigdata/SrrSaLoggingHandler$Report;

.field public static final enum NO_CANDIDATE:Lcom/samsung/android/server/wifi/bigdata/SrrSaLoggingHandler$Report;

.field public static final enum NO_SCAN_RESULT:Lcom/samsung/android/server/wifi/bigdata/SrrSaLoggingHandler$Report;

.field public static final enum ROAM:Lcom/samsung/android/server/wifi/bigdata/SrrSaLoggingHandler$Report;

.field public static final enum ROAM_FAIL:Lcom/samsung/android/server/wifi/bigdata/SrrSaLoggingHandler$Report;

.field public static final enum SCAN_5G_6G_RESULT_5G:Lcom/samsung/android/server/wifi/bigdata/SrrSaLoggingHandler$Report;

.field public static final enum SCAN_5G_6G_RESULT_5G_6G:Lcom/samsung/android/server/wifi/bigdata/SrrSaLoggingHandler$Report;

.field public static final enum SCAN_5G_6G_RESULT_EMPTY:Lcom/samsung/android/server/wifi/bigdata/SrrSaLoggingHandler$Report;

.field public static final enum SCAN_5G_RESULT_5G:Lcom/samsung/android/server/wifi/bigdata/SrrSaLoggingHandler$Report;

.field public static final enum SCAN_5G_RESULT_EMPTY:Lcom/samsung/android/server/wifi/bigdata/SrrSaLoggingHandler$Report;


# instance fields
.field private final text:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lcom/samsung/android/server/wifi/bigdata/SrrSaLoggingHandler$Report;
    .locals 9

    .line 1
    sget-object v0, Lcom/samsung/android/server/wifi/bigdata/SrrSaLoggingHandler$Report;->NO_SCAN_RESULT:Lcom/samsung/android/server/wifi/bigdata/SrrSaLoggingHandler$Report;

    .line 2
    .line 3
    sget-object v1, Lcom/samsung/android/server/wifi/bigdata/SrrSaLoggingHandler$Report;->NO_CANDIDATE:Lcom/samsung/android/server/wifi/bigdata/SrrSaLoggingHandler$Report;

    .line 4
    .line 5
    sget-object v2, Lcom/samsung/android/server/wifi/bigdata/SrrSaLoggingHandler$Report;->ROAM_FAIL:Lcom/samsung/android/server/wifi/bigdata/SrrSaLoggingHandler$Report;

    .line 6
    .line 7
    sget-object v3, Lcom/samsung/android/server/wifi/bigdata/SrrSaLoggingHandler$Report;->ROAM:Lcom/samsung/android/server/wifi/bigdata/SrrSaLoggingHandler$Report;

    .line 8
    .line 9
    sget-object v4, Lcom/samsung/android/server/wifi/bigdata/SrrSaLoggingHandler$Report;->SCAN_5G_RESULT_EMPTY:Lcom/samsung/android/server/wifi/bigdata/SrrSaLoggingHandler$Report;

    .line 10
    .line 11
    sget-object v5, Lcom/samsung/android/server/wifi/bigdata/SrrSaLoggingHandler$Report;->SCAN_5G_RESULT_5G:Lcom/samsung/android/server/wifi/bigdata/SrrSaLoggingHandler$Report;

    .line 12
    .line 13
    sget-object v6, Lcom/samsung/android/server/wifi/bigdata/SrrSaLoggingHandler$Report;->SCAN_5G_6G_RESULT_EMPTY:Lcom/samsung/android/server/wifi/bigdata/SrrSaLoggingHandler$Report;

    .line 14
    .line 15
    sget-object v7, Lcom/samsung/android/server/wifi/bigdata/SrrSaLoggingHandler$Report;->SCAN_5G_6G_RESULT_5G:Lcom/samsung/android/server/wifi/bigdata/SrrSaLoggingHandler$Report;

    .line 16
    .line 17
    sget-object v8, Lcom/samsung/android/server/wifi/bigdata/SrrSaLoggingHandler$Report;->SCAN_5G_6G_RESULT_5G_6G:Lcom/samsung/android/server/wifi/bigdata/SrrSaLoggingHandler$Report;

    .line 18
    .line 19
    filled-new-array/range {v0 .. v8}, [Lcom/samsung/android/server/wifi/bigdata/SrrSaLoggingHandler$Report;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    return-object v0
.end method

.method static bridge synthetic -$$Nest$fgettext(Lcom/samsung/android/server/wifi/bigdata/SrrSaLoggingHandler$Report;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/bigdata/SrrSaLoggingHandler$Report;->text:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/samsung/android/server/wifi/bigdata/SrrSaLoggingHandler$Report;

    .line 2
    .line 3
    const-string v1, "NO_SCAN_RESULT"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2, v1}, Lcom/samsung/android/server/wifi/bigdata/SrrSaLoggingHandler$Report;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/samsung/android/server/wifi/bigdata/SrrSaLoggingHandler$Report;->NO_SCAN_RESULT:Lcom/samsung/android/server/wifi/bigdata/SrrSaLoggingHandler$Report;

    .line 10
    .line 11
    new-instance v0, Lcom/samsung/android/server/wifi/bigdata/SrrSaLoggingHandler$Report;

    .line 12
    .line 13
    const-string v1, "NO_CANDIDATE"

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-direct {v0, v1, v2, v1}, Lcom/samsung/android/server/wifi/bigdata/SrrSaLoggingHandler$Report;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lcom/samsung/android/server/wifi/bigdata/SrrSaLoggingHandler$Report;->NO_CANDIDATE:Lcom/samsung/android/server/wifi/bigdata/SrrSaLoggingHandler$Report;

    .line 20
    .line 21
    new-instance v0, Lcom/samsung/android/server/wifi/bigdata/SrrSaLoggingHandler$Report;

    .line 22
    .line 23
    const/4 v1, 0x2

    .line 24
    const-string v2, "FAILED_TO_ROAM"

    .line 25
    .line 26
    const-string v3, "ROAM_FAIL"

    .line 27
    .line 28
    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/server/wifi/bigdata/SrrSaLoggingHandler$Report;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 29
    .line 30
    .line 31
    sput-object v0, Lcom/samsung/android/server/wifi/bigdata/SrrSaLoggingHandler$Report;->ROAM_FAIL:Lcom/samsung/android/server/wifi/bigdata/SrrSaLoggingHandler$Report;

    .line 32
    .line 33
    new-instance v0, Lcom/samsung/android/server/wifi/bigdata/SrrSaLoggingHandler$Report;

    .line 34
    .line 35
    const-string v1, "ROAM"

    .line 36
    .line 37
    const/4 v2, 0x3

    .line 38
    invoke-direct {v0, v1, v2, v1}, Lcom/samsung/android/server/wifi/bigdata/SrrSaLoggingHandler$Report;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 39
    .line 40
    .line 41
    sput-object v0, Lcom/samsung/android/server/wifi/bigdata/SrrSaLoggingHandler$Report;->ROAM:Lcom/samsung/android/server/wifi/bigdata/SrrSaLoggingHandler$Report;

    .line 42
    .line 43
    new-instance v0, Lcom/samsung/android/server/wifi/bigdata/SrrSaLoggingHandler$Report;

    .line 44
    .line 45
    const-string v1, "SCAN_5G_RESULT_EMPTY"

    .line 46
    .line 47
    const/4 v2, 0x4

    .line 48
    invoke-direct {v0, v1, v2, v1}, Lcom/samsung/android/server/wifi/bigdata/SrrSaLoggingHandler$Report;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 49
    .line 50
    .line 51
    sput-object v0, Lcom/samsung/android/server/wifi/bigdata/SrrSaLoggingHandler$Report;->SCAN_5G_RESULT_EMPTY:Lcom/samsung/android/server/wifi/bigdata/SrrSaLoggingHandler$Report;

    .line 52
    .line 53
    new-instance v0, Lcom/samsung/android/server/wifi/bigdata/SrrSaLoggingHandler$Report;

    .line 54
    .line 55
    const-string v1, "SCAN_5G_RESULT_5G"

    .line 56
    .line 57
    const/4 v2, 0x5

    .line 58
    invoke-direct {v0, v1, v2, v1}, Lcom/samsung/android/server/wifi/bigdata/SrrSaLoggingHandler$Report;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 59
    .line 60
    .line 61
    sput-object v0, Lcom/samsung/android/server/wifi/bigdata/SrrSaLoggingHandler$Report;->SCAN_5G_RESULT_5G:Lcom/samsung/android/server/wifi/bigdata/SrrSaLoggingHandler$Report;

    .line 62
    .line 63
    new-instance v0, Lcom/samsung/android/server/wifi/bigdata/SrrSaLoggingHandler$Report;

    .line 64
    .line 65
    const-string v1, "SCAN_5G_6G_RESULT_EMPTY"

    .line 66
    .line 67
    const/4 v2, 0x6

    .line 68
    invoke-direct {v0, v1, v2, v1}, Lcom/samsung/android/server/wifi/bigdata/SrrSaLoggingHandler$Report;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 69
    .line 70
    .line 71
    sput-object v0, Lcom/samsung/android/server/wifi/bigdata/SrrSaLoggingHandler$Report;->SCAN_5G_6G_RESULT_EMPTY:Lcom/samsung/android/server/wifi/bigdata/SrrSaLoggingHandler$Report;

    .line 72
    .line 73
    new-instance v0, Lcom/samsung/android/server/wifi/bigdata/SrrSaLoggingHandler$Report;

    .line 74
    .line 75
    const-string v1, "SCAN_5G_6G_RESULT_5G"

    .line 76
    .line 77
    const/4 v2, 0x7

    .line 78
    invoke-direct {v0, v1, v2, v1}, Lcom/samsung/android/server/wifi/bigdata/SrrSaLoggingHandler$Report;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 79
    .line 80
    .line 81
    sput-object v0, Lcom/samsung/android/server/wifi/bigdata/SrrSaLoggingHandler$Report;->SCAN_5G_6G_RESULT_5G:Lcom/samsung/android/server/wifi/bigdata/SrrSaLoggingHandler$Report;

    .line 82
    .line 83
    new-instance v0, Lcom/samsung/android/server/wifi/bigdata/SrrSaLoggingHandler$Report;

    .line 84
    .line 85
    const-string v1, "SCAN_5G_6G_RESULT_5G_6G"

    .line 86
    .line 87
    const/16 v2, 0x8

    .line 88
    .line 89
    invoke-direct {v0, v1, v2, v1}, Lcom/samsung/android/server/wifi/bigdata/SrrSaLoggingHandler$Report;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 90
    .line 91
    .line 92
    sput-object v0, Lcom/samsung/android/server/wifi/bigdata/SrrSaLoggingHandler$Report;->SCAN_5G_6G_RESULT_5G_6G:Lcom/samsung/android/server/wifi/bigdata/SrrSaLoggingHandler$Report;

    .line 93
    .line 94
    invoke-static {}, Lcom/samsung/android/server/wifi/bigdata/SrrSaLoggingHandler$Report;->$values()[Lcom/samsung/android/server/wifi/bigdata/SrrSaLoggingHandler$Report;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    sput-object v0, Lcom/samsung/android/server/wifi/bigdata/SrrSaLoggingHandler$Report;->$VALUES:[Lcom/samsung/android/server/wifi/bigdata/SrrSaLoggingHandler$Report;

    .line 99
    .line 100
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
    iput-object p3, p0, Lcom/samsung/android/server/wifi/bigdata/SrrSaLoggingHandler$Report;->text:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/server/wifi/bigdata/SrrSaLoggingHandler$Report;
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
    const-class v0, Lcom/samsung/android/server/wifi/bigdata/SrrSaLoggingHandler$Report;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/samsung/android/server/wifi/bigdata/SrrSaLoggingHandler$Report;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/samsung/android/server/wifi/bigdata/SrrSaLoggingHandler$Report;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/server/wifi/bigdata/SrrSaLoggingHandler$Report;->$VALUES:[Lcom/samsung/android/server/wifi/bigdata/SrrSaLoggingHandler$Report;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/samsung/android/server/wifi/bigdata/SrrSaLoggingHandler$Report;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/samsung/android/server/wifi/bigdata/SrrSaLoggingHandler$Report;

    .line 8
    .line 9
    return-object v0
.end method
