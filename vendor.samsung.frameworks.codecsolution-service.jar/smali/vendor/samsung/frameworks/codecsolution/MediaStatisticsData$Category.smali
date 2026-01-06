.class final enum Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Category;
.super Ljava/lang/Enum;
.source "qb/104190634 8f28b0c0f0c31eb03af3bb61eb930c39e4f7c5f0b56428f61295e887e863ee7f"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Category"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Category;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Category;

.field public static final enum ADEC:Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Category;

.field public static final enum AENC:Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Category;

.field public static final enum NONE:Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Category;

.field public static final enum VDEC:Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Category;

.field public static final enum VENC:Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Category;


# direct methods
.method private static synthetic $values()[Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Category;
    .locals 5

    .line 1
    sget-object v0, Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Category;->NONE:Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Category;

    .line 2
    .line 3
    sget-object v1, Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Category;->VENC:Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Category;

    .line 4
    .line 5
    sget-object v2, Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Category;->VDEC:Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Category;

    .line 6
    .line 7
    sget-object v3, Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Category;->AENC:Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Category;

    .line 8
    .line 9
    sget-object v4, Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Category;->ADEC:Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Category;

    .line 10
    .line 11
    filled-new-array {v0, v1, v2, v3, v4}, [Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Category;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Category;

    .line 2
    .line 3
    const-string v1, "NONE"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Category;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Category;->NONE:Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Category;

    .line 10
    .line 11
    new-instance v0, Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Category;

    .line 12
    .line 13
    const-string v1, "VENC"

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-direct {v0, v1, v2}, Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Category;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Category;->VENC:Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Category;

    .line 20
    .line 21
    new-instance v0, Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Category;

    .line 22
    .line 23
    const-string v1, "VDEC"

    .line 24
    .line 25
    const/4 v2, 0x2

    .line 26
    invoke-direct {v0, v1, v2}, Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Category;-><init>(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    sput-object v0, Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Category;->VDEC:Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Category;

    .line 30
    .line 31
    new-instance v0, Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Category;

    .line 32
    .line 33
    const-string v1, "AENC"

    .line 34
    .line 35
    const/4 v2, 0x3

    .line 36
    invoke-direct {v0, v1, v2}, Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Category;-><init>(Ljava/lang/String;I)V

    .line 37
    .line 38
    .line 39
    sput-object v0, Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Category;->AENC:Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Category;

    .line 40
    .line 41
    new-instance v0, Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Category;

    .line 42
    .line 43
    const-string v1, "ADEC"

    .line 44
    .line 45
    const/4 v2, 0x4

    .line 46
    invoke-direct {v0, v1, v2}, Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Category;-><init>(Ljava/lang/String;I)V

    .line 47
    .line 48
    .line 49
    sput-object v0, Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Category;->ADEC:Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Category;

    .line 50
    .line 51
    invoke-static {}, Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Category;->$values()[Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Category;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    sput-object v0, Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Category;->$VALUES:[Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Category;

    .line 56
    .line 57
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static valueOf(I)Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Category;
    .locals 5

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Category.valueOf: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CodecSolution_MediaStatisticsData"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-static {}, Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Category;->values()[Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Category;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 4
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    if-ne p0, v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5
    :cond_1
    sget-object p0, Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Category;->NONE:Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Category;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Category;
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
    const-class v0, Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Category;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Category;

    return-object p0
.end method

.method public static values()[Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Category;
    .locals 1

    .line 1
    sget-object v0, Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Category;->$VALUES:[Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Category;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Category;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Category;

    .line 8
    .line 9
    return-object v0
.end method
