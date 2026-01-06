.class final enum Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Action;
.super Ljava/lang/Enum;
.source "qb/104190634 8f28b0c0f0c31eb03af3bb61eb930c39e4f7c5f0b56428f61295e887e863ee7f"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Action"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Action;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Action;

.field public static final enum INSTANTIATE:Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Action;

.field public static final enum NONE:Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Action;


# direct methods
.method private static synthetic $values()[Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Action;
    .locals 2

    .line 1
    sget-object v0, Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Action;->NONE:Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Action;

    .line 2
    .line 3
    sget-object v1, Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Action;->INSTANTIATE:Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Action;

    .line 4
    .line 5
    filled-new-array {v0, v1}, [Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Action;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Action;

    .line 2
    .line 3
    const-string v1, "NONE"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Action;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Action;->NONE:Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Action;

    .line 10
    .line 11
    new-instance v0, Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Action;

    .line 12
    .line 13
    const-string v1, "INSTANTIATE"

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-direct {v0, v1, v2}, Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Action;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Action;->INSTANTIATE:Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Action;

    .line 20
    .line 21
    invoke-static {}, Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Action;->$values()[Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Action;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    sput-object v0, Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Action;->$VALUES:[Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Action;

    .line 26
    .line 27
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

.method public static valueOf(I)Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Action;
    .locals 5

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Action.valueOf: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CodecSolution_MediaStatisticsData"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-static {}, Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Action;->values()[Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Action;

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
    sget-object p0, Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Action;->NONE:Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Action;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Action;
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
    const-class v0, Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Action;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Action;

    return-object p0
.end method

.method public static values()[Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Action;
    .locals 1

    .line 1
    sget-object v0, Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Action;->$VALUES:[Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Action;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Action;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData$Action;

    .line 8
    .line 9
    return-object v0
.end method
